.class public final synthetic Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "[init]init"

    .line 9
    .line 10
    const-string v2, "[SS][BattInfo]BattInfoManager"

    .line 11
    .line 12
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 16
    .line 17
    new-array v0, v3, [Z

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x2

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x3

    .line 24
    iget v9, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 25
    .line 26
    if-nez v9, :cond_0

    .line 27
    .line 28
    aput-boolean v7, v0, v7

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    const-string v10, "/sys/class/power_supply/sec_auth/batt_auth"

    .line 33
    .line 34
    const-string v11, "/sys/class/power_supply/sec_auth/presence"

    .line 35
    .line 36
    const-wide/16 v12, 0x1

    .line 37
    .line 38
    if-ne v9, v8, :cond_3

    .line 39
    .line 40
    invoke-static {v11}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v14

    .line 44
    cmp-long v11, v14, v12

    .line 45
    .line 46
    if-nez v11, :cond_1

    .line 47
    .line 48
    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v10

    .line 52
    cmp-long v10, v10, v12

    .line 53
    .line 54
    if-nez v10, :cond_1

    .line 55
    .line 56
    move v10, v4

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v10, v7

    .line 59
    :goto_0
    aput-boolean v10, v0, v7

    .line 60
    .line 61
    const-string v10, "/sys/class/power_supply/sec_auth_2nd/presence"

    .line 62
    .line 63
    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v10

    .line 67
    cmp-long v10, v10, v12

    .line 68
    .line 69
    if-nez v10, :cond_2

    .line 70
    .line 71
    const-string v10, "/sys/class/power_supply/sec_auth_2nd/batt_auth"

    .line 72
    .line 73
    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v10

    .line 77
    cmp-long v10, v10, v12

    .line 78
    .line 79
    if-nez v10, :cond_2

    .line 80
    .line 81
    move v10, v4

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    move v10, v7

    .line 84
    :goto_1
    aput-boolean v10, v0, v4

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    if-ne v9, v4, :cond_5

    .line 88
    .line 89
    invoke-static {v11}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v14

    .line 93
    cmp-long v11, v14, v12

    .line 94
    .line 95
    if-nez v11, :cond_4

    .line 96
    .line 97
    invoke-static {v10}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v10

    .line 101
    cmp-long v10, v10, v12

    .line 102
    .line 103
    if-nez v10, :cond_4

    .line 104
    .line 105
    move v10, v4

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move v10, v7

    .line 108
    :goto_2
    aput-boolean v10, v0, v7

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    const-string v10, "/sys/class/power_supply/sbp-fg/qr_code"

    .line 112
    .line 113
    if-ne v9, v6, :cond_6

    .line 114
    .line 115
    invoke-static {v10, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    xor-int/2addr v10, v4

    .line 124
    aput-boolean v10, v0, v7

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    if-ne v9, v5, :cond_7

    .line 128
    .line 129
    invoke-static {v10, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    xor-int/2addr v10, v4

    .line 138
    aput-boolean v10, v0, v7

    .line 139
    .line 140
    const-string v10, "/sys/class/power_supply/sbp-fg-2/qr_code"

    .line 141
    .line 142
    invoke-static {v10, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    xor-int/2addr v10, v4

    .line 151
    aput-boolean v10, v0, v4

    .line 152
    .line 153
    :cond_7
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v11, "[checkIcAuthenticationResults]result:"

    .line 156
    .line 157
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 175
    .line 176
    if-eq v9, v8, :cond_8

    .line 177
    .line 178
    if-ne v9, v4, :cond_9

    .line 179
    .line 180
    :cond_8
    invoke-static {v7, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v10, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda1;

    .line 185
    .line 186
    invoke-direct {v10, v1}, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v0, v10}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-nez v0, :cond_9

    .line 194
    .line 195
    iget v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    .line 196
    .line 197
    const/16 v10, 0x3c

    .line 198
    .line 199
    if-ge v0, v10, :cond_9

    .line 200
    .line 201
    add-int/2addr v0, v4

    .line 202
    iput v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    .line 203
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v3, "[handleMessage]DualAuth IcAuthentication fails. retry count:"

    .line 207
    .line 208
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    .line 212
    .line 213
    invoke-static {v0, v3, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 217
    .line 218
    new-instance v2, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;

    .line 219
    .line 220
    invoke-direct {v2, v1}, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V

    .line 221
    .line 222
    .line 223
    const-wide/16 v3, 0x3e8

    .line 224
    .line 225
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    .line 227
    .line 228
    goto/16 :goto_18

    .line 229
    .line 230
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v2, "Final IcAuthenticationResults:"

    .line 233
    .line 234
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object v10, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 238
    .line 239
    invoke-static {v10}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v10, " ,Retry Count:"

    .line 247
    .line 248
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget v10, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    .line 252
    .line 253
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const-string v10, "/data/log/battery_service/battery_service_main_history"

    .line 261
    .line 262
    const-string v11, "Final IcAuthenticationResults"

    .line 263
    .line 264
    invoke-static {v10, v11, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 273
    .line 274
    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v8, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    new-instance v0, Lcom/android/server/battery/batteryInfo/QrData;

    .line 289
    .line 290
    iget-object v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 291
    .line 292
    invoke-direct {v0, v9, v3, v2}, Lcom/android/server/battery/batteryInfo/QrData;-><init>(II[Z)V

    .line 293
    .line 294
    .line 295
    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    .line 296
    .line 297
    new-instance v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 298
    .line 299
    iget-object v13, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 300
    .line 301
    iget-object v14, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mContext:Landroid/content/Context;

    .line 302
    .line 303
    iget-object v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 304
    .line 305
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 306
    .line 307
    .line 308
    move-result-object v15

    .line 309
    iget v11, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 310
    .line 311
    iget v12, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 312
    .line 313
    move-object v10, v0

    .line 314
    invoke-direct/range {v10 .. v15}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;-><init>(II[ZLandroid/content/Context;Landroid/os/Looper;)V

    .line 315
    .line 316
    .line 317
    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 318
    .line 319
    iget-boolean v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    .line 320
    .line 321
    const-wide/16 v10, 0x0

    .line 322
    .line 323
    if-eqz v0, :cond_16

    .line 324
    .line 325
    new-instance v12, Lcom/android/server/battery/batteryInfo/AsocData;

    .line 326
    .line 327
    iget-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 328
    .line 329
    iget-object v13, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    .line 330
    .line 331
    iget-object v13, v13, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    .line 332
    .line 333
    invoke-direct {v12}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    .line 334
    .line 335
    .line 336
    iput v9, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 337
    .line 338
    iput v3, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 339
    .line 340
    iput-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 341
    .line 342
    new-array v0, v3, [Ljava/lang/Long;

    .line 343
    .line 344
    iput-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 345
    .line 346
    const-string v0, "/efs/FactoryApp/asoc"

    .line 347
    .line 348
    if-nez v9, :cond_a

    .line 349
    .line 350
    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_a
    const-string v14, "/sys/class/power_supply/sec_auth/asoc"

    .line 357
    .line 358
    if-ne v9, v4, :cond_b

    .line 359
    .line 360
    iget-object v15, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_b
    if-ne v9, v8, :cond_c

    .line 372
    .line 373
    iget-object v15, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 379
    .line 380
    const-string v15, "/efs/FactoryApp/asoc_2nd"

    .line 381
    .line 382
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    iget-object v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 391
    .line 392
    const-string v14, "/sys/class/power_supply/sec_auth_2nd/asoc"

    .line 393
    .line 394
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    :cond_c
    :goto_4
    invoke-virtual {v12}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 398
    .line 399
    .line 400
    iget v0, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 401
    .line 402
    if-eq v0, v4, :cond_e

    .line 403
    .line 404
    if-ne v0, v8, :cond_d

    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_d
    move/from16 v17, v3

    .line 408
    .line 409
    move/from16 v16, v9

    .line 410
    .line 411
    const/16 v2, 0x3ef

    .line 412
    .line 413
    goto/16 :goto_c

    .line 414
    .line 415
    :cond_e
    :goto_5
    move v0, v7

    .line 416
    :goto_6
    iget v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 417
    .line 418
    if-ge v0, v14, :cond_d

    .line 419
    .line 420
    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 421
    .line 422
    aget-boolean v14, v14, v0

    .line 423
    .line 424
    iget-object v15, v12, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 425
    .line 426
    if-nez v14, :cond_f

    .line 427
    .line 428
    const-string v14, "[syncAuthAndEfsForAuth]Authentification false => skip_"

    .line 429
    .line 430
    invoke-static {v0, v14, v15}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    move/from16 v17, v3

    .line 434
    .line 435
    move/from16 v16, v9

    .line 436
    .line 437
    goto/16 :goto_b

    .line 438
    .line 439
    :cond_f
    aget-boolean v14, v13, v0

    .line 440
    .line 441
    const-wide/16 v5, 0x64

    .line 442
    .line 443
    if-eqz v14, :cond_12

    .line 444
    .line 445
    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v14

    .line 451
    check-cast v14, Ljava/lang/String;

    .line 452
    .line 453
    move/from16 v16, v9

    .line 454
    .line 455
    invoke-static {v14}, Lcom/android/server/battery/BattUtils;->readNodeAsLong$1(Ljava/lang/String;)J

    .line 456
    .line 457
    .line 458
    move-result-wide v8

    .line 459
    iget-object v14, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 460
    .line 461
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v14

    .line 465
    check-cast v14, Ljava/lang/String;

    .line 466
    .line 467
    move/from16 v17, v3

    .line 468
    .line 469
    invoke-static {v14}, Lcom/android/server/battery/BattUtils;->readNodeAsLong$1(Ljava/lang/String;)J

    .line 470
    .line 471
    .line 472
    move-result-wide v2

    .line 473
    cmp-long v14, v2, v10

    .line 474
    .line 475
    if-ltz v14, :cond_11

    .line 476
    .line 477
    cmp-long v5, v2, v5

    .line 478
    .line 479
    if-gtz v5, :cond_11

    .line 480
    .line 481
    cmp-long v5, v2, v8

    .line 482
    .line 483
    if-ltz v5, :cond_10

    .line 484
    .line 485
    goto :goto_7

    .line 486
    :cond_10
    move-wide v5, v2

    .line 487
    goto :goto_8

    .line 488
    :cond_11
    :goto_7
    move-wide v5, v8

    .line 489
    :goto_8
    const-string v14, "[syncAuthAndEfsForAuth]efsAsoc:"

    .line 490
    .line 491
    const-string v4, " ,authAsoc:"

    .line 492
    .line 493
    invoke-static {v14, v8, v9, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v2, " =>worseAsoc:"

    .line 501
    .line 502
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    iget-object v2, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    check-cast v2, Ljava/lang/String;

    .line 522
    .line 523
    invoke-static {v5, v6, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 524
    .line 525
    .line 526
    iget-object v2, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 527
    .line 528
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    check-cast v2, Ljava/lang/String;

    .line 533
    .line 534
    invoke-static {v5, v6, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 535
    .line 536
    .line 537
    goto :goto_b

    .line 538
    :cond_12
    move/from16 v17, v3

    .line 539
    .line 540
    move/from16 v16, v9

    .line 541
    .line 542
    iget-object v2, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    check-cast v2, Ljava/lang/String;

    .line 549
    .line 550
    invoke-static {v2}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 551
    .line 552
    .line 553
    move-result-wide v2

    .line 554
    const-wide/32 v8, 0xffff

    .line 555
    .line 556
    .line 557
    cmp-long v4, v2, v8

    .line 558
    .line 559
    if-eqz v4, :cond_14

    .line 560
    .line 561
    cmp-long v4, v2, v10

    .line 562
    .line 563
    if-gez v4, :cond_13

    .line 564
    .line 565
    goto :goto_9

    .line 566
    :cond_13
    move-wide v5, v2

    .line 567
    goto :goto_a

    .line 568
    :cond_14
    :goto_9
    const-string v2, "[syncAuthAndEfsForAuth]init authAsoc:100"

    .line 569
    .line 570
    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    iget-object v2, v12, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    check-cast v2, Ljava/lang/String;

    .line 580
    .line 581
    invoke-static {v5, v6, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 582
    .line 583
    .line 584
    :goto_a
    const-string v2, "[syncAuthAndEfsForAuth]sync efs asoc with auth"

    .line 585
    .line 586
    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .line 588
    .line 589
    iget-object v2, v12, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 590
    .line 591
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    check-cast v2, Ljava/lang/String;

    .line 596
    .line 597
    invoke-static {v5, v6, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 598
    .line 599
    .line 600
    :goto_b
    add-int/lit8 v0, v0, 0x1

    .line 601
    .line 602
    move/from16 v9, v16

    .line 603
    .line 604
    move/from16 v3, v17

    .line 605
    .line 606
    const/4 v4, 0x1

    .line 607
    const/4 v5, 0x4

    .line 608
    const/4 v6, 0x2

    .line 609
    const/4 v8, 0x3

    .line 610
    goto/16 :goto_6

    .line 611
    .line 612
    :goto_c
    invoke-virtual {v12, v2}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v12}, Lcom/android/server/battery/batteryInfo/AsocData;->updateAndSet()V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v12}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 619
    .line 620
    .line 621
    const-string v0, "/efs/FactoryApp/batt_hist"

    .line 622
    .line 623
    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    if-eqz v2, :cond_15

    .line 628
    .line 629
    const-string v2, "[SS]BattUtils"

    .line 630
    .line 631
    :try_start_0
    new-array v3, v7, [Ljava/lang/String;

    .line 632
    .line 633
    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .line 639
    .line 640
    const/4 v7, 0x1

    .line 641
    goto :goto_d

    .line 642
    :catch_0
    move-exception v0

    .line 643
    const-string v3, "[deleteNode]Exception"

    .line 644
    .line 645
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    .line 647
    .line 648
    :goto_d
    const-string v0, "[deleteNode]path:/efs/FactoryApp/batt_hist ,result:"

    .line 649
    .line 650
    invoke-static {v0, v2, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 651
    .line 652
    .line 653
    :cond_15
    iput-object v12, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    .line 654
    .line 655
    goto :goto_e

    .line 656
    :cond_16
    move/from16 v17, v3

    .line 657
    .line 658
    move/from16 v16, v9

    .line 659
    .line 660
    :goto_e
    new-instance v0, Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 661
    .line 662
    iget-object v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 663
    .line 664
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    .line 665
    .line 666
    iget-object v3, v3, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    .line 667
    .line 668
    invoke-direct {v0}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    .line 669
    .line 670
    .line 671
    move/from16 v4, v16

    .line 672
    .line 673
    iput v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 674
    .line 675
    move/from16 v5, v17

    .line 676
    .line 677
    iput v5, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 678
    .line 679
    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 680
    .line 681
    new-array v2, v5, [Ljava/lang/Long;

    .line 682
    .line 683
    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 684
    .line 685
    const-string v2, "/efs/FactoryApp/batt_discharge_level"

    .line 686
    .line 687
    if-nez v4, :cond_17

    .line 688
    .line 689
    iget-object v6, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 690
    .line 691
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    goto :goto_f

    .line 695
    :cond_17
    const-string v6, "/sys/class/power_supply/sec_auth/batt_discharge_level"

    .line 696
    .line 697
    const/4 v7, 0x1

    .line 698
    if-ne v4, v7, :cond_18

    .line 699
    .line 700
    iget-object v7, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 701
    .line 702
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 706
    .line 707
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    goto :goto_f

    .line 711
    :cond_18
    const-string v7, "/efs/FactoryApp/batt_discharge_level_2nd"

    .line 712
    .line 713
    const/4 v8, 0x3

    .line 714
    if-ne v4, v8, :cond_19

    .line 715
    .line 716
    iget-object v8, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 717
    .line 718
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 722
    .line 723
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 727
    .line 728
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 732
    .line 733
    const-string v6, "/sys/class/power_supply/sec_auth_2nd/batt_discharge_level"

    .line 734
    .line 735
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    goto :goto_f

    .line 739
    :cond_19
    const-string v6, "/sys/class/power_supply/sbp-fg/cycle"

    .line 740
    .line 741
    const/4 v8, 0x2

    .line 742
    if-ne v4, v8, :cond_1a

    .line 743
    .line 744
    iget-object v7, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 745
    .line 746
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 750
    .line 751
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    goto :goto_f

    .line 755
    :cond_1a
    const/4 v8, 0x4

    .line 756
    if-ne v4, v8, :cond_1b

    .line 757
    .line 758
    iget-object v8, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 759
    .line 760
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 764
    .line 765
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 769
    .line 770
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 774
    .line 775
    const-string v6, "/sys/class/power_supply/sbp-fg-2/cycle"

    .line 776
    .line 777
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    :cond_1b
    :goto_f
    iget v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 781
    .line 782
    const/4 v6, 0x1

    .line 783
    if-eq v2, v6, :cond_20

    .line 784
    .line 785
    const/4 v6, 0x3

    .line 786
    if-ne v2, v6, :cond_1c

    .line 787
    .line 788
    goto :goto_12

    .line 789
    :cond_1c
    const/4 v6, 0x2

    .line 790
    if-eq v2, v6, :cond_1f

    .line 791
    .line 792
    const/4 v3, 0x4

    .line 793
    if-ne v2, v3, :cond_1d

    .line 794
    .line 795
    goto :goto_11

    .line 796
    :cond_1d
    if-nez v2, :cond_1e

    .line 797
    .line 798
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->initializeIfNotExist()V

    .line 799
    .line 800
    .line 801
    :cond_1e
    :goto_10
    const/16 v2, 0x3ef

    .line 802
    .line 803
    goto :goto_13

    .line 804
    :cond_1f
    :goto_11
    invoke-virtual {v0, v10, v11}, Lcom/android/server/battery/batteryInfo/DischargeLevelData;->updateEfsFromSBP(J)V

    .line 805
    .line 806
    .line 807
    goto :goto_10

    .line 808
    :cond_20
    :goto_12
    invoke-virtual {v0, v3}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->syncAuthAndEfsForAuth$1([Z)V

    .line 809
    .line 810
    .line 811
    goto :goto_10

    .line 812
    :goto_13
    invoke-virtual {v0, v2}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 820
    .line 821
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 822
    .line 823
    .line 824
    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 825
    .line 826
    iget-boolean v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 827
    .line 828
    if-eqz v0, :cond_27

    .line 829
    .line 830
    new-instance v0, Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    .line 831
    .line 832
    iget-object v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 833
    .line 834
    iget-object v3, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    .line 835
    .line 836
    iget-object v3, v3, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    .line 837
    .line 838
    invoke-direct {v0}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    .line 839
    .line 840
    .line 841
    iput v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 842
    .line 843
    iput v5, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 844
    .line 845
    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 846
    .line 847
    new-array v2, v5, [Ljava/lang/Long;

    .line 848
    .line 849
    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 850
    .line 851
    const-string v2, "/efs/FactoryApp/batt_full_status_usage"

    .line 852
    .line 853
    if-nez v4, :cond_21

    .line 854
    .line 855
    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 856
    .line 857
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    .line 859
    .line 860
    goto :goto_14

    .line 861
    :cond_21
    const-string v5, "/sys/class/power_supply/sec_auth/batt_full_status_usage"

    .line 862
    .line 863
    const/4 v6, 0x1

    .line 864
    if-ne v4, v6, :cond_22

    .line 865
    .line 866
    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 867
    .line 868
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 872
    .line 873
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    goto :goto_14

    .line 877
    :cond_22
    const/4 v6, 0x3

    .line 878
    if-ne v4, v6, :cond_23

    .line 879
    .line 880
    iget-object v4, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 881
    .line 882
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    .line 884
    .line 885
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 886
    .line 887
    const-string v4, "/efs/FactoryApp/batt_full_status_usage_2nd"

    .line 888
    .line 889
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 893
    .line 894
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    iget-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 898
    .line 899
    const-string v4, "/sys/class/power_supply/sec_auth_2nd/batt_full_status_usage"

    .line 900
    .line 901
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    :cond_23
    :goto_14
    iget v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 905
    .line 906
    const/4 v4, 0x1

    .line 907
    if-eq v2, v4, :cond_26

    .line 908
    .line 909
    const/4 v4, 0x3

    .line 910
    if-ne v2, v4, :cond_24

    .line 911
    .line 912
    goto :goto_16

    .line 913
    :cond_24
    if-nez v2, :cond_25

    .line 914
    .line 915
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->initializeIfNotExist()V

    .line 916
    .line 917
    .line 918
    :cond_25
    :goto_15
    const/16 v2, 0x3ef

    .line 919
    .line 920
    goto :goto_17

    .line 921
    :cond_26
    :goto_16
    invoke-virtual {v0, v3}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->syncAuthAndEfsForAuth$1([Z)V

    .line 922
    .line 923
    .line 924
    goto :goto_15

    .line 925
    :goto_17
    invoke-virtual {v0, v2}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 933
    .line 934
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 935
    .line 936
    .line 937
    iput-object v0, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    .line 938
    .line 939
    :cond_27
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 940
    .line 941
    if-eqz v0, :cond_28

    .line 942
    .line 943
    invoke-virtual {v1}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processCycle()V

    .line 944
    .line 945
    .line 946
    :cond_28
    const/4 v2, 0x1

    .line 947
    iput-boolean v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 948
    .line 949
    :goto_18
    return-void
.end method
