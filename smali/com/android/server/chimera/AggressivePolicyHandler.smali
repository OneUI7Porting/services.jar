.class public final Lcom/android/server/chimera/AggressivePolicyHandler;
.super Lcom/android/server/chimera/PolicyHandler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAdjustTargetFreeEndTime:J

.field public mAdjustTargetFreeFactor:D

.field public mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

.field public mHeavyLaunchBufferSize:I

.field public mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

.field public mHeavyLaunchPackageLimit:I

.field public mIsAdjustTargetFree:Z

.field public mIsHeavyLaunchOn:Z

.field public mPkgKillIntervalDefault:I


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "wLru: "

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_f

    .line 5
    .line 6
    array-length v1, p2

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    const-string v1, "-a"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aget-object v3, p2, v2

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/android/server/chimera/HeavyLaunchCounter;->isHeavyLaunch()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "HeavyLaunch mode from "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/android/server/chimera/HeavyLaunchCounter;->getLastStartedUpTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    const-string p2, "************** adjinfo ****************"

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    .line 70
    .line 71
    .line 72
    const-string p2, "\n************** appinfo ****************"

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    .line 78
    .line 79
    .line 80
    const-string p2, "\n************** kill history ****************"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_2
    array-length v1, p2

    .line 91
    if-lez v1, :cond_f

    .line 92
    .line 93
    aget-object v1, p2, v2

    .line 94
    .line 95
    const-string/jumbo v3, "weight"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    const/4 v4, 0x2

    .line 103
    const/4 v5, 0x1

    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    array-length v3, p2

    .line 107
    if-le v3, v4, :cond_3

    .line 108
    .line 109
    :try_start_0
    aget-object v1, p2, v5

    .line 110
    .line 111
    aget-object p2, p2, v4

    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-virtual {p0, v1, p2}, Lcom/android/server/chimera/AggressivePolicyHandler;->setWeight(FF)V

    .line 130
    .line 131
    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, " wStandbyBucket: "

    .line 141
    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto/16 :goto_2

    .line 156
    .line 157
    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :cond_3
    const-string/jumbo v0, "set_normal_boost_mode"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    const-string/jumbo v3, "off"

    .line 175
    .line 176
    .line 177
    const-string/jumbo v6, "on"

    .line 178
    .line 179
    .line 180
    if-eqz v0, :cond_5

    .line 181
    .line 182
    array-length v0, p2

    .line 183
    if-le v0, v5, :cond_5

    .line 184
    .line 185
    aget-object p2, p2, v5

    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    iput-boolean p2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 196
    .line 197
    if-eqz p2, :cond_4

    .line 198
    .line 199
    move-object v3, v6

    .line 200
    :cond_4
    const-string p0, "Normal kill boost : "

    .line 201
    .line 202
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_5
    const-string/jumbo v0, "set_heavy_boost_mode"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    array-length v0, p2

    .line 221
    if-le v0, v5, :cond_7

    .line 222
    .line 223
    aget-object p2, p2, v5

    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    iput-boolean p2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 234
    .line 235
    if-eqz p2, :cond_6

    .line 236
    .line 237
    move-object v3, v6

    .line 238
    :cond_6
    const-string p0, "Heavy kill boost : "

    .line 239
    .line 240
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_2

    .line 248
    .line 249
    :cond_7
    const-string/jumbo v0, "set_normal_kill_interval"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_8

    .line 257
    .line 258
    array-length v0, p2

    .line 259
    if-le v0, v5, :cond_8

    .line 260
    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 262
    .line 263
    aget-object v0, v0, v2

    .line 264
    .line 265
    aget-object p2, p2, v5

    .line 266
    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    mul-int/lit16 p2, p2, 0x3e8

    .line 272
    .line 273
    aput p2, v0, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    .line 275
    goto :goto_0

    .line 276
    :catch_1
    move-exception p2

    .line 277
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v0, "Normal kill interval : "

    .line 287
    .line 288
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 292
    .line 293
    aget-object p0, p0, v2

    .line 294
    .line 295
    aget p0, p0, v4

    .line 296
    .line 297
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_8
    const-string/jumbo v0, "set_heavy_kill_interval"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_9

    .line 310
    .line 311
    array-length v0, p2

    .line 312
    if-le v0, v5, :cond_9

    .line 313
    .line 314
    :try_start_2
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 315
    .line 316
    aget-object v0, v0, v5

    .line 317
    .line 318
    aget-object p2, p2, v5

    .line 319
    .line 320
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    move-result p2

    .line 324
    mul-int/lit16 p2, p2, 0x3e8

    .line 325
    .line 326
    aput p2, v0, v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 327
    .line 328
    goto :goto_1

    .line 329
    :catch_2
    move-exception p2

    .line 330
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string v0, "Heavy kill interval : "

    .line 340
    .line 341
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 345
    .line 346
    aget-object p0, p0, v5

    .line 347
    .line 348
    aget p0, p0, v4

    .line 349
    .line 350
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 351
    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_9
    const-string/jumbo p2, "info"

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result p2

    .line 361
    if-eqz p2, :cond_a

    .line 362
    .line 363
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 367
    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_a
    const-string/jumbo p2, "appinfo"

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result p2

    .line 377
    if-eqz p2, :cond_b

    .line 378
    .line 379
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    .line 380
    .line 381
    .line 382
    goto :goto_2

    .line 383
    :cond_b
    const-string p2, "adjinfo"

    .line 384
    .line 385
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    if-eqz p2, :cond_c

    .line 390
    .line 391
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    .line 392
    .line 393
    .line 394
    goto :goto_2

    .line 395
    :cond_c
    const-string/jumbo p2, "history"

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result p2

    .line 402
    if-eqz p2, :cond_d

    .line 403
    .line 404
    const-string p2, "Chimera Kill History:"

    .line 405
    .line 406
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    .line 410
    .line 411
    .line 412
    goto :goto_2

    .line 413
    :cond_d
    const-string/jumbo p2, "quotakill"

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result p2

    .line 420
    if-eqz p2, :cond_f

    .line 421
    .line 422
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 423
    .line 424
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    sget-boolean p2, Lcom/android/server/chimera/SystemRepository;->IS_SHIP_BUILD:Z

    .line 428
    .line 429
    if-eqz p2, :cond_e

    .line 430
    .line 431
    const-string p0, "No support in ship build"

    .line 432
    .line 433
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto :goto_2

    .line 437
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    const/16 p2, 0x10

    .line 442
    .line 443
    iput p2, p1, Landroid/os/Message;->what:I

    .line 444
    .line 445
    iput v5, p1, Landroid/os/Message;->arg1:I

    .line 446
    .line 447
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mSystemEventListenerHandler:Landroid/os/Handler;

    .line 448
    .line 449
    if-eqz p0, :cond_f

    .line 450
    .line 451
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    .line 453
    .line 454
    :cond_f
    :goto_2
    return-void
.end method

