.class public final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 69

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "E|Compact d_rss="

    .line 6
    .line 7
    const-string v3, "B|Compact "

    .line 8
    .line 9
    const-string v4, "Compact "

    .line 10
    .line 11
    iget v5, v1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const/16 v6, 0x756f

    .line 14
    .line 15
    const-wide/16 v7, 0x40

    .line 16
    .line 17
    const/4 v9, 0x3

    .line 18
    const/4 v10, 0x2

    .line 19
    const/4 v13, 0x1

    .line 20
    const/4 v14, 0x0

    .line 21
    if-eq v5, v13, :cond_7

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    if-eq v5, v2, :cond_6

    .line 25
    .line 26
    const/16 v2, 0x6b

    .line 27
    .line 28
    if-eq v5, v2, :cond_0

    .line 29
    .line 30
    goto/16 :goto_18

    .line 31
    .line 32
    :cond_0
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->isNowAppLaunching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-wide/16 v2, 0x7d0

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    .line 54
    .line 55
    goto/16 :goto_18

    .line 56
    .line 57
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Lcom/android/server/am/CachedAppOptimizer;->isProcessFrozen(I)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 66
    .line 67
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 68
    .line 69
    iget-object v3, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 70
    .line 71
    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v4, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_2

    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    monitor-exit v3

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    monitor-exit v3

    .line 95
    move v2, v14

    .line 96
    :goto_0
    if-eqz v2, :cond_29

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw v0

    .line 101
    :cond_3
    :goto_2
    const-string v2, "ActivityManager"

    .line 102
    .line 103
    const-string v3, "FCA:Reclamation for pid: "

    .line 104
    .line 105
    invoke-static {v1, v3, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 111
    .line 112
    invoke-interface {v2, v1}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    invoke-static {v1, v13}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 125
    .line 126
    iget-object v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 127
    .line 128
    invoke-interface {v7, v1}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    aget-wide v15, v7, v14

    .line 133
    .line 134
    aget-wide v17, v2, v14

    .line 135
    .line 136
    sub-long v15, v15, v17

    .line 137
    .line 138
    aget-wide v17, v7, v13

    .line 139
    .line 140
    aget-wide v19, v2, v13

    .line 141
    .line 142
    sub-long v17, v17, v19

    .line 143
    .line 144
    aget-wide v19, v7, v10

    .line 145
    .line 146
    aget-wide v21, v2, v10

    .line 147
    .line 148
    sub-long v19, v19, v21

    .line 149
    .line 150
    aget-wide v21, v7, v9

    .line 151
    .line 152
    aget-wide v23, v2, v9

    .line 153
    .line 154
    sub-long v21, v21, v23

    .line 155
    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v23

    .line 160
    sub-long v23, v23, v3

    .line 161
    .line 162
    const-string v3, ""

    .line 163
    .line 164
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 165
    .line 166
    iget-object v4, v4, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 167
    .line 168
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 169
    .line 170
    .line 171
    monitor-enter v4

    .line 172
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_5

    .line 181
    .line 182
    if-nez v5, :cond_4

    .line 183
    .line 184
    aget-wide v11, v7, v13

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catchall_1
    move-exception v0

    .line 188
    goto :goto_4

    .line 189
    :cond_4
    const-wide/16 v11, 0x0

    .line 190
    .line 191
    :goto_3
    iput-wide v11, v0, Lcom/android/server/am/ProcessRecord;->mRSSresiduePostFCA:J

    .line 192
    .line 193
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 194
    .line 195
    :cond_5
    move-object/from16 v26, v3

    .line 196
    .line 197
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 199
    .line 200
    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v25

    .line 205
    const-string v27, "FCA:"

    .line 206
    .line 207
    aget-wide v0, v2, v14

    .line 208
    .line 209
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 210
    .line 211
    .line 212
    move-result-object v28

    .line 213
    aget-wide v0, v2, v13

    .line 214
    .line 215
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 216
    .line 217
    .line 218
    move-result-object v29

    .line 219
    aget-wide v0, v2, v10

    .line 220
    .line 221
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 222
    .line 223
    .line 224
    move-result-object v30

    .line 225
    aget-wide v0, v2, v9

    .line 226
    .line 227
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v31

    .line 231
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 232
    .line 233
    .line 234
    move-result-object v32

    .line 235
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object v33

    .line 239
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v34

    .line 243
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 244
    .line 245
    .line 246
    move-result-object v35

    .line 247
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 248
    .line 249
    .line 250
    move-result-object v36

    .line 251
    const-string v37, ""

    .line 252
    .line 253
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v38

    .line 257
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v39

    .line 261
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v40

    .line 265
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v41

    .line 269
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v42

    .line 273
    filled-new-array/range {v25 .. v42}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 278
    .line 279
    .line 280
    goto/16 :goto_18

    .line 281
    .line 282
    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 283
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 284
    .line 285
    .line 286
    throw v0

    .line 287
    :cond_6
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 288
    .line 289
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 294
    .line 295
    aget-object v1, v3, v1

    .line 296
    .line 297
    const-string v3, "ActivityManager"

    .line 298
    .line 299
    const-string v4, "Performing native compaction for pid="

    .line 300
    .line 301
    const-string v5, " type="

    .line 302
    .line 303
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    const-string/jumbo v3, "compactSystem"

    .line 322
    .line 323
    .line 324
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 330
    .line 331
    invoke-interface {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 332
    .line 333
    .line 334
    goto :goto_5

    .line 335
    :catch_0
    const-string v0, "ActivityManager"

    .line 336
    .line 337
    const-string v1, "Failed compacting native pid= "

    .line 338
    .line 339
    invoke-static {v2, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :goto_5
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_18

    .line 346
    .line 347
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 348
    .line 349
    .line 350
    move-result-wide v15

    .line 351
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 352
    .line 353
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 354
    .line 355
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 356
    .line 357
    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 358
    .line 359
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 360
    .line 361
    .line 362
    monitor-enter v6

    .line 363
    :try_start_4
    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 364
    .line 365
    iget-object v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-eqz v7, :cond_8

    .line 372
    .line 373
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 374
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :catchall_2
    move-exception v0

    .line 379
    goto/16 :goto_1a

    .line 380
    .line 381
    :cond_8
    :try_start_5
    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 382
    .line 383
    iget-object v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 390
    .line 391
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 392
    .line 393
    iget-boolean v9, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    .line 394
    .line 395
    iput-boolean v14, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    .line 396
    .line 397
    iget v13, v7, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 398
    .line 399
    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 400
    .line 401
    iput-boolean v14, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    .line 402
    .line 403
    iget-object v14, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 404
    .line 405
    iget-object v11, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 406
    .line 407
    iget-object v12, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 408
    .line 409
    if-nez v12, :cond_9

    .line 410
    .line 411
    sget-object v12, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 412
    .line 413
    iput-object v12, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 414
    .line 415
    :cond_9
    iget-object v12, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 416
    .line 417
    move-object/from16 v19, v2

    .line 418
    .line 419
    move-object/from16 v20, v3

    .line 420
    .line 421
    iget-wide v2, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 422
    .line 423
    move-wide/from16 v43, v2

    .line 424
    .line 425
    iget v2, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    .line 426
    .line 427
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 428
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 429
    .line 430
    .line 431
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 432
    .line 433
    iget-object v6, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 434
    .line 435
    move-object/from16 v42, v12

    .line 436
    .line 437
    iget-object v12, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 438
    .line 439
    invoke-virtual {v12, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v12

    .line 443
    check-cast v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;

    .line 444
    .line 445
    if-nez v12, :cond_a

    .line 446
    .line 447
    new-instance v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;

    .line 448
    .line 449
    invoke-direct {v12, v6}, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;-><init>(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V

    .line 450
    .line 451
    .line 452
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerSourceCompactStats:Ljava/util/EnumMap;

    .line 453
    .line 454
    invoke-virtual {v3, v6, v12}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    :cond_a
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 458
    .line 459
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    if-nez v10, :cond_b

    .line 463
    .line 464
    const-string v6, ""

    .line 465
    .line 466
    move/from16 v45, v5

    .line 467
    .line 468
    goto :goto_6

    .line 469
    :cond_b
    move/from16 v45, v5

    .line 470
    .line 471
    move-object v6, v10

    .line 472
    :goto_6
    iget-object v5, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 473
    .line 474
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    check-cast v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;

    .line 479
    .line 480
    if-nez v5, :cond_c

    .line 481
    .line 482
    new-instance v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;

    .line 483
    .line 484
    invoke-direct {v5, v6}, Lcom/android/server/am/CachedAppOptimizer$AggregatedProcessCompactionStats;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessCompactStats:Ljava/util/LinkedHashMap;

    .line 488
    .line 489
    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    :cond_c
    const-wide/16 v21, 0x1

    .line 493
    .line 494
    if-nez v13, :cond_d

    .line 495
    .line 496
    iget-wide v0, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 497
    .line 498
    add-long v0, v0, v21

    .line 499
    .line 500
    iput-wide v0, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 501
    .line 502
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 503
    .line 504
    add-long v0, v0, v21

    .line 505
    .line 506
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 507
    .line 508
    return-void

    .line 509
    :cond_d
    if-nez v9, :cond_20

    .line 510
    .line 511
    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 512
    .line 513
    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 514
    .line 515
    const/16 v6, 0xc8

    .line 516
    .line 517
    if-gt v3, v6, :cond_e

    .line 518
    .line 519
    const/4 v3, 0x1

    .line 520
    goto :goto_7

    .line 521
    :cond_e
    const/4 v3, 0x0

    .line 522
    :goto_7
    if-eqz v3, :cond_f

    .line 523
    .line 524
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 525
    .line 526
    add-long v0, v0, v21

    .line 527
    .line 528
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 529
    .line 530
    iget-wide v0, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 531
    .line 532
    add-long v0, v0, v21

    .line 533
    .line 534
    iput-wide v0, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 535
    .line 536
    return-void

    .line 537
    :cond_f
    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 538
    .line 539
    iget-object v6, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 540
    .line 541
    if-nez v6, :cond_10

    .line 542
    .line 543
    sget-object v6, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 544
    .line 545
    iput-object v6, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 546
    .line 547
    :cond_10
    iget-object v6, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 548
    .line 549
    move-object/from16 p1, v8

    .line 550
    .line 551
    move/from16 v46, v9

    .line 552
    .line 553
    iget-wide v8, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 554
    .line 555
    const-wide/16 v17, 0x0

    .line 556
    .line 557
    cmp-long v3, v8, v17

    .line 558
    .line 559
    if-eqz v3, :cond_17

    .line 560
    .line 561
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 562
    .line 563
    if-ne v14, v3, :cond_17

    .line 564
    .line 565
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 566
    .line 567
    move-object/from16 v32, v14

    .line 568
    .line 569
    sget-object v14, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 570
    .line 571
    if-ne v11, v3, :cond_15

    .line 572
    .line 573
    if-ne v6, v3, :cond_11

    .line 574
    .line 575
    sub-long v23, v15, v8

    .line 576
    .line 577
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 578
    .line 579
    move/from16 v33, v2

    .line 580
    .line 581
    iget-wide v2, v3, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 582
    .line 583
    cmp-long v2, v23, v2

    .line 584
    .line 585
    if-ltz v2, :cond_12

    .line 586
    .line 587
    goto :goto_8

    .line 588
    :cond_11
    move/from16 v33, v2

    .line 589
    .line 590
    :goto_8
    if-ne v6, v14, :cond_14

    .line 591
    .line 592
    sub-long v2, v15, v8

    .line 593
    .line 594
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 595
    .line 596
    iget-wide v8, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 597
    .line 598
    cmp-long v2, v2, v8

    .line 599
    .line 600
    if-gez v2, :cond_14

    .line 601
    .line 602
    :cond_12
    move-object/from16 v23, v4

    .line 603
    .line 604
    move-object/from16 v47, v10

    .line 605
    .line 606
    move-object/from16 v48, v11

    .line 607
    .line 608
    :cond_13
    :goto_9
    const/4 v2, 0x1

    .line 609
    goto :goto_c

    .line 610
    :cond_14
    move-object/from16 v23, v4

    .line 611
    .line 612
    move-object/from16 v47, v10

    .line 613
    .line 614
    move-object/from16 v48, v11

    .line 615
    .line 616
    goto :goto_b

    .line 617
    :cond_15
    move/from16 v33, v2

    .line 618
    .line 619
    if-ne v11, v14, :cond_14

    .line 620
    .line 621
    if-ne v6, v3, :cond_16

    .line 622
    .line 623
    sub-long v2, v15, v8

    .line 624
    .line 625
    move-object/from16 v23, v4

    .line 626
    .line 627
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 628
    .line 629
    move-object/from16 v47, v10

    .line 630
    .line 631
    move-object/from16 v48, v11

    .line 632
    .line 633
    iget-wide v10, v4, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 634
    .line 635
    cmp-long v2, v2, v10

    .line 636
    .line 637
    if-ltz v2, :cond_13

    .line 638
    .line 639
    goto :goto_a

    .line 640
    :cond_16
    move-object/from16 v23, v4

    .line 641
    .line 642
    move-object/from16 v47, v10

    .line 643
    .line 644
    move-object/from16 v48, v11

    .line 645
    .line 646
    :goto_a
    if-ne v6, v14, :cond_18

    .line 647
    .line 648
    sub-long v2, v15, v8

    .line 649
    .line 650
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 651
    .line 652
    iget-wide v8, v4, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 653
    .line 654
    cmp-long v2, v2, v8

    .line 655
    .line 656
    if-gez v2, :cond_18

    .line 657
    .line 658
    goto :goto_9

    .line 659
    :cond_17
    move/from16 v33, v2

    .line 660
    .line 661
    move-object/from16 v23, v4

    .line 662
    .line 663
    move-object/from16 v47, v10

    .line 664
    .line 665
    move-object/from16 v48, v11

    .line 666
    .line 667
    move-object/from16 v32, v14

    .line 668
    .line 669
    :cond_18
    :goto_b
    const/4 v2, 0x0

    .line 670
    :goto_c
    if-eqz v2, :cond_19

    .line 671
    .line 672
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 673
    .line 674
    add-long v0, v0, v21

    .line 675
    .line 676
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 677
    .line 678
    iget-wide v0, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 679
    .line 680
    add-long v0, v0, v21

    .line 681
    .line 682
    iput-wide v0, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 683
    .line 684
    return-void

    .line 685
    :cond_19
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 686
    .line 687
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 688
    .line 689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v2

    .line 697
    if-eqz v2, :cond_1a

    .line 698
    .line 699
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 700
    .line 701
    add-long v0, v0, v21

    .line 702
    .line 703
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 704
    .line 705
    iget-wide v0, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 706
    .line 707
    add-long v0, v0, v21

    .line 708
    .line 709
    iput-wide v0, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 710
    .line 711
    return-void

    .line 712
    :cond_1a
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 713
    .line 714
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 715
    .line 716
    invoke-interface {v2, v13}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    const/4 v3, 0x2

    .line 721
    aget-wide v8, v2, v3

    .line 722
    .line 723
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 724
    .line 725
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 726
    .line 727
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    check-cast v3, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    .line 736
    .line 737
    const/4 v4, 0x0

    .line 738
    aget-wide v10, v2, v4

    .line 739
    .line 740
    const-wide/16 v17, 0x0

    .line 741
    .line 742
    cmp-long v4, v10, v17

    .line 743
    .line 744
    if-nez v4, :cond_1b

    .line 745
    .line 746
    const/4 v4, 0x1

    .line 747
    aget-wide v10, v2, v4

    .line 748
    .line 749
    cmp-long v4, v10, v17

    .line 750
    .line 751
    if-nez v4, :cond_1b

    .line 752
    .line 753
    const/4 v4, 0x2

    .line 754
    aget-wide v10, v2, v4

    .line 755
    .line 756
    cmp-long v4, v10, v17

    .line 757
    .line 758
    if-nez v4, :cond_1b

    .line 759
    .line 760
    const/4 v4, 0x3

    .line 761
    aget-wide v10, v2, v4

    .line 762
    .line 763
    cmp-long v4, v10, v17

    .line 764
    .line 765
    if-nez v4, :cond_1b

    .line 766
    .line 767
    move-object/from16 v6, v48

    .line 768
    .line 769
    :goto_d
    const/4 v3, 0x1

    .line 770
    goto :goto_f

    .line 771
    :cond_1b
    sget-object v4, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 772
    .line 773
    move-object/from16 v6, v48

    .line 774
    .line 775
    if-ne v6, v4, :cond_1d

    .line 776
    .line 777
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 778
    .line 779
    iget-wide v10, v4, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 780
    .line 781
    cmp-long v4, v10, v17

    .line 782
    .line 783
    if-lez v4, :cond_1c

    .line 784
    .line 785
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 786
    .line 787
    iget-wide v10, v4, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 788
    .line 789
    cmp-long v4, v8, v10

    .line 790
    .line 791
    if-gez v4, :cond_1c

    .line 792
    .line 793
    :goto_e
    goto :goto_d

    .line 794
    :cond_1c
    if-eqz v3, :cond_1d

    .line 795
    .line 796
    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 797
    .line 798
    iget-wide v8, v4, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 799
    .line 800
    const-wide/16 v10, 0x0

    .line 801
    .line 802
    cmp-long v4, v8, v10

    .line 803
    .line 804
    if-lez v4, :cond_1d

    .line 805
    .line 806
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mRssAfterCompaction:[J

    .line 807
    .line 808
    const/4 v4, 0x1

    .line 809
    aget-wide v8, v2, v4

    .line 810
    .line 811
    aget-wide v10, v3, v4

    .line 812
    .line 813
    sub-long/2addr v8, v10

    .line 814
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    .line 815
    .line 816
    .line 817
    move-result-wide v8

    .line 818
    const/4 v4, 0x2

    .line 819
    aget-wide v10, v2, v4

    .line 820
    .line 821
    aget-wide v24, v3, v4

    .line 822
    .line 823
    sub-long v10, v10, v24

    .line 824
    .line 825
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    .line 826
    .line 827
    .line 828
    move-result-wide v10

    .line 829
    add-long/2addr v10, v8

    .line 830
    const/4 v4, 0x3

    .line 831
    aget-wide v8, v2, v4

    .line 832
    .line 833
    aget-wide v24, v3, v4

    .line 834
    .line 835
    sub-long v8, v8, v24

    .line 836
    .line 837
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    .line 838
    .line 839
    .line 840
    move-result-wide v3

    .line 841
    add-long/2addr v3, v10

    .line 842
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 843
    .line 844
    iget-wide v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 845
    .line 846
    cmp-long v3, v3, v8

    .line 847
    .line 848
    if-gtz v3, :cond_1d

    .line 849
    .line 850
    goto :goto_e

    .line 851
    :cond_1d
    const/4 v3, 0x0

    .line 852
    :goto_f
    if-eqz v3, :cond_1e

    .line 853
    .line 854
    iget-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 855
    .line 856
    add-long v0, v0, v21

    .line 857
    .line 858
    iput-wide v0, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 859
    .line 860
    iget-wide v0, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 861
    .line 862
    add-long v0, v0, v21

    .line 863
    .line 864
    iput-wide v0, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 865
    .line 866
    return-void

    .line 867
    :cond_1e
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 868
    .line 869
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    .line 870
    .line 871
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 872
    .line 873
    .line 874
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    if-eqz v3, :cond_1f

    .line 879
    .line 880
    const-string/jumbo v1, "skip compaction for "

    .line 881
    .line 882
    .line 883
    const-string v2, "("

    .line 884
    .line 885
    const-string v3, ")"

    .line 886
    .line 887
    move-object/from16 v4, v47

    .line 888
    .line 889
    invoke-static {v13, v1, v4, v2, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    const/4 v2, 0x1

    .line 894
    invoke-static {v1, v2}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 895
    .line 896
    .line 897
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 898
    .line 899
    invoke-virtual {v0, v7}, Lcom/android/server/am/CachedAppOptimizer;->delayCompactProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 900
    .line 901
    .line 902
    return-void

    .line 903
    :cond_1f
    move-object/from16 v4, v47

    .line 904
    .line 905
    goto :goto_10

    .line 906
    :cond_20
    move/from16 v33, v2

    .line 907
    .line 908
    move-object/from16 v23, v4

    .line 909
    .line 910
    move-object/from16 p1, v8

    .line 911
    .line 912
    move/from16 v46, v9

    .line 913
    .line 914
    move-object v4, v10

    .line 915
    move-object v6, v11

    .line 916
    move-object/from16 v32, v14

    .line 917
    .line 918
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 919
    .line 920
    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 921
    .line 922
    invoke-interface {v2, v13}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    :goto_10
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 927
    .line 928
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    .line 930
    .line 931
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 932
    .line 933
    if-ne v6, v8, :cond_21

    .line 934
    .line 935
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    .line 936
    .line 937
    .line 938
    move-result-wide v8

    .line 939
    const-wide v10, 0x3fc999999999999aL    # 0.2

    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    cmpg-double v8, v8, v10

    .line 945
    .line 946
    if-gez v8, :cond_21

    .line 947
    .line 948
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 949
    .line 950
    iget-wide v9, v3, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionDowngrades:J

    .line 951
    .line 952
    add-long v9, v9, v21

    .line 953
    .line 954
    iput-wide v9, v3, Lcom/android/server/am/CachedAppOptimizer;->mTotalCompactionDowngrades:J

    .line 955
    .line 956
    goto :goto_11

    .line 957
    :cond_21
    move-object v8, v6

    .line 958
    :goto_11
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 959
    .line 960
    if-ne v8, v3, :cond_22

    .line 961
    .line 962
    return-void

    .line 963
    :cond_22
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 964
    .line 965
    move-object/from16 v9, v23

    .line 966
    .line 967
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v9

    .line 974
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    const-string v9, ": "

    .line 978
    .line 979
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    .line 984
    .line 985
    const-string v9, " lastOomAdjReason: "

    .line 986
    .line 987
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    move/from16 v9, v33

    .line 991
    .line 992
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    const-string v10, " source: "

    .line 996
    .line 997
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v10

    .line 1004
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    const-wide/16 v10, 0x40

    .line 1012
    .line 1013
    invoke-static {v10, v11, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    move-object/from16 v10, v20

    .line 1019
    .line 1020
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    .line 1025
    .line 1026
    const-string v10, "("

    .line 1027
    .line 1028
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    const-string v10, ")"

    .line 1035
    .line 1036
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v3

    .line 1043
    const/4 v10, 0x1

    .line 1044
    invoke-static {v3, v10}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1045
    .line 1046
    .line 1047
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    .line 1048
    .line 1049
    .line 1050
    move-result-wide v10

    .line 1051
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    .line 1052
    .line 1053
    .line 1054
    move-result-wide v23

    .line 1055
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1056
    .line 1057
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 1058
    .line 1059
    invoke-interface {v3, v8, v13}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V

    .line 1060
    .line 1061
    .line 1062
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    .line 1063
    .line 1064
    .line 1065
    move-result-wide v25

    .line 1066
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1067
    .line 1068
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 1069
    .line 1070
    invoke-interface {v3, v13}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    .line 1071
    .line 1072
    .line 1073
    move-result-object v3

    .line 1074
    move/from16 v47, v13

    .line 1075
    .line 1076
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1077
    .line 1078
    .line 1079
    move-result-wide v13

    .line 1080
    sub-long v15, v13, v15

    .line 1081
    .line 1082
    sub-long v25, v25, v23

    .line 1083
    .line 1084
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    .line 1085
    .line 1086
    .line 1087
    move-result-wide v48

    .line 1088
    const/16 v20, 0x0

    .line 1089
    .line 1090
    aget-wide v23, v3, v20

    .line 1091
    .line 1092
    aget-wide v27, v2, v20

    .line 1093
    .line 1094
    sub-long v50, v23, v27

    .line 1095
    .line 1096
    const/16 v20, 0x1

    .line 1097
    .line 1098
    aget-wide v23, v3, v20

    .line 1099
    .line 1100
    aget-wide v27, v2, v20

    .line 1101
    .line 1102
    sub-long v52, v23, v27

    .line 1103
    .line 1104
    const/16 v20, 0x2

    .line 1105
    .line 1106
    aget-wide v23, v3, v20

    .line 1107
    .line 1108
    aget-wide v27, v2, v20

    .line 1109
    .line 1110
    move-wide/from16 v54, v13

    .line 1111
    .line 1112
    sub-long v13, v23, v27

    .line 1113
    .line 1114
    const/16 v20, 0x3

    .line 1115
    .line 1116
    aget-wide v23, v3, v20

    .line 1117
    .line 1118
    aget-wide v27, v2, v20

    .line 1119
    .line 1120
    sub-long v56, v23, v27

    .line 1121
    .line 1122
    move-object/from16 v58, v6

    .line 1123
    .line 1124
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    move-wide/from16 v59, v15

    .line 1127
    .line 1128
    move-object/from16 v15, v19

    .line 1129
    .line 1130
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    const/4 v15, 0x0

    .line 1134
    aget-wide v19, v3, v15

    .line 1135
    .line 1136
    aget-wide v23, v2, v15

    .line 1137
    .line 1138
    move-object v15, v8

    .line 1139
    move/from16 v33, v9

    .line 1140
    .line 1141
    sub-long v8, v19, v23

    .line 1142
    .line 1143
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    const-string v8, "KB"

    .line 1147
    .line 1148
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v6

    .line 1155
    const/4 v8, 0x1

    .line 1156
    invoke-static {v6, v8}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 1157
    .line 1158
    .line 1159
    move-object/from16 v6, p1

    .line 1160
    .line 1161
    iget-object v9, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 1162
    .line 1163
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 1164
    .line 1165
    .line 1166
    move-result v9

    .line 1167
    if-eq v9, v8, :cond_27

    .line 1168
    .line 1169
    const/4 v8, 0x3

    .line 1170
    if-eq v9, v8, :cond_23

    .line 1171
    .line 1172
    const-string v0, "ActivityManager"

    .line 1173
    .line 1174
    const-string v1, "Compaction: Unknown requested action"

    .line 1175
    .line 1176
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1177
    .line 1178
    .line 1179
    const-wide/16 v1, 0x40

    .line 1180
    .line 1181
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1182
    .line 1183
    .line 1184
    return-void

    .line 1185
    :catchall_3
    move-exception v0

    .line 1186
    const-wide/16 v1, 0x40

    .line 1187
    .line 1188
    goto/16 :goto_19

    .line 1189
    .line 1190
    :catch_1
    move-exception v0

    .line 1191
    goto/16 :goto_17

    .line 1192
    .line 1193
    :cond_23
    :try_start_7
    iget-wide v8, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1194
    .line 1195
    add-long v8, v8, v21

    .line 1196
    .line 1197
    iput-wide v8, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1198
    .line 1199
    iget-wide v8, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1200
    .line 1201
    add-long v8, v8, v21

    .line 1202
    .line 1203
    iput-wide v8, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 1204
    .line 1205
    neg-long v8, v13

    .line 1206
    sub-long v19, v48, v10

    .line 1207
    .line 1208
    sub-long v21, v8, v19

    .line 1209
    .line 1210
    const-wide/32 v23, 0xf4240

    .line 1211
    .line 1212
    .line 1213
    div-long v61, v25, v23

    .line 1214
    .line 1215
    const/16 v16, 0x2

    .line 1216
    .line 1217
    aget-wide v63, v2, v16

    .line 1218
    .line 1219
    const-wide/16 v16, 0x0

    .line 1220
    .line 1221
    cmp-long v18, v8, v16

    .line 1222
    .line 1223
    if-lez v18, :cond_24

    .line 1224
    .line 1225
    goto :goto_12

    .line 1226
    :cond_24
    move-wide/from16 v8, v16

    .line 1227
    .line 1228
    :goto_12
    cmp-long v18, v19, v16

    .line 1229
    .line 1230
    if-lez v18, :cond_25

    .line 1231
    .line 1232
    move-wide/from16 v65, v19

    .line 1233
    .line 1234
    goto :goto_13

    .line 1235
    :cond_25
    move-wide/from16 v65, v16

    .line 1236
    .line 1237
    :goto_13
    cmp-long v18, v21, v16

    .line 1238
    .line 1239
    if-lez v18, :cond_26

    .line 1240
    .line 1241
    move-wide/from16 v67, v21

    .line 1242
    .line 1243
    goto :goto_14

    .line 1244
    :cond_26
    move-wide/from16 v67, v16

    .line 1245
    .line 1246
    :goto_14
    move-object/from16 v21, v5

    .line 1247
    .line 1248
    move-wide/from16 v22, v8

    .line 1249
    .line 1250
    move-wide/from16 v24, v65

    .line 1251
    .line 1252
    move-wide/from16 v26, v67

    .line 1253
    .line 1254
    move-wide/from16 v28, v63

    .line 1255
    .line 1256
    move-wide/from16 v30, v61

    .line 1257
    .line 1258
    invoke-virtual/range {v21 .. v31}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->addMemStats(JJJJJ)V

    .line 1259
    .line 1260
    .line 1261
    move-object/from16 v21, v12

    .line 1262
    .line 1263
    move-wide/from16 v22, v8

    .line 1264
    .line 1265
    move-wide/from16 v24, v65

    .line 1266
    .line 1267
    move-wide/from16 v26, v67

    .line 1268
    .line 1269
    move-wide/from16 v28, v63

    .line 1270
    .line 1271
    move-wide/from16 v30, v61

    .line 1272
    .line 1273
    invoke-virtual/range {v21 .. v31}, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->addMemStats(JJJJJ)V

    .line 1274
    .line 1275
    .line 1276
    new-instance v5, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;

    .line 1277
    .line 1278
    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1279
    .line 1280
    move-object/from16 v17, v5

    .line 1281
    .line 1282
    move-object/from16 v18, v3

    .line 1283
    .line 1284
    move-object/from16 v19, v32

    .line 1285
    .line 1286
    move-object/from16 v20, v4

    .line 1287
    .line 1288
    move-wide/from16 v21, v8

    .line 1289
    .line 1290
    move-wide/from16 v23, v65

    .line 1291
    .line 1292
    move-wide/from16 v25, v67

    .line 1293
    .line 1294
    move-wide/from16 v27, v63

    .line 1295
    .line 1296
    move-wide/from16 v29, v61

    .line 1297
    .line 1298
    move/from16 v31, v1

    .line 1299
    .line 1300
    move/from16 v32, v45

    .line 1301
    .line 1302
    move/from16 v34, v7

    .line 1303
    .line 1304
    invoke-direct/range {v17 .. v34}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;-><init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V

    .line 1305
    .line 1306
    .line 1307
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1308
    .line 1309
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 1310
    .line 1311
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v7

    .line 1315
    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    .line 1317
    .line 1318
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1319
    .line 1320
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 1321
    .line 1322
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v7

    .line 1326
    invoke-virtual {v3, v7, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    .line 1328
    .line 1329
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1330
    .line 1331
    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mCompactionStatsHistory:Ljava/util/LinkedList;

    .line 1332
    .line 1333
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1334
    .line 1335
    .line 1336
    if-nez v46, :cond_28

    .line 1337
    .line 1338
    invoke-virtual {v5}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->sendStat()V

    .line 1339
    .line 1340
    .line 1341
    goto :goto_15

    .line 1342
    :cond_27
    iget-wide v7, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1343
    .line 1344
    add-long v7, v7, v21

    .line 1345
    .line 1346
    iput-wide v7, v12, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1347
    .line 1348
    iget-wide v7, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1349
    .line 1350
    add-long v7, v7, v21

    .line 1351
    .line 1352
    iput-wide v7, v5, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 1353
    .line 1354
    :cond_28
    :goto_15
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v17

    .line 1358
    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v19

    .line 1362
    const/4 v3, 0x0

    .line 1363
    aget-wide v7, v2, v3

    .line 1364
    .line 1365
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v20

    .line 1369
    const/4 v3, 0x1

    .line 1370
    aget-wide v7, v2, v3

    .line 1371
    .line 1372
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v21

    .line 1376
    const/4 v3, 0x2

    .line 1377
    aget-wide v7, v2, v3

    .line 1378
    .line 1379
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v22

    .line 1383
    const/4 v3, 0x3

    .line 1384
    aget-wide v2, v2, v3

    .line 1385
    .line 1386
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v23

    .line 1390
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v24

    .line 1394
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v25

    .line 1398
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v26

    .line 1402
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v27

    .line 1406
    invoke-static/range {v59 .. v60}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v28

    .line 1410
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v29

    .line 1414
    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v30

    .line 1418
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v31

    .line 1422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v32

    .line 1426
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v33

    .line 1430
    sub-long v10, v10, v48

    .line 1431
    .line 1432
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v34

    .line 1436
    move-object/from16 v18, v4

    .line 1437
    .line 1438
    filled-new-array/range {v17 .. v34}, [Ljava/lang/Object;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v1

    .line 1442
    const/16 v2, 0x756f

    .line 1443
    .line 1444
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1445
    .line 1446
    .line 1447
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1448
    .line 1449
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 1450
    .line 1451
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1452
    .line 1453
    .line 1454
    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1455
    move-wide/from16 v2, v54

    .line 1456
    .line 1457
    :try_start_8
    iput-wide v2, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    .line 1458
    .line 1459
    move-object/from16 v0, v58

    .line 1460
    .line 1461
    iput-object v0, v6, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    .line 1462
    .line 1463
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1464
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1465
    .line 1466
    .line 1467
    const-wide/16 v1, 0x40

    .line 1468
    .line 1469
    :goto_16
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1470
    .line 1471
    .line 1472
    goto :goto_18

    .line 1473
    :catchall_4
    move-exception v0

    .line 1474
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1475
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1476
    .line 1477
    .line 1478
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1479
    :goto_17
    :try_start_c
    const-string v1, "ActivityManager"

    .line 1480
    .line 1481
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1482
    .line 1483
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1484
    .line 1485
    .line 1486
    const-string v3, "Exception occurred while compacting pid: "

    .line 1487
    .line 1488
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    .line 1493
    .line 1494
    const-string v3, ". Exception:"

    .line 1495
    .line 1496
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v0

    .line 1503
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v0

    .line 1510
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1511
    .line 1512
    .line 1513
    const-wide/16 v1, 0x40

    .line 1514
    .line 1515
    goto :goto_16

    .line 1516
    :cond_29
    :goto_18
    return-void

    .line 1517
    :goto_19
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1518
    .line 1519
    .line 1520
    throw v0

    .line 1521
    :goto_1a
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1522
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1523
    .line 1524
    .line 1525
    throw v0
.end method
