.class public final Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

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
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    if-eqz v2, :cond_e

    .line 8
    .line 9
    const/16 v3, 0xf

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    if-eq v2, v6, :cond_b

    .line 15
    .line 16
    const/4 v7, 0x3

    .line 17
    if-eq v2, v5, :cond_6

    .line 18
    .line 19
    if-eq v2, v7, :cond_2

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    if-eq v2, v3, :cond_0

    .line 23
    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :cond_0
    const-string v2, "GenieMemoryManager"

    .line 27
    .line 28
    const-string v4, "UNLOAD_S_LLM_MODEL message handler"

    .line 29
    .line 30
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 40
    .line 41
    sget v4, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_OOMADJ_THRESHOLD:I

    .line 42
    .line 43
    invoke-virtual {v2, v4, v0}, Lcom/android/server/chimera/SystemRepository;->killGenieProcess(ILjava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ne v2, v6, :cond_1

    .line 48
    .line 49
    const-string v1, "GenieMemoryManager"

    .line 50
    .line 51
    const-string/jumbo v2, "process killed, remove from LRU list"

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/android/server/chimera/genie/GenieLRUList;->getInstance()Lcom/android/server/chimera/genie/GenieLRUList;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_1
    const-string v2, "GenieMemoryManager"

    .line 67
    .line 68
    const-string/jumbo v4, "resetting timer to unload S.LLM"

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object v2, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 75
    .line 76
    iget-object v2, v2, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 77
    .line 78
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget v2, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MODEL_TIMEOUT:I

    .line 83
    .line 84
    int-to-long v2, v2

    .line 85
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 86
    .line 87
    .line 88
    goto/16 :goto_8

    .line 89
    .line 90
    :cond_2
    iget-object v0, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

    .line 93
    .line 94
    iget-boolean v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mFeatureEnabled:Z

    .line 95
    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_3
    iget-object v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mLock:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter v1

    .line 103
    :try_start_0
    iget v2, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 104
    .line 105
    if-nez v2, :cond_4

    .line 106
    .line 107
    monitor-exit v1

    .line 108
    goto/16 :goto_8

    .line 109
    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    sub-int/2addr v2, v6

    .line 113
    iput v2, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 114
    .line 115
    if-lez v2, :cond_5

    .line 116
    .line 117
    monitor-exit v1

    .line 118
    goto/16 :goto_8

    .line 119
    .line 120
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    .line 122
    .line 123
    new-instance v0, Ljava/io/FileWriter;

    .line 124
    .line 125
    const-string v2, "/sys/kernel/rbin/refill_mode"

    .line 126
    .line 127
    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .line 132
    .line 133
    const/16 v0, 0x30

    .line 134
    .line 135
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    .line 140
    .line 141
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 142
    .line 143
    .line 144
    goto/16 :goto_8

    .line 145
    .line 146
    :catch_0
    move-exception v0

    .line 147
    goto :goto_1

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    move-object v2, v0

    .line 150
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :catchall_2
    move-exception v0

    .line 155
    move-object v1, v0

    .line 156
    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 160
    :goto_1
    const-string v1, "RbinManager"

    .line 161
    .line 162
    const-string v2, "Error writing to the file "

    .line 163
    .line 164
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .line 166
    .line 167
    goto/16 :goto_8

    .line 168
    .line 169
    :goto_2
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 170
    throw v0

    .line 171
    :cond_6
    invoke-static {v4, v3, v4, v4}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 176
    .line 177
    sub-int/2addr v1, v2

    .line 178
    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 183
    .line 184
    sub-int/2addr v2, v3

    .line 185
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v0, Ljava/util/ArrayList;

    .line 188
    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    sget-object v5, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v4, " lmkdKill : "

    .line 212
    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v4, " lmkdCriticalKill : "

    .line 220
    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    sget-object v8, Lcom/android/server/chimera/genie/GenieLogger;->sLock:Ljava/lang/Object;

    .line 235
    .line 236
    monitor-enter v8

    .line 237
    :try_start_7
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 238
    .line 239
    if-nez v3, :cond_7

    .line 240
    .line 241
    new-instance v3, Ljava/util/LinkedList;

    .line 242
    .line 243
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 244
    .line 245
    .line 246
    sput-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :catchall_3
    move-exception v0

    .line 250
    goto :goto_5

    .line 251
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-gtz v3, :cond_8

    .line 256
    .line 257
    monitor-exit v8

    .line 258
    goto :goto_4

    .line 259
    :cond_8
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 260
    .line 261
    check-cast v3, Ljava/util/LinkedList;

    .line 262
    .line 263
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    const/16 v4, 0x3e8

    .line 268
    .line 269
    if-lt v3, v4, :cond_9

    .line 270
    .line 271
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 272
    .line 273
    check-cast v3, Ljava/util/LinkedList;

    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    :cond_9
    sget-object v3, Lcom/android/server/chimera/genie/GenieLogger;->sDump:Ljava/util/Queue;

    .line 279
    .line 280
    check-cast v3, Ljava/util/LinkedList;

    .line 281
    .line 282
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    sget v3, Lcom/android/server/chimera/genie/GenieLogger;->sRequestCount:I

    .line 286
    .line 287
    add-int/2addr v3, v6

    .line 288
    sput v3, Lcom/android/server/chimera/genie/GenieLogger;->sRequestCount:I

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-le v0, v7, :cond_a

    .line 295
    .line 296
    sget v0, Lcom/android/server/chimera/genie/GenieLogger;->sReclaimedRequests:I

    .line 297
    .line 298
    add-int/2addr v0, v6

    .line 299
    sput v0, Lcom/android/server/chimera/genie/GenieLogger;->sReclaimedRequests:I

    .line 300
    .line 301
    :cond_a
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 302
    :goto_4
    const-string v0, "GenieMemoryManager"

    .line 303
    .line 304
    const-string v3, "Aft GenAI LMKD Kill "

    .line 305
    .line 306
    const-string v4, " LMKD Critical "

    .line 307
    .line 308
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_8

    .line 312
    .line 313
    :goto_5
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 314
    throw v0

    .line 315
    :cond_b
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v2, Ljava/util/ArrayList;

    .line 318
    .line 319
    iget-object v7, v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 320
    .line 321
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 322
    .line 323
    int-to-long v8, v0

    .line 324
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 328
    .line 329
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    aget-wide v10, v0, v6

    .line 340
    .line 341
    const/16 v7, 0x1d

    .line 342
    .line 343
    aget-wide v12, v0, v7

    .line 344
    .line 345
    const/4 v7, 0x6

    .line 346
    aget-wide v14, v0, v7

    .line 347
    .line 348
    sub-long v16, v10, v12

    .line 349
    .line 350
    sub-long v6, v16, v14

    .line 351
    .line 352
    const/16 v16, 0x1a

    .line 353
    .line 354
    aget-wide v3, v0, v16

    .line 355
    .line 356
    const/16 v16, 0x1b

    .line 357
    .line 358
    move-wide/from16 v18, v6

    .line 359
    .line 360
    aget-wide v5, v0, v16

    .line 361
    .line 362
    add-long v0, v3, v5

    .line 363
    .line 364
    const-wide/16 v20, 0x2

    .line 365
    .line 366
    div-long v20, v0, v20

    .line 367
    .line 368
    move-wide/from16 v22, v5

    .line 369
    .line 370
    add-long v5, v20, v18

    .line 371
    .line 372
    cmp-long v7, v8, v5

    .line 373
    .line 374
    const-wide/16 v20, 0x0

    .line 375
    .line 376
    if-lez v7, :cond_c

    .line 377
    .line 378
    sub-long v24, v8, v5

    .line 379
    .line 380
    move-wide/from16 v28, v3

    .line 381
    .line 382
    move-wide/from16 v3, v24

    .line 383
    .line 384
    move-wide/from16 v24, v28

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_c
    move-wide/from16 v24, v3

    .line 388
    .line 389
    move-wide/from16 v3, v20

    .line 390
    .line 391
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 397
    .line 398
    .line 399
    move-result-object v16

    .line 400
    move-wide/from16 v26, v0

    .line 401
    .line 402
    sget-object v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 403
    .line 404
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v0, " curAvailable : "

    .line 416
    .line 417
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v0, " toReclaim : "

    .line 424
    .line 425
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    const-string/jumbo v0, "reclaimTarget: "

    .line 439
    .line 440
    .line 441
    const-string v1, " = targetSize "

    .line 442
    .line 443
    invoke-static {v0, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v1, " - "

    .line 451
    .line 452
    const-string v5, " ("

    .line 453
    .line 454
    move-wide/from16 v6, v18

    .line 455
    .line 456
    invoke-static {v0, v1, v6, v7, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v1, ", "

    .line 463
    .line 464
    invoke-static {v0, v1, v12, v13, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v6, ")  - "

    .line 471
    .line 472
    move-wide/from16 v7, v26

    .line 473
    .line 474
    invoke-static {v0, v6, v7, v8, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 475
    .line 476
    .line 477
    move-wide/from16 v5, v24

    .line 478
    .line 479
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    move-wide/from16 v5, v22

    .line 486
    .line 487
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v1, ")"

    .line 491
    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const-string v1, "GenieMemoryManager"

    .line 500
    .line 501
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    const/16 v0, 0xf

    .line 505
    .line 506
    const/4 v1, 0x0

    .line 507
    invoke-static {v1, v0, v1, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    const/4 v6, 0x2

    .line 516
    move-object/from16 v5, p0

    .line 517
    .line 518
    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    const-wide/16 v6, 0x1388

    .line 523
    .line 524
    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 525
    .line 526
    .line 527
    cmp-long v0, v3, v20

    .line 528
    .line 529
    if-lez v0, :cond_d

    .line 530
    .line 531
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 532
    .line 533
    iget-object v0, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    const-string v0, "Genie Memory Reclaimer Called"

    .line 539
    .line 540
    const-string v1, "MemoryReclaimer"

    .line 541
    .line 542
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    :try_start_9
    invoke-static {v3, v4, v2}, Lcom/android/server/chimera/genie/MemoryReclaimer;->executeQuickSwap(JLjava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 546
    .line 547
    .line 548
    goto :goto_7

    .line 549
    :catch_1
    move-exception v0

    .line 550
    move-object v2, v0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string/jumbo v3, "error excuting command "

    .line 554
    .line 555
    .line 556
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    :goto_7
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 574
    .line 575
    iget-object v1, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 576
    .line 577
    monitor-enter v1

    .line 578
    :try_start_a
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 579
    .line 580
    const/4 v2, 0x1

    .line 581
    iput-boolean v2, v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mHasReclaimed:Z

    .line 582
    .line 583
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 584
    const/4 v1, 0x0

    .line 585
    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 590
    .line 591
    .line 592
    goto :goto_8

    .line 593
    :catchall_4
    move-exception v0

    .line 594
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 595
    throw v0

    .line 596
    :cond_d
    const-string v0, "GenieMemoryManager"

    .line 597
    .line 598
    const-string v1, "Memory to Reclaim is less, so skipping GenIE: "

    .line 599
    .line 600
    invoke-static {v1, v3, v4, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 601
    .line 602
    .line 603
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 604
    .line 605
    invoke-virtual {v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    .line 606
    .line 607
    .line 608
    goto :goto_8

    .line 609
    :cond_e
    move-object v5, v1

    .line 610
    iget-object v0, v5, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 611
    .line 612
    invoke-virtual {v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    .line 613
    .line 614
    .line 615
    :goto_8
    return-void
.end method