.method public final dumpInfo(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ScoreWeight: lru="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " standbybucket="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mem="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    aget-object v0, v0, v1

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    aget v0, v0, v1

    .line 40
    .line 41
    int-to-long v2, v0

    .line 42
    invoke-static {v2, v3}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "Normal kill interval : "

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    aget-object v0, v0, v2

    .line 59
    .line 60
    aget v0, v0, v1

    .line 61
    .line 62
    int-to-long v0, v0

    .line 63
    invoke-static {v0, v1}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "Heavy kill interval : "

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 77
    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    iget-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 81
    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string p0, "Kill boost mode: off"

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v1, "Kill boost mode:"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 99
    .line 100
    const-string v2, ""

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    const-string v1, " Normal"

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move-object v1, v2

    .line 108
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean p0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 112
    .line 113
    if-eqz p0, :cond_3

    .line 114
    .line 115
    const-string v2, " Heavy"

    .line 116
    .line 117
    :cond_3
    invoke-static {v0, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void
.end method

.method public final executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 15
    .line 16
    const-string v1, "AggressivePolicyHandler"

    .line 17
    .line 18
    const-string/jumbo v2, "executePolicy() - prepareForTrigger fails"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v5

    .line 28
    :cond_0
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 29
    .line 30
    const-string v6, "AggressivePolicyHandler"

    .line 31
    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v8, "executePolicy() - triggerSource: "

    .line 35
    .line 36
    .line 37
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 58
    .line 59
    add-int/2addr v4, v3

    .line 60
    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 61
    .line 62
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    aget v9, v4, v8

    .line 69
    .line 70
    add-int/2addr v9, v3

    .line 71
    aput v9, v4, v8

    .line 72
    .line 73
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 74
    .line 75
    const/16 v8, 0x13

    .line 76
    .line 77
    const-wide/16 v9, 0x2800

    .line 78
    .line 79
    const/4 v11, 0x4

    .line 80
    if-ne v0, v4, :cond_2

    .line 81
    .line 82
    move/from16 v12, p2

    .line 83
    .line 84
    if-ne v12, v2, :cond_2

    .line 85
    .line 86
    :cond_1
    move-wide/from16 v17, v6

    .line 87
    .line 88
    goto/16 :goto_f

    .line 89
    .line 90
    :cond_2
    iget-object v12, v1, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 91
    .line 92
    iget-boolean v12, v12, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 93
    .line 94
    if-eqz v12, :cond_1

    .line 95
    .line 96
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 97
    .line 98
    if-ne v0, v4, :cond_4

    .line 99
    .line 100
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v12

    .line 106
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 107
    .line 108
    iget-wide v14, v0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 109
    .line 110
    iget-boolean v0, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    iget-wide v2, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    .line 115
    .line 116
    cmp-long v0, v6, v2

    .line 117
    .line 118
    if-gez v0, :cond_3

    .line 119
    .line 120
    long-to-double v2, v14

    .line 121
    iget-wide v14, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 122
    .line 123
    mul-double/2addr v2, v14

    .line 124
    double-to-long v14, v2

    .line 125
    :cond_3
    sub-long v2, v14, v12

    .line 126
    .line 127
    cmp-long v0, v2, v9

    .line 128
    .line 129
    if-gtz v0, :cond_4

    .line 130
    .line 131
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 132
    .line 133
    const-string v1, "AggressivePolicyHandler"

    .line 134
    .line 135
    const-string/jumbo v2, "available memory: "

    .line 136
    .line 137
    .line 138
    const-string v3, ", free memory target: "

    .line 139
    .line 140
    invoke-static {v2, v12, v13, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, ", quit chimera"

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return v5

    .line 163
    :cond_4
    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    new-instance v3, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_1d

    .line 190
    .line 191
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    move-object v9, v0

    .line 196
    check-cast v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 197
    .line 198
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 199
    .line 200
    const/16 v10, 0x2710

    .line 201
    .line 202
    if-ge v0, v10, :cond_5

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_5
    iget-object v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 206
    .line 207
    const-string v10, ":"

    .line 208
    .line 209
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_6

    .line 214
    .line 215
    const-string/jumbo v0, "isMainProc"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v12

    .line 226
    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 227
    .line 228
    sub-long/2addr v12, v14

    .line 229
    const-wide/16 v14, 0x1388

    .line 230
    .line 231
    cmp-long v0, v12, v14

    .line 232
    .line 233
    if-gez v0, :cond_7

    .line 234
    .line 235
    const-string/jumbo v0, "lastActivityTime"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_7
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 243
    .line 244
    if-ne v0, v8, :cond_8

    .line 245
    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v12

    .line 250
    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 251
    .line 252
    sub-long/2addr v12, v14

    .line 253
    iget v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 254
    .line 255
    int-to-long v14, v0

    .line 256
    cmp-long v0, v12, v14

    .line 257
    .line 258
    if-gez v0, :cond_8

    .line 259
    .line 260
    const-string v0, "PROCESS_STATE_CACHED_EMPTY"

    .line 261
    .line 262
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_0

    .line 266
    :cond_8
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 267
    .line 268
    const/16 v10, 0xa

    .line 269
    .line 270
    if-ne v0, v10, :cond_9

    .line 271
    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 273
    .line 274
    .line 275
    move-result-wide v12

    .line 276
    iget-wide v14, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 277
    .line 278
    sub-long/2addr v12, v14

    .line 279
    iget v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 280
    .line 281
    int-to-long v14, v0

    .line 282
    cmp-long v0, v12, v14

    .line 283
    .line 284
    if-gez v0, :cond_9

    .line 285
    .line 286
    const-string v0, "PROCESS_STATE_SERVICE"

    .line 287
    .line 288
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    goto :goto_0

    .line 292
    :cond_9
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 293
    .line 294
    const/4 v12, 0x1

    .line 295
    if-gt v0, v12, :cond_a

    .line 296
    .line 297
    const-string v0, "PROCESS_STATE_PERSISTENT_UI"

    .line 298
    .line 299
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    goto :goto_0

    .line 303
    :cond_a
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    .line 304
    .line 305
    and-int/2addr v0, v11

    .line 306
    if-lez v0, :cond_b

    .line 307
    .line 308
    const-string/jumbo v0, "hasActivity"

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_b
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 317
    .line 318
    iget-object v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 319
    .line 320
    iget v13, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 321
    .line 322
    invoke-virtual {v0, v13, v12}, Lcom/android/server/chimera/SystemRepository;->hasConnectionProvider(ILjava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_c

    .line 327
    .line 328
    const-string/jumbo v0, "hasConnectionProvider"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_0

    .line 335
    .line 336
    :cond_c
    iget-object v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    const-string/jumbo v12, "sandbox"

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_d

    .line 350
    .line 351
    const-string/jumbo v0, "isSandbox"

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_d
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 360
    .line 361
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    iget-object v12, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 366
    .line 367
    aget-object v12, v12, v5

    .line 368
    .line 369
    iget-object v13, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 370
    .line 371
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 375
    .line 376
    sget-object v13, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 377
    .line 378
    invoke-virtual {v13, v0, v12}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v13

    .line 382
    if-eqz v13, :cond_e

    .line 383
    .line 384
    const-string/jumbo v0, "isAutoRunOn"

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :cond_e
    sget-boolean v13, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 393
    .line 394
    sget-object v13, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 395
    .line 396
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 400
    .line 401
    .line 402
    move-result-wide v14

    .line 403
    sget-object v16, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 404
    .line 405
    monitor-enter v16

    .line 406
    :try_start_0
    invoke-virtual {v13, v0, v12}, Lcom/android/server/am/FreecessController;->getPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    if-eqz v0, :cond_f

    .line 411
    .line 412
    iget-object v0, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 413
    .line 414
    iget-boolean v13, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 415
    .line 416
    if-nez v13, :cond_f

    .line 417
    .line 418
    iget-boolean v13, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 419
    .line 420
    if-eqz v13, :cond_f

    .line 421
    .line 422
    move-wide/from16 v17, v6

    .line 423
    .line 424
    iget-wide v5, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 425
    .line 426
    sub-long/2addr v14, v5

    .line 427
    const-wide/16 v5, 0x7d0

    .line 428
    .line 429
    cmp-long v0, v14, v5

    .line 430
    .line 431
    if-ltz v0, :cond_10

    .line 432
    .line 433
    const/4 v0, 0x1

    .line 434
    goto :goto_1

    .line 435
    :catchall_0
    move-exception v0

    .line 436
    goto/16 :goto_c

    .line 437
    .line 438
    :cond_f
    move-wide/from16 v17, v6

    .line 439
    .line 440
    :cond_10
    const/4 v0, 0x0

    .line 441
    :goto_1
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    if-nez v0, :cond_12

    .line 443
    .line 444
    const-string/jumbo v0, "isUnFreezedSafely"

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    :cond_11
    :goto_2
    move-wide/from16 v6, v17

    .line 451
    .line 452
    const/4 v5, 0x0

    .line 453
    goto/16 :goto_0

    .line 454
    .line 455
    :cond_12
    iget v0, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 456
    .line 457
    if-eq v0, v8, :cond_1c

    .line 458
    .line 459
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 460
    .line 461
    iget v5, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 462
    .line 463
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 464
    .line 465
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 466
    .line 467
    monitor-enter v6

    .line 468
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 469
    .line 470
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 475
    if-nez v0, :cond_13

    .line 476
    .line 477
    :goto_3
    const/4 v0, 0x0

    .line 478
    goto :goto_5

    .line 479
    :cond_13
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 480
    .line 481
    if-eqz v0, :cond_16

    .line 482
    .line 483
    iget-boolean v5, v0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 484
    .line 485
    if-eqz v5, :cond_14

    .line 486
    .line 487
    goto :goto_3

    .line 488
    :cond_14
    iget-object v5, v0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 489
    .line 490
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 491
    .line 492
    .line 493
    move-result v5

    .line 494
    const/4 v6, 0x1

    .line 495
    sub-int/2addr v5, v6

    .line 496
    :goto_4
    if-ltz v5, :cond_16

    .line 497
    .line 498
    iget-object v6, v0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 499
    .line 500
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 505
    .line 506
    iget-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 507
    .line 508
    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 509
    .line 510
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 511
    .line 512
    .line 513
    move-result v6

    .line 514
    if-nez v6, :cond_15

    .line 515
    .line 516
    const/4 v0, 0x2

    .line 517
    goto :goto_5

    .line 518
    :cond_15
    add-int/lit8 v5, v5, -0x1

    .line 519
    .line 520
    goto :goto_4

    .line 521
    :cond_16
    const/4 v0, 0x1

    .line 522
    :goto_5
    if-nez v0, :cond_17

    .line 523
    .line 524
    const-string/jumbo v0, "isFilterByMars and isn\'t Empty"

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    goto :goto_2

    .line 531
    :cond_17
    const/4 v5, 0x2

    .line 532
    if-ne v0, v5, :cond_1c

    .line 533
    .line 534
    const/4 v0, 0x0

    .line 535
    const/4 v6, 0x0

    .line 536
    :goto_6
    :try_start_2
    iget v7, v9, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 537
    .line 538
    const/4 v14, 0x1

    .line 539
    invoke-static {v7, v14, v10}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZI)I

    .line 540
    .line 541
    .line 542
    move-result v6

    .line 543
    sget v7, Landroid/system/OsConstants;->EAGAIN:I

    .line 544
    .line 545
    neg-int v7, v7

    .line 546
    if-ne v6, v7, :cond_19

    .line 547
    .line 548
    add-int/lit8 v7, v0, 0x1

    .line 549
    .line 550
    if-lt v0, v5, :cond_18

    .line 551
    .line 552
    goto :goto_7

    .line 553
    :cond_18
    move v0, v7

    .line 554
    goto :goto_6

    .line 555
    :cond_19
    :goto_7
    if-eqz v6, :cond_1a

    .line 556
    .line 557
    iget-object v0, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 558
    .line 559
    const-string v5, "ChimeraAppManager"

    .line 560
    .line 561
    new-instance v7, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .line 565
    .line 566
    const-string/jumbo v10, "checkServiceSafetyKilled Unable to freeze binder for "

    .line 567
    .line 568
    .line 569
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v10, ": "

    .line 576
    .line 577
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v7

    .line 587
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    invoke-static {v5, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 591
    .line 592
    .line 593
    goto :goto_8

    .line 594
    :catchall_1
    move-exception v0

    .line 595
    goto :goto_9

    .line 596
    :catch_0
    move-exception v0

    .line 597
    goto :goto_a

    .line 598
    :cond_1a
    :goto_8
    if-nez v6, :cond_1b

    .line 599
    .line 600
    goto :goto_b

    .line 601
    :goto_9
    throw v0

    .line 602
    :goto_a
    iget-object v5, v2, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 603
    .line 604
    const-string v7, "ChimeraAppManager"

    .line 605
    .line 606
    new-instance v10, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    const-string v14, "Unable to freeze binder for "

    .line 609
    .line 610
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const-string v12, ": "

    .line 617
    .line 618
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    invoke-static {v7, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    if-nez v6, :cond_1b

    .line 635
    .line 636
    goto :goto_b

    .line 637
    :cond_1b
    const-string/jumbo v0, "freeze binder failed."

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2, v9, v0}, Lcom/android/server/chimera/ChimeraAppManager;->logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_2

    .line 644
    .line 645
    :catchall_2
    move-exception v0

    .line 646
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 647
    throw v0

    .line 648
    :cond_1c
    :goto_b
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    const/4 v5, 0x5

    .line 656
    if-lt v0, v5, :cond_11

    .line 657
    .line 658
    goto :goto_d

    .line 659
    :goto_c
    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 660
    throw v0

    .line 661
    :cond_1d
    move-wide/from16 v17, v6

    .line 662
    .line 663
    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 664
    .line 665
    .line 666
    move-result v0

    .line 667
    const/4 v2, 0x1

    .line 668
    add-int/lit8 v2, v0, -0x1

    .line 669
    .line 670
    :goto_e
    if-ltz v2, :cond_1e

    .line 671
    .line 672
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    check-cast v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 677
    .line 678
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 679
    .line 680
    const-string v6, "AggressivePolicyHandler"

    .line 681
    .line 682
    new-instance v7, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    const-string v8, "Chimera kill subProcess "

    .line 685
    .line 686
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    iget v8, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 690
    .line 691
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    const-string v8, " "

    .line 695
    .line 696
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    iget-object v8, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 700
    .line 701
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    const-string v8, " success"

    .line 705
    .line 706
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v7

    .line 713
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    .line 715
    .line 716
    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    iget v4, v4, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 720
    .line 721
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 722
    .line 723
    .line 724
    add-int/lit8 v2, v2, -0x1

    .line 725
    .line 726
    goto :goto_e

    .line 727
    :cond_1e
    iget-object v1, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 728
    .line 729
    const-string v2, "AggressivePolicyHandler"

    .line 730
    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    const-string v4, "Kill subProcess Processing time(ms) "

    .line 734
    .line 735
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 739
    .line 740
    .line 741
    move-result-wide v4

    .line 742
    sub-long v4, v4, v17

    .line 743
    .line 744
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    .line 753
    .line 754
    invoke-static {v2, v3}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    return v0

    .line 758
    :goto_f
    iget-object v2, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 759
    .line 760
    invoke-static {v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    .line 761
    .line 762
    .line 763
    move-result-wide v2

    .line 764
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 765
    .line 766
    iget-wide v6, v5, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 767
    .line 768
    iget-boolean v12, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsAdjustTargetFree:Z

    .line 769
    .line 770
    if-eqz v12, :cond_1f

    .line 771
    .line 772
    iget-wide v14, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeEndTime:J

    .line 773
    .line 774
    cmp-long v12, v17, v14

    .line 775
    .line 776
    if-gez v12, :cond_1f

    .line 777
    .line 778
    long-to-double v6, v6

    .line 779
    iget-wide v14, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mAdjustTargetFreeFactor:D

    .line 780
    .line 781
    mul-double/2addr v6, v14

    .line 782
    double-to-long v6, v6

    .line 783
    :cond_1f
    sub-long v14, v6, v2

    .line 784
    .line 785
    cmp-long v9, v14, v9

    .line 786
    .line 787
    if-gtz v9, :cond_20

    .line 788
    .line 789
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 790
    .line 791
    const-string v1, "AggressivePolicyHandler"

    .line 792
    .line 793
    const-string/jumbo v4, "available memory: "

    .line 794
    .line 795
    .line 796
    const-string v5, ", free memory target: "

    .line 797
    .line 798
    invoke-static {v4, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    const-string v3, ", quit chimera"

    .line 806
    .line 807
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 815
    .line 816
    .line 817
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    :goto_10
    const/4 v1, 0x0

    .line 821
    return v1

    .line 822
    :cond_20
    if-ne v0, v4, :cond_21

    .line 823
    .line 824
    iget v4, v5, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 825
    .line 826
    goto :goto_11

    .line 827
    :cond_21
    iget v4, v5, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 828
    .line 829
    :goto_11
    iget-boolean v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 830
    .line 831
    if-eqz v5, :cond_22

    .line 832
    .line 833
    iget-object v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 834
    .line 835
    invoke-virtual {v5}, Lcom/android/server/chimera/HeavyLaunchCounter;->isHeavyLaunch()Z

    .line 836
    .line 837
    .line 838
    move-result v5

    .line 839
    if-eqz v5, :cond_22

    .line 840
    .line 841
    const/4 v5, 0x2

    .line 842
    div-int/2addr v4, v5

    .line 843
    int-to-double v4, v4

    .line 844
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 845
    .line 846
    add-double/2addr v4, v9

    .line 847
    double-to-int v4, v4

    .line 848
    :cond_22
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 849
    .line 850
    const-string v9, "AggressivePolicyHandler"

    .line 851
    .line 852
    const-string/jumbo v10, "memAvailable: "

    .line 853
    .line 854
    .line 855
    const-string v12, ", memFreeTarget: "

    .line 856
    .line 857
    invoke-static {v10, v2, v3, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    move-result-object v10

    .line 861
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    const-string v6, ", releaseTarget:"

    .line 865
    .line 866
    const-string v7, ", protectedLruCount: "

    .line 867
    .line 868
    invoke-static {v10, v6, v14, v15, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v6

    .line 878
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    invoke-static {v9, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 885
    .line 886
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    .line 888
    .line 889
    const/4 v6, 0x0

    .line 890
    :goto_12
    invoke-static {}, Lcom/android/server/chimera/SkipReasonLogger$Reason;->values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 891
    .line 892
    .line 893
    move-result-object v7

    .line 894
    array-length v7, v7

    .line 895
    if-ge v6, v7, :cond_23

    .line 896
    .line 897
    iget-object v7, v5, Lcom/android/server/chimera/SkipReasonLogger;->mSkippedPids:[Ljava/util/Set;

    .line 898
    .line 899
    aget-object v7, v7, v6

    .line 900
    .line 901
    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 902
    .line 903
    .line 904
    const/4 v7, 0x1

    .line 905
    add-int/2addr v6, v7

    .line 906
    goto :goto_12

    .line 907
    :cond_23
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 908
    .line 909
    iget-object v6, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 910
    .line 911
    iget-object v7, v5, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 912
    .line 913
    invoke-virtual {v7}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 914
    .line 915
    .line 916
    move-result-object v7

    .line 917
    invoke-virtual {v5, v6, v4, v0, v7}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;

    .line 918
    .line 919
    .line 920
    move-result-object v4

    .line 921
    if-eqz v4, :cond_24

    .line 922
    .line 923
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 924
    .line 925
    .line 926
    move-result v5

    .line 927
    const/4 v6, 0x3

    .line 928
    if-ge v5, v6, :cond_25

    .line 929
    .line 930
    :cond_24
    move-object v15, v4

    .line 931
    goto/16 :goto_2e

    .line 932
    .line 933
    :cond_25
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 934
    .line 935
    .line 936
    move-result-object v5

    .line 937
    move-wide/from16 v19, v14

    .line 938
    .line 939
    const/4 v7, 0x1

    .line 940
    const-wide/16 v13, 0x0

    .line 941
    .line 942
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 943
    .line 944
    .line 945
    move-result v12

    .line 946
    if-eqz v12, :cond_28

    .line 947
    .line 948
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v12

    .line 952
    check-cast v12, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 953
    .line 954
    iget-wide v8, v12, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 955
    .line 956
    cmp-long v10, v8, v13

    .line 957
    .line 958
    if-lez v10, :cond_26

    .line 959
    .line 960
    move-wide v13, v8

    .line 961
    :cond_26
    iget v8, v12, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 962
    .line 963
    if-le v8, v7, :cond_27

    .line 964
    .line 965
    move v7, v8

    .line 966
    :cond_27
    const/16 v8, 0x13

    .line 967
    .line 968
    goto :goto_13

    .line 969
    :cond_28
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 970
    .line 971
    .line 972
    move-result-object v5

    .line 973
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 974
    .line 975
    .line 976
    move-result v8

    .line 977
    if-eqz v8, :cond_29

    .line 978
    .line 979
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v8

    .line 983
    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 984
    .line 985
    iget v9, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 986
    .line 987
    iget v10, v8, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 988
    .line 989
    int-to-float v10, v10

    .line 990
    mul-float/2addr v9, v10

    .line 991
    int-to-float v10, v7

    .line 992
    div-float/2addr v9, v10

    .line 993
    iget v10, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 994
    .line 995
    iget v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 996
    .line 997
    int-to-float v12, v12

    .line 998
    mul-float/2addr v10, v12

    .line 999
    const/high16 v12, 0x42480000    # 50.0f

    .line 1000
    .line 1001
    div-float/2addr v10, v12

    .line 1002
    add-float/2addr v10, v9

    .line 1003
    iget v9, v1, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 1004
    .line 1005
    move/from16 v16, v7

    .line 1006
    .line 1007
    iget-wide v6, v8, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 1008
    .line 1009
    long-to-float v6, v6

    .line 1010
    mul-float/2addr v9, v6

    .line 1011
    long-to-float v6, v13

    .line 1012
    div-float/2addr v9, v6

    .line 1013
    add-float/2addr v9, v10

    .line 1014
    const/high16 v6, 0x42c80000    # 100.0f

    .line 1015
    .line 1016
    mul-float/2addr v9, v6

    .line 1017
    iput v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    .line 1018
    .line 1019
    iget v7, v8, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 1020
    .line 1021
    rsub-int/lit8 v7, v7, 0x4

    .line 1022
    .line 1023
    int-to-float v7, v7

    .line 1024
    mul-float/2addr v7, v6

    .line 1025
    add-float/2addr v7, v9

    .line 1026
    iput v7, v8, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    .line 1027
    .line 1028
    move/from16 v7, v16

    .line 1029
    .line 1030
    const/4 v6, 0x3

    .line 1031
    goto :goto_14

    .line 1032
    :cond_29
    new-instance v5, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda4;

    .line 1033
    .line 1034
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1038
    .line 1039
    .line 1040
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1041
    .line 1042
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1043
    .line 1044
    .line 1045
    sget-boolean v5, Lcom/android/server/chimera/SystemRepository;->IS_SHIP_BUILD:Z

    .line 1046
    .line 1047
    if-nez v5, :cond_2b

    .line 1048
    .line 1049
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    .line 1053
    .line 1054
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v6

    .line 1058
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v7

    .line 1062
    if-eqz v7, :cond_2a

    .line 1063
    .line 1064
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v7

    .line 1068
    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1069
    .line 1070
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    const-string v7, "\n"

    .line 1074
    .line 1075
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    goto :goto_15

    .line 1079
    :cond_2a
    const-string v6, "PolicyHandler"

    .line 1080
    .line 1081
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v5

    .line 1085
    iget-object v7, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1086
    .line 1087
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1088
    .line 1089
    .line 1090
    invoke-static {v6, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    :cond_2b
    :goto_16
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1094
    .line 1095
    const-string v6, "AggressivePolicyHandler"

    .line 1096
    .line 1097
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    const-string v8, "Start doKill, protected policy: "

    .line 1100
    .line 1101
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    iget-object v8, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1105
    .line 1106
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v7

    .line 1113
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1114
    .line 1115
    .line 1116
    invoke-static {v6, v7}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v5

    .line 1123
    const/4 v6, 0x0

    .line 1124
    const/4 v7, 0x0

    .line 1125
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1126
    .line 1127
    .line 1128
    move-result v8

    .line 1129
    if-eqz v8, :cond_2c

    .line 1130
    .line 1131
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v8

    .line 1135
    check-cast v8, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1136
    .line 1137
    iget v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 1138
    .line 1139
    if-lt v9, v11, :cond_2d

    .line 1140
    .line 1141
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1142
    .line 1143
    const-string v8, "AggressivePolicyHandler"

    .line 1144
    .line 1145
    const-string/jumbo v9, "killing stopped to group 4"

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1149
    .line 1150
    .line 1151
    invoke-static {v8, v9}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    :cond_2c
    const/4 v10, 0x2

    .line 1155
    goto/16 :goto_2b

    .line 1156
    .line 1157
    :cond_2d
    invoke-virtual {v1, v8, v0}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    .line 1158
    .line 1159
    .line 1160
    move-result v9

    .line 1161
    if-nez v9, :cond_2e

    .line 1162
    .line 1163
    move-object/from16 v29, v5

    .line 1164
    .line 1165
    const/4 v10, 0x2

    .line 1166
    goto/16 :goto_27

    .line 1167
    .line 1168
    :cond_2e
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1169
    .line 1170
    check-cast v9, Ljava/util/ArrayList;

    .line 1171
    .line 1172
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v9

    .line 1176
    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1177
    .line 1178
    .line 1179
    move-result v10

    .line 1180
    if-eqz v10, :cond_35

    .line 1181
    .line 1182
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v10

    .line 1186
    check-cast v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1187
    .line 1188
    iget-object v13, v1, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 1189
    .line 1190
    iget v11, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1191
    .line 1192
    iget-wide v14, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 1193
    .line 1194
    iget v12, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->importance:I

    .line 1195
    .line 1196
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1197
    .line 1198
    .line 1199
    const-wide/32 v23, 0x12c000

    .line 1200
    .line 1201
    .line 1202
    cmp-long v13, v14, v23

    .line 1203
    .line 1204
    if-lez v13, :cond_30

    .line 1205
    .line 1206
    const/16 v14, 0x12c

    .line 1207
    .line 1208
    const/16 v15, 0x64

    .line 1209
    .line 1210
    if-ne v12, v15, :cond_2f

    .line 1211
    .line 1212
    sget-object v13, Lcom/android/server/chimera/AbnormalFgsDetector;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1213
    .line 1214
    if-eqz v13, :cond_2f

    .line 1215
    .line 1216
    filled-new-array {v11}, [I

    .line 1217
    .line 1218
    .line 1219
    move-result-object v11

    .line 1220
    invoke-virtual {v13, v11}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v11

    .line 1224
    if-eqz v11, :cond_2f

    .line 1225
    .line 1226
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1227
    .line 1228
    if-eqz v11, :cond_2f

    .line 1229
    .line 1230
    check-cast v11, [I

    .line 1231
    .line 1232
    const/4 v13, 0x0

    .line 1233
    aget v11, v11, v13

    .line 1234
    .line 1235
    if-lt v11, v15, :cond_2f

    .line 1236
    .line 1237
    if-ge v11, v14, :cond_2f

    .line 1238
    .line 1239
    goto :goto_19

    .line 1240
    :cond_2f
    if-eq v12, v14, :cond_31

    .line 1241
    .line 1242
    const/16 v11, 0x7d

    .line 1243
    .line 1244
    if-eq v12, v11, :cond_31

    .line 1245
    .line 1246
    const/16 v11, 0xc8

    .line 1247
    .line 1248
    if-eq v12, v11, :cond_31

    .line 1249
    .line 1250
    const/16 v11, 0xe6

    .line 1251
    .line 1252
    if-eq v12, v11, :cond_31

    .line 1253
    .line 1254
    const/16 v11, 0x82

    .line 1255
    .line 1256
    if-ne v12, v11, :cond_30

    .line 1257
    .line 1258
    goto :goto_19

    .line 1259
    :cond_30
    move-object/from16 v29, v5

    .line 1260
    .line 1261
    const/4 v10, 0x3

    .line 1262
    goto :goto_1c

    .line 1263
    :cond_31
    :goto_19
    iget-object v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 1264
    .line 1265
    iget-object v9, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 1266
    .line 1267
    iget v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 1268
    .line 1269
    iget-wide v14, v10, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 1270
    .line 1271
    monitor-enter v11

    .line 1272
    :try_start_5
    iget-object v10, v11, Lcom/android/server/chimera/AbnormalFgsDetector;->mHeavyApps:Ljava/util/List;

    .line 1273
    .line 1274
    new-instance v13, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;

    .line 1275
    .line 1276
    move-object/from16 v29, v5

    .line 1277
    .line 1278
    const/4 v5, 0x2

    .line 1279
    invoke-direct {v13, v9, v5}, Lcom/android/server/chimera/AbnormalFgsDetector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 1280
    .line 1281
    .line 1282
    check-cast v10, Ljava/util/ArrayList;

    .line 1283
    .line 1284
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1285
    .line 1286
    .line 1287
    iget-object v5, v11, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    .line 1288
    .line 1289
    check-cast v5, Ljava/util/ArrayList;

    .line 1290
    .line 1291
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v5

    .line 1295
    :cond_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1296
    .line 1297
    .line 1298
    move-result v10

    .line 1299
    if-eqz v10, :cond_33

    .line 1300
    .line 1301
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v10

    .line 1305
    check-cast v10, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 1306
    .line 1307
    iget-object v13, v10, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->processName:Ljava/lang/String;

    .line 1308
    .line 1309
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v13

    .line 1313
    if-eqz v13, :cond_32

    .line 1314
    .line 1315
    iget v5, v10, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;->count:I

    .line 1316
    .line 1317
    const/4 v10, 0x1

    .line 1318
    add-int/2addr v5, v10

    .line 1319
    goto :goto_1a

    .line 1320
    :catchall_3
    move-exception v0

    .line 1321
    goto :goto_1b

    .line 1322
    :cond_33
    const/4 v5, 0x1

    .line 1323
    :goto_1a
    iget-object v10, v11, Lcom/android/server/chimera/AbnormalFgsDetector;->mKillableHeavyApps:Ljava/util/List;

    .line 1324
    .line 1325
    new-instance v13, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;

    .line 1326
    .line 1327
    move-object/from16 v23, v13

    .line 1328
    .line 1329
    move/from16 v24, v12

    .line 1330
    .line 1331
    move/from16 v25, v5

    .line 1332
    .line 1333
    move-wide/from16 v26, v14

    .line 1334
    .line 1335
    move-object/from16 v28, v9

    .line 1336
    .line 1337
    invoke-direct/range {v23 .. v28}, Lcom/android/server/chimera/AbnormalFgsDetector$HeavyAppItem;-><init>(IIJLjava/lang/String;)V

    .line 1338
    .line 1339
    .line 1340
    check-cast v10, Ljava/util/ArrayList;

    .line 1341
    .line 1342
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    .line 1344
    .line 1345
    const/4 v10, 0x3

    .line 1346
    if-lt v5, v10, :cond_34

    .line 1347
    .line 1348
    invoke-virtual {v11, v12, v9, v14, v15}, Lcom/android/server/chimera/AbnormalFgsDetector;->addAbnormalHeavyApp(ILjava/lang/String;J)V

    .line 1349
    .line 1350
    .line 1351
    :cond_34
    monitor-exit v11

    .line 1352
    const/4 v5, 0x1

    .line 1353
    goto :goto_1d

    .line 1354
    :goto_1b
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1355
    throw v0

    .line 1356
    :goto_1c
    move-object/from16 v5, v29

    .line 1357
    .line 1358
    const/4 v11, 0x4

    .line 1359
    goto/16 :goto_18

    .line 1360
    .line 1361
    :cond_35
    move-object/from16 v29, v5

    .line 1362
    .line 1363
    const/4 v10, 0x3

    .line 1364
    const/4 v5, 0x0

    .line 1365
    :goto_1d
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 1366
    .line 1367
    iget-object v9, v9, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 1368
    .line 1369
    invoke-static {v9}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v9

    .line 1373
    new-instance v11, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticLambda5;

    .line 1374
    .line 1375
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 1376
    .line 1377
    .line 1378
    invoke-interface {v9, v11}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    .line 1379
    .line 1380
    .line 1381
    move-result v9

    .line 1382
    if-nez v9, :cond_36

    .line 1383
    .line 1384
    const/4 v5, 0x0

    .line 1385
    :cond_36
    if-nez v5, :cond_3f

    .line 1386
    .line 1387
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 1388
    .line 1389
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1390
    .line 1391
    const-wide/16 v11, 0x0

    .line 1392
    .line 1393
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v13

    .line 1397
    check-cast v5, Ljava/util/HashMap;

    .line 1398
    .line 1399
    invoke-virtual {v5, v9, v13}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v5

    .line 1403
    check-cast v5, Ljava/lang/Long;

    .line 1404
    .line 1405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1406
    .line 1407
    .line 1408
    move-result-wide v13

    .line 1409
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1410
    .line 1411
    .line 1412
    move-result-wide v21

    .line 1413
    sub-long v13, v13, v21

    .line 1414
    .line 1415
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 1416
    .line 1417
    iget-object v5, v5, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 1418
    .line 1419
    if-nez v5, :cond_37

    .line 1420
    .line 1421
    const/16 v11, 0x13

    .line 1422
    .line 1423
    goto :goto_1f

    .line 1424
    :cond_37
    array-length v9, v5

    .line 1425
    const/4 v15, 0x0

    .line 1426
    :goto_1e
    if-ge v15, v9, :cond_3a

    .line 1427
    .line 1428
    aget v10, v5, v15

    .line 1429
    .line 1430
    const/16 v11, 0x13

    .line 1431
    .line 1432
    if-ge v10, v11, :cond_3c

    .line 1433
    .line 1434
    :goto_1f
    iget v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 1435
    .line 1436
    const/high16 v9, 0x20000

    .line 1437
    .line 1438
    and-int/2addr v5, v9

    .line 1439
    if-nez v5, :cond_38

    .line 1440
    .line 1441
    goto :goto_22

    .line 1442
    :cond_38
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 1443
    .line 1444
    iget-object v5, v5, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 1445
    .line 1446
    array-length v9, v5

    .line 1447
    const/4 v10, 0x0

    .line 1448
    :goto_20
    if-ge v10, v9, :cond_3b

    .line 1449
    .line 1450
    aget v12, v5, v10

    .line 1451
    .line 1452
    const/16 v15, 0xc8

    .line 1453
    .line 1454
    if-eq v12, v15, :cond_3a

    .line 1455
    .line 1456
    const/16 v11, 0xe1

    .line 1457
    .line 1458
    if-eq v12, v11, :cond_3a

    .line 1459
    .line 1460
    const/16 v11, 0xfa

    .line 1461
    .line 1462
    if-eq v12, v11, :cond_3a

    .line 1463
    .line 1464
    const/16 v11, 0x1f4

    .line 1465
    .line 1466
    if-eq v12, v11, :cond_3a

    .line 1467
    .line 1468
    const/16 v11, 0x320

    .line 1469
    .line 1470
    if-ne v12, v11, :cond_39

    .line 1471
    .line 1472
    goto :goto_21

    .line 1473
    :cond_39
    const/4 v11, 0x1

    .line 1474
    add-int/2addr v10, v11

    .line 1475
    const/16 v11, 0x13

    .line 1476
    .line 1477
    goto :goto_20

    .line 1478
    :cond_3a
    :goto_21
    const/4 v10, 0x2

    .line 1479
    goto :goto_24

    .line 1480
    :cond_3b
    :goto_22
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    .line 1481
    .line 1482
    iget-object v9, v1, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    .line 1483
    .line 1484
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 1485
    .line 1486
    .line 1487
    move-result v9

    .line 1488
    aget-object v5, v5, v9

    .line 1489
    .line 1490
    const/4 v10, 0x2

    .line 1491
    aget v5, v5, v10

    .line 1492
    .line 1493
    :goto_23
    int-to-long v11, v5

    .line 1494
    goto :goto_25

    .line 1495
    :cond_3c
    const/4 v10, 0x2

    .line 1496
    const/16 v11, 0xc8

    .line 1497
    .line 1498
    const/4 v12, 0x1

    .line 1499
    add-int/2addr v15, v12

    .line 1500
    const/4 v10, 0x3

    .line 1501
    const-wide/16 v11, 0x0

    .line 1502
    .line 1503
    goto :goto_1e

    .line 1504
    :goto_24
    iget v5, v1, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    .line 1505
    .line 1506
    goto :goto_23

    .line 1507
    :goto_25
    cmp-long v5, v13, v11

    .line 1508
    .line 1509
    if-gez v5, :cond_3d

    .line 1510
    .line 1511
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 1512
    .line 1513
    sget-object v9, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 1514
    .line 1515
    invoke-virtual {v5, v8, v9}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1516
    .line 1517
    .line 1518
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1519
    .line 1520
    const-string v9, "Skipped by interval: "

    .line 1521
    .line 1522
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1523
    .line 1524
    .line 1525
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1526
    .line 1527
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    const-string v9, ", elapsed: "

    .line 1531
    .line 1532
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    .line 1535
    invoke-static {v13, v14}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v9

    .line 1539
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    .line 1542
    const-string v9, ", interval: "

    .line 1543
    .line 1544
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    .line 1546
    .line 1547
    invoke-static {v11, v12}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v9

    .line 1551
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    .line 1553
    .line 1554
    invoke-static {v8}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v9

    .line 1558
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    .line 1560
    .line 1561
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v5

    .line 1565
    iget-object v9, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1566
    .line 1567
    const-string v11, "PolicyHandler"

    .line 1568
    .line 1569
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1570
    .line 1571
    .line 1572
    invoke-static {v11, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    .line 1574
    .line 1575
    const/4 v5, 0x0

    .line 1576
    goto :goto_26

    .line 1577
    :cond_3d
    const/4 v5, 0x1

    .line 1578
    :goto_26
    if-nez v5, :cond_40

    .line 1579
    .line 1580
    :cond_3e
    :goto_27
    move-object/from16 v5, v29

    .line 1581
    .line 1582
    const/4 v11, 0x4

    .line 1583
    goto/16 :goto_17

    .line 1584
    .line 1585
    :cond_3f
    const/4 v10, 0x2

    .line 1586
    :cond_40
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 1587
    .line 1588
    iget-object v9, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1589
    .line 1590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1591
    .line 1592
    .line 1593
    move-result-wide v11

    .line 1594
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v11

    .line 1598
    check-cast v5, Ljava/util/HashMap;

    .line 1599
    .line 1600
    invoke-virtual {v5, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1604
    .line 1605
    const-string v9, "AggressivePolicyHandler"

    .line 1606
    .line 1607
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1608
    .line 1609
    const-string v12, "Killed on trigger"

    .line 1610
    .line 1611
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 1615
    .line 1616
    .line 1617
    move-result v12

    .line 1618
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1619
    .line 1620
    .line 1621
    const-string v12, " : "

    .line 1622
    .line 1623
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    .line 1625
    .line 1626
    iget-object v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1627
    .line 1628
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    .line 1630
    .line 1631
    invoke-virtual {v8}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v12

    .line 1635
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1636
    .line 1637
    .line 1638
    const-string v12, ", freed: "

    .line 1639
    .line 1640
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    .line 1642
    .line 1643
    iget-wide v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 1644
    .line 1645
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1646
    .line 1647
    .line 1648
    invoke-static {v8}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v12

    .line 1652
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v11

    .line 1659
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1660
    .line 1661
    .line 1662
    invoke-static {v9, v11}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    .line 1664
    .line 1665
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1666
    .line 1667
    invoke-static {v5}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    iget-object v5, v8, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1671
    .line 1672
    check-cast v5, Ljava/util/ArrayList;

    .line 1673
    .line 1674
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v5

    .line 1678
    :goto_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1679
    .line 1680
    .line 1681
    move-result v9

    .line 1682
    if-eqz v9, :cond_41

    .line 1683
    .line 1684
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v9

    .line 1688
    check-cast v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1689
    .line 1690
    iget-object v11, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1691
    .line 1692
    iget-object v9, v9, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 1693
    .line 1694
    iget v12, v8, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 1695
    .line 1696
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1697
    .line 1698
    const-string v14, "Chimera #"

    .line 1699
    .line 1700
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1701
    .line 1702
    .line 1703
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 1704
    .line 1705
    .line 1706
    move-result v14

    .line 1707
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1708
    .line 1709
    .line 1710
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v13

    .line 1714
    const/4 v14, 0x1

    .line 1715
    invoke-virtual {v11, v12, v9, v13, v14}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1716
    .line 1717
    .line 1718
    goto :goto_28

    .line 1719
    :cond_41
    const/4 v14, 0x1

    .line 1720
    int-to-long v5, v6

    .line 1721
    iget-wide v11, v8, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 1722
    .line 1723
    add-long/2addr v5, v11

    .line 1724
    long-to-int v6, v5

    .line 1725
    add-int/2addr v7, v14

    .line 1726
    invoke-virtual {v1, v8, v0}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 1727
    .line 1728
    .line 1729
    iget-object v5, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1730
    .line 1731
    sget-object v8, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1732
    .line 1733
    if-ne v5, v8, :cond_42

    .line 1734
    .line 1735
    iget-boolean v8, v1, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 1736
    .line 1737
    if-nez v8, :cond_3e

    .line 1738
    .line 1739
    :cond_42
    sget-object v8, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1740
    .line 1741
    if-ne v5, v8, :cond_43

    .line 1742
    .line 1743
    iget-boolean v5, v1, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 1744
    .line 1745
    if-eqz v5, :cond_43

    .line 1746
    .line 1747
    goto/16 :goto_27

    .line 1748
    .line 1749
    :cond_43
    int-to-long v8, v6

    .line 1750
    cmp-long v5, v8, v19

    .line 1751
    .line 1752
    if-lez v5, :cond_44

    .line 1753
    .line 1754
    :goto_29
    const/4 v5, 0x1

    .line 1755
    goto :goto_2a

    .line 1756
    :cond_44
    sub-long v14, v19, v8

    .line 1757
    .line 1758
    const-wide/16 v8, 0x5000

    .line 1759
    .line 1760
    cmp-long v5, v14, v8

    .line 1761
    .line 1762
    if-gez v5, :cond_45

    .line 1763
    .line 1764
    iget-object v5, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1765
    .line 1766
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1767
    .line 1768
    .line 1769
    const-string v5, "PolicyHandler"

    .line 1770
    .line 1771
    const-string/jumbo v8, "relTarget - released < 20480, stop kill"

    .line 1772
    .line 1773
    .line 1774
    invoke-static {v5, v8}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    .line 1776
    .line 1777
    goto :goto_29

    .line 1778
    :cond_45
    const/4 v5, 0x0

    .line 1779
    :goto_2a
    if-eqz v5, :cond_3e

    .line 1780
    .line 1781
    :goto_2b
    iget v5, v1, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 1782
    .line 1783
    int-to-long v8, v5

    .line 1784
    iget-wide v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 1785
    .line 1786
    mul-long/2addr v11, v8

    .line 1787
    int-to-long v13, v6

    .line 1788
    add-long/2addr v11, v13

    .line 1789
    const/4 v15, 0x1

    .line 1790
    add-int/2addr v5, v15

    .line 1791
    move-object v15, v4

    .line 1792
    int-to-long v4, v5

    .line 1793
    div-long/2addr v11, v4

    .line 1794
    iput-wide v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 1795
    .line 1796
    iget-wide v11, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 1797
    .line 1798
    mul-long/2addr v8, v11

    .line 1799
    add-long/2addr v8, v2

    .line 1800
    add-long/2addr v8, v13

    .line 1801
    div-long/2addr v8, v4

    .line 1802
    iput-wide v8, v1, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 1803
    .line 1804
    iget-object v4, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1805
    .line 1806
    const-string v5, "AggressivePolicyHandler"

    .line 1807
    .line 1808
    const-string/jumbo v8, "kill complete: killed "

    .line 1809
    .line 1810
    .line 1811
    const-string v9, " apps, freed "

    .line 1812
    .line 1813
    const-string v11, " KB"

    .line 1814
    .line 1815
    invoke-static {v7, v6, v8, v9, v11}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v6

    .line 1819
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1820
    .line 1821
    .line 1822
    invoke-static {v5, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    .line 1824
    .line 1825
    if-lez v7, :cond_46

    .line 1826
    .line 1827
    sget-object v4, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1828
    .line 1829
    iput-object v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1830
    .line 1831
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 1832
    .line 1833
    .line 1834
    const/4 v5, 0x1

    .line 1835
    goto :goto_2c

    .line 1836
    :cond_46
    iget v4, v1, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 1837
    .line 1838
    const/4 v5, 0x1

    .line 1839
    add-int/2addr v4, v5

    .line 1840
    iput v4, v1, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 1841
    .line 1842
    iget-object v4, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1843
    .line 1844
    sget-object v6, Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1845
    .line 1846
    if-ne v4, v6, :cond_47

    .line 1847
    .line 1848
    goto :goto_2d

    .line 1849
    :cond_47
    iput-object v6, v1, Lcom/android/server/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 1850
    .line 1851
    :goto_2c
    if-eqz v7, :cond_48

    .line 1852
    .line 1853
    :goto_2d
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 1854
    .line 1855
    const-string v2, "AggressivePolicyHandler"

    .line 1856
    .line 1857
    invoke-virtual {v0, v2}, Lcom/android/server/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    .line 1858
    .line 1859
    .line 1860
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1861
    .line 1862
    const-string v1, "AggressivePolicyHandler"

    .line 1863
    .line 1864
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1865
    .line 1866
    const-string v3, "Processing time(ms) "

    .line 1867
    .line 1868
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1869
    .line 1870
    .line 1871
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1872
    .line 1873
    .line 1874
    move-result-wide v3

    .line 1875
    sub-long v3, v3, v17

    .line 1876
    .line 1877
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v2

    .line 1884
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1885
    .line 1886
    .line 1887
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    .line 1889
    .line 1890
    return v7

    .line 1891
    :cond_48
    move-object v4, v15

    .line 1892
    const/4 v11, 0x4

    .line 1893
    goto/16 :goto_16

    .line 1894
    .line 1895
    :goto_2e
    iget-object v0, v1, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 1896
    .line 1897
    const-string v1, "AggressivePolicyHandler"

    .line 1898
    .line 1899
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1900
    .line 1901
    const-string/jumbo v3, "executePolicy() - getAppsToKill return "

    .line 1902
    .line 1903
    .line 1904
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1905
    .line 1906
    .line 1907
    if-eqz v15, :cond_49

    .line 1908
    .line 1909
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1910
    .line 1911
    .line 1912
    move-result v3

    .line 1913
    goto :goto_2f

    .line 1914
    :cond_49
    const/4 v3, 0x0

    .line 1915
    :goto_2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1916
    .line 1917
    .line 1918
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v2

    .line 1922
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1923
    .line 1924
    .line 1925
    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    .line 1927
    .line 1928
    goto/16 :goto_10
.end method

.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/server/chimera/PolicyHandler;->onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mIsHeavyLaunchOn:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-nez p6, :cond_0

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/chimera/AggressivePolicyHandler;->mHeavyLaunchCounter:Lcom/android/server/chimera/HeavyLaunchCounter;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide p3

    .line 20
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/chimera/HeavyLaunchCounter;->addLaunch(IJ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final setWeight(FF)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 4
    .line 5
    new-instance p1, Ljava/math/BigDecimal;

    .line 6
    .line 7
    const/high16 p2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Ljava/math/BigDecimal;

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/math/BigDecimal;

    .line 28
    .line 29
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 51
    .line 52
    return-void
.end method
