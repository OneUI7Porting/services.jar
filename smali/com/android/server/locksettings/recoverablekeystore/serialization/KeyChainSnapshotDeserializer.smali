.class public abstract Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 33

    .line 1
    const-string v0, "alias"

    .line 2
    .line 3
    const-string/jumbo v1, "keyMaterial"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "keyMetadata"

    .line 7
    .line 8
    .line 9
    const-string v3, "algorithm"

    .line 10
    .line 11
    const-string/jumbo v4, "salt"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v5, "memoryDifficulty"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v6, "keyDerivationParams"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v7, "userSecretType"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v8, "lockScreenUiType"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v9, "serverParams"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v10, "keyChainProtectionParamsList"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v11, "counterId"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v12, "applicationKeysList"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v13, "snapshotVersion"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v14, "thmCertPath"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v15, "recoveryKeyMaterial"

    .line 45
    .line 46
    .line 47
    move-object/from16 v16, v2

    .line 48
    .line 49
    const-string/jumbo v2, "maxAttempts"

    .line 50
    .line 51
    .line 52
    move-object/from16 v17, v1

    .line 53
    .line 54
    const/16 v18, 0x0

    .line 55
    .line 56
    const/16 v19, -0x1

    .line 57
    .line 58
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 63
    .line 64
    .line 65
    move-object/from16 v21, v0

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    move-object/from16 v22, v5

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    move-object/from16 v23, v4

    .line 72
    .line 73
    const-string/jumbo v4, "keyChainSnapshot"

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v5, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 80
    .line 81
    invoke-direct {v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    move-object/from16 v24, v4

    .line 89
    .line 90
    const/4 v4, 0x3

    .line 91
    if-eq v0, v4, :cond_20

    .line 92
    .line 93
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v4, 0x2

    .line 98
    if-eq v0, v4, :cond_0

    .line 99
    .line 100
    :goto_1
    move-object/from16 v4, v24

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    const-string v4, "Unexpected tag "

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v25

    .line 116
    sparse-switch v25, :sswitch_data_0

    .line 117
    .line 118
    .line 119
    :goto_2
    move-object/from16 v25, v15

    .line 120
    .line 121
    :goto_3
    move/from16 v15, v19

    .line 122
    .line 123
    goto/16 :goto_6

    .line 124
    .line 125
    :sswitch_0
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v25

    .line 129
    if-nez v25, :cond_1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_1
    const/16 v25, 0x8

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :sswitch_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v25

    .line 139
    if-nez v25, :cond_2

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_2
    const/16 v25, 0x7

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :sswitch_2
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v25

    .line 149
    if-nez v25, :cond_3

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    const/16 v25, 0x6

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :sswitch_3
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v25

    .line 159
    if-nez v25, :cond_4

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_4
    const/16 v25, 0x5

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :sswitch_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v25

    .line 169
    if-nez v25, :cond_5

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    const/16 v25, 0x4

    .line 173
    .line 174
    :goto_4
    move/from16 v32, v25

    .line 175
    .line 176
    move-object/from16 v25, v15

    .line 177
    .line 178
    move/from16 v15, v32

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :sswitch_5
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v25

    .line 185
    if-nez v25, :cond_6

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_6
    move-object/from16 v25, v15

    .line 189
    .line 190
    const/4 v15, 0x3

    .line 191
    goto :goto_6

    .line 192
    :sswitch_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v25

    .line 196
    if-nez v25, :cond_7

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_7
    move-object/from16 v25, v15

    .line 200
    .line 201
    const/4 v15, 0x2

    .line 202
    goto :goto_6

    .line 203
    :sswitch_7
    move-object/from16 v25, v15

    .line 204
    .line 205
    const-string/jumbo v15, "backendPublicKey"

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v15

    .line 212
    if-nez v15, :cond_8

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_8
    const/4 v15, 0x1

    .line 216
    goto :goto_6

    .line 217
    :sswitch_8
    move-object/from16 v25, v15

    .line 218
    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v15

    .line 223
    if-nez v15, :cond_9

    .line 224
    .line 225
    :goto_5
    goto :goto_3

    .line 226
    :cond_9
    move/from16 v15, v18

    .line 227
    .line 228
    :goto_6
    packed-switch v15, :pswitch_data_0

    .line 229
    .line 230
    .line 231
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 232
    .line 233
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 234
    .line 235
    const-string v2, " in keyChainSnapshot"

    .line 236
    .line 237
    invoke-static {v4, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v1

    .line 245
    :pswitch_0
    invoke-static {v1, v9}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v5, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 250
    .line 251
    .line 252
    move-object/from16 v20, v3

    .line 253
    .line 254
    move-object/from16 v26, v9

    .line 255
    .line 256
    move-object v3, v12

    .line 257
    move-object v0, v13

    .line 258
    move-object/from16 v15, v21

    .line 259
    .line 260
    move-object/from16 v12, v22

    .line 261
    .line 262
    move-object/from16 v13, v23

    .line 263
    .line 264
    move-object/from16 v4, v25

    .line 265
    .line 266
    move-object/from16 v21, v6

    .line 267
    .line 268
    move-object/from16 v23, v8

    .line 269
    .line 270
    move-object/from16 v6, v17

    .line 271
    .line 272
    move-object v8, v2

    .line 273
    move-object/from16 v17, v7

    .line 274
    .line 275
    move-object v2, v14

    .line 276
    :goto_7
    move-object/from16 v7, v16

    .line 277
    .line 278
    goto/16 :goto_20

    .line 279
    .line 280
    :pswitch_1
    const/4 v0, 0x2

    .line 281
    const/4 v15, 0x0

    .line 282
    invoke-interface {v1, v0, v15, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v15, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    :goto_8
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    move-object/from16 v26, v9

    .line 295
    .line 296
    const/4 v9, 0x3

    .line 297
    if-eq v0, v9, :cond_18

    .line 298
    .line 299
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    const/4 v9, 0x2

    .line 304
    if-eq v0, v9, :cond_a

    .line 305
    .line 306
    move-object/from16 v9, v26

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_a
    const-string/jumbo v0, "keyChainProtectionParams"

    .line 310
    .line 311
    .line 312
    move-object/from16 v27, v2

    .line 313
    .line 314
    const/4 v2, 0x0

    .line 315
    invoke-interface {v1, v9, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    new-instance v2, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 319
    .line 320
    invoke-direct {v2}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    .line 321
    .line 322
    .line 323
    :goto_9
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    move-object/from16 v28, v14

    .line 328
    .line 329
    const/4 v14, 0x3

    .line 330
    if-eq v9, v14, :cond_17

    .line 331
    .line 332
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 333
    .line 334
    .line 335
    move-result v9

    .line 336
    const/4 v14, 0x2

    .line 337
    if-eq v9, v14, :cond_b

    .line 338
    .line 339
    move-object/from16 v14, v28

    .line 340
    .line 341
    goto :goto_9

    .line 342
    :cond_b
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    sparse-switch v14, :sswitch_data_1

    .line 354
    .line 355
    .line 356
    :goto_a
    move/from16 v14, v19

    .line 357
    .line 358
    goto :goto_b

    .line 359
    :sswitch_9
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v14

    .line 363
    if-nez v14, :cond_c

    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_c
    const/4 v14, 0x2

    .line 367
    goto :goto_b

    .line 368
    :sswitch_a
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v14

    .line 372
    if-nez v14, :cond_d

    .line 373
    .line 374
    goto :goto_a

    .line 375
    :cond_d
    const/4 v14, 0x1

    .line 376
    goto :goto_b

    .line 377
    :sswitch_b
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v14

    .line 381
    if-nez v14, :cond_e

    .line 382
    .line 383
    goto :goto_a

    .line 384
    :cond_e
    move/from16 v14, v18

    .line 385
    .line 386
    :goto_b
    packed-switch v14, :pswitch_data_1

    .line 387
    .line 388
    .line 389
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 390
    .line 391
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 392
    .line 393
    const-string v1, " in keyChainProtectionParams"

    .line 394
    .line 395
    invoke-static {v4, v9, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :pswitch_2
    const/4 v9, 0x2

    .line 404
    const/4 v14, 0x0

    .line 405
    invoke-interface {v1, v9, v14, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    move/from16 v29, v19

    .line 409
    .line 410
    move/from16 v30, v29

    .line 411
    .line 412
    const/4 v14, 0x0

    .line 413
    :goto_c
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 414
    .line 415
    .line 416
    move-result v9

    .line 417
    move-object/from16 v31, v13

    .line 418
    .line 419
    const/4 v13, 0x3

    .line 420
    if-eq v9, v13, :cond_13

    .line 421
    .line 422
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    const/4 v13, 0x2

    .line 427
    if-eq v9, v13, :cond_f

    .line 428
    .line 429
    :goto_d
    move-object/from16 v13, v31

    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_f
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 440
    .line 441
    .line 442
    move-result v13

    .line 443
    sparse-switch v13, :sswitch_data_2

    .line 444
    .line 445
    .line 446
    :goto_e
    move-object/from16 v13, v23

    .line 447
    .line 448
    :goto_f
    move-object/from16 v23, v12

    .line 449
    .line 450
    move-object/from16 v12, v22

    .line 451
    .line 452
    :goto_10
    move/from16 v22, v19

    .line 453
    .line 454
    goto :goto_11

    .line 455
    :sswitch_c
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v13

    .line 459
    if-nez v13, :cond_10

    .line 460
    .line 461
    goto :goto_e

    .line 462
    :cond_10
    move-object/from16 v13, v23

    .line 463
    .line 464
    move-object/from16 v23, v12

    .line 465
    .line 466
    move-object/from16 v12, v22

    .line 467
    .line 468
    const/16 v22, 0x2

    .line 469
    .line 470
    goto :goto_11

    .line 471
    :sswitch_d
    move-object/from16 v13, v23

    .line 472
    .line 473
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v23

    .line 477
    if-nez v23, :cond_11

    .line 478
    .line 479
    goto :goto_f

    .line 480
    :cond_11
    move-object/from16 v23, v12

    .line 481
    .line 482
    move-object/from16 v12, v22

    .line 483
    .line 484
    const/16 v22, 0x1

    .line 485
    .line 486
    goto :goto_11

    .line 487
    :sswitch_e
    move-object/from16 v13, v23

    .line 488
    .line 489
    move-object/from16 v23, v12

    .line 490
    .line 491
    move-object/from16 v12, v22

    .line 492
    .line 493
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v22

    .line 497
    if-nez v22, :cond_12

    .line 498
    .line 499
    goto :goto_10

    .line 500
    :cond_12
    move/from16 v22, v18

    .line 501
    .line 502
    :goto_11
    packed-switch v22, :pswitch_data_2

    .line 503
    .line 504
    .line 505
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 506
    .line 507
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 508
    .line 509
    const-string v1, " in keyDerivationParams"

    .line 510
    .line 511
    invoke-static {v4, v9, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    throw v0

    .line 519
    :pswitch_3
    invoke-static {v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    move-result v9

    .line 523
    move/from16 v29, v9

    .line 524
    .line 525
    goto :goto_12

    .line 526
    :pswitch_4
    invoke-static {v1, v13}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 527
    .line 528
    .line 529
    move-result-object v9

    .line 530
    move-object v14, v9

    .line 531
    goto :goto_12

    .line 532
    :pswitch_5
    invoke-static {v1, v12}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    move-result v9

    .line 536
    move/from16 v30, v9

    .line 537
    .line 538
    :goto_12
    move-object/from16 v22, v12

    .line 539
    .line 540
    move-object/from16 v12, v23

    .line 541
    .line 542
    move-object/from16 v23, v13

    .line 543
    .line 544
    goto :goto_d

    .line 545
    :cond_13
    move-object/from16 v13, v23

    .line 546
    .line 547
    move-object/from16 v23, v12

    .line 548
    .line 549
    move-object/from16 v12, v22

    .line 550
    .line 551
    if-eqz v14, :cond_16

    .line 552
    .line 553
    move-object/from16 v20, v3

    .line 554
    .line 555
    move/from16 v3, v29

    .line 556
    .line 557
    const/4 v9, 0x1

    .line 558
    if-eq v3, v9, :cond_15

    .line 559
    .line 560
    const/4 v9, 0x2

    .line 561
    if-ne v3, v9, :cond_14

    .line 562
    .line 563
    move/from16 v3, v30

    .line 564
    .line 565
    invoke-static {v14, v3}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    :goto_13
    const/4 v9, 0x0

    .line 570
    const/4 v14, 0x3

    .line 571
    goto :goto_14

    .line 572
    :cond_14
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 573
    .line 574
    const-string v1, "Unknown algorithm in keyDerivationParams"

    .line 575
    .line 576
    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    throw v0

    .line 580
    :cond_15
    invoke-static {v14}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    goto :goto_13

    .line 585
    :goto_14
    invoke-interface {v1, v14, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 589
    .line 590
    .line 591
    goto :goto_15

    .line 592
    :cond_16
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 593
    .line 594
    const-string/jumbo v1, "salt was not set in keyDerivationParams"

    .line 595
    .line 596
    .line 597
    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    throw v0

    .line 601
    :pswitch_6
    move-object/from16 v20, v3

    .line 602
    .line 603
    move-object/from16 v31, v13

    .line 604
    .line 605
    move-object/from16 v13, v23

    .line 606
    .line 607
    move-object/from16 v23, v12

    .line 608
    .line 609
    move-object/from16 v12, v22

    .line 610
    .line 611
    invoke-static {v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 612
    .line 613
    .line 614
    move-result v3

    .line 615
    invoke-virtual {v2, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 616
    .line 617
    .line 618
    goto :goto_15

    .line 619
    :pswitch_7
    move-object/from16 v20, v3

    .line 620
    .line 621
    move-object/from16 v31, v13

    .line 622
    .line 623
    move-object/from16 v13, v23

    .line 624
    .line 625
    move-object/from16 v23, v12

    .line 626
    .line 627
    move-object/from16 v12, v22

    .line 628
    .line 629
    invoke-static {v1, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    invoke-virtual {v2, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 634
    .line 635
    .line 636
    :goto_15
    move-object/from16 v22, v12

    .line 637
    .line 638
    move-object/from16 v3, v20

    .line 639
    .line 640
    move-object/from16 v12, v23

    .line 641
    .line 642
    move-object/from16 v14, v28

    .line 643
    .line 644
    move-object/from16 v23, v13

    .line 645
    .line 646
    move-object/from16 v13, v31

    .line 647
    .line 648
    goto/16 :goto_9

    .line 649
    .line 650
    :cond_17
    move-object/from16 v20, v3

    .line 651
    .line 652
    move-object/from16 v31, v13

    .line 653
    .line 654
    move v9, v14

    .line 655
    move-object/from16 v13, v23

    .line 656
    .line 657
    const/4 v3, 0x0

    .line 658
    move-object/from16 v23, v12

    .line 659
    .line 660
    move-object/from16 v12, v22

    .line 661
    .line 662
    invoke-interface {v1, v9, v3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    :try_start_0
    invoke-virtual {v2}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    .line 666
    .line 667
    .line 668
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-object/from16 v22, v12

    .line 673
    .line 674
    move-object/from16 v3, v20

    .line 675
    .line 676
    move-object/from16 v12, v23

    .line 677
    .line 678
    move-object/from16 v9, v26

    .line 679
    .line 680
    move-object/from16 v2, v27

    .line 681
    .line 682
    move-object/from16 v14, v28

    .line 683
    .line 684
    move-object/from16 v23, v13

    .line 685
    .line 686
    move-object/from16 v13, v31

    .line 687
    .line 688
    goto/16 :goto_8

    .line 689
    .line 690
    :catch_0
    move-exception v0

    .line 691
    move-object v1, v0

    .line 692
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 693
    .line 694
    const-string v2, "Failed to build KeyChainProtectionParams"

    .line 695
    .line 696
    invoke-direct {v0, v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 697
    .line 698
    .line 699
    throw v0

    .line 700
    :cond_18
    move-object/from16 v27, v2

    .line 701
    .line 702
    move-object/from16 v20, v3

    .line 703
    .line 704
    move v2, v9

    .line 705
    move-object/from16 v31, v13

    .line 706
    .line 707
    move-object/from16 v28, v14

    .line 708
    .line 709
    move-object/from16 v13, v23

    .line 710
    .line 711
    const/4 v0, 0x0

    .line 712
    move-object/from16 v23, v12

    .line 713
    .line 714
    move-object/from16 v12, v22

    .line 715
    .line 716
    invoke-interface {v1, v2, v0, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v5, v15}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 720
    .line 721
    .line 722
    :goto_16
    move-object/from16 v15, v21

    .line 723
    .line 724
    move-object/from16 v3, v23

    .line 725
    .line 726
    move-object/from16 v4, v25

    .line 727
    .line 728
    move-object/from16 v2, v28

    .line 729
    .line 730
    move-object/from16 v0, v31

    .line 731
    .line 732
    move-object/from16 v21, v6

    .line 733
    .line 734
    move-object/from16 v23, v8

    .line 735
    .line 736
    move-object/from16 v6, v17

    .line 737
    .line 738
    move-object/from16 v8, v27

    .line 739
    .line 740
    move-object/from16 v17, v7

    .line 741
    .line 742
    goto/16 :goto_7

    .line 743
    .line 744
    :pswitch_8
    move-object/from16 v27, v2

    .line 745
    .line 746
    move-object/from16 v20, v3

    .line 747
    .line 748
    move-object/from16 v26, v9

    .line 749
    .line 750
    move-object/from16 v31, v13

    .line 751
    .line 752
    move-object/from16 v28, v14

    .line 753
    .line 754
    move-object/from16 v13, v23

    .line 755
    .line 756
    const/4 v0, 0x0

    .line 757
    const/4 v2, 0x3

    .line 758
    const/4 v3, 0x2

    .line 759
    move-object/from16 v23, v12

    .line 760
    .line 761
    move-object/from16 v12, v22

    .line 762
    .line 763
    invoke-interface {v1, v3, v0, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    invoke-interface {v1, v2, v0, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 778
    .line 779
    .line 780
    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    invoke-virtual {v5, v2, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 782
    .line 783
    .line 784
    goto :goto_16

    .line 785
    :catch_1
    move-exception v0

    .line 786
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 787
    .line 788
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 789
    .line 790
    const-string/jumbo v2, "counterId expected long but got \'"

    .line 791
    .line 792
    .line 793
    const-string v4, "\'"

    .line 794
    .line 795
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 800
    .line 801
    .line 802
    throw v1

    .line 803
    :pswitch_9
    move-object/from16 v27, v2

    .line 804
    .line 805
    move-object/from16 v20, v3

    .line 806
    .line 807
    move-object/from16 v26, v9

    .line 808
    .line 809
    move-object v3, v12

    .line 810
    move-object/from16 v31, v13

    .line 811
    .line 812
    move-object/from16 v28, v14

    .line 813
    .line 814
    move-object/from16 v12, v22

    .line 815
    .line 816
    move-object/from16 v13, v23

    .line 817
    .line 818
    const/4 v0, 0x2

    .line 819
    const/4 v2, 0x0

    .line 820
    invoke-interface {v1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    new-instance v9, Ljava/util/ArrayList;

    .line 824
    .line 825
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .line 827
    .line 828
    :goto_17
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 829
    .line 830
    .line 831
    move-result v14

    .line 832
    const/4 v15, 0x3

    .line 833
    if-eq v14, v15, :cond_1f

    .line 834
    .line 835
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 836
    .line 837
    .line 838
    move-result v14

    .line 839
    if-eq v14, v0, :cond_19

    .line 840
    .line 841
    goto :goto_17

    .line 842
    :cond_19
    const-string/jumbo v14, "applicationKey"

    .line 843
    .line 844
    .line 845
    invoke-interface {v1, v0, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    new-instance v2, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 849
    .line 850
    invoke-direct {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    .line 851
    .line 852
    .line 853
    :goto_18
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    if-eq v0, v15, :cond_1e

    .line 858
    .line 859
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 860
    .line 861
    .line 862
    move-result v0

    .line 863
    const/4 v15, 0x2

    .line 864
    if-eq v0, v15, :cond_1a

    .line 865
    .line 866
    const/4 v15, 0x3

    .line 867
    goto :goto_18

    .line 868
    :cond_1a
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 876
    .line 877
    .line 878
    move-result v15

    .line 879
    sparse-switch v15, :sswitch_data_3

    .line 880
    .line 881
    .line 882
    move-object/from16 v15, v21

    .line 883
    .line 884
    :goto_19
    move-object/from16 v21, v6

    .line 885
    .line 886
    move-object/from16 v6, v17

    .line 887
    .line 888
    :goto_1a
    move-object/from16 v17, v7

    .line 889
    .line 890
    move-object/from16 v7, v16

    .line 891
    .line 892
    :goto_1b
    move/from16 v16, v19

    .line 893
    .line 894
    goto :goto_1c

    .line 895
    :sswitch_f
    move-object/from16 v15, v21

    .line 896
    .line 897
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 898
    .line 899
    .line 900
    move-result v21

    .line 901
    if-nez v21, :cond_1b

    .line 902
    .line 903
    goto :goto_19

    .line 904
    :cond_1b
    move-object/from16 v21, v6

    .line 905
    .line 906
    move-object/from16 v6, v17

    .line 907
    .line 908
    move-object/from16 v17, v7

    .line 909
    .line 910
    move-object/from16 v7, v16

    .line 911
    .line 912
    const/16 v16, 0x2

    .line 913
    .line 914
    goto :goto_1c

    .line 915
    :sswitch_10
    move-object/from16 v15, v21

    .line 916
    .line 917
    move-object/from16 v21, v6

    .line 918
    .line 919
    move-object/from16 v6, v17

    .line 920
    .line 921
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    move-result v17

    .line 925
    if-nez v17, :cond_1c

    .line 926
    .line 927
    goto :goto_1a

    .line 928
    :cond_1c
    move-object/from16 v17, v7

    .line 929
    .line 930
    move-object/from16 v7, v16

    .line 931
    .line 932
    const/16 v16, 0x1

    .line 933
    .line 934
    goto :goto_1c

    .line 935
    :sswitch_11
    move-object/from16 v15, v21

    .line 936
    .line 937
    move-object/from16 v21, v6

    .line 938
    .line 939
    move-object/from16 v6, v17

    .line 940
    .line 941
    move-object/from16 v17, v7

    .line 942
    .line 943
    move-object/from16 v7, v16

    .line 944
    .line 945
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    move-result v16

    .line 949
    if-nez v16, :cond_1d

    .line 950
    .line 951
    goto :goto_1b

    .line 952
    :cond_1d
    move/from16 v16, v18

    .line 953
    .line 954
    :goto_1c
    packed-switch v16, :pswitch_data_3

    .line 955
    .line 956
    .line 957
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 958
    .line 959
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 960
    .line 961
    const-string v2, " in wrappedApplicationKey"

    .line 962
    .line 963
    invoke-static {v4, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    throw v1

    .line 971
    :pswitch_a
    move-object/from16 v16, v4

    .line 972
    .line 973
    const/4 v0, 0x2

    .line 974
    const/4 v4, 0x0

    .line 975
    invoke-interface {v1, v0, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    move-object/from16 v23, v8

    .line 983
    .line 984
    const/4 v8, 0x3

    .line 985
    invoke-interface {v1, v8, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v2, v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 989
    .line 990
    .line 991
    goto :goto_1d

    .line 992
    :pswitch_b
    move-object/from16 v16, v4

    .line 993
    .line 994
    move-object/from16 v23, v8

    .line 995
    .line 996
    const/4 v4, 0x0

    .line 997
    const/4 v8, 0x3

    .line 998
    invoke-static {v1, v6}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    invoke-virtual {v2, v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 1003
    .line 1004
    .line 1005
    goto :goto_1d

    .line 1006
    :pswitch_c
    move-object/from16 v16, v4

    .line 1007
    .line 1008
    move-object/from16 v23, v8

    .line 1009
    .line 1010
    const/4 v4, 0x0

    .line 1011
    const/4 v8, 0x3

    .line 1012
    invoke-static {v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    invoke-virtual {v2, v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 1017
    .line 1018
    .line 1019
    :goto_1d
    move-object/from16 v4, v16

    .line 1020
    .line 1021
    move-object/from16 v16, v7

    .line 1022
    .line 1023
    move-object/from16 v7, v17

    .line 1024
    .line 1025
    move-object/from16 v17, v6

    .line 1026
    .line 1027
    move-object/from16 v6, v21

    .line 1028
    .line 1029
    move-object/from16 v21, v15

    .line 1030
    .line 1031
    move v15, v8

    .line 1032
    move-object/from16 v8, v23

    .line 1033
    .line 1034
    goto/16 :goto_18

    .line 1035
    .line 1036
    :cond_1e
    move-object/from16 v23, v8

    .line 1037
    .line 1038
    move v8, v15

    .line 1039
    move-object/from16 v15, v21

    .line 1040
    .line 1041
    move-object/from16 v21, v6

    .line 1042
    .line 1043
    move-object/from16 v6, v17

    .line 1044
    .line 1045
    move-object/from16 v17, v7

    .line 1046
    .line 1047
    move-object/from16 v7, v16

    .line 1048
    .line 1049
    move-object/from16 v16, v4

    .line 1050
    .line 1051
    const/4 v4, 0x0

    .line 1052
    invoke-interface {v1, v8, v4, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    :try_start_2
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1059
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    .line 1061
    .line 1062
    move-object/from16 v4, v16

    .line 1063
    .line 1064
    move-object/from16 v8, v23

    .line 1065
    .line 1066
    const/4 v0, 0x2

    .line 1067
    const/4 v2, 0x0

    .line 1068
    move-object/from16 v16, v7

    .line 1069
    .line 1070
    move-object/from16 v7, v17

    .line 1071
    .line 1072
    move-object/from16 v17, v6

    .line 1073
    .line 1074
    move-object/from16 v6, v21

    .line 1075
    .line 1076
    move-object/from16 v21, v15

    .line 1077
    .line 1078
    goto/16 :goto_17

    .line 1079
    .line 1080
    :catch_2
    move-exception v0

    .line 1081
    move-object v1, v0

    .line 1082
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 1083
    .line 1084
    const-string v2, "Failed to build WrappedApplicationKey"

    .line 1085
    .line 1086
    invoke-direct {v0, v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1087
    .line 1088
    .line 1089
    throw v0

    .line 1090
    :cond_1f
    move-object v0, v2

    .line 1091
    move-object/from16 v23, v8

    .line 1092
    .line 1093
    move v2, v15

    .line 1094
    move-object/from16 v15, v21

    .line 1095
    .line 1096
    move-object/from16 v21, v6

    .line 1097
    .line 1098
    move-object/from16 v6, v17

    .line 1099
    .line 1100
    move-object/from16 v17, v7

    .line 1101
    .line 1102
    move-object/from16 v7, v16

    .line 1103
    .line 1104
    invoke-interface {v1, v2, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v5, v9}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1108
    .line 1109
    .line 1110
    move-object/from16 v4, v25

    .line 1111
    .line 1112
    move-object/from16 v8, v27

    .line 1113
    .line 1114
    move-object/from16 v2, v28

    .line 1115
    .line 1116
    move-object/from16 v0, v31

    .line 1117
    .line 1118
    goto/16 :goto_20

    .line 1119
    .line 1120
    :pswitch_d
    move-object/from16 v27, v2

    .line 1121
    .line 1122
    move-object/from16 v20, v3

    .line 1123
    .line 1124
    move-object/from16 v26, v9

    .line 1125
    .line 1126
    move-object v3, v12

    .line 1127
    move-object v0, v13

    .line 1128
    move-object/from16 v28, v14

    .line 1129
    .line 1130
    move-object/from16 v15, v21

    .line 1131
    .line 1132
    move-object/from16 v12, v22

    .line 1133
    .line 1134
    move-object/from16 v13, v23

    .line 1135
    .line 1136
    move-object/from16 v21, v6

    .line 1137
    .line 1138
    move-object/from16 v23, v8

    .line 1139
    .line 1140
    move-object/from16 v6, v17

    .line 1141
    .line 1142
    move-object/from16 v17, v7

    .line 1143
    .line 1144
    move-object/from16 v7, v16

    .line 1145
    .line 1146
    invoke-static {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 1147
    .line 1148
    .line 1149
    move-result v2

    .line 1150
    invoke-virtual {v5, v2}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1151
    .line 1152
    .line 1153
    move-object/from16 v4, v25

    .line 1154
    .line 1155
    move-object/from16 v8, v27

    .line 1156
    .line 1157
    move-object/from16 v2, v28

    .line 1158
    .line 1159
    goto/16 :goto_20

    .line 1160
    .line 1161
    :pswitch_e
    move-object/from16 v27, v2

    .line 1162
    .line 1163
    move-object/from16 v20, v3

    .line 1164
    .line 1165
    move-object/from16 v26, v9

    .line 1166
    .line 1167
    move-object v3, v12

    .line 1168
    move-object v0, v13

    .line 1169
    move-object v2, v14

    .line 1170
    move-object/from16 v15, v21

    .line 1171
    .line 1172
    move-object/from16 v12, v22

    .line 1173
    .line 1174
    move-object/from16 v13, v23

    .line 1175
    .line 1176
    move-object/from16 v21, v6

    .line 1177
    .line 1178
    move-object/from16 v23, v8

    .line 1179
    .line 1180
    move-object/from16 v6, v17

    .line 1181
    .line 1182
    move-object/from16 v17, v7

    .line 1183
    .line 1184
    move-object/from16 v7, v16

    .line 1185
    .line 1186
    :try_start_3
    invoke-static {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 1187
    .line 1188
    .line 1189
    move-result-object v4
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1190
    :try_start_4
    const-string v8, "X.509"

    .line 1191
    .line 1192
    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v8

    .line 1196
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 1197
    .line 1198
    invoke-direct {v9, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v4
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1205
    :try_start_5
    invoke-virtual {v5, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1206
    .line 1207
    .line 1208
    move-object/from16 v4, v25

    .line 1209
    .line 1210
    :goto_1e
    move-object/from16 v8, v27

    .line 1211
    .line 1212
    goto/16 :goto_20

    .line 1213
    .line 1214
    :catch_3
    move-exception v0

    .line 1215
    goto :goto_1f

    .line 1216
    :catch_4
    move-exception v0

    .line 1217
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 1218
    .line 1219
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    const-string v4, "Could not parse CertPath in tag "

    .line 1222
    .line 1223
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1234
    .line 1235
    .line 1236
    throw v1
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1237
    :goto_1f
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 1238
    .line 1239
    const-string v2, "Could not set trustedHardwareCertPath"

    .line 1240
    .line 1241
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1242
    .line 1243
    .line 1244
    throw v1

    .line 1245
    :pswitch_f
    move-object/from16 v27, v2

    .line 1246
    .line 1247
    move-object/from16 v20, v3

    .line 1248
    .line 1249
    move-object/from16 v26, v9

    .line 1250
    .line 1251
    move-object v3, v12

    .line 1252
    move-object v0, v13

    .line 1253
    move-object v2, v14

    .line 1254
    move-object/from16 v15, v21

    .line 1255
    .line 1256
    move-object/from16 v12, v22

    .line 1257
    .line 1258
    move-object/from16 v13, v23

    .line 1259
    .line 1260
    move-object/from16 v4, v25

    .line 1261
    .line 1262
    move-object/from16 v21, v6

    .line 1263
    .line 1264
    move-object/from16 v23, v8

    .line 1265
    .line 1266
    move-object/from16 v6, v17

    .line 1267
    .line 1268
    move-object/from16 v17, v7

    .line 1269
    .line 1270
    move-object/from16 v7, v16

    .line 1271
    .line 1272
    invoke-static {v1, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    .line 1273
    .line 1274
    .line 1275
    move-result-object v8

    .line 1276
    invoke-virtual {v5, v8}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1277
    .line 1278
    .line 1279
    goto :goto_1e

    .line 1280
    :pswitch_10
    move-object/from16 v27, v2

    .line 1281
    .line 1282
    move-object/from16 v20, v3

    .line 1283
    .line 1284
    move-object/from16 v26, v9

    .line 1285
    .line 1286
    move-object v3, v12

    .line 1287
    move-object v0, v13

    .line 1288
    move-object v2, v14

    .line 1289
    move-object/from16 v15, v21

    .line 1290
    .line 1291
    move-object/from16 v12, v22

    .line 1292
    .line 1293
    move-object/from16 v13, v23

    .line 1294
    .line 1295
    move-object/from16 v4, v25

    .line 1296
    .line 1297
    move-object/from16 v21, v6

    .line 1298
    .line 1299
    move-object/from16 v23, v8

    .line 1300
    .line 1301
    move-object/from16 v6, v17

    .line 1302
    .line 1303
    move-object/from16 v17, v7

    .line 1304
    .line 1305
    move-object/from16 v7, v16

    .line 1306
    .line 1307
    goto :goto_1e

    .line 1308
    :pswitch_11
    move-object/from16 v20, v3

    .line 1309
    .line 1310
    move-object/from16 v26, v9

    .line 1311
    .line 1312
    move-object v3, v12

    .line 1313
    move-object v0, v13

    .line 1314
    move-object/from16 v15, v21

    .line 1315
    .line 1316
    move-object/from16 v12, v22

    .line 1317
    .line 1318
    move-object/from16 v13, v23

    .line 1319
    .line 1320
    move-object/from16 v4, v25

    .line 1321
    .line 1322
    move-object/from16 v21, v6

    .line 1323
    .line 1324
    move-object/from16 v23, v8

    .line 1325
    .line 1326
    move-object/from16 v6, v17

    .line 1327
    .line 1328
    move-object v8, v2

    .line 1329
    move-object/from16 v17, v7

    .line 1330
    .line 1331
    move-object v2, v14

    .line 1332
    move-object/from16 v7, v16

    .line 1333
    .line 1334
    invoke-static {v1, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    .line 1335
    .line 1336
    .line 1337
    move-result v9

    .line 1338
    invoke-virtual {v5, v9}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1339
    .line 1340
    .line 1341
    :goto_20
    move-object v14, v2

    .line 1342
    move-object/from16 v16, v7

    .line 1343
    .line 1344
    move-object v2, v8

    .line 1345
    move-object/from16 v22, v12

    .line 1346
    .line 1347
    move-object/from16 v7, v17

    .line 1348
    .line 1349
    move-object/from16 v8, v23

    .line 1350
    .line 1351
    move-object/from16 v9, v26

    .line 1352
    .line 1353
    move-object v12, v3

    .line 1354
    move-object/from16 v17, v6

    .line 1355
    .line 1356
    move-object/from16 v23, v13

    .line 1357
    .line 1358
    move-object/from16 v3, v20

    .line 1359
    .line 1360
    move-object/from16 v6, v21

    .line 1361
    .line 1362
    move-object v13, v0

    .line 1363
    move-object/from16 v21, v15

    .line 1364
    .line 1365
    move-object v15, v4

    .line 1366
    goto/16 :goto_1

    .line 1367
    .line 1368
    :cond_20
    move v0, v4

    .line 1369
    move-object/from16 v14, v24

    .line 1370
    .line 1371
    const/4 v9, 0x0

    .line 1372
    invoke-interface {v1, v0, v9, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    :try_start_6
    invoke-virtual {v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1379
    return-object v0

    .line 1380
    :catch_5
    move-exception v0

    .line 1381
    move-object v1, v0

    .line 1382
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 1383
    .line 1384
    const-string v2, "Failed to build KeyChainSnapshot"

    .line 1385
    .line 1386
    invoke-direct {v0, v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1387
    .line 1388
    .line 1389
    throw v0

    .line 1390
    nop

    .line 1391
    :sswitch_data_0
    .sparse-switch
        -0x66841336 -> :sswitch_8
        -0x52c1d0fe -> :sswitch_7
        -0x51ae5e2f -> :sswitch_6
        -0x5190b3fe -> :sswitch_5
        0x1caf9a74 -> :sswitch_4
        0x46f25222 -> :sswitch_3
        0x5099d037 -> :sswitch_2
        0x5f2e61bf -> :sswitch_1
        0x6bb456a9 -> :sswitch_0
    .end sparse-switch

    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    :sswitch_data_1
    .sparse-switch
        -0x2e4cfbbb -> :sswitch_b
        -0x298abfcb -> :sswitch_a
        0x3662dd9c -> :sswitch_9
    .end sparse-switch

    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_2
    .end packed-switch

    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    :sswitch_data_2
    .sparse-switch
        -0x3a02fc64 -> :sswitch_e
        0x35c056 -> :sswitch_d
        0xd70b46f -> :sswitch_c
    .end sparse-switch

    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    :sswitch_data_3
    .sparse-switch
        -0x660f5152 -> :sswitch_11
        -0x3969675a -> :sswitch_10
        0x5899650 -> :sswitch_f
    .end sparse-switch

    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-interface {p0, v2, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :try_start_0
    invoke-static {v0, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 22
    .line 23
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " expected base64 encoded bytes but got \'"

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, "\'"

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v1, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v1
.end method

.method public static readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-interface {p0, v2, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    .line 25
    .line 26
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " expected int but got \'"

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "\'"

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v1, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v1
.end method

.method public static readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method
