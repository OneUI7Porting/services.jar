.class public final synthetic Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/Watchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/Watchdog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 33

    .line 1
    const/4 v1, 0x3

    .line 2
    const/4 v2, 0x2

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x1

    .line 5
    move-object/from16 v0, p0

    .line 6
    .line 7
    iget-object v11, v0, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/Watchdog;

    .line 8
    .line 9
    iget-object v0, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v5, "persist.vendor.softdog"

    .line 15
    .line 16
    .line 17
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string/jumbo v6, "off"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/16 v12, 0x64

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    const-string v0, "Watchdog:WatchdogSoftdog"

    .line 33
    .line 34
    const-string v5, "!@persist.vendor.softdog is off, so do not turn on softdog"

    .line 35
    .line 36
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/WatchdogSoftdog;->native_sdogOpen()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ltz v5, :cond_1

    .line 45
    .line 46
    iput-boolean v3, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 47
    .line 48
    invoke-virtual {v0, v12}, Lcom/android/server/WatchdogSoftdog;->native_sdogSetTimeout(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    const-string/jumbo v0, "persist.sys.fd_leak_threshold_cnt"

    .line 52
    .line 53
    .line 54
    const-wide/16 v13, 0x1388

    .line 55
    .line 56
    invoke-static {v0, v13, v14}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move v5, v3

    .line 60
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    iget-wide v6, v11, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    .line 64
    .line 65
    const-wide/16 v8, 0x2

    .line 66
    .line 67
    div-long v8, v6, v8

    .line 68
    .line 69
    iget-object v10, v11, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v10

    .line 72
    move v0, v3

    .line 73
    :goto_2
    :try_start_0
    iget-object v15, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v15

    .line 79
    if-ge v0, v15, :cond_2

    .line 80
    .line 81
    iget-object v15, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    check-cast v15, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 88
    .line 89
    iget-object v3, v15, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 90
    .line 91
    iget-object v15, v15, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mCustomTimeoutMillis:Ljava/util/Optional;

    .line 92
    .line 93
    sget v13, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 94
    .line 95
    int-to-long v13, v13

    .line 96
    mul-long/2addr v13, v6

    .line 97
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-virtual {v15, v13}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    check-cast v13, Ljava/lang/Long;

    .line 106
    .line 107
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v13

    .line 111
    invoke-virtual {v3, v13, v14}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked(J)V

    .line 112
    .line 113
    .line 114
    add-int/2addr v0, v4

    .line 115
    const/4 v3, 0x0

    .line 116
    const-wide/16 v13, 0x1388

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto/16 :goto_25

    .line 121
    .line 122
    :cond_2
    iget-object v0, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 123
    .line 124
    invoke-virtual {v0, v12}, Lcom/android/server/WatchdogSoftdog;->softdogKick(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v11}, Lcom/android/server/Watchdog;->printLogAndCheckStatus()V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v6

    .line 134
    move-wide v13, v8

    .line 135
    const/4 v0, 0x0

    .line 136
    :goto_3
    const-wide/16 v18, 0x0

    .line 137
    .line 138
    cmp-long v3, v13, v18

    .line 139
    .line 140
    if-lez v3, :cond_5

    .line 141
    .line 142
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 143
    .line 144
    .line 145
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-eqz v3, :cond_3

    .line 147
    .line 148
    move v3, v2

    .line 149
    goto :goto_4

    .line 150
    :cond_3
    move v3, v0

    .line 151
    :goto_4
    :try_start_1
    iget-object v0, v11, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 152
    .line 153
    invoke-virtual {v0, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_2
    const-string v13, "Watchdog"

    .line 159
    .line 160
    invoke-static {v13, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .line 162
    .line 163
    :goto_5
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    move v0, v2

    .line 170
    goto :goto_6

    .line 171
    :cond_4
    move v0, v3

    .line 172
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 173
    .line 174
    .line 175
    move-result-wide v13

    .line 176
    sub-long/2addr v13, v6

    .line 177
    sub-long v13, v8, v13

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    const/4 v3, 0x0

    .line 181
    const/4 v6, 0x0

    .line 182
    :goto_7
    iget-object v7, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-ge v3, v7, :cond_6

    .line 189
    .line 190
    iget-object v7, v11, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    check-cast v7, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 197
    .line 198
    iget-object v7, v7, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 199
    .line 200
    invoke-virtual {v7}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    add-int/2addr v3, v4

    .line 209
    goto :goto_7

    .line 210
    :cond_6
    if-nez v6, :cond_7

    .line 211
    .line 212
    monitor-exit v10

    .line 213
    const/4 v3, 0x0

    .line 214
    const/4 v5, 0x0

    .line 215
    :goto_8
    const-wide/16 v13, 0x1388

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :cond_7
    if-ne v6, v4, :cond_8

    .line 220
    .line 221
    monitor-exit v10

    .line 222
    goto :goto_9

    .line 223
    :cond_8
    if-ne v6, v2, :cond_b

    .line 224
    .line 225
    if-nez v5, :cond_a

    .line 226
    .line 227
    invoke-static {}, Lcom/android/server/Watchdog;->getPsInfo()V

    .line 228
    .line 229
    .line 230
    const-string v3, "Watchdog"

    .line 231
    .line 232
    const-string v5, "!@*** WAITED_UNTIL_PRE_WATCHDOG"

    .line 233
    .line 234
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    const-string v3, "Watchdog"

    .line 238
    .line 239
    iget-object v5, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 240
    .line 241
    invoke-static {v5}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    iget-object v3, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 249
    .line 250
    invoke-virtual {v3, v12}, Lcom/android/server/WatchdogSoftdog;->softdogKick(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v11, v2}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-static {v3}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    new-instance v6, Ljava/util/ArrayList;

    .line 262
    .line 263
    iget-object v7, v11, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 264
    .line 265
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    .line 267
    .line 268
    sget-boolean v7, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 269
    .line 270
    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 271
    .line 272
    iget-boolean v7, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 273
    .line 274
    if-eqz v7, :cond_9

    .line 275
    .line 276
    const-string v7, "Watchdog"

    .line 277
    .line 278
    new-instance v8, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v9, "!@*** unFreezeAllPackages for watchdog HALF debug! request time : "

    .line 284
    .line 285
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    new-instance v9, Ljava/text/SimpleDateFormat;

    .line 289
    .line 290
    const-string/jumbo v13, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 291
    .line 292
    .line 293
    invoke-direct {v9, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    new-instance v13, Ljava/util/Date;

    .line 297
    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v14

    .line 302
    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v9, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    sget-object v7, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 320
    .line 321
    const-string v8, "Watchdog_HALF"

    .line 322
    .line 323
    invoke-virtual {v7, v8}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    :cond_9
    move v14, v4

    .line 327
    move v15, v14

    .line 328
    move/from16 v32, v15

    .line 329
    .line 330
    move-object v13, v5

    .line 331
    move-object/from16 v20, v6

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_a
    monitor-exit v10

    .line 335
    :goto_9
    const/4 v3, 0x0

    .line 336
    goto :goto_8

    .line 337
    :cond_b
    invoke-virtual {v11, v1}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-static {v3}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    iget-boolean v7, v11, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 346
    .line 347
    new-instance v8, Ljava/util/ArrayList;

    .line 348
    .line 349
    iget-object v9, v11, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 350
    .line 351
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 352
    .line 353
    .line 354
    move v14, v5

    .line 355
    move-object v13, v6

    .line 356
    move v15, v7

    .line 357
    move-object/from16 v20, v8

    .line 358
    .line 359
    const/16 v32, 0x0

    .line 360
    .line 361
    :goto_a
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    const-string v6, "AID_SYSTEM"

    .line 367
    .line 368
    const/16 v7, 0x3e8

    .line 369
    .line 370
    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    new-instance v6, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v7, "--- CriticalEventLog ---\n"

    .line 377
    .line 378
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-static {v5}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const/16 v10, 0xa

    .line 389
    .line 390
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v27

    .line 397
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 398
    .line 399
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 403
    .line 404
    .line 405
    move-result-object v9

    .line 406
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 407
    .line 408
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 412
    .line 413
    const-string/jumbo v6, "system_server"

    .line 414
    .line 415
    .line 416
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    invoke-static {v6, v7, v9}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    .line 424
    .line 425
    .line 426
    iget-object v5, v11, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 427
    .line 428
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    invoke-static {v13, v9}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    .line 432
    .line 433
    .line 434
    if-eqz v32, :cond_c

    .line 435
    .line 436
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    new-instance v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    .line 444
    .line 445
    invoke-direct {v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    .line 446
    .line 447
    .line 448
    iput-object v13, v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    .line 449
    .line 450
    new-instance v7, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 451
    .line 452
    invoke-direct {v7}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v7, v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setHalfWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v5, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    .line 459
    .line 460
    .line 461
    const/16 v5, 0x1cc

    .line 462
    .line 463
    invoke-static {v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 464
    .line 465
    .line 466
    const-string/jumbo v5, "pre_watchdog"

    .line 467
    .line 468
    .line 469
    :goto_b
    move-object v7, v5

    .line 470
    goto :goto_c

    .line 471
    :cond_c
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    new-instance v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    .line 479
    .line 480
    invoke-direct {v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    .line 481
    .line 482
    .line 483
    iput-object v13, v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    iput-object v7, v6, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    .line 490
    .line 491
    new-instance v7, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 492
    .line 493
    invoke-direct {v7}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v7, v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v5, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    .line 500
    .line 501
    .line 502
    const/16 v5, 0xaf2

    .line 503
    .line 504
    invoke-static {v5, v13}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 505
    .line 506
    .line 507
    const/16 v5, 0xb9

    .line 508
    .line 509
    invoke-static {v5, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 510
    .line 511
    .line 512
    const-string/jumbo v5, "watchdog"

    .line 513
    .line 514
    .line 515
    goto :goto_b

    .line 516
    :goto_c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    new-instance v5, Ljava/io/StringWriter;

    .line 529
    .line 530
    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 531
    .line 532
    .line 533
    iget-object v6, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 534
    .line 535
    new-instance v22, Landroid/util/SparseBooleanArray;

    .line 536
    .line 537
    invoke-direct/range {v22 .. v22}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 538
    .line 539
    .line 540
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    .line 541
    .line 542
    .line 543
    move-result-object v21

    .line 544
    invoke-static/range {v21 .. v21}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 545
    .line 546
    .line 547
    move-result-object v23

    .line 548
    new-instance v29, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 549
    .line 550
    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    .line 551
    .line 552
    .line 553
    const/16 v28, 0x0

    .line 554
    .line 555
    const/16 v31, 0x0

    .line 556
    .line 557
    const/16 v25, 0x0

    .line 558
    .line 559
    const/16 v30, 0x0

    .line 560
    .line 561
    move-object/from16 v21, v6

    .line 562
    .line 563
    move-object/from16 v24, v5

    .line 564
    .line 565
    move-object/from16 v26, v13

    .line 566
    .line 567
    invoke-static/range {v20 .. v31}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    .line 568
    .line 569
    .line 570
    move-result-object v20

    .line 571
    const-string v6, "Watchdog"

    .line 572
    .line 573
    const-string v1, "!@*** End dumpStackTraces"

    .line 574
    .line 575
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    const-wide/16 v16, 0x1388

    .line 579
    .line 580
    invoke-static/range {v16 .. v17}, Landroid/os/SystemClock;->sleep(J)V

    .line 581
    .line 582
    .line 583
    iget-object v1, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 584
    .line 585
    invoke-static {v1}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    if-nez v32, :cond_d

    .line 600
    .line 601
    const/16 v1, 0x77

    .line 602
    .line 603
    invoke-static {v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 604
    .line 605
    .line 606
    const/16 v1, 0x6d

    .line 607
    .line 608
    invoke-static {v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 609
    .line 610
    .line 611
    const/16 v1, 0x6c

    .line 612
    .line 613
    invoke-static {v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 614
    .line 615
    .line 616
    :cond_d
    new-instance v1, Lcom/android/server/Watchdog$2;

    .line 617
    .line 618
    move-object v5, v1

    .line 619
    move-object v6, v11

    .line 620
    move-object/from16 v22, v9

    .line 621
    .line 622
    move-object/from16 v9, v20

    .line 623
    .line 624
    move/from16 v20, v10

    .line 625
    .line 626
    move-object/from16 v10, v22

    .line 627
    .line 628
    invoke-direct/range {v5 .. v10}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 632
    .line 633
    .line 634
    const-wide/16 v5, 0x7d0

    .line 635
    .line 636
    :try_start_3
    invoke-virtual {v1, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 637
    .line 638
    .line 639
    :catch_1
    if-eqz v32, :cond_e

    .line 640
    .line 641
    move v5, v14

    .line 642
    move-wide/from16 v13, v16

    .line 643
    .line 644
    const/4 v1, 0x3

    .line 645
    const/4 v3, 0x0

    .line 646
    goto/16 :goto_1

    .line 647
    .line 648
    :cond_e
    iget-object v1, v11, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    .line 649
    .line 650
    monitor-enter v1

    .line 651
    :try_start_4
    iget-object v5, v11, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 652
    .line 653
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 654
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    .line 655
    .line 656
    if-eqz v1, :cond_f

    .line 657
    .line 658
    if-eqz v5, :cond_f

    .line 659
    .line 660
    const-string v1, "Watchdog"

    .line 661
    .line 662
    const-string v6, "Reporting stuck state to activity controller"

    .line 663
    .line 664
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    :try_start_5
    const-string v1, "Service dumps disabled due to hung system process."

    .line 668
    .line 669
    invoke-static {v1}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    invoke-interface {v5, v13}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    if-ltz v1, :cond_f

    .line 677
    .line 678
    const-string v1, "Watchdog"

    .line 679
    .line 680
    const-string v5, "!@ Activity controller requested to coninue to wait"

    .line 681
    .line 682
    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 683
    .line 684
    .line 685
    move-wide/from16 v13, v16

    .line 686
    .line 687
    const/4 v1, 0x3

    .line 688
    const/4 v3, 0x0

    .line 689
    const/4 v5, 0x0

    .line 690
    goto/16 :goto_1

    .line 691
    .line 692
    :catch_2
    :cond_f
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 693
    .line 694
    .line 695
    move-result v1

    .line 696
    if-eqz v1, :cond_10

    .line 697
    .line 698
    move v0, v2

    .line 699
    :cond_10
    if-lt v0, v2, :cond_11

    .line 700
    .line 701
    const-string v0, "Watchdog"

    .line 702
    .line 703
    const-string v1, "!@ Debugger connected: Watchdog is *not* killing the system process"

    .line 704
    .line 705
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .line 707
    .line 708
    :goto_d
    const/4 v8, 0x0

    .line 709
    goto/16 :goto_24

    .line 710
    .line 711
    :cond_11
    if-lez v0, :cond_12

    .line 712
    .line 713
    const-string v0, "Watchdog"

    .line 714
    .line 715
    const-string v1, "!@ Debugger was connected: Watchdog is *not* killing the system process"

    .line 716
    .line 717
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .line 719
    .line 720
    goto :goto_d

    .line 721
    :cond_12
    if-nez v15, :cond_13

    .line 722
    .line 723
    const-string v0, "Watchdog"

    .line 724
    .line 725
    const-string v1, "!@ Restart not allowed: Watchdog is *not* killing the system process"

    .line 726
    .line 727
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .line 729
    .line 730
    goto :goto_d

    .line 731
    :cond_13
    const-string v0, "Watchdog"

    .line 732
    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    const-string v5, "!@*** WATCHDOG KILLING SYSTEM PROCESS: "

    .line 736
    .line 737
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .line 749
    .line 750
    const-string v0, "P|WD"

    .line 751
    .line 752
    invoke-static {v0, v13}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    iget-object v0, v11, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 756
    .line 757
    if-eqz v0, :cond_14

    .line 758
    .line 759
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingCmdBR:Ljava/util/ArrayList;

    .line 760
    .line 761
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    if-lez v1, :cond_14

    .line 766
    .line 767
    const-string v1, "Watchdog"

    .line 768
    .line 769
    const-string/jumbo v5, "pending commanded broadcasts"

    .line 770
    .line 771
    .line 772
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    .line 774
    .line 775
    const/4 v1, 0x0

    .line 776
    :goto_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 777
    .line 778
    .line 779
    move-result v5

    .line 780
    if-ge v1, v5, :cond_14

    .line 781
    .line 782
    const-string v5, "Watchdog"

    .line 783
    .line 784
    const-string v6, "#"

    .line 785
    .line 786
    const-string v7, " "

    .line 787
    .line 788
    invoke-static {v1, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    move-result-object v6

    .line 792
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v7

    .line 796
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v6

    .line 803
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    .line 805
    .line 806
    add-int/2addr v1, v4

    .line 807
    goto :goto_e

    .line 808
    :cond_14
    const-string v0, "Watchdog"

    .line 809
    .line 810
    iget-object v1, v11, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 811
    .line 812
    invoke-static {v1}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .line 818
    .line 819
    new-instance v0, Ljava/io/PrintWriter;

    .line 820
    .line 821
    new-instance v1, Landroid/util/LogWriter;

    .line 822
    .line 823
    const-string v5, "Watchdog"

    .line 824
    .line 825
    const/4 v6, 0x5

    .line 826
    const/4 v7, 0x4

    .line 827
    invoke-direct {v1, v6, v5, v7}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    .line 828
    .line 829
    .line 830
    invoke-direct {v0, v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 831
    .line 832
    .line 833
    const-string v1, "PLATFORM WATCHDOG RESET"

    .line 834
    .line 835
    const/4 v6, 0x6

    .line 836
    const/4 v8, 0x0

    .line 837
    invoke-static {v7, v6, v5, v1, v8}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    .line 839
    .line 840
    const/4 v1, 0x0

    .line 841
    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 842
    .line 843
    .line 844
    move-result v9

    .line 845
    if-ge v1, v9, :cond_17

    .line 846
    .line 847
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v9

    .line 851
    check-cast v9, Lcom/android/server/Watchdog$HandlerChecker;

    .line 852
    .line 853
    iget-object v9, v9, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 854
    .line 855
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 856
    .line 857
    .line 858
    move-result-object v9

    .line 859
    invoke-virtual {v9}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 860
    .line 861
    .line 862
    move-result-object v9

    .line 863
    invoke-static {v9, v0}, Lcom/android/server/WatchdogDiagnostics;->printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z

    .line 864
    .line 865
    .line 866
    move-result v10

    .line 867
    if-eqz v10, :cond_15

    .line 868
    .line 869
    goto :goto_11

    .line 870
    :cond_15
    new-instance v10, Ljava/lang/StringBuilder;

    .line 871
    .line 872
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v13

    .line 879
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    const-string v13, " stack trace:"

    .line 883
    .line 884
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v10

    .line 891
    invoke-static {v7, v6, v5, v10, v8}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .line 893
    .line 894
    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 895
    .line 896
    .line 897
    move-result-object v9

    .line 898
    array-length v10, v9

    .line 899
    const/4 v13, 0x0

    .line 900
    :goto_10
    if-ge v13, v10, :cond_16

    .line 901
    .line 902
    aget-object v14, v9, v13

    .line 903
    .line 904
    new-instance v15, Ljava/lang/StringBuilder;

    .line 905
    .line 906
    const-string v12, " at "

    .line 907
    .line 908
    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v12

    .line 918
    invoke-static {v7, v6, v5, v12, v8}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 919
    .line 920
    .line 921
    add-int/2addr v13, v4

    .line 922
    const/16 v12, 0x64

    .line 923
    .line 924
    goto :goto_10

    .line 925
    :cond_16
    :goto_11
    add-int/2addr v1, v4

    .line 926
    const/16 v12, 0x64

    .line 927
    .line 928
    goto :goto_f

    .line 929
    :cond_17
    iget-object v0, v11, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 930
    .line 931
    iget-boolean v1, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 932
    .line 933
    if-eqz v1, :cond_18

    .line 934
    .line 935
    goto :goto_12

    .line 936
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/WatchdogSoftdog;->native_sdogClose()V

    .line 937
    .line 938
    .line 939
    iput-boolean v4, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    .line 940
    .line 941
    :goto_12
    new-instance v0, Landroid/os/BugreportParams;

    .line 942
    .line 943
    const/16 v1, 0xd

    .line 944
    .line 945
    invoke-direct {v0, v1}, Landroid/os/BugreportParams;-><init>(I)V

    .line 946
    .line 947
    .line 948
    const-string/jumbo v1, "system_server"

    .line 949
    .line 950
    .line 951
    invoke-static {v0, v1}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    const-string/jumbo v0, "crashrecovery.rescue_boot_count"

    .line 955
    .line 956
    .line 957
    const-string/jumbo v1, "crashrecovery.rescue_boot_count"

    .line 958
    .line 959
    .line 960
    const/4 v3, 0x0

    .line 961
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 962
    .line 963
    .line 964
    move-result v1

    .line 965
    add-int/2addr v1, v2

    .line 966
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v1

    .line 970
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 974
    .line 975
    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 976
    .line 977
    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 978
    .line 979
    if-eqz v0, :cond_19

    .line 980
    .line 981
    const-string v0, "Watchdog"

    .line 982
    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    .line 984
    .line 985
    const-string v3, "!@*** unFreezeAllPackages for watchdog debug! request time : "

    .line 986
    .line 987
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 991
    .line 992
    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 993
    .line 994
    .line 995
    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    new-instance v5, Ljava/util/Date;

    .line 999
    .line 1000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1001
    .line 1002
    .line 1003
    move-result-wide v6

    .line 1004
    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    .line 1020
    .line 1021
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 1022
    .line 1023
    const-string v1, "Watchdog"

    .line 1024
    .line 1025
    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    :cond_19
    const-string v0, "Watchdog"

    .line 1029
    .line 1030
    const-string v1, "!@*** GOODBYE!"

    .line 1031
    .line 1032
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    .line 1034
    .line 1035
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 1036
    .line 1037
    if-nez v0, :cond_26

    .line 1038
    .line 1039
    const-string/jumbo v0, "framework_watchdog.fatal_count"

    .line 1040
    .line 1041
    .line 1042
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1050
    goto :goto_13

    .line 1051
    :catch_3
    move-object v0, v8

    .line 1052
    :goto_13
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    const/4 v1, 0x0

    .line 1057
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v3

    .line 1061
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    check-cast v0, Ljava/lang/Integer;

    .line 1066
    .line 1067
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1068
    .line 1069
    .line 1070
    move-result v1

    .line 1071
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1072
    .line 1073
    const-string/jumbo v3, "framework_watchdog.fatal_window.second"

    .line 1074
    .line 1075
    .line 1076
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v3

    .line 1080
    :try_start_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v3
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1084
    goto :goto_14

    .line 1085
    :catch_4
    move-object v3, v8

    .line 1086
    :goto_14
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    const/4 v5, 0x0

    .line 1091
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v6

    .line 1095
    invoke-virtual {v3, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v3

    .line 1099
    check-cast v3, Ljava/lang/Integer;

    .line 1100
    .line 1101
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1102
    .line 1103
    .line 1104
    move-result v3

    .line 1105
    int-to-long v5, v3

    .line 1106
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 1107
    .line 1108
    .line 1109
    move-result-wide v5

    .line 1110
    const-string v3, "Watchdog"

    .line 1111
    .line 1112
    if-eqz v1, :cond_1a

    .line 1113
    .line 1114
    cmp-long v0, v5, v18

    .line 1115
    .line 1116
    if-nez v0, :cond_1b

    .line 1117
    .line 1118
    :cond_1a
    const/4 v8, 0x0

    .line 1119
    goto/16 :goto_22

    .line 1120
    .line 1121
    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1122
    .line 1123
    .line 1124
    move-result-wide v9

    .line 1125
    const/4 v7, 0x0

    .line 1126
    new-array v12, v7, [Ljava/lang/String;

    .line 1127
    .line 1128
    :try_start_8
    new-instance v7, Ljava/io/BufferedReader;

    .line 1129
    .line 1130
    new-instance v0, Ljava/io/FileReader;

    .line 1131
    .line 1132
    const-string v13, "/data/system/watchdog-timeout-history.txt"

    .line 1133
    .line 1134
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1135
    .line 1136
    invoke-direct {v0, v13, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 1137
    .line 1138
    .line 1139
    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1140
    .line 1141
    .line 1142
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1146
    if-nez v0, :cond_1d

    .line 1147
    .line 1148
    :cond_1c
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1149
    .line 1150
    .line 1151
    goto :goto_19

    .line 1152
    :catch_5
    move-exception v0

    .line 1153
    goto :goto_18

    .line 1154
    :cond_1d
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    const-string v13, ":"

    .line 1159
    .line 1160
    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    array-length v13, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1165
    const-string v14, ""

    .line 1166
    .line 1167
    if-lt v13, v4, :cond_1e

    .line 1168
    .line 1169
    const/4 v13, 0x0

    .line 1170
    :try_start_c
    aget-object v15, v0, v13

    .line 1171
    .line 1172
    goto :goto_15

    .line 1173
    :catchall_1
    move-exception v0

    .line 1174
    move-object v13, v0

    .line 1175
    goto :goto_16

    .line 1176
    :cond_1e
    move-object v15, v14

    .line 1177
    :goto_15
    array-length v13, v0

    .line 1178
    if-lt v13, v2, :cond_1f

    .line 1179
    .line 1180
    aget-object v14, v0, v4

    .line 1181
    .line 1182
    :cond_1f
    const-string/jumbo v0, "ro.boottime.zygote"

    .line 1183
    .line 1184
    .line 1185
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    move-result v0

    .line 1193
    if-eqz v0, :cond_1c

    .line 1194
    .line 1195
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 1196
    .line 1197
    .line 1198
    move-result v0

    .line 1199
    if-nez v0, :cond_1c

    .line 1200
    .line 1201
    const-string v0, ","

    .line 1202
    .line 1203
    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1207
    :try_start_d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 1208
    .line 1209
    .line 1210
    move-object v12, v0

    .line 1211
    goto :goto_19

    .line 1212
    :goto_16
    :try_start_e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1213
    .line 1214
    .line 1215
    goto :goto_17

    .line 1216
    :catchall_2
    move-exception v0

    .line 1217
    move-object v7, v0

    .line 1218
    :try_start_f
    invoke-virtual {v13, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1219
    .line 1220
    .line 1221
    :goto_17
    throw v13
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 1222
    :goto_18
    const-string v7, "Failed to read file /data/system/watchdog-timeout-history.txt"

    .line 1223
    .line 1224
    invoke-static {v3, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1225
    .line 1226
    .line 1227
    :catch_6
    :goto_19
    new-instance v7, Ljava/util/ArrayList;

    .line 1228
    .line 1229
    array-length v0, v12

    .line 1230
    sub-int/2addr v0, v1

    .line 1231
    sub-int/2addr v0, v4

    .line 1232
    const/4 v13, 0x0

    .line 1233
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    .line 1234
    .line 1235
    .line 1236
    move-result v0

    .line 1237
    array-length v13, v12

    .line 1238
    invoke-static {v12, v0, v13}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    check-cast v0, [Ljava/lang/String;

    .line 1243
    .line 1244
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1249
    .line 1250
    .line 1251
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    invoke-static {v7}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1259
    .line 1260
    .line 1261
    :try_start_10
    new-instance v0, Ljava/io/File;

    .line 1262
    .line 1263
    const-string v12, "/sys/class/android_usb/android0/state"

    .line 1264
    .line 1265
    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    const/16 v12, 0x80

    .line 1269
    .line 1270
    invoke-static {v0, v12, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v0

    .line 1274
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v0

    .line 1278
    const-string v12, "CONFIGURED"

    .line 1279
    .line 1280
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 1284
    if-eqz v0, :cond_20

    .line 1285
    .line 1286
    goto/16 :goto_21

    .line 1287
    .line 1288
    :cond_20
    :goto_1a
    const/4 v12, 0x0

    .line 1289
    goto :goto_1b

    .line 1290
    :catch_7
    move-exception v0

    .line 1291
    const-string v12, "Failed to determine if device was on USB"

    .line 1292
    .line 1293
    invoke-static {v3, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    .line 1295
    .line 1296
    goto :goto_1a

    .line 1297
    :goto_1b
    :try_start_11
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v0

    .line 1301
    check-cast v0, Ljava/lang/String;

    .line 1302
    .line 1303
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1304
    .line 1305
    .line 1306
    move-result-wide v12
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_9

    .line 1307
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1308
    .line 1309
    .line 1310
    move-result v0

    .line 1311
    if-lt v0, v1, :cond_26

    .line 1312
    .line 1313
    sub-long/2addr v9, v12

    .line 1314
    cmp-long v0, v9, v5

    .line 1315
    .line 1316
    if-gez v0, :cond_26

    .line 1317
    .line 1318
    const-string/jumbo v0, "persist.debug.framework_watchdog.fatal_ignore"

    .line 1319
    .line 1320
    .line 1321
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    if-nez v0, :cond_21

    .line 1326
    .line 1327
    goto :goto_1d

    .line 1328
    :cond_21
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1329
    .line 1330
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1335
    .line 1336
    .line 1337
    const/4 v3, -0x1

    .line 1338
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 1339
    .line 1340
    .line 1341
    move-result v1

    .line 1342
    sparse-switch v1, :sswitch_data_0

    .line 1343
    .line 1344
    .line 1345
    goto :goto_1c

    .line 1346
    :sswitch_0
    const-string/jumbo v1, "false"

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1350
    .line 1351
    .line 1352
    move-result v0

    .line 1353
    if-nez v0, :cond_22

    .line 1354
    .line 1355
    goto :goto_1c

    .line 1356
    :cond_22
    const/4 v3, 0x3

    .line 1357
    goto :goto_1c

    .line 1358
    :sswitch_1
    const-string/jumbo v1, "true"

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v0

    .line 1365
    if-nez v0, :cond_23

    .line 1366
    .line 1367
    goto :goto_1c

    .line 1368
    :cond_23
    move v3, v2

    .line 1369
    goto :goto_1c

    .line 1370
    :sswitch_2
    const-string v1, "1"

    .line 1371
    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1373
    .line 1374
    .line 1375
    move-result v0

    .line 1376
    if-nez v0, :cond_24

    .line 1377
    .line 1378
    goto :goto_1c

    .line 1379
    :cond_24
    move v3, v4

    .line 1380
    goto :goto_1c

    .line 1381
    :sswitch_3
    const-string v1, "0"

    .line 1382
    .line 1383
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v0

    .line 1387
    if-nez v0, :cond_25

    .line 1388
    .line 1389
    goto :goto_1c

    .line 1390
    :cond_25
    const/4 v3, 0x0

    .line 1391
    :goto_1c
    packed-switch v3, :pswitch_data_0

    .line 1392
    .line 1393
    .line 1394
    goto :goto_1d

    .line 1395
    :pswitch_0
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1396
    .line 1397
    goto :goto_1d

    .line 1398
    :pswitch_1
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1399
    .line 1400
    :goto_1d
    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v0

    .line 1404
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1405
    .line 1406
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v0

    .line 1410
    check-cast v0, Ljava/lang/Boolean;

    .line 1411
    .line 1412
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1413
    .line 1414
    .line 1415
    move-result v0

    .line 1416
    if-nez v0, :cond_26

    .line 1417
    .line 1418
    :try_start_12
    new-instance v1, Ljava/io/FileWriter;

    .line 1419
    .line 1420
    const-string v0, "/dev/kmsg_debug"

    .line 1421
    .line 1422
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1423
    .line 1424
    invoke-direct {v1, v0, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 1425
    .line 1426
    .line 1427
    :try_start_13
    const-string v0, "Fatal reset to escape the system_server crashing loop\n"

    .line 1428
    .line 1429
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1430
    .line 1431
    .line 1432
    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    .line 1433
    .line 1434
    .line 1435
    goto :goto_20

    .line 1436
    :catch_8
    move-exception v0

    .line 1437
    goto :goto_1f

    .line 1438
    :catchall_3
    move-exception v0

    .line 1439
    move-object v3, v0

    .line 1440
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 1441
    .line 1442
    .line 1443
    goto :goto_1e

    .line 1444
    :catchall_4
    move-exception v0

    .line 1445
    move-object v1, v0

    .line 1446
    :try_start_16
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1447
    .line 1448
    .line 1449
    :goto_1e
    throw v3
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    .line 1450
    :goto_1f
    const-string v1, "Watchdog"

    .line 1451
    .line 1452
    const-string v3, "Failed to append to kmsg"

    .line 1453
    .line 1454
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1455
    .line 1456
    .line 1457
    :goto_20
    const/16 v0, 0x63

    .line 1458
    .line 1459
    invoke-static {v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1460
    .line 1461
    .line 1462
    :cond_26
    :goto_21
    const/4 v8, 0x0

    .line 1463
    goto :goto_23

    .line 1464
    :catch_9
    move-exception v0

    .line 1465
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    const-string v5, "Failed to parseLong "

    .line 1468
    .line 1469
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1470
    .line 1471
    .line 1472
    const/4 v8, 0x0

    .line 1473
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v5

    .line 1477
    check-cast v5, Ljava/lang/String;

    .line 1478
    .line 1479
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v1

    .line 1486
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1487
    .line 1488
    .line 1489
    new-instance v0, Ljava/util/ArrayList;

    .line 1490
    .line 1491
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    .line 1493
    .line 1494
    invoke-static {v0}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    .line 1495
    .line 1496
    .line 1497
    goto :goto_23

    .line 1498
    :goto_22
    int-to-long v0, v1

    .line 1499
    cmp-long v0, v0, v5

    .line 1500
    .line 1501
    if-eqz v0, :cond_27

    .line 1502
    .line 1503
    const-string/jumbo v0, "sysprops \'framework_watchdog.fatal_count\' and \'framework_watchdog.fatal_window.second\' should be set or unset together"

    .line 1504
    .line 1505
    .line 1506
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    .line 1508
    .line 1509
    :cond_27
    :goto_23
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1510
    .line 1511
    .line 1512
    move-result v0

    .line 1513
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1514
    .line 1515
    .line 1516
    invoke-static/range {v20 .. v20}, Ljava/lang/System;->exit(I)V

    .line 1517
    .line 1518
    .line 1519
    :goto_24
    move v3, v8

    .line 1520
    move v5, v3

    .line 1521
    move-wide/from16 v13, v16

    .line 1522
    .line 1523
    const/4 v1, 0x3

    .line 1524
    const/16 v12, 0x64

    .line 1525
    .line 1526
    goto/16 :goto_1

    .line 1527
    .line 1528
    :catchall_5
    move-exception v0

    .line 1529
    :try_start_17
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 1530
    throw v0

    .line 1531
    :goto_25
    :try_start_18
    monitor-exit v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1532
    throw v0

    .line 1533
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
