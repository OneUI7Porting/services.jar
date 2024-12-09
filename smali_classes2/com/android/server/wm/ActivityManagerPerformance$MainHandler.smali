.class public final Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v3, :cond_4

    .line 13
    .line 14
    instance-of v6, v3, Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    if-eqz v6, :cond_1

    .line 17
    .line 18
    move-object v6, v3

    .line 19
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v6, v4

    .line 23
    :goto_0
    instance-of v7, v3, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v7, :cond_2

    .line 26
    .line 27
    move-object v7, v3

    .line 28
    check-cast v7, Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move-object v7, v4

    .line 32
    :goto_1
    instance-of v8, v3, Ljava/lang/Boolean;

    .line 33
    .line 34
    if-eqz v8, :cond_3

    .line 35
    .line 36
    check-cast v3, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    :goto_2
    move v3, v5

    .line 44
    goto :goto_3

    .line 45
    :cond_4
    move-object v6, v4

    .line 46
    move-object v7, v6

    .line 47
    goto :goto_2

    .line 48
    :goto_3
    iget v8, v0, Landroid/os/Message;->what:I

    .line 49
    .line 50
    move-object/from16 v9, p0

    .line 51
    .line 52
    iget-object v9, v9, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 53
    .line 54
    const-string v10, "ActivityManagerPerformance"

    .line 55
    .line 56
    if-eq v8, v2, :cond_31

    .line 57
    .line 58
    const/4 v11, 0x2

    .line 59
    if-eq v8, v11, :cond_2f

    .line 60
    .line 61
    if-eq v8, v1, :cond_2d

    .line 62
    .line 63
    const/4 v12, 0x4

    .line 64
    if-eq v8, v12, :cond_2b

    .line 65
    .line 66
    const/16 v13, 0x32

    .line 67
    .line 68
    const-wide/16 v14, 0x0

    .line 69
    .line 70
    if-eq v8, v13, :cond_22

    .line 71
    .line 72
    const v11, 0x402610

    .line 73
    .line 74
    .line 75
    packed-switch v8, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    goto/16 :goto_13

    .line 79
    .line 80
    :pswitch_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    const-string v1, "Received MSG_ANIMATION_BOOSTER  timeout: "

    .line 93
    .line 94
    invoke-static {v0, v1, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    const-string v1, "ANIMATION_BOOST"

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v1, v0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_13

    .line 107
    .line 108
    :pswitch_1
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    const-string v0, "Received MSG_DHA_BOOSTER_ON"

    .line 113
    .line 114
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_6
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 118
    .line 119
    if-nez v0, :cond_7

    .line 120
    .line 121
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 122
    .line 123
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 124
    .line 125
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 126
    .line 127
    :cond_7
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 128
    .line 129
    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->LMKD_REENTRY_MODE_ENABLE:Z

    .line 130
    .line 131
    if-eqz v3, :cond_c

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v8

    .line 140
    sget-wide v10, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    .line 141
    .line 142
    sub-long v10, v8, v10

    .line 143
    .line 144
    const-wide/32 v16, 0x1d4c0

    .line 145
    .line 146
    .line 147
    cmp-long v3, v10, v16

    .line 148
    .line 149
    const-string v6, "DynamicHiddenApp_BGSlotManager"

    .line 150
    .line 151
    iget-object v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    .line 152
    .line 153
    if-gez v3, :cond_a

    .line 154
    .line 155
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    if-eqz v11, :cond_8

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_8
    sget v11, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 165
    .line 166
    add-int/2addr v11, v2

    .line 167
    sput v11, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 168
    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    invoke-virtual {v3, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    :goto_4
    iget-boolean v3, v0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    .line 177
    .line 178
    if-nez v3, :cond_b

    .line 179
    .line 180
    sget v3, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 181
    .line 182
    const/16 v11, 0xf

    .line 183
    .line 184
    if-lt v3, v11, :cond_b

    .line 185
    .line 186
    sget v3, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 187
    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 189
    .line 190
    .line 191
    move-result-wide v18

    .line 192
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    const/16 v11, 0x68

    .line 197
    .line 198
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    .line 200
    .line 201
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 202
    .line 203
    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 205
    .line 206
    .line 207
    move-result-wide v3

    .line 208
    sub-long v3, v3, v18

    .line 209
    .line 210
    const-wide/16 v11, 0xfa

    .line 211
    .line 212
    cmp-long v11, v3, v11

    .line 213
    .line 214
    const-string v12, "ActivityManager"

    .line 215
    .line 216
    if-lez v11, :cond_9

    .line 217
    .line 218
    new-instance v11, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v13, "SLOW setLmkdReentryMode: "

    .line 221
    .line 222
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :cond_9
    iget v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 236
    .line 237
    or-int/lit8 v3, v3, 0x8

    .line 238
    .line 239
    iput v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 240
    .line 241
    invoke-virtual {v10}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 242
    .line 243
    .line 244
    const-string v3, "ReentryModeBGSlot Set"

    .line 245
    .line 246
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 250
    .line 251
    .line 252
    move-result-wide v3

    .line 253
    sput-wide v3, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    .line 254
    .line 255
    iput-boolean v2, v0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    .line 256
    .line 257
    const-string v3, "Enable ReentryMode"

    .line 258
    .line 259
    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_a
    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->reentryMap:Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 266
    .line 267
    .line 268
    sput v5, Lcom/android/server/am/DynamicHiddenApp;->reentryCount:I

    .line 269
    .line 270
    iput-boolean v5, v0, Lcom/android/server/am/DynamicHiddenApp;->isReentryMode:Z

    .line 271
    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 273
    .line 274
    .line 275
    move-result-wide v3

    .line 276
    sput-wide v3, Lcom/android/server/am/DynamicHiddenApp;->lastTime:J

    .line 277
    .line 278
    :cond_b
    :goto_5
    sget-wide v3, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    .line 279
    .line 280
    cmp-long v11, v3, v14

    .line 281
    .line 282
    if-eqz v11, :cond_c

    .line 283
    .line 284
    sub-long/2addr v8, v3

    .line 285
    cmp-long v3, v8, v16

    .line 286
    .line 287
    if-ltz v3, :cond_c

    .line 288
    .line 289
    iget v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 290
    .line 291
    and-int/lit8 v3, v3, -0x9

    .line 292
    .line 293
    iput v3, v10, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    .line 294
    .line 295
    invoke-virtual {v10}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    .line 296
    .line 297
    .line 298
    const-string v3, "ReentryModeBGSlot Recovered"

    .line 299
    .line 300
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    sput-wide v14, Lcom/android/server/am/DynamicHiddenApp;->lastStartTime:J

    .line 304
    .line 305
    :cond_c
    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mCustomEFKManager:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    sget-boolean v3, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    .line 311
    .line 312
    if-nez v3, :cond_d

    .line 313
    .line 314
    goto/16 :goto_13

    .line 315
    .line 316
    :cond_d
    :goto_6
    sget-object v3, Lcom/android/server/bgslotmanager/CustomEFKManager;->DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

    .line 317
    .line 318
    array-length v4, v3

    .line 319
    if-ge v5, v4, :cond_f

    .line 320
    .line 321
    aget-object v3, v3, v5

    .line 322
    .line 323
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_e

    .line 328
    .line 329
    goto/16 :goto_13

    .line 330
    .line 331
    :cond_e
    add-int/2addr v5, v2

    .line 332
    goto :goto_6

    .line 333
    :cond_f
    iget v3, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    .line 334
    .line 335
    iget v4, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFKTime:I

    .line 336
    .line 337
    iget v5, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->vDecreaseEFK:I

    .line 338
    .line 339
    const/16 v6, 0xa

    .line 340
    .line 341
    if-le v3, v6, :cond_13

    .line 342
    .line 343
    iget-boolean v7, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    .line 344
    .line 345
    if-nez v7, :cond_33

    .line 346
    .line 347
    iput-boolean v2, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    .line 348
    .line 349
    div-int/lit8 v1, v3, 0x3

    .line 350
    .line 351
    if-ge v1, v6, :cond_10

    .line 352
    .line 353
    move v1, v6

    .line 354
    :cond_10
    if-le v3, v6, :cond_12

    .line 355
    .line 356
    const-string/jumbo v2, "sys.sysctl.watermark_scale_factor"

    .line 357
    .line 358
    .line 359
    if-lez v5, :cond_11

    .line 360
    .line 361
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    sget v3, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 366
    .line 367
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_11
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    sget v3, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 376
    .line 377
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_12
    :goto_7
    new-instance v1, Lcom/android/server/bgslotmanager/CustomEFKManager$1;

    .line 381
    .line 382
    int-to-long v2, v4

    .line 383
    const/16 v22, 0x1

    .line 384
    .line 385
    move-object/from16 v16, v1

    .line 386
    .line 387
    move-object/from16 v17, v0

    .line 388
    .line 389
    move-wide/from16 v18, v2

    .line 390
    .line 391
    move-wide/from16 v20, v2

    .line 392
    .line 393
    invoke-direct/range {v16 .. v22}, Lcom/android/server/bgslotmanager/CustomEFKManager$1;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 397
    .line 398
    .line 399
    goto/16 :goto_13

    .line 400
    .line 401
    :cond_13
    iget v2, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    .line 402
    .line 403
    const/4 v3, -0x1

    .line 404
    if-eq v2, v3, :cond_15

    .line 405
    .line 406
    const-string/jumbo v3, "sys.sysctl.extra_free_kbytes"

    .line 407
    .line 408
    .line 409
    if-lez v5, :cond_14

    .line 410
    .line 411
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    sget v2, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 416
    .line 417
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    goto :goto_8

    .line 421
    :cond_14
    div-int/2addr v2, v1

    .line 422
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    sget v2, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 427
    .line 428
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    :cond_15
    :goto_8
    new-instance v1, Lcom/android/server/bgslotmanager/CustomEFKManager$1;

    .line 432
    .line 433
    int-to-long v2, v4

    .line 434
    const/16 v22, 0x2

    .line 435
    .line 436
    move-object/from16 v16, v1

    .line 437
    .line 438
    move-object/from16 v17, v0

    .line 439
    .line 440
    move-wide/from16 v18, v2

    .line 441
    .line 442
    move-wide/from16 v20, v2

    .line 443
    .line 444
    invoke-direct/range {v16 .. v22}, Lcom/android/server/bgslotmanager/CustomEFKManager$1;-><init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 448
    .line 449
    .line 450
    goto/16 :goto_13

    .line 451
    .line 452
    :pswitch_2
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 453
    .line 454
    if-eqz v0, :cond_16

    .line 455
    .line 456
    const-string v0, "Received MSG_PERF_TASK_BOOST_END"

    .line 457
    .line 458
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    :cond_16
    iget-object v0, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 462
    .line 463
    if-eqz v0, :cond_33

    .line 464
    .line 465
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    .line 466
    .line 467
    if-eqz v1, :cond_33

    .line 468
    .line 469
    const-string v1, "0"

    .line 470
    .line 471
    invoke-virtual {v0, v11, v1}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_13

    .line 475
    .line 476
    :pswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v0, Ljava/lang/Integer;

    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 485
    .line 486
    if-eqz v1, :cond_17

    .line 487
    .line 488
    const-string v1, "Received MSG_PERF_TASK_BOOST  pid: "

    .line 489
    .line 490
    invoke-static {v0, v1, v10}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :cond_17
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_QC_TASK_BOOST_ENABLE:Z

    .line 497
    .line 498
    if-eqz v1, :cond_18

    .line 499
    .line 500
    new-instance v1, Landroid/util/BoostFramework;

    .line 501
    .line 502
    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    .line 503
    .line 504
    .line 505
    const/high16 v2, 0x40c80000    # 6.25f

    .line 506
    .line 507
    filled-new-array {v2, v0}, [I

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    const/16 v3, 0x7d0

    .line 512
    .line 513
    invoke-virtual {v1, v3, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 514
    .line 515
    .line 516
    :cond_18
    iget-object v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 517
    .line 518
    if-eqz v1, :cond_33

    .line 519
    .line 520
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    .line 521
    .line 522
    if-eqz v1, :cond_33

    .line 523
    .line 524
    iget-object v1, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 525
    .line 526
    const/16 v2, 0xd

    .line 527
    .line 528
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    .line 530
    .line 531
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string/jumbo v4, "taskBoostAcq pid : "

    .line 538
    .line 539
    .line 540
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    const-wide/16 v4, 0x1

    .line 551
    .line 552
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget-object v3, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 556
    .line 557
    invoke-virtual {v3, v11, v0}, Lcom/samsung/android/os/SemDvfsManager;->sysfsWrite(ILjava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    const-wide/16 v2, 0x7d0

    .line 568
    .line 569
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 570
    .line 571
    .line 572
    goto/16 :goto_13

    .line 573
    .line 574
    :pswitch_4
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 575
    .line 576
    if-eqz v0, :cond_19

    .line 577
    .line 578
    const-string v0, "Received MSG_PERF_RESERVE_ON_OFF  value: "

    .line 579
    .line 580
    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    :cond_19
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    .line 587
    .line 588
    if-eqz v0, :cond_33

    .line 589
    .line 590
    const-string v1, "e = "

    .line 591
    .line 592
    new-instance v0, Ljava/io/File;

    .line 593
    .line 594
    const-string v2, "/proc/perf_reserve"

    .line 595
    .line 596
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 600
    .line 601
    .line 602
    move-result v3

    .line 603
    if-eqz v3, :cond_1c

    .line 604
    .line 605
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    if-eqz v3, :cond_1c

    .line 610
    .line 611
    if-nez v7, :cond_1a

    .line 612
    .line 613
    goto/16 :goto_d

    .line 614
    .line 615
    :cond_1a
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 616
    .line 617
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 618
    .line 619
    .line 620
    :try_start_1
    const-string v0, "UTF-8"

    .line 621
    .line 622
    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    .line 631
    .line 632
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 633
    .line 634
    .line 635
    goto/16 :goto_13

    .line 636
    .line 637
    :catch_0
    move-exception v0

    .line 638
    move-object v2, v0

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    :goto_9
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .line 657
    .line 658
    goto/16 :goto_13

    .line 659
    .line 660
    :catchall_0
    move-exception v0

    .line 661
    move-object v2, v0

    .line 662
    move-object v4, v3

    .line 663
    goto :goto_b

    .line 664
    :catch_1
    move-exception v0

    .line 665
    move-object v4, v3

    .line 666
    goto :goto_a

    .line 667
    :catchall_1
    move-exception v0

    .line 668
    move-object v2, v0

    .line 669
    goto :goto_b

    .line 670
    :catch_2
    move-exception v0

    .line 671
    :goto_a
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 688
    .line 689
    .line 690
    if-eqz v4, :cond_33

    .line 691
    .line 692
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 693
    .line 694
    .line 695
    goto/16 :goto_13

    .line 696
    .line 697
    :catch_3
    move-exception v0

    .line 698
    move-object v2, v0

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    goto :goto_9

    .line 705
    :goto_b
    if-eqz v4, :cond_1b

    .line 706
    .line 707
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 708
    .line 709
    .line 710
    goto :goto_c

    .line 711
    :catch_4
    move-exception v0

    .line 712
    move-object v3, v0

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .line 731
    .line 732
    :cond_1b
    :goto_c
    throw v2

    .line 733
    :cond_1c
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    const-string/jumbo v2, "writeSysfs:: path() : /proc/perf_reserve exist() : "

    .line 736
    .line 737
    .line 738
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 742
    .line 743
    .line 744
    move-result v2

    .line 745
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    const-string v2, " canWrite() : "

    .line 749
    .line 750
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .line 766
    .line 767
    goto/16 :goto_13

    .line 768
    .line 769
    :pswitch_5
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 770
    .line 771
    if-eqz v0, :cond_1d

    .line 772
    .line 773
    const-string v0, "Received MSG_OLAF_FREEZE_CLEAR"

    .line 774
    .line 775
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .line 777
    .line 778
    :cond_1d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    .line 780
    .line 781
    invoke-static {v5}, Landroid/os/Process;->doSomethingOlaf(Z)V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_13

    .line 785
    .line 786
    :pswitch_6
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 787
    .line 788
    if-eqz v0, :cond_1e

    .line 789
    .line 790
    const-string v0, "Received MSG_OLAF_FREEZE_ON_OFF  value: "

    .line 791
    .line 792
    invoke-static {v0, v10, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 793
    .line 794
    .line 795
    :cond_1e
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    .line 797
    .line 798
    invoke-static {v3}, Landroid/os/Process;->doSomethingOlaf(Z)V

    .line 799
    .line 800
    .line 801
    goto/16 :goto_13

    .line 802
    .line 803
    :pswitch_7
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 804
    .line 805
    if-eqz v0, :cond_1f

    .line 806
    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    const-string v1, "Received MSG_ENABLE_APP_SWITCH, r: "

    .line 810
    .line 811
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .line 823
    .line 824
    :cond_1f
    invoke-virtual {v9, v2, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_13

    .line 828
    .line 829
    :pswitch_8
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 830
    .line 831
    if-eqz v0, :cond_20

    .line 832
    .line 833
    const-string v0, "Received MSG_CFMS_HINT_AMS_HOME pkgName: "

    .line 834
    .line 835
    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    :cond_20
    const-string v0, "AMS_APP_HOME"

    .line 839
    .line 840
    invoke-static {v0, v7}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_13

    .line 844
    .line 845
    :pswitch_9
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 846
    .line 847
    if-eqz v0, :cond_21

    .line 848
    .line 849
    const-string v0, "Received MSG_CFMS_HINT_AMS_SWITCH pkgName: "

    .line 850
    .line 851
    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    :cond_21
    const-string v0, "AMS_APP_SWITCH"

    .line 855
    .line 856
    invoke-static {v0, v7}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    goto/16 :goto_13

    .line 860
    .line 861
    :cond_22
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 862
    .line 863
    instance-of v1, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;

    .line 864
    .line 865
    if-eqz v1, :cond_23

    .line 866
    .line 867
    check-cast v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;

    .line 868
    .line 869
    goto :goto_e

    .line 870
    :cond_23
    move-object v0, v4

    .line 871
    :goto_e
    if-eqz v0, :cond_33

    .line 872
    .line 873
    iget-object v1, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->activityName:Ljava/lang/String;

    .line 874
    .line 875
    iget-wide v6, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->launchTime:J

    .line 876
    .line 877
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 878
    .line 879
    .line 880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 881
    .line 882
    .line 883
    move-result-wide v12

    .line 884
    sget-wide v16, Lcom/android/server/wm/ActivityManagerPerformance;->sNextTimeToSendSlugBigdata:J

    .line 885
    .line 886
    cmp-long v3, v12, v16

    .line 887
    .line 888
    if-gez v3, :cond_24

    .line 889
    .line 890
    goto/16 :goto_13

    .line 891
    .line 892
    :cond_24
    iget-object v3, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->packageName:Ljava/lang/String;

    .line 893
    .line 894
    if-eqz v3, :cond_33

    .line 895
    .line 896
    iget-object v8, v9, Lcom/android/server/wm/ActivityManagerPerformance;->mBigdataSlugSkipPackage:Ljava/util/Set;

    .line 897
    .line 898
    check-cast v8, Ljava/util/HashSet;

    .line 899
    .line 900
    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result v8

    .line 904
    if-eqz v8, :cond_25

    .line 905
    .line 906
    goto/16 :goto_13

    .line 907
    .line 908
    :cond_25
    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 909
    .line 910
    const-string/jumbo v4, "power"

    .line 911
    .line 912
    .line 913
    invoke-virtual {v8, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v4

    .line 917
    check-cast v4, Landroid/os/PowerManager;

    .line 918
    .line 919
    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    .line 920
    .line 921
    .line 922
    move-result v4

    .line 923
    if-nez v4, :cond_26

    .line 924
    .line 925
    goto/16 :goto_13

    .line 926
    .line 927
    :cond_26
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 928
    .line 929
    const-string v8, "keyguard"

    .line 930
    .line 931
    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v4

    .line 935
    check-cast v4, Landroid/app/KeyguardManager;

    .line 936
    .line 937
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 938
    .line 939
    .line 940
    move-result v4

    .line 941
    if-eqz v4, :cond_27

    .line 942
    .line 943
    goto/16 :goto_13

    .line 944
    .line 945
    :cond_27
    const/4 v4, 0x7

    .line 946
    iget v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->launchType:I

    .line 947
    .line 948
    if-ne v0, v4, :cond_28

    .line 949
    .line 950
    move v0, v2

    .line 951
    goto :goto_f

    .line 952
    :cond_28
    move v0, v5

    .line 953
    :goto_f
    const-wide/16 v17, 0x2710

    .line 954
    .line 955
    add-long v12, v12, v17

    .line 956
    .line 957
    sput-wide v12, Lcom/android/server/wm/ActivityManagerPerformance;->sNextTimeToSendSlugBigdata:J

    .line 958
    .line 959
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 960
    .line 961
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 962
    .line 963
    .line 964
    move-result-object v4

    .line 965
    sget-boolean v8, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 966
    .line 967
    if-eqz v4, :cond_29

    .line 968
    .line 969
    :try_start_6
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 970
    .line 971
    .line 972
    move-result-object v4

    .line 973
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 974
    .line 975
    goto :goto_10

    .line 976
    :catch_5
    if-eqz v8, :cond_29

    .line 977
    .line 978
    const-string v4, " is not found in pm"

    .line 979
    .line 980
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v4

    .line 984
    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    .line 986
    .line 987
    :cond_29
    const-string v4, ""

    .line 988
    .line 989
    :goto_10
    new-array v12, v11, [J

    .line 990
    .line 991
    aput-wide v14, v12, v5

    .line 992
    .line 993
    aput-wide v14, v12, v2

    .line 994
    .line 995
    sget-object v13, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 996
    .line 997
    const-string/jumbo v14, "window"

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v13

    .line 1004
    check-cast v13, Landroid/view/WindowManager;

    .line 1005
    .line 1006
    if-eqz v13, :cond_2a

    .line 1007
    .line 1008
    new-instance v13, Landroid/graphics/Point;

    .line 1009
    .line 1010
    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 1011
    .line 1012
    .line 1013
    invoke-static {v14}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v14

    .line 1017
    invoke-static {v14}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v14

    .line 1021
    if-eqz v14, :cond_2a

    .line 1022
    .line 1023
    :try_start_7
    invoke-interface {v14, v5, v13}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 1024
    .line 1025
    .line 1026
    iget v14, v13, Landroid/graphics/Point;->x:I

    .line 1027
    .line 1028
    int-to-long v14, v14

    .line 1029
    aput-wide v14, v12, v5

    .line 1030
    .line 1031
    iget v5, v13, Landroid/graphics/Point;->y:I

    .line 1032
    .line 1033
    int-to-long v13, v5

    .line 1034
    aput-wide v13, v12, v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1035
    .line 1036
    goto :goto_11

    .line 1037
    :catch_6
    if-eqz v8, :cond_2a

    .line 1038
    .line 1039
    const-string v5, "display size not obtained"

    .line 1040
    .line 1041
    invoke-static {v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    .line 1043
    .line 1044
    :cond_2a
    :goto_11
    new-instance v5, Lorg/json/JSONObject;

    .line 1045
    .line 1046
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1047
    .line 1048
    .line 1049
    :try_start_8
    new-instance v13, Lorg/json/JSONArray;

    .line 1050
    .line 1051
    invoke-direct {v13, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 1052
    .line 1053
    .line 1054
    const-string v12, "V"

    .line 1055
    .line 1056
    invoke-virtual {v5, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v5

    .line 1060
    const-string v11, "FROM"

    .line 1061
    .line 1062
    const/16 v12, 0x7539

    .line 1063
    .line 1064
    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v5

    .line 1068
    const-string v11, "PACK"

    .line 1069
    .line 1070
    new-instance v12, Lorg/json/JSONArray;

    .line 1071
    .line 1072
    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v3

    .line 1079
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v1

    .line 1083
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    invoke-virtual {v5, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    const-string v1, "LAUN"

    .line 1096
    .line 1097
    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    const-string v1, "UPTM"

    .line 1102
    .line 1103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1104
    .line 1105
    .line 1106
    move-result-wide v3

    .line 1107
    const-wide/16 v5, 0x3e8

    .line 1108
    .line 1109
    div-long/2addr v3, v5

    .line 1110
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    const-string v1, "RESL"

    .line 1115
    .line 1116
    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v0

    .line 1124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1125
    .line 1126
    .line 1127
    move-result v1

    .line 1128
    sub-int/2addr v1, v2

    .line 1129
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v4
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1133
    goto :goto_12

    .line 1134
    :catch_7
    const/4 v4, 0x0

    .line 1135
    :goto_12
    if-eqz v4, :cond_33

    .line 1136
    .line 1137
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 1138
    .line 1139
    .line 1140
    move-result v0

    .line 1141
    if-nez v0, :cond_33

    .line 1142
    .line 1143
    const-string v0, "SLUG"

    .line 1144
    .line 1145
    const-string v1, "3"

    .line 1146
    .line 1147
    invoke-virtual {v9, v0, v1, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    if-eqz v8, :cond_33

    .line 1151
    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    const-string v1, "SLUG, "

    .line 1155
    .line 1156
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1160
    .line 1161
    .line 1162
    move-result v1

    .line 1163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    .line 1172
    .line 1173
    goto :goto_13

    .line 1174
    :cond_2b
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 1175
    .line 1176
    if-eqz v0, :cond_2c

    .line 1177
    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    const-string v1, "Received MSG_ENABLE_ACT_RESUME_TAIL r: "

    .line 1181
    .line 1182
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v0

    .line 1192
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    .line 1194
    .line 1195
    :cond_2c
    invoke-virtual {v9, v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1196
    .line 1197
    .line 1198
    goto :goto_13

    .line 1199
    :cond_2d
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 1200
    .line 1201
    if-eqz v0, :cond_2e

    .line 1202
    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    const-string v1, "Received MSG_DISABLE_ACT_RESUME, r: "

    .line 1206
    .line 1207
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    .line 1219
    .line 1220
    :cond_2e
    invoke-virtual {v9, v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1221
    .line 1222
    .line 1223
    goto :goto_13

    .line 1224
    :cond_2f
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 1225
    .line 1226
    if-eqz v0, :cond_30

    .line 1227
    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1229
    .line 1230
    const-string v1, "Received MSG_DISABLE_ACT_START, r: "

    .line 1231
    .line 1232
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    .line 1244
    .line 1245
    :cond_30
    invoke-virtual {v9, v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1246
    .line 1247
    .line 1248
    goto :goto_13

    .line 1249
    :cond_31
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 1250
    .line 1251
    if-eqz v0, :cond_32

    .line 1252
    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    const-string v1, "Received MSG_DISABLE_APP_SWITCH, r: "

    .line 1256
    .line 1257
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v0

    .line 1267
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    .line 1269
    .line 1270
    :cond_32
    invoke-virtual {v9, v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1271
    .line 1272
    .line 1273
    :cond_33
    :goto_13
    return-void

    .line 1274
    nop

    .line 1275
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
