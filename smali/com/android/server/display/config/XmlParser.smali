.class public abstract Lcom/android/server/display/config/XmlParser;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;
    .locals 14

    .line 1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v3, "displayConfiguration"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_d7

    .line 35
    .line 36
    new-instance p0, Lcom/android/server/display/config/DisplayConfiguration;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x3

    .line 49
    if-eq v3, v2, :cond_d5

    .line 50
    .line 51
    if-eq v3, v4, :cond_d5

    .line 52
    .line 53
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x2

    .line 58
    if-eq v3, v5, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string/jumbo v6, "name"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-string/jumbo v6, "densityMapping"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_d

    .line 89
    .line 90
    new-instance v3, Lcom/android/server/display/config/DensityMapping;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eq v6, v2, :cond_b

    .line 103
    .line 104
    if-eq v6, v4, :cond_b

    .line 105
    .line 106
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eq v6, v5, :cond_2

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const-string/jumbo v7, "density"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_a

    .line 125
    .line 126
    new-instance v6, Lcom/android/server/display/config/Density;

    .line 127
    .line 128
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eq v8, v2, :cond_7

    .line 139
    .line 140
    if-eq v8, v4, :cond_7

    .line 141
    .line 142
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eq v8, v5, :cond_3

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    const-string/jumbo v9, "width"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_4

    .line 161
    .line 162
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    new-instance v9, Ljava/math/BigInteger;

    .line 167
    .line 168
    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iput-object v9, v6, Lcom/android/server/display/config/Density;->width:Ljava/math/BigInteger;

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    const-string/jumbo v9, "height"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-eqz v9, :cond_5

    .line 182
    .line 183
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    new-instance v9, Ljava/math/BigInteger;

    .line 188
    .line 189
    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iput-object v9, v6, Lcom/android/server/display/config/Density;->height:Ljava/math/BigInteger;

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_6

    .line 200
    .line 201
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    new-instance v9, Ljava/math/BigInteger;

    .line 206
    .line 207
    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iput-object v9, v6, Lcom/android/server/display/config/Density;->density:Ljava/math/BigInteger;

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_6
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_7
    if-ne v8, v4, :cond_9

    .line 218
    .line 219
    iget-object v7, v3, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    .line 220
    .line 221
    if-nez v7, :cond_8

    .line 222
    .line 223
    new-instance v7, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .line 227
    .line 228
    iput-object v7, v3, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    .line 229
    .line 230
    :cond_8
    iget-object v7, v3, Lcom/android/server/display/config/DensityMapping;->density:Ljava/util/List;

    .line 231
    .line 232
    check-cast v7, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :cond_9
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 240
    .line 241
    const-string v0, "Density is not closed"

    .line 242
    .line 243
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p0

    .line 247
    :cond_a
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_b
    if-ne v6, v4, :cond_c

    .line 253
    .line 254
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 259
    .line 260
    const-string v0, "DensityMapping is not closed"

    .line 261
    .line 262
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p0

    .line 266
    :cond_d
    const-string/jumbo v6, "screenBrightnessMap"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-eqz v6, :cond_e

    .line 274
    .line 275
    invoke-static {v0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_e
    const-string/jumbo v6, "screenBrightnessDefault"

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_f

    .line 291
    .line 292
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    new-instance v4, Ljava/math/BigDecimal;

    .line 297
    .line 298
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_f
    const-string/jumbo v6, "thermalThrottling"

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    const-string/jumbo v7, "refreshRateRange"

    .line 313
    .line 314
    .line 315
    const-string/jumbo v8, "brightness"

    .line 316
    .line 317
    .line 318
    const-string/jumbo v9, "thermalStatus"

    .line 319
    .line 320
    .line 321
    const-string/jumbo v10, "id"

    .line 322
    .line 323
    .line 324
    if-eqz v6, :cond_2d

    .line 325
    .line 326
    new-instance v3, Lcom/android/server/display/config/ThermalThrottling;

    .line 327
    .line 328
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 332
    .line 333
    .line 334
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    if-eq v6, v2, :cond_2b

    .line 339
    .line 340
    if-eq v6, v4, :cond_2b

    .line 341
    .line 342
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    if-eq v6, v5, :cond_10

    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    const-string/jumbo v11, "brightnessThrottlingMap"

    .line 354
    .line 355
    .line 356
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v11

    .line 360
    if-eqz v11, :cond_1d

    .line 361
    .line 362
    new-instance v6, Lcom/android/server/display/config/BrightnessThrottlingMap;

    .line 363
    .line 364
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    if-eqz v11, :cond_11

    .line 372
    .line 373
    iput-object v11, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->id:Ljava/lang/String;

    .line 374
    .line 375
    :cond_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 376
    .line 377
    .line 378
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 379
    .line 380
    .line 381
    move-result v11

    .line 382
    if-eq v11, v2, :cond_1a

    .line 383
    .line 384
    if-eq v11, v4, :cond_1a

    .line 385
    .line 386
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 387
    .line 388
    .line 389
    move-result v11

    .line 390
    if-eq v11, v5, :cond_12

    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v11

    .line 397
    const-string/jumbo v12, "brightnessThrottlingPoint"

    .line 398
    .line 399
    .line 400
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v11

    .line 404
    if-eqz v11, :cond_19

    .line 405
    .line 406
    new-instance v11, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    .line 407
    .line 408
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 412
    .line 413
    .line 414
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 415
    .line 416
    .line 417
    move-result v12

    .line 418
    if-eq v12, v2, :cond_16

    .line 419
    .line 420
    if-eq v12, v4, :cond_16

    .line 421
    .line 422
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 423
    .line 424
    .line 425
    move-result v12

    .line 426
    if-eq v12, v5, :cond_13

    .line 427
    .line 428
    goto :goto_5

    .line 429
    :cond_13
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v12

    .line 433
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v13

    .line 437
    if-eqz v13, :cond_14

    .line 438
    .line 439
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v12

    .line 443
    invoke-static {v12}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    .line 444
    .line 445
    .line 446
    move-result-object v12

    .line 447
    iput-object v12, v11, Lcom/android/server/display/config/BrightnessThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    .line 448
    .line 449
    goto :goto_5

    .line 450
    :cond_14
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v12

    .line 454
    if-eqz v12, :cond_15

    .line 455
    .line 456
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v12

    .line 460
    new-instance v13, Ljava/math/BigDecimal;

    .line 461
    .line 462
    invoke-direct {v13, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iput-object v13, v11, Lcom/android/server/display/config/BrightnessThrottlingPoint;->brightness:Ljava/math/BigDecimal;

    .line 466
    .line 467
    goto :goto_5

    .line 468
    :cond_15
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 469
    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_16
    if-ne v12, v4, :cond_18

    .line 473
    .line 474
    iget-object v12, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    .line 475
    .line 476
    if-nez v12, :cond_17

    .line 477
    .line 478
    new-instance v12, Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .line 482
    .line 483
    iput-object v12, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    .line 484
    .line 485
    :cond_17
    iget-object v12, v6, Lcom/android/server/display/config/BrightnessThrottlingMap;->brightnessThrottlingPoint:Ljava/util/List;

    .line 486
    .line 487
    check-cast v12, Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    goto :goto_4

    .line 493
    :cond_18
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 494
    .line 495
    const-string v0, "BrightnessThrottlingPoint is not closed"

    .line 496
    .line 497
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw p0

    .line 501
    :cond_19
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 502
    .line 503
    .line 504
    goto :goto_4

    .line 505
    :cond_1a
    if-ne v11, v4, :cond_1c

    .line 506
    .line 507
    iget-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    .line 508
    .line 509
    if-nez v11, :cond_1b

    .line 510
    .line 511
    new-instance v11, Ljava/util/ArrayList;

    .line 512
    .line 513
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .line 515
    .line 516
    iput-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    .line 517
    .line 518
    :cond_1b
    iget-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Ljava/util/List;

    .line 519
    .line 520
    check-cast v11, Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    goto/16 :goto_3

    .line 526
    .line 527
    :cond_1c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 528
    .line 529
    const-string v0, "BrightnessThrottlingMap is not closed"

    .line 530
    .line 531
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw p0

    .line 535
    :cond_1d
    const-string/jumbo v11, "refreshRateThrottlingMap"

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    if-eqz v6, :cond_2a

    .line 543
    .line 544
    new-instance v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;

    .line 545
    .line 546
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 547
    .line 548
    .line 549
    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v11

    .line 553
    if-eqz v11, :cond_1e

    .line 554
    .line 555
    iput-object v11, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->id:Ljava/lang/String;

    .line 556
    .line 557
    :cond_1e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 558
    .line 559
    .line 560
    :goto_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 561
    .line 562
    .line 563
    move-result v11

    .line 564
    if-eq v11, v2, :cond_27

    .line 565
    .line 566
    if-eq v11, v4, :cond_27

    .line 567
    .line 568
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 569
    .line 570
    .line 571
    move-result v11

    .line 572
    if-eq v11, v5, :cond_1f

    .line 573
    .line 574
    goto :goto_6

    .line 575
    :cond_1f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v11

    .line 579
    const-string/jumbo v12, "refreshRateThrottlingPoint"

    .line 580
    .line 581
    .line 582
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v11

    .line 586
    if-eqz v11, :cond_26

    .line 587
    .line 588
    new-instance v11, Lcom/android/server/display/config/RefreshRateThrottlingPoint;

    .line 589
    .line 590
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 591
    .line 592
    .line 593
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 594
    .line 595
    .line 596
    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 597
    .line 598
    .line 599
    move-result v12

    .line 600
    if-eq v12, v2, :cond_23

    .line 601
    .line 602
    if-eq v12, v4, :cond_23

    .line 603
    .line 604
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 605
    .line 606
    .line 607
    move-result v12

    .line 608
    if-eq v12, v5, :cond_20

    .line 609
    .line 610
    goto :goto_7

    .line 611
    :cond_20
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v12

    .line 615
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v13

    .line 619
    if-eqz v13, :cond_21

    .line 620
    .line 621
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v12

    .line 625
    invoke-static {v12}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    .line 626
    .line 627
    .line 628
    move-result-object v12

    .line 629
    iput-object v12, v11, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    .line 630
    .line 631
    goto :goto_7

    .line 632
    :cond_21
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v12

    .line 636
    if-eqz v12, :cond_22

    .line 637
    .line 638
    invoke-static {v0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    .line 639
    .line 640
    .line 641
    move-result-object v12

    .line 642
    iput-object v12, v11, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    .line 643
    .line 644
    goto :goto_7

    .line 645
    :cond_22
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 646
    .line 647
    .line 648
    goto :goto_7

    .line 649
    :cond_23
    if-ne v12, v4, :cond_25

    .line 650
    .line 651
    iget-object v12, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    .line 652
    .line 653
    if-nez v12, :cond_24

    .line 654
    .line 655
    new-instance v12, Ljava/util/ArrayList;

    .line 656
    .line 657
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .line 659
    .line 660
    iput-object v12, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    .line 661
    .line 662
    :cond_24
    iget-object v12, v6, Lcom/android/server/display/config/RefreshRateThrottlingMap;->refreshRateThrottlingPoint:Ljava/util/List;

    .line 663
    .line 664
    check-cast v12, Ljava/util/ArrayList;

    .line 665
    .line 666
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    goto :goto_6

    .line 670
    :cond_25
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 671
    .line 672
    const-string v0, "RefreshRateThrottlingPoint is not closed"

    .line 673
    .line 674
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    throw p0

    .line 678
    :cond_26
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 679
    .line 680
    .line 681
    goto :goto_6

    .line 682
    :cond_27
    if-ne v11, v4, :cond_29

    .line 683
    .line 684
    iget-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    .line 685
    .line 686
    if-nez v11, :cond_28

    .line 687
    .line 688
    new-instance v11, Ljava/util/ArrayList;

    .line 689
    .line 690
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .line 692
    .line 693
    iput-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    .line 694
    .line 695
    :cond_28
    iget-object v11, v3, Lcom/android/server/display/config/ThermalThrottling;->refreshRateThrottlingMap:Ljava/util/List;

    .line 696
    .line 697
    check-cast v11, Ljava/util/ArrayList;

    .line 698
    .line 699
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    goto/16 :goto_3

    .line 703
    .line 704
    :cond_29
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 705
    .line 706
    const-string v0, "RefreshRateThrottlingMap is not closed"

    .line 707
    .line 708
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    throw p0

    .line 712
    :cond_2a
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 713
    .line 714
    .line 715
    goto/16 :goto_3

    .line 716
    .line 717
    :cond_2b
    if-ne v6, v4, :cond_2c

    .line 718
    .line 719
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    .line 720
    .line 721
    goto/16 :goto_0

    .line 722
    .line 723
    :cond_2c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 724
    .line 725
    const-string v0, "ThermalThrottling is not closed"

    .line 726
    .line 727
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    throw p0

    .line 731
    :cond_2d
    const-string/jumbo v6, "powerThrottlingConfig"

    .line 732
    .line 733
    .line 734
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v6

    .line 738
    if-eqz v6, :cond_40

    .line 739
    .line 740
    new-instance v3, Lcom/android/server/display/config/PowerThrottlingConfig;

    .line 741
    .line 742
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 743
    .line 744
    .line 745
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 746
    .line 747
    .line 748
    :goto_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 749
    .line 750
    .line 751
    move-result v6

    .line 752
    if-eq v6, v2, :cond_3e

    .line 753
    .line 754
    if-eq v6, v4, :cond_3e

    .line 755
    .line 756
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 757
    .line 758
    .line 759
    move-result v6

    .line 760
    if-eq v6, v5, :cond_2e

    .line 761
    .line 762
    goto :goto_8

    .line 763
    :cond_2e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v6

    .line 767
    const-string/jumbo v7, "brightnessLowestCapAllowed"

    .line 768
    .line 769
    .line 770
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    move-result v7

    .line 774
    if-eqz v7, :cond_2f

    .line 775
    .line 776
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v6

    .line 780
    new-instance v7, Ljava/math/BigDecimal;

    .line 781
    .line 782
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->brightnessLowestCapAllowed:Ljava/math/BigDecimal;

    .line 786
    .line 787
    goto :goto_8

    .line 788
    :cond_2f
    const-string/jumbo v7, "pollingWindowMillis"

    .line 789
    .line 790
    .line 791
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v7

    .line 795
    if-eqz v7, :cond_30

    .line 796
    .line 797
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v6

    .line 801
    new-instance v7, Ljava/math/BigInteger;

    .line 802
    .line 803
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->pollingWindowMillis:Ljava/math/BigInteger;

    .line 807
    .line 808
    goto :goto_8

    .line 809
    :cond_30
    const-string/jumbo v7, "powerThrottlingMap"

    .line 810
    .line 811
    .line 812
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v6

    .line 816
    if-eqz v6, :cond_3d

    .line 817
    .line 818
    new-instance v6, Lcom/android/server/display/config/PowerThrottlingMap;

    .line 819
    .line 820
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 821
    .line 822
    .line 823
    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v7

    .line 827
    if-eqz v7, :cond_31

    .line 828
    .line 829
    iput-object v7, v6, Lcom/android/server/display/config/PowerThrottlingMap;->id:Ljava/lang/String;

    .line 830
    .line 831
    :cond_31
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 832
    .line 833
    .line 834
    :goto_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 835
    .line 836
    .line 837
    move-result v7

    .line 838
    if-eq v7, v2, :cond_3a

    .line 839
    .line 840
    if-eq v7, v4, :cond_3a

    .line 841
    .line 842
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 843
    .line 844
    .line 845
    move-result v7

    .line 846
    if-eq v7, v5, :cond_32

    .line 847
    .line 848
    goto :goto_9

    .line 849
    :cond_32
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v7

    .line 853
    const-string/jumbo v8, "powerThrottlingPoint"

    .line 854
    .line 855
    .line 856
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    move-result v7

    .line 860
    if-eqz v7, :cond_39

    .line 861
    .line 862
    new-instance v7, Lcom/android/server/display/config/PowerThrottlingPoint;

    .line 863
    .line 864
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 865
    .line 866
    .line 867
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 868
    .line 869
    .line 870
    :goto_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 871
    .line 872
    .line 873
    move-result v8

    .line 874
    if-eq v8, v2, :cond_36

    .line 875
    .line 876
    if-eq v8, v4, :cond_36

    .line 877
    .line 878
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 879
    .line 880
    .line 881
    move-result v8

    .line 882
    if-eq v8, v5, :cond_33

    .line 883
    .line 884
    goto :goto_a

    .line 885
    :cond_33
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v8

    .line 889
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    move-result v11

    .line 893
    if-eqz v11, :cond_34

    .line 894
    .line 895
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v8

    .line 899
    invoke-static {v8}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    .line 900
    .line 901
    .line 902
    move-result-object v8

    .line 903
    iput-object v8, v7, Lcom/android/server/display/config/PowerThrottlingPoint;->thermalStatus:Lcom/android/server/display/config/ThermalStatus;

    .line 904
    .line 905
    goto :goto_a

    .line 906
    :cond_34
    const-string/jumbo v11, "powerQuotaMilliWatts"

    .line 907
    .line 908
    .line 909
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result v8

    .line 913
    if-eqz v8, :cond_35

    .line 914
    .line 915
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v8

    .line 919
    new-instance v11, Ljava/math/BigDecimal;

    .line 920
    .line 921
    invoke-direct {v11, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    iput-object v11, v7, Lcom/android/server/display/config/PowerThrottlingPoint;->powerQuotaMilliWatts:Ljava/math/BigDecimal;

    .line 925
    .line 926
    goto :goto_a

    .line 927
    :cond_35
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 928
    .line 929
    .line 930
    goto :goto_a

    .line 931
    :cond_36
    if-ne v8, v4, :cond_38

    .line 932
    .line 933
    iget-object v8, v6, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    .line 934
    .line 935
    if-nez v8, :cond_37

    .line 936
    .line 937
    new-instance v8, Ljava/util/ArrayList;

    .line 938
    .line 939
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .line 941
    .line 942
    iput-object v8, v6, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    .line 943
    .line 944
    :cond_37
    iget-object v8, v6, Lcom/android/server/display/config/PowerThrottlingMap;->powerThrottlingPoint:Ljava/util/List;

    .line 945
    .line 946
    check-cast v8, Ljava/util/ArrayList;

    .line 947
    .line 948
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    goto :goto_9

    .line 952
    :cond_38
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 953
    .line 954
    const-string v0, "PowerThrottlingPoint is not closed"

    .line 955
    .line 956
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    throw p0

    .line 960
    :cond_39
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 961
    .line 962
    .line 963
    goto/16 :goto_9

    .line 964
    .line 965
    :cond_3a
    if-ne v7, v4, :cond_3c

    .line 966
    .line 967
    iget-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    .line 968
    .line 969
    if-nez v7, :cond_3b

    .line 970
    .line 971
    new-instance v7, Ljava/util/ArrayList;

    .line 972
    .line 973
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .line 975
    .line 976
    iput-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    .line 977
    .line 978
    :cond_3b
    iget-object v7, v3, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    .line 979
    .line 980
    check-cast v7, Ljava/util/ArrayList;

    .line 981
    .line 982
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    .line 984
    .line 985
    goto/16 :goto_8

    .line 986
    .line 987
    :cond_3c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 988
    .line 989
    const-string v0, "PowerThrottlingMap is not closed"

    .line 990
    .line 991
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    throw p0

    .line 995
    :cond_3d
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 996
    .line 997
    .line 998
    goto/16 :goto_8

    .line 999
    .line 1000
    :cond_3e
    if-ne v6, v4, :cond_3f

    .line 1001
    .line 1002
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

    .line 1003
    .line 1004
    goto/16 :goto_0

    .line 1005
    .line 1006
    :cond_3f
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1007
    .line 1008
    const-string v0, "PowerThrottlingConfig is not closed"

    .line 1009
    .line 1010
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    throw p0

    .line 1014
    :cond_40
    const-string/jumbo v6, "luxThrottling"

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v6

    .line 1021
    const-string/jumbo v9, "map"

    .line 1022
    .line 1023
    .line 1024
    if-eqz v6, :cond_4b

    .line 1025
    .line 1026
    new-instance v3, Lcom/android/server/display/config/LuxThrottling;

    .line 1027
    .line 1028
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1029
    .line 1030
    .line 1031
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1032
    .line 1033
    .line 1034
    :goto_b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1035
    .line 1036
    .line 1037
    move-result v6

    .line 1038
    if-eq v6, v2, :cond_49

    .line 1039
    .line 1040
    if-eq v6, v4, :cond_49

    .line 1041
    .line 1042
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1043
    .line 1044
    .line 1045
    move-result v6

    .line 1046
    if-eq v6, v5, :cond_41

    .line 1047
    .line 1048
    goto :goto_b

    .line 1049
    :cond_41
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v6

    .line 1053
    const-string/jumbo v7, "brightnessLimitMap"

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1057
    .line 1058
    .line 1059
    move-result v6

    .line 1060
    if-eqz v6, :cond_48

    .line 1061
    .line 1062
    new-instance v6, Lcom/android/server/display/config/BrightnessLimitMap;

    .line 1063
    .line 1064
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1065
    .line 1066
    .line 1067
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1068
    .line 1069
    .line 1070
    :goto_c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1071
    .line 1072
    .line 1073
    move-result v7

    .line 1074
    if-eq v7, v2, :cond_45

    .line 1075
    .line 1076
    if-eq v7, v4, :cond_45

    .line 1077
    .line 1078
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1079
    .line 1080
    .line 1081
    move-result v7

    .line 1082
    if-eq v7, v5, :cond_42

    .line 1083
    .line 1084
    goto :goto_c

    .line 1085
    :cond_42
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v7

    .line 1089
    const-string/jumbo v8, "type"

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1093
    .line 1094
    .line 1095
    move-result v8

    .line 1096
    if-eqz v8, :cond_43

    .line 1097
    .line 1098
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v7

    .line 1102
    invoke-static {v7}, Lcom/android/server/display/config/PredefinedBrightnessLimitNames;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v7

    .line 1106
    iput-object v7, v6, Lcom/android/server/display/config/BrightnessLimitMap;->type:Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    .line 1107
    .line 1108
    goto :goto_c

    .line 1109
    :cond_43
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1110
    .line 1111
    .line 1112
    move-result v7

    .line 1113
    if-eqz v7, :cond_44

    .line 1114
    .line 1115
    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v7

    .line 1119
    iput-object v7, v6, Lcom/android/server/display/config/BrightnessLimitMap;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 1120
    .line 1121
    goto :goto_c

    .line 1122
    :cond_44
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1123
    .line 1124
    .line 1125
    goto :goto_c

    .line 1126
    :cond_45
    if-ne v7, v4, :cond_47

    .line 1127
    .line 1128
    iget-object v7, v3, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    .line 1129
    .line 1130
    if-nez v7, :cond_46

    .line 1131
    .line 1132
    new-instance v7, Ljava/util/ArrayList;

    .line 1133
    .line 1134
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .line 1136
    .line 1137
    iput-object v7, v3, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    .line 1138
    .line 1139
    :cond_46
    iget-object v7, v3, Lcom/android/server/display/config/LuxThrottling;->brightnessLimitMap:Ljava/util/List;

    .line 1140
    .line 1141
    check-cast v7, Ljava/util/ArrayList;

    .line 1142
    .line 1143
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    goto :goto_b

    .line 1147
    :cond_47
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1148
    .line 1149
    const-string v0, "BrightnessLimitMap is not closed"

    .line 1150
    .line 1151
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    throw p0

    .line 1155
    :cond_48
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1156
    .line 1157
    .line 1158
    goto :goto_b

    .line 1159
    :cond_49
    if-ne v6, v4, :cond_4a

    .line 1160
    .line 1161
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->luxThrottling:Lcom/android/server/display/config/LuxThrottling;

    .line 1162
    .line 1163
    goto/16 :goto_0

    .line 1164
    .line 1165
    :cond_4a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1166
    .line 1167
    const-string v0, "LuxThrottling is not closed"

    .line 1168
    .line 1169
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1170
    .line 1171
    .line 1172
    throw p0

    .line 1173
    :cond_4b
    const-string/jumbo v6, "highBrightnessMode"

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v6

    .line 1180
    const-string/jumbo v11, "refreshRate"

    .line 1181
    .line 1182
    .line 1183
    const-string/jumbo v12, "transitionPoint"

    .line 1184
    .line 1185
    .line 1186
    const-string/jumbo v13, "enabled"

    .line 1187
    .line 1188
    .line 1189
    if-eqz v6, :cond_67

    .line 1190
    .line 1191
    new-instance v3, Lcom/android/server/display/config/HighBrightnessMode;

    .line 1192
    .line 1193
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1194
    .line 1195
    .line 1196
    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v6

    .line 1200
    if-eqz v6, :cond_4c

    .line 1201
    .line 1202
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v6

    .line 1206
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v6

    .line 1210
    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    .line 1211
    .line 1212
    :cond_4c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1213
    .line 1214
    .line 1215
    :goto_d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1216
    .line 1217
    .line 1218
    move-result v6

    .line 1219
    if-eq v6, v2, :cond_65

    .line 1220
    .line 1221
    if-eq v6, v4, :cond_65

    .line 1222
    .line 1223
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1224
    .line 1225
    .line 1226
    move-result v6

    .line 1227
    if-eq v6, v5, :cond_4d

    .line 1228
    .line 1229
    goto :goto_d

    .line 1230
    :cond_4d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v6

    .line 1234
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v7

    .line 1238
    if-eqz v7, :cond_4e

    .line 1239
    .line 1240
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v6

    .line 1244
    new-instance v7, Ljava/math/BigDecimal;

    .line 1245
    .line 1246
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1247
    .line 1248
    .line 1249
    iput-object v7, v3, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    .line 1250
    .line 1251
    goto :goto_d

    .line 1252
    :cond_4e
    const-string/jumbo v7, "minimumLux"

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v7

    .line 1259
    if-eqz v7, :cond_4f

    .line 1260
    .line 1261
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v6

    .line 1265
    new-instance v7, Ljava/math/BigDecimal;

    .line 1266
    .line 1267
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1268
    .line 1269
    .line 1270
    iput-object v7, v3, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    .line 1271
    .line 1272
    goto :goto_d

    .line 1273
    :cond_4f
    const-string/jumbo v7, "timing"

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1277
    .line 1278
    .line 1279
    move-result v7

    .line 1280
    if-eqz v7, :cond_56

    .line 1281
    .line 1282
    new-instance v6, Lcom/android/server/display/config/HbmTiming;

    .line 1283
    .line 1284
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1285
    .line 1286
    .line 1287
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1288
    .line 1289
    .line 1290
    :goto_e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1291
    .line 1292
    .line 1293
    move-result v7

    .line 1294
    if-eq v7, v2, :cond_54

    .line 1295
    .line 1296
    if-eq v7, v4, :cond_54

    .line 1297
    .line 1298
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1299
    .line 1300
    .line 1301
    move-result v7

    .line 1302
    if-eq v7, v5, :cond_50

    .line 1303
    .line 1304
    goto :goto_e

    .line 1305
    :cond_50
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v7

    .line 1309
    const-string/jumbo v8, "timeWindowSecs"

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v8

    .line 1316
    if-eqz v8, :cond_51

    .line 1317
    .line 1318
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v7

    .line 1322
    new-instance v8, Ljava/math/BigInteger;

    .line 1323
    .line 1324
    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1325
    .line 1326
    .line 1327
    iput-object v8, v6, Lcom/android/server/display/config/HbmTiming;->timeWindowSecs_all:Ljava/math/BigInteger;

    .line 1328
    .line 1329
    goto :goto_e

    .line 1330
    :cond_51
    const-string/jumbo v8, "timeMaxSecs"

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1334
    .line 1335
    .line 1336
    move-result v8

    .line 1337
    if-eqz v8, :cond_52

    .line 1338
    .line 1339
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v7

    .line 1343
    new-instance v8, Ljava/math/BigInteger;

    .line 1344
    .line 1345
    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1346
    .line 1347
    .line 1348
    iput-object v8, v6, Lcom/android/server/display/config/HbmTiming;->timeMaxSecs_all:Ljava/math/BigInteger;

    .line 1349
    .line 1350
    goto :goto_e

    .line 1351
    :cond_52
    const-string/jumbo v8, "timeMinSecs"

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1355
    .line 1356
    .line 1357
    move-result v7

    .line 1358
    if-eqz v7, :cond_53

    .line 1359
    .line 1360
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v7

    .line 1364
    new-instance v8, Ljava/math/BigInteger;

    .line 1365
    .line 1366
    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    iput-object v8, v6, Lcom/android/server/display/config/HbmTiming;->timeMinSecs_all:Ljava/math/BigInteger;

    .line 1370
    .line 1371
    goto :goto_e

    .line 1372
    :cond_53
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1373
    .line 1374
    .line 1375
    goto :goto_e

    .line 1376
    :cond_54
    if-ne v7, v4, :cond_55

    .line 1377
    .line 1378
    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    .line 1379
    .line 1380
    goto/16 :goto_d

    .line 1381
    .line 1382
    :cond_55
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1383
    .line 1384
    const-string v0, "HbmTiming is not closed"

    .line 1385
    .line 1386
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1387
    .line 1388
    .line 1389
    throw p0

    .line 1390
    :cond_56
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1391
    .line 1392
    .line 1393
    move-result v7

    .line 1394
    if-eqz v7, :cond_57

    .line 1395
    .line 1396
    invoke-static {v0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v6

    .line 1400
    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    .line 1401
    .line 1402
    goto/16 :goto_d

    .line 1403
    .line 1404
    :cond_57
    const-string v7, "allowInLowPowerMode"

    .line 1405
    .line 1406
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1407
    .line 1408
    .line 1409
    move-result v7

    .line 1410
    if-eqz v7, :cond_58

    .line 1411
    .line 1412
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v6

    .line 1416
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1417
    .line 1418
    .line 1419
    move-result v6

    .line 1420
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v6

    .line 1424
    iput-object v6, v3, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    .line 1425
    .line 1426
    goto/16 :goto_d

    .line 1427
    .line 1428
    :cond_58
    const-string/jumbo v7, "minimumHdrPercentOfScreen"

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1432
    .line 1433
    .line 1434
    move-result v7

    .line 1435
    if-eqz v7, :cond_59

    .line 1436
    .line 1437
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v6

    .line 1441
    new-instance v7, Ljava/math/BigDecimal;

    .line 1442
    .line 1443
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1444
    .line 1445
    .line 1446
    iput-object v7, v3, Lcom/android/server/display/config/HighBrightnessMode;->minimumHdrPercentOfScreen_all:Ljava/math/BigDecimal;

    .line 1447
    .line 1448
    goto/16 :goto_d

    .line 1449
    .line 1450
    :cond_59
    const-string/jumbo v7, "sdrHdrRatioMap"

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v6

    .line 1457
    if-eqz v6, :cond_64

    .line 1458
    .line 1459
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1460
    .line 1461
    .line 1462
    move-object v6, v1

    .line 1463
    :goto_f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1464
    .line 1465
    .line 1466
    move-result v7

    .line 1467
    if-eq v7, v2, :cond_62

    .line 1468
    .line 1469
    if-eq v7, v4, :cond_62

    .line 1470
    .line 1471
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1472
    .line 1473
    .line 1474
    move-result v7

    .line 1475
    if-eq v7, v5, :cond_5a

    .line 1476
    .line 1477
    goto :goto_f

    .line 1478
    :cond_5a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v7

    .line 1482
    const-string/jumbo v8, "point"

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1486
    .line 1487
    .line 1488
    move-result v7

    .line 1489
    if-eqz v7, :cond_61

    .line 1490
    .line 1491
    new-instance v7, Lcom/android/server/display/config/SdrHdrRatioPoint;

    .line 1492
    .line 1493
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 1494
    .line 1495
    .line 1496
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1497
    .line 1498
    .line 1499
    :goto_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1500
    .line 1501
    .line 1502
    move-result v8

    .line 1503
    if-eq v8, v2, :cond_5e

    .line 1504
    .line 1505
    if-eq v8, v4, :cond_5e

    .line 1506
    .line 1507
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1508
    .line 1509
    .line 1510
    move-result v8

    .line 1511
    if-eq v8, v5, :cond_5b

    .line 1512
    .line 1513
    goto :goto_10

    .line 1514
    :cond_5b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v8

    .line 1518
    const-string/jumbo v9, "sdrNits"

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1522
    .line 1523
    .line 1524
    move-result v9

    .line 1525
    if-eqz v9, :cond_5c

    .line 1526
    .line 1527
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v8

    .line 1531
    new-instance v9, Ljava/math/BigDecimal;

    .line 1532
    .line 1533
    invoke-direct {v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    goto :goto_10

    .line 1537
    :cond_5c
    const-string/jumbo v9, "hdrRatio"

    .line 1538
    .line 1539
    .line 1540
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1541
    .line 1542
    .line 1543
    move-result v8

    .line 1544
    if-eqz v8, :cond_5d

    .line 1545
    .line 1546
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v8

    .line 1550
    new-instance v9, Ljava/math/BigDecimal;

    .line 1551
    .line 1552
    invoke-direct {v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1553
    .line 1554
    .line 1555
    goto :goto_10

    .line 1556
    :cond_5d
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1557
    .line 1558
    .line 1559
    goto :goto_10

    .line 1560
    :cond_5e
    if-ne v8, v4, :cond_60

    .line 1561
    .line 1562
    if-nez v6, :cond_5f

    .line 1563
    .line 1564
    new-instance v6, Ljava/util/ArrayList;

    .line 1565
    .line 1566
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    .line 1568
    .line 1569
    :cond_5f
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    .line 1571
    .line 1572
    goto :goto_f

    .line 1573
    :cond_60
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1574
    .line 1575
    const-string v0, "SdrHdrRatioPoint is not closed"

    .line 1576
    .line 1577
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1578
    .line 1579
    .line 1580
    throw p0

    .line 1581
    :cond_61
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1582
    .line 1583
    .line 1584
    goto :goto_f

    .line 1585
    :cond_62
    if-ne v7, v4, :cond_63

    .line 1586
    .line 1587
    goto/16 :goto_d

    .line 1588
    .line 1589
    :cond_63
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1590
    .line 1591
    const-string v0, "SdrHdrRatioMap is not closed"

    .line 1592
    .line 1593
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    throw p0

    .line 1597
    :cond_64
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1598
    .line 1599
    .line 1600
    goto/16 :goto_d

    .line 1601
    .line 1602
    :cond_65
    if-ne v6, v4, :cond_66

    .line 1603
    .line 1604
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    .line 1605
    .line 1606
    goto/16 :goto_0

    .line 1607
    .line 1608
    :cond_66
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1609
    .line 1610
    const-string v0, "HighBrightnessMode is not closed"

    .line 1611
    .line 1612
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1613
    .line 1614
    .line 1615
    throw p0

    .line 1616
    :cond_67
    const-string/jumbo v6, "hdrBrightnessConfig"

    .line 1617
    .line 1618
    .line 1619
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1620
    .line 1621
    .line 1622
    move-result v6

    .line 1623
    if-eqz v6, :cond_70

    .line 1624
    .line 1625
    new-instance v3, Lcom/android/server/display/config/HdrBrightnessConfig;

    .line 1626
    .line 1627
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1628
    .line 1629
    .line 1630
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1631
    .line 1632
    .line 1633
    :goto_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1634
    .line 1635
    .line 1636
    move-result v6

    .line 1637
    if-eq v6, v2, :cond_6e

    .line 1638
    .line 1639
    if-eq v6, v4, :cond_6e

    .line 1640
    .line 1641
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1642
    .line 1643
    .line 1644
    move-result v6

    .line 1645
    if-eq v6, v5, :cond_68

    .line 1646
    .line 1647
    goto :goto_11

    .line 1648
    :cond_68
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v6

    .line 1652
    const-string/jumbo v7, "brightnessMap"

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v7

    .line 1659
    if-eqz v7, :cond_69

    .line 1660
    .line 1661
    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v6

    .line 1665
    iput-object v6, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 1666
    .line 1667
    goto :goto_11

    .line 1668
    :cond_69
    const-string/jumbo v7, "brightnessIncreaseDebounceMillis"

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1672
    .line 1673
    .line 1674
    move-result v7

    .line 1675
    if-eqz v7, :cond_6a

    .line 1676
    .line 1677
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1678
    .line 1679
    .line 1680
    move-result-object v6

    .line 1681
    new-instance v7, Ljava/math/BigInteger;

    .line 1682
    .line 1683
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1684
    .line 1685
    .line 1686
    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

    .line 1687
    .line 1688
    goto :goto_11

    .line 1689
    :cond_6a
    const-string/jumbo v7, "brightnessDecreaseDebounceMillis"

    .line 1690
    .line 1691
    .line 1692
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v7

    .line 1696
    if-eqz v7, :cond_6b

    .line 1697
    .line 1698
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v6

    .line 1702
    new-instance v7, Ljava/math/BigInteger;

    .line 1703
    .line 1704
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1705
    .line 1706
    .line 1707
    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

    .line 1708
    .line 1709
    goto :goto_11

    .line 1710
    :cond_6b
    const-string/jumbo v7, "screenBrightnessRampIncrease"

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1714
    .line 1715
    .line 1716
    move-result v7

    .line 1717
    if-eqz v7, :cond_6c

    .line 1718
    .line 1719
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v6

    .line 1723
    new-instance v7, Ljava/math/BigDecimal;

    .line 1724
    .line 1725
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1726
    .line 1727
    .line 1728
    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampIncrease:Ljava/math/BigDecimal;

    .line 1729
    .line 1730
    goto :goto_11

    .line 1731
    :cond_6c
    const-string/jumbo v7, "screenBrightnessRampDecrease"

    .line 1732
    .line 1733
    .line 1734
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1735
    .line 1736
    .line 1737
    move-result v6

    .line 1738
    if-eqz v6, :cond_6d

    .line 1739
    .line 1740
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v6

    .line 1744
    new-instance v7, Ljava/math/BigDecimal;

    .line 1745
    .line 1746
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1747
    .line 1748
    .line 1749
    iput-object v7, v3, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampDecrease:Ljava/math/BigDecimal;

    .line 1750
    .line 1751
    goto :goto_11

    .line 1752
    :cond_6d
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1753
    .line 1754
    .line 1755
    goto :goto_11

    .line 1756
    :cond_6e
    if-ne v6, v4, :cond_6f

    .line 1757
    .line 1758
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

    .line 1759
    .line 1760
    goto/16 :goto_0

    .line 1761
    .line 1762
    :cond_6f
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1763
    .line 1764
    const-string v0, "HdrBrightnessConfig is not closed"

    .line 1765
    .line 1766
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1767
    .line 1768
    .line 1769
    throw p0

    .line 1770
    :cond_70
    const-string/jumbo v6, "quirks"

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1774
    .line 1775
    .line 1776
    move-result v6

    .line 1777
    if-eqz v6, :cond_76

    .line 1778
    .line 1779
    new-instance v3, Lcom/android/server/display/config/DisplayQuirks;

    .line 1780
    .line 1781
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1782
    .line 1783
    .line 1784
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1785
    .line 1786
    .line 1787
    :goto_12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1788
    .line 1789
    .line 1790
    move-result v6

    .line 1791
    if-eq v6, v2, :cond_74

    .line 1792
    .line 1793
    if-eq v6, v4, :cond_74

    .line 1794
    .line 1795
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1796
    .line 1797
    .line 1798
    move-result v6

    .line 1799
    if-eq v6, v5, :cond_71

    .line 1800
    .line 1801
    goto :goto_12

    .line 1802
    :cond_71
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v6

    .line 1806
    const-string/jumbo v7, "quirk"

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1810
    .line 1811
    .line 1812
    move-result v6

    .line 1813
    if-eqz v6, :cond_73

    .line 1814
    .line 1815
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v6

    .line 1819
    iget-object v7, v3, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    .line 1820
    .line 1821
    if-nez v7, :cond_72

    .line 1822
    .line 1823
    new-instance v7, Ljava/util/ArrayList;

    .line 1824
    .line 1825
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1826
    .line 1827
    .line 1828
    iput-object v7, v3, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    .line 1829
    .line 1830
    :cond_72
    iget-object v7, v3, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    .line 1831
    .line 1832
    check-cast v7, Ljava/util/ArrayList;

    .line 1833
    .line 1834
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    .line 1836
    .line 1837
    goto :goto_12

    .line 1838
    :cond_73
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1839
    .line 1840
    .line 1841
    goto :goto_12

    .line 1842
    :cond_74
    if-ne v6, v4, :cond_75

    .line 1843
    .line 1844
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    .line 1845
    .line 1846
    goto/16 :goto_0

    .line 1847
    .line 1848
    :cond_75
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 1849
    .line 1850
    const-string v0, "DisplayQuirks is not closed"

    .line 1851
    .line 1852
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 1853
    .line 1854
    .line 1855
    throw p0

    .line 1856
    :cond_76
    const-string/jumbo v6, "autoBrightness"

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1860
    .line 1861
    .line 1862
    move-result v6

    .line 1863
    if-eqz v6, :cond_86

    .line 1864
    .line 1865
    new-instance v3, Lcom/android/server/display/config/AutoBrightness;

    .line 1866
    .line 1867
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1868
    .line 1869
    .line 1870
    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v6

    .line 1874
    if-eqz v6, :cond_77

    .line 1875
    .line 1876
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1877
    .line 1878
    .line 1879
    move-result v6

    .line 1880
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v6

    .line 1884
    iput-object v6, v3, Lcom/android/server/display/config/AutoBrightness;->enabled:Ljava/lang/Boolean;

    .line 1885
    .line 1886
    :cond_77
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 1887
    .line 1888
    .line 1889
    :goto_13
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1890
    .line 1891
    .line 1892
    move-result v6

    .line 1893
    if-eq v6, v2, :cond_84

    .line 1894
    .line 1895
    if-eq v6, v4, :cond_84

    .line 1896
    .line 1897
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1898
    .line 1899
    .line 1900
    move-result v6

    .line 1901
    if-eq v6, v5, :cond_78

    .line 1902
    .line 1903
    goto :goto_13

    .line 1904
    :cond_78
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v6

    .line 1908
    const-string/jumbo v7, "brighteningLightDebounceMillis"

    .line 1909
    .line 1910
    .line 1911
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1912
    .line 1913
    .line 1914
    move-result v7

    .line 1915
    if-eqz v7, :cond_79

    .line 1916
    .line 1917
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v6

    .line 1921
    new-instance v7, Ljava/math/BigInteger;

    .line 1922
    .line 1923
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1924
    .line 1925
    .line 1926
    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceMillis:Ljava/math/BigInteger;

    .line 1927
    .line 1928
    goto :goto_13

    .line 1929
    :cond_79
    const-string/jumbo v7, "darkeningLightDebounceMillis"

    .line 1930
    .line 1931
    .line 1932
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1933
    .line 1934
    .line 1935
    move-result v7

    .line 1936
    if-eqz v7, :cond_7a

    .line 1937
    .line 1938
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v6

    .line 1942
    new-instance v7, Ljava/math/BigInteger;

    .line 1943
    .line 1944
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1945
    .line 1946
    .line 1947
    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceMillis:Ljava/math/BigInteger;

    .line 1948
    .line 1949
    goto :goto_13

    .line 1950
    :cond_7a
    const-string/jumbo v7, "brighteningLightDebounceIdleMillis"

    .line 1951
    .line 1952
    .line 1953
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1954
    .line 1955
    .line 1956
    move-result v7

    .line 1957
    if-eqz v7, :cond_7b

    .line 1958
    .line 1959
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v6

    .line 1963
    new-instance v7, Ljava/math/BigInteger;

    .line 1964
    .line 1965
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1966
    .line 1967
    .line 1968
    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->brighteningLightDebounceIdleMillis:Ljava/math/BigInteger;

    .line 1969
    .line 1970
    goto :goto_13

    .line 1971
    :cond_7b
    const-string/jumbo v7, "darkeningLightDebounceIdleMillis"

    .line 1972
    .line 1973
    .line 1974
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1975
    .line 1976
    .line 1977
    move-result v7

    .line 1978
    if-eqz v7, :cond_7c

    .line 1979
    .line 1980
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v6

    .line 1984
    new-instance v7, Ljava/math/BigInteger;

    .line 1985
    .line 1986
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1987
    .line 1988
    .line 1989
    iput-object v7, v3, Lcom/android/server/display/config/AutoBrightness;->darkeningLightDebounceIdleMillis:Ljava/math/BigInteger;

    .line 1990
    .line 1991
    goto :goto_13

    .line 1992
    :cond_7c
    const-string/jumbo v7, "luxToBrightnessMapping"

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1996
    .line 1997
    .line 1998
    move-result v6

    .line 1999
    if-eqz v6, :cond_83

    .line 2000
    .line 2001
    new-instance v6, Lcom/android/server/display/config/LuxToBrightnessMapping;

    .line 2002
    .line 2003
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 2004
    .line 2005
    .line 2006
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2007
    .line 2008
    .line 2009
    :goto_14
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2010
    .line 2011
    .line 2012
    move-result v7

    .line 2013
    if-eq v7, v2, :cond_81

    .line 2014
    .line 2015
    if-eq v7, v4, :cond_81

    .line 2016
    .line 2017
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2018
    .line 2019
    .line 2020
    move-result v7

    .line 2021
    if-eq v7, v5, :cond_7d

    .line 2022
    .line 2023
    goto :goto_14

    .line 2024
    :cond_7d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2025
    .line 2026
    .line 2027
    move-result-object v7

    .line 2028
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2029
    .line 2030
    .line 2031
    move-result v8

    .line 2032
    if-eqz v8, :cond_7e

    .line 2033
    .line 2034
    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v7

    .line 2038
    iput-object v7, v6, Lcom/android/server/display/config/LuxToBrightnessMapping;->map:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 2039
    .line 2040
    goto :goto_14

    .line 2041
    :cond_7e
    const-string/jumbo v8, "mode"

    .line 2042
    .line 2043
    .line 2044
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2045
    .line 2046
    .line 2047
    move-result v8

    .line 2048
    if-eqz v8, :cond_7f

    .line 2049
    .line 2050
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2051
    .line 2052
    .line 2053
    move-result-object v7

    .line 2054
    invoke-static {v7}, Lcom/android/server/display/config/AutoBrightnessModeName;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 2055
    .line 2056
    .line 2057
    move-result-object v7

    .line 2058
    iput-object v7, v6, Lcom/android/server/display/config/LuxToBrightnessMapping;->mode:Lcom/android/server/display/config/AutoBrightnessModeName;

    .line 2059
    .line 2060
    goto :goto_14

    .line 2061
    :cond_7f
    const-string/jumbo v8, "setting"

    .line 2062
    .line 2063
    .line 2064
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2065
    .line 2066
    .line 2067
    move-result v7

    .line 2068
    if-eqz v7, :cond_80

    .line 2069
    .line 2070
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v7

    .line 2074
    invoke-static {v7}, Lcom/android/server/display/config/AutoBrightnessSettingName;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v7

    .line 2078
    iput-object v7, v6, Lcom/android/server/display/config/LuxToBrightnessMapping;->setting:Lcom/android/server/display/config/AutoBrightnessSettingName;

    .line 2079
    .line 2080
    goto :goto_14

    .line 2081
    :cond_80
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2082
    .line 2083
    .line 2084
    goto :goto_14

    .line 2085
    :cond_81
    if-ne v7, v4, :cond_82

    .line 2086
    .line 2087
    invoke-virtual {v3}, Lcom/android/server/display/config/AutoBrightness;->getLuxToBrightnessMapping()Ljava/util/List;

    .line 2088
    .line 2089
    .line 2090
    move-result-object v7

    .line 2091
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2092
    .line 2093
    .line 2094
    goto/16 :goto_13

    .line 2095
    .line 2096
    :cond_82
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2097
    .line 2098
    const-string v0, "LuxToBrightnessMapping is not closed"

    .line 2099
    .line 2100
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2101
    .line 2102
    .line 2103
    throw p0

    .line 2104
    :cond_83
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2105
    .line 2106
    .line 2107
    goto/16 :goto_13

    .line 2108
    .line 2109
    :cond_84
    if-ne v6, v4, :cond_85

    .line 2110
    .line 2111
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    .line 2112
    .line 2113
    goto/16 :goto_0

    .line 2114
    .line 2115
    :cond_85
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2116
    .line 2117
    const-string v0, "AutoBrightness is not closed"

    .line 2118
    .line 2119
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2120
    .line 2121
    .line 2122
    throw p0

    .line 2123
    :cond_86
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2124
    .line 2125
    .line 2126
    move-result v6

    .line 2127
    if-eqz v6, :cond_9c

    .line 2128
    .line 2129
    new-instance v3, Lcom/android/server/display/config/RefreshRateConfigs;

    .line 2130
    .line 2131
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2132
    .line 2133
    .line 2134
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2135
    .line 2136
    .line 2137
    :goto_15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2138
    .line 2139
    .line 2140
    move-result v6

    .line 2141
    if-eq v6, v2, :cond_9a

    .line 2142
    .line 2143
    if-eq v6, v4, :cond_9a

    .line 2144
    .line 2145
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2146
    .line 2147
    .line 2148
    move-result v6

    .line 2149
    if-eq v6, v5, :cond_87

    .line 2150
    .line 2151
    goto :goto_15

    .line 2152
    :cond_87
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v6

    .line 2156
    const-string/jumbo v8, "defaultRefreshRate"

    .line 2157
    .line 2158
    .line 2159
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2160
    .line 2161
    .line 2162
    move-result v8

    .line 2163
    if-eqz v8, :cond_88

    .line 2164
    .line 2165
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v6

    .line 2169
    new-instance v8, Ljava/math/BigInteger;

    .line 2170
    .line 2171
    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2172
    .line 2173
    .line 2174
    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRate:Ljava/math/BigInteger;

    .line 2175
    .line 2176
    goto :goto_15

    .line 2177
    :cond_88
    const-string/jumbo v8, "defaultPeakRefreshRate"

    .line 2178
    .line 2179
    .line 2180
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2181
    .line 2182
    .line 2183
    move-result v8

    .line 2184
    if-eqz v8, :cond_89

    .line 2185
    .line 2186
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v6

    .line 2190
    new-instance v8, Ljava/math/BigInteger;

    .line 2191
    .line 2192
    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2193
    .line 2194
    .line 2195
    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultPeakRefreshRate:Ljava/math/BigInteger;

    .line 2196
    .line 2197
    goto :goto_15

    .line 2198
    :cond_89
    const-string/jumbo v8, "refreshRateZoneProfiles"

    .line 2199
    .line 2200
    .line 2201
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2202
    .line 2203
    .line 2204
    move-result v8

    .line 2205
    if-eqz v8, :cond_94

    .line 2206
    .line 2207
    new-instance v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;

    .line 2208
    .line 2209
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 2210
    .line 2211
    .line 2212
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2213
    .line 2214
    .line 2215
    :goto_16
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2216
    .line 2217
    .line 2218
    move-result v8

    .line 2219
    if-eq v8, v2, :cond_92

    .line 2220
    .line 2221
    if-eq v8, v4, :cond_92

    .line 2222
    .line 2223
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2224
    .line 2225
    .line 2226
    move-result v8

    .line 2227
    if-eq v8, v5, :cond_8a

    .line 2228
    .line 2229
    goto :goto_16

    .line 2230
    :cond_8a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v8

    .line 2234
    const-string/jumbo v9, "refreshRateZoneProfile"

    .line 2235
    .line 2236
    .line 2237
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2238
    .line 2239
    .line 2240
    move-result v8

    .line 2241
    if-eqz v8, :cond_91

    .line 2242
    .line 2243
    new-instance v8, Lcom/android/server/display/config/RefreshRateZone;

    .line 2244
    .line 2245
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 2246
    .line 2247
    .line 2248
    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2249
    .line 2250
    .line 2251
    move-result-object v9

    .line 2252
    if-eqz v9, :cond_8b

    .line 2253
    .line 2254
    iput-object v9, v8, Lcom/android/server/display/config/RefreshRateZone;->id:Ljava/lang/String;

    .line 2255
    .line 2256
    :cond_8b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2257
    .line 2258
    .line 2259
    :goto_17
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2260
    .line 2261
    .line 2262
    move-result v9

    .line 2263
    if-eq v9, v2, :cond_8e

    .line 2264
    .line 2265
    if-eq v9, v4, :cond_8e

    .line 2266
    .line 2267
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2268
    .line 2269
    .line 2270
    move-result v9

    .line 2271
    if-eq v9, v5, :cond_8c

    .line 2272
    .line 2273
    goto :goto_17

    .line 2274
    :cond_8c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v9

    .line 2278
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2279
    .line 2280
    .line 2281
    move-result v9

    .line 2282
    if-eqz v9, :cond_8d

    .line 2283
    .line 2284
    invoke-static {v0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    .line 2285
    .line 2286
    .line 2287
    move-result-object v9

    .line 2288
    iput-object v9, v8, Lcom/android/server/display/config/RefreshRateZone;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    .line 2289
    .line 2290
    goto :goto_17

    .line 2291
    :cond_8d
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2292
    .line 2293
    .line 2294
    goto :goto_17

    .line 2295
    :cond_8e
    if-ne v9, v4, :cond_90

    .line 2296
    .line 2297
    iget-object v9, v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    .line 2298
    .line 2299
    if-nez v9, :cond_8f

    .line 2300
    .line 2301
    new-instance v9, Ljava/util/ArrayList;

    .line 2302
    .line 2303
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2304
    .line 2305
    .line 2306
    iput-object v9, v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    .line 2307
    .line 2308
    :cond_8f
    iget-object v9, v6, Lcom/android/server/display/config/RefreshRateZoneProfiles;->refreshRateZoneProfile:Ljava/util/List;

    .line 2309
    .line 2310
    check-cast v9, Ljava/util/ArrayList;

    .line 2311
    .line 2312
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    .line 2314
    .line 2315
    goto :goto_16

    .line 2316
    :cond_90
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2317
    .line 2318
    const-string v0, "RefreshRateZone is not closed"

    .line 2319
    .line 2320
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2321
    .line 2322
    .line 2323
    throw p0

    .line 2324
    :cond_91
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2325
    .line 2326
    .line 2327
    goto :goto_16

    .line 2328
    :cond_92
    if-ne v8, v4, :cond_93

    .line 2329
    .line 2330
    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->refreshRateZoneProfiles:Lcom/android/server/display/config/RefreshRateZoneProfiles;

    .line 2331
    .line 2332
    goto/16 :goto_15

    .line 2333
    .line 2334
    :cond_93
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2335
    .line 2336
    const-string v0, "RefreshRateZoneProfiles is not closed"

    .line 2337
    .line 2338
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2339
    .line 2340
    .line 2341
    throw p0

    .line 2342
    :cond_94
    const-string/jumbo v8, "defaultRefreshRateInHbmHdr"

    .line 2343
    .line 2344
    .line 2345
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2346
    .line 2347
    .line 2348
    move-result v8

    .line 2349
    if-eqz v8, :cond_95

    .line 2350
    .line 2351
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v6

    .line 2355
    new-instance v8, Ljava/math/BigInteger;

    .line 2356
    .line 2357
    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2358
    .line 2359
    .line 2360
    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmHdr:Ljava/math/BigInteger;

    .line 2361
    .line 2362
    goto/16 :goto_15

    .line 2363
    .line 2364
    :cond_95
    const-string/jumbo v8, "defaultRefreshRateInHbmSunlight"

    .line 2365
    .line 2366
    .line 2367
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2368
    .line 2369
    .line 2370
    move-result v8

    .line 2371
    if-eqz v8, :cond_96

    .line 2372
    .line 2373
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v6

    .line 2377
    new-instance v8, Ljava/math/BigInteger;

    .line 2378
    .line 2379
    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2380
    .line 2381
    .line 2382
    iput-object v8, v3, Lcom/android/server/display/config/RefreshRateConfigs;->defaultRefreshRateInHbmSunlight:Ljava/math/BigInteger;

    .line 2383
    .line 2384
    goto/16 :goto_15

    .line 2385
    .line 2386
    :cond_96
    const-string/jumbo v8, "lowerBlockingZoneConfigs"

    .line 2387
    .line 2388
    .line 2389
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2390
    .line 2391
    .line 2392
    move-result v8

    .line 2393
    if-eqz v8, :cond_97

    .line 2394
    .line 2395
    invoke-static {v0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2396
    .line 2397
    .line 2398
    move-result-object v6

    .line 2399
    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->lowerBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2400
    .line 2401
    goto/16 :goto_15

    .line 2402
    .line 2403
    :cond_97
    const-string/jumbo v8, "higherBlockingZoneConfigs"

    .line 2404
    .line 2405
    .line 2406
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2407
    .line 2408
    .line 2409
    move-result v8

    .line 2410
    if-eqz v8, :cond_98

    .line 2411
    .line 2412
    invoke-static {v0}, Lcom/android/server/display/config/BlockingZoneConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2413
    .line 2414
    .line 2415
    move-result-object v6

    .line 2416
    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->higherBlockingZoneConfigs:Lcom/android/server/display/config/BlockingZoneConfig;

    .line 2417
    .line 2418
    goto/16 :goto_15

    .line 2419
    .line 2420
    :cond_98
    const-string/jumbo v8, "lowPowerSupportedModes"

    .line 2421
    .line 2422
    .line 2423
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2424
    .line 2425
    .line 2426
    move-result v6

    .line 2427
    if-eqz v6, :cond_99

    .line 2428
    .line 2429
    invoke-static {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 2430
    .line 2431
    .line 2432
    move-result-object v6

    .line 2433
    iput-object v6, v3, Lcom/android/server/display/config/RefreshRateConfigs;->lowPowerSupportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 2434
    .line 2435
    goto/16 :goto_15

    .line 2436
    .line 2437
    :cond_99
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2438
    .line 2439
    .line 2440
    goto/16 :goto_15

    .line 2441
    .line 2442
    :cond_9a
    if-ne v6, v4, :cond_9b

    .line 2443
    .line 2444
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    .line 2445
    .line 2446
    goto/16 :goto_0

    .line 2447
    .line 2448
    :cond_9b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2449
    .line 2450
    const-string v0, "RefreshRateConfigs is not closed"

    .line 2451
    .line 2452
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2453
    .line 2454
    .line 2455
    throw p0

    .line 2456
    :cond_9c
    const-string/jumbo v6, "screenBrightnessRampFastDecrease"

    .line 2457
    .line 2458
    .line 2459
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2460
    .line 2461
    .line 2462
    move-result v6

    .line 2463
    if-eqz v6, :cond_9d

    .line 2464
    .line 2465
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v3

    .line 2469
    new-instance v4, Ljava/math/BigDecimal;

    .line 2470
    .line 2471
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2472
    .line 2473
    .line 2474
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    .line 2475
    .line 2476
    goto/16 :goto_0

    .line 2477
    .line 2478
    :cond_9d
    const-string/jumbo v6, "screenBrightnessRampFastIncrease"

    .line 2479
    .line 2480
    .line 2481
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2482
    .line 2483
    .line 2484
    move-result v6

    .line 2485
    if-eqz v6, :cond_9e

    .line 2486
    .line 2487
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2488
    .line 2489
    .line 2490
    move-result-object v3

    .line 2491
    new-instance v4, Ljava/math/BigDecimal;

    .line 2492
    .line 2493
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2494
    .line 2495
    .line 2496
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    .line 2497
    .line 2498
    goto/16 :goto_0

    .line 2499
    .line 2500
    :cond_9e
    const-string/jumbo v6, "screenBrightnessRampSlowDecrease"

    .line 2501
    .line 2502
    .line 2503
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2504
    .line 2505
    .line 2506
    move-result v6

    .line 2507
    if-eqz v6, :cond_9f

    .line 2508
    .line 2509
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v3

    .line 2513
    new-instance v4, Ljava/math/BigDecimal;

    .line 2514
    .line 2515
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2516
    .line 2517
    .line 2518
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    .line 2519
    .line 2520
    goto/16 :goto_0

    .line 2521
    .line 2522
    :cond_9f
    const-string/jumbo v6, "screenBrightnessRampSlowIncrease"

    .line 2523
    .line 2524
    .line 2525
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2526
    .line 2527
    .line 2528
    move-result v6

    .line 2529
    if-eqz v6, :cond_a0

    .line 2530
    .line 2531
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v3

    .line 2535
    new-instance v4, Ljava/math/BigDecimal;

    .line 2536
    .line 2537
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2538
    .line 2539
    .line 2540
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    .line 2541
    .line 2542
    goto/16 :goto_0

    .line 2543
    .line 2544
    :cond_a0
    const-string/jumbo v6, "screenBrightnessRampSlowDecreaseIdle"

    .line 2545
    .line 2546
    .line 2547
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2548
    .line 2549
    .line 2550
    move-result v6

    .line 2551
    if-eqz v6, :cond_a1

    .line 2552
    .line 2553
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2554
    .line 2555
    .line 2556
    move-result-object v3

    .line 2557
    new-instance v4, Ljava/math/BigDecimal;

    .line 2558
    .line 2559
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2560
    .line 2561
    .line 2562
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

    .line 2563
    .line 2564
    goto/16 :goto_0

    .line 2565
    .line 2566
    :cond_a1
    const-string/jumbo v6, "screenBrightnessRampSlowIncreaseIdle"

    .line 2567
    .line 2568
    .line 2569
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2570
    .line 2571
    .line 2572
    move-result v6

    .line 2573
    if-eqz v6, :cond_a2

    .line 2574
    .line 2575
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2576
    .line 2577
    .line 2578
    move-result-object v3

    .line 2579
    new-instance v4, Ljava/math/BigDecimal;

    .line 2580
    .line 2581
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2582
    .line 2583
    .line 2584
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

    .line 2585
    .line 2586
    goto/16 :goto_0

    .line 2587
    .line 2588
    :cond_a2
    const-string/jumbo v6, "screenBrightnessRampIncreaseMaxMillis"

    .line 2589
    .line 2590
    .line 2591
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2592
    .line 2593
    .line 2594
    move-result v6

    .line 2595
    if-eqz v6, :cond_a3

    .line 2596
    .line 2597
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2598
    .line 2599
    .line 2600
    move-result-object v3

    .line 2601
    new-instance v4, Ljava/math/BigInteger;

    .line 2602
    .line 2603
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2604
    .line 2605
    .line 2606
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    .line 2607
    .line 2608
    goto/16 :goto_0

    .line 2609
    .line 2610
    :cond_a3
    const-string/jumbo v6, "screenBrightnessRampDecreaseMaxMillis"

    .line 2611
    .line 2612
    .line 2613
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2614
    .line 2615
    .line 2616
    move-result v6

    .line 2617
    if-eqz v6, :cond_a4

    .line 2618
    .line 2619
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2620
    .line 2621
    .line 2622
    move-result-object v3

    .line 2623
    new-instance v4, Ljava/math/BigInteger;

    .line 2624
    .line 2625
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2626
    .line 2627
    .line 2628
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    .line 2629
    .line 2630
    goto/16 :goto_0

    .line 2631
    .line 2632
    :cond_a4
    const-string/jumbo v6, "screenBrightnessRampIncreaseMaxIdleMillis"

    .line 2633
    .line 2634
    .line 2635
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2636
    .line 2637
    .line 2638
    move-result v6

    .line 2639
    if-eqz v6, :cond_a5

    .line 2640
    .line 2641
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2642
    .line 2643
    .line 2644
    move-result-object v3

    .line 2645
    new-instance v4, Ljava/math/BigInteger;

    .line 2646
    .line 2647
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2648
    .line 2649
    .line 2650
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

    .line 2651
    .line 2652
    goto/16 :goto_0

    .line 2653
    .line 2654
    :cond_a5
    const-string/jumbo v6, "screenBrightnessRampDecreaseMaxIdleMillis"

    .line 2655
    .line 2656
    .line 2657
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2658
    .line 2659
    .line 2660
    move-result v6

    .line 2661
    if-eqz v6, :cond_a6

    .line 2662
    .line 2663
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2664
    .line 2665
    .line 2666
    move-result-object v3

    .line 2667
    new-instance v4, Ljava/math/BigInteger;

    .line 2668
    .line 2669
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2670
    .line 2671
    .line 2672
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

    .line 2673
    .line 2674
    goto/16 :goto_0

    .line 2675
    .line 2676
    :cond_a6
    const-string/jumbo v6, "lightSensor"

    .line 2677
    .line 2678
    .line 2679
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2680
    .line 2681
    .line 2682
    move-result v6

    .line 2683
    if-eqz v6, :cond_a7

    .line 2684
    .line 2685
    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    .line 2686
    .line 2687
    .line 2688
    move-result-object v3

    .line 2689
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    .line 2690
    .line 2691
    goto/16 :goto_0

    .line 2692
    .line 2693
    :cond_a7
    const-string/jumbo v6, "screenOffBrightnessSensor"

    .line 2694
    .line 2695
    .line 2696
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2697
    .line 2698
    .line 2699
    move-result v6

    .line 2700
    if-eqz v6, :cond_a8

    .line 2701
    .line 2702
    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    .line 2703
    .line 2704
    .line 2705
    move-result-object v3

    .line 2706
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    .line 2707
    .line 2708
    goto/16 :goto_0

    .line 2709
    .line 2710
    :cond_a8
    const-string/jumbo v6, "proxSensor"

    .line 2711
    .line 2712
    .line 2713
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2714
    .line 2715
    .line 2716
    move-result v6

    .line 2717
    if-eqz v6, :cond_aa

    .line 2718
    .line 2719
    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    .line 2720
    .line 2721
    .line 2722
    move-result-object v3

    .line 2723
    iget-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 2724
    .line 2725
    if-nez v4, :cond_a9

    .line 2726
    .line 2727
    new-instance v4, Ljava/util/ArrayList;

    .line 2728
    .line 2729
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2730
    .line 2731
    .line 2732
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 2733
    .line 2734
    :cond_a9
    iget-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 2735
    .line 2736
    check-cast v4, Ljava/util/ArrayList;

    .line 2737
    .line 2738
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2739
    .line 2740
    .line 2741
    goto/16 :goto_0

    .line 2742
    .line 2743
    :cond_aa
    const-string/jumbo v6, "tempSensor"

    .line 2744
    .line 2745
    .line 2746
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2747
    .line 2748
    .line 2749
    move-result v6

    .line 2750
    if-eqz v6, :cond_ab

    .line 2751
    .line 2752
    invoke-static {v0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    .line 2753
    .line 2754
    .line 2755
    move-result-object v3

    .line 2756
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->tempSensor:Lcom/android/server/display/config/SensorDetails;

    .line 2757
    .line 2758
    goto/16 :goto_0

    .line 2759
    .line 2760
    :cond_ab
    const-string v6, "ambientLightHorizonLong"

    .line 2761
    .line 2762
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2763
    .line 2764
    .line 2765
    move-result v6

    .line 2766
    if-eqz v6, :cond_ac

    .line 2767
    .line 2768
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2769
    .line 2770
    .line 2771
    move-result-object v3

    .line 2772
    new-instance v4, Ljava/math/BigInteger;

    .line 2773
    .line 2774
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2775
    .line 2776
    .line 2777
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    .line 2778
    .line 2779
    goto/16 :goto_0

    .line 2780
    .line 2781
    :cond_ac
    const-string v6, "ambientLightHorizonShort"

    .line 2782
    .line 2783
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2784
    .line 2785
    .line 2786
    move-result v6

    .line 2787
    if-eqz v6, :cond_ad

    .line 2788
    .line 2789
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2790
    .line 2791
    .line 2792
    move-result-object v3

    .line 2793
    new-instance v4, Ljava/math/BigInteger;

    .line 2794
    .line 2795
    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2796
    .line 2797
    .line 2798
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    .line 2799
    .line 2800
    goto/16 :goto_0

    .line 2801
    .line 2802
    :cond_ad
    const-string/jumbo v6, "displayBrightnessChangeThresholds"

    .line 2803
    .line 2804
    .line 2805
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2806
    .line 2807
    .line 2808
    move-result v6

    .line 2809
    if-eqz v6, :cond_ae

    .line 2810
    .line 2811
    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    .line 2812
    .line 2813
    .line 2814
    goto/16 :goto_0

    .line 2815
    .line 2816
    :cond_ae
    const-string v6, "ambientBrightnessChangeThresholds"

    .line 2817
    .line 2818
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2819
    .line 2820
    .line 2821
    move-result v6

    .line 2822
    if-eqz v6, :cond_af

    .line 2823
    .line 2824
    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    .line 2825
    .line 2826
    .line 2827
    goto/16 :goto_0

    .line 2828
    .line 2829
    :cond_af
    const-string/jumbo v6, "displayBrightnessChangeThresholdsIdle"

    .line 2830
    .line 2831
    .line 2832
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2833
    .line 2834
    .line 2835
    move-result v6

    .line 2836
    if-eqz v6, :cond_b0

    .line 2837
    .line 2838
    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    .line 2839
    .line 2840
    .line 2841
    goto/16 :goto_0

    .line 2842
    .line 2843
    :cond_b0
    const-string v6, "ambientBrightnessChangeThresholdsIdle"

    .line 2844
    .line 2845
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2846
    .line 2847
    .line 2848
    move-result v6

    .line 2849
    if-eqz v6, :cond_b1

    .line 2850
    .line 2851
    invoke-static {v0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    .line 2852
    .line 2853
    .line 2854
    goto/16 :goto_0

    .line 2855
    .line 2856
    :cond_b1
    const-string/jumbo v6, "screenOffBrightnessSensorValueToLux"

    .line 2857
    .line 2858
    .line 2859
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2860
    .line 2861
    .line 2862
    move-result v6

    .line 2863
    if-eqz v6, :cond_b7

    .line 2864
    .line 2865
    new-instance v3, Lcom/android/server/display/config/IntegerArray;

    .line 2866
    .line 2867
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2868
    .line 2869
    .line 2870
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2871
    .line 2872
    .line 2873
    :goto_18
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2874
    .line 2875
    .line 2876
    move-result v6

    .line 2877
    if-eq v6, v2, :cond_b5

    .line 2878
    .line 2879
    if-eq v6, v4, :cond_b5

    .line 2880
    .line 2881
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2882
    .line 2883
    .line 2884
    move-result v6

    .line 2885
    if-eq v6, v5, :cond_b2

    .line 2886
    .line 2887
    goto :goto_18

    .line 2888
    :cond_b2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2889
    .line 2890
    .line 2891
    move-result-object v6

    .line 2892
    const-string/jumbo v7, "item"

    .line 2893
    .line 2894
    .line 2895
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2896
    .line 2897
    .line 2898
    move-result v6

    .line 2899
    if-eqz v6, :cond_b4

    .line 2900
    .line 2901
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2902
    .line 2903
    .line 2904
    move-result-object v6

    .line 2905
    new-instance v7, Ljava/math/BigInteger;

    .line 2906
    .line 2907
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2908
    .line 2909
    .line 2910
    iget-object v6, v3, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    .line 2911
    .line 2912
    if-nez v6, :cond_b3

    .line 2913
    .line 2914
    new-instance v6, Ljava/util/ArrayList;

    .line 2915
    .line 2916
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2917
    .line 2918
    .line 2919
    iput-object v6, v3, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    .line 2920
    .line 2921
    :cond_b3
    iget-object v6, v3, Lcom/android/server/display/config/IntegerArray;->item:Ljava/util/List;

    .line 2922
    .line 2923
    check-cast v6, Ljava/util/ArrayList;

    .line 2924
    .line 2925
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2926
    .line 2927
    .line 2928
    goto :goto_18

    .line 2929
    :cond_b4
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2930
    .line 2931
    .line 2932
    goto :goto_18

    .line 2933
    :cond_b5
    if-ne v6, v4, :cond_b6

    .line 2934
    .line 2935
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    .line 2936
    .line 2937
    goto/16 :goto_0

    .line 2938
    .line 2939
    :cond_b6
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 2940
    .line 2941
    const-string v0, "IntegerArray is not closed"

    .line 2942
    .line 2943
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 2944
    .line 2945
    .line 2946
    throw p0

    .line 2947
    :cond_b7
    const-string/jumbo v6, "usiVersion"

    .line 2948
    .line 2949
    .line 2950
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2951
    .line 2952
    .line 2953
    move-result v6

    .line 2954
    if-eqz v6, :cond_bd

    .line 2955
    .line 2956
    new-instance v3, Lcom/android/server/display/config/UsiVersion;

    .line 2957
    .line 2958
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2959
    .line 2960
    .line 2961
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2962
    .line 2963
    .line 2964
    :goto_19
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 2965
    .line 2966
    .line 2967
    move-result v6

    .line 2968
    if-eq v6, v2, :cond_bb

    .line 2969
    .line 2970
    if-eq v6, v4, :cond_bb

    .line 2971
    .line 2972
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2973
    .line 2974
    .line 2975
    move-result v6

    .line 2976
    if-eq v6, v5, :cond_b8

    .line 2977
    .line 2978
    goto :goto_19

    .line 2979
    :cond_b8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2980
    .line 2981
    .line 2982
    move-result-object v6

    .line 2983
    const-string/jumbo v7, "majorVersion"

    .line 2984
    .line 2985
    .line 2986
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2987
    .line 2988
    .line 2989
    move-result v7

    .line 2990
    if-eqz v7, :cond_b9

    .line 2991
    .line 2992
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 2993
    .line 2994
    .line 2995
    move-result-object v6

    .line 2996
    new-instance v7, Ljava/math/BigInteger;

    .line 2997
    .line 2998
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2999
    .line 3000
    .line 3001
    iput-object v7, v3, Lcom/android/server/display/config/UsiVersion;->majorVersion:Ljava/math/BigInteger;

    .line 3002
    .line 3003
    goto :goto_19

    .line 3004
    :cond_b9
    const-string/jumbo v7, "minorVersion"

    .line 3005
    .line 3006
    .line 3007
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3008
    .line 3009
    .line 3010
    move-result v6

    .line 3011
    if-eqz v6, :cond_ba

    .line 3012
    .line 3013
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3014
    .line 3015
    .line 3016
    move-result-object v6

    .line 3017
    new-instance v7, Ljava/math/BigInteger;

    .line 3018
    .line 3019
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 3020
    .line 3021
    .line 3022
    iput-object v7, v3, Lcom/android/server/display/config/UsiVersion;->minorVersion:Ljava/math/BigInteger;

    .line 3023
    .line 3024
    goto :goto_19

    .line 3025
    :cond_ba
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3026
    .line 3027
    .line 3028
    goto :goto_19

    .line 3029
    :cond_bb
    if-ne v6, v4, :cond_bc

    .line 3030
    .line 3031
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    .line 3032
    .line 3033
    goto/16 :goto_0

    .line 3034
    .line 3035
    :cond_bc
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 3036
    .line 3037
    const-string v0, "UsiVersion is not closed"

    .line 3038
    .line 3039
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 3040
    .line 3041
    .line 3042
    throw p0

    .line 3043
    :cond_bd
    const-string/jumbo v6, "evenDimmer"

    .line 3044
    .line 3045
    .line 3046
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3047
    .line 3048
    .line 3049
    move-result v6

    .line 3050
    if-eqz v6, :cond_d1

    .line 3051
    .line 3052
    new-instance v3, Lcom/android/server/display/config/EvenDimmerMode;

    .line 3053
    .line 3054
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 3055
    .line 3056
    .line 3057
    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3058
    .line 3059
    .line 3060
    move-result-object v6

    .line 3061
    if-eqz v6, :cond_be

    .line 3062
    .line 3063
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 3064
    .line 3065
    .line 3066
    move-result v6

    .line 3067
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 3068
    .line 3069
    .line 3070
    move-result-object v6

    .line 3071
    iput-object v6, v3, Lcom/android/server/display/config/EvenDimmerMode;->enabled:Ljava/lang/Boolean;

    .line 3072
    .line 3073
    :cond_be
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 3074
    .line 3075
    .line 3076
    :goto_1a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3077
    .line 3078
    .line 3079
    move-result v6

    .line 3080
    if-eq v6, v2, :cond_cf

    .line 3081
    .line 3082
    if-eq v6, v4, :cond_cf

    .line 3083
    .line 3084
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 3085
    .line 3086
    .line 3087
    move-result v6

    .line 3088
    if-eq v6, v5, :cond_bf

    .line 3089
    .line 3090
    goto :goto_1a

    .line 3091
    :cond_bf
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 3092
    .line 3093
    .line 3094
    move-result-object v6

    .line 3095
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3096
    .line 3097
    .line 3098
    move-result v7

    .line 3099
    if-eqz v7, :cond_c0

    .line 3100
    .line 3101
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3102
    .line 3103
    .line 3104
    move-result-object v6

    .line 3105
    new-instance v7, Ljava/math/BigDecimal;

    .line 3106
    .line 3107
    invoke-direct {v7, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3108
    .line 3109
    .line 3110
    iput-object v7, v3, Lcom/android/server/display/config/EvenDimmerMode;->transitionPoint:Ljava/math/BigDecimal;

    .line 3111
    .line 3112
    goto :goto_1a

    .line 3113
    :cond_c0
    const-string/jumbo v7, "brightnessMapping"

    .line 3114
    .line 3115
    .line 3116
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3117
    .line 3118
    .line 3119
    move-result v7

    .line 3120
    if-eqz v7, :cond_cd

    .line 3121
    .line 3122
    new-instance v6, Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    .line 3123
    .line 3124
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 3125
    .line 3126
    .line 3127
    const-string/jumbo v7, "interpolation"

    .line 3128
    .line 3129
    .line 3130
    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3131
    .line 3132
    .line 3133
    move-result-object v7

    .line 3134
    if-eqz v7, :cond_c1

    .line 3135
    .line 3136
    iput-object v7, v6, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->interpolation:Ljava/lang/String;

    .line 3137
    .line 3138
    :cond_c1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 3139
    .line 3140
    .line 3141
    :goto_1b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3142
    .line 3143
    .line 3144
    move-result v7

    .line 3145
    if-eq v7, v2, :cond_cb

    .line 3146
    .line 3147
    if-eq v7, v4, :cond_cb

    .line 3148
    .line 3149
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 3150
    .line 3151
    .line 3152
    move-result v7

    .line 3153
    if-eq v7, v5, :cond_c2

    .line 3154
    .line 3155
    goto :goto_1b

    .line 3156
    :cond_c2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 3157
    .line 3158
    .line 3159
    move-result-object v7

    .line 3160
    const-string/jumbo v9, "brightnessPoint"

    .line 3161
    .line 3162
    .line 3163
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3164
    .line 3165
    .line 3166
    move-result v7

    .line 3167
    if-eqz v7, :cond_ca

    .line 3168
    .line 3169
    new-instance v7, Lcom/android/server/display/config/BrightnessPoint;

    .line 3170
    .line 3171
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 3172
    .line 3173
    .line 3174
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 3175
    .line 3176
    .line 3177
    :goto_1c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3178
    .line 3179
    .line 3180
    move-result v9

    .line 3181
    if-eq v9, v2, :cond_c7

    .line 3182
    .line 3183
    if-eq v9, v4, :cond_c7

    .line 3184
    .line 3185
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 3186
    .line 3187
    .line 3188
    move-result v9

    .line 3189
    if-eq v9, v5, :cond_c3

    .line 3190
    .line 3191
    goto :goto_1c

    .line 3192
    :cond_c3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 3193
    .line 3194
    .line 3195
    move-result-object v9

    .line 3196
    const-string/jumbo v10, "nits"

    .line 3197
    .line 3198
    .line 3199
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3200
    .line 3201
    .line 3202
    move-result v10

    .line 3203
    if-eqz v10, :cond_c4

    .line 3204
    .line 3205
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3206
    .line 3207
    .line 3208
    move-result-object v9

    .line 3209
    new-instance v10, Ljava/math/BigDecimal;

    .line 3210
    .line 3211
    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3212
    .line 3213
    .line 3214
    iput-object v10, v7, Lcom/android/server/display/config/BrightnessPoint;->nits:Ljava/math/BigDecimal;

    .line 3215
    .line 3216
    goto :goto_1c

    .line 3217
    :cond_c4
    const-string/jumbo v10, "backlight"

    .line 3218
    .line 3219
    .line 3220
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3221
    .line 3222
    .line 3223
    move-result v10

    .line 3224
    if-eqz v10, :cond_c5

    .line 3225
    .line 3226
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3227
    .line 3228
    .line 3229
    move-result-object v9

    .line 3230
    new-instance v10, Ljava/math/BigDecimal;

    .line 3231
    .line 3232
    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3233
    .line 3234
    .line 3235
    iput-object v10, v7, Lcom/android/server/display/config/BrightnessPoint;->backlight:Ljava/math/BigDecimal;

    .line 3236
    .line 3237
    goto :goto_1c

    .line 3238
    :cond_c5
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3239
    .line 3240
    .line 3241
    move-result v9

    .line 3242
    if-eqz v9, :cond_c6

    .line 3243
    .line 3244
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3245
    .line 3246
    .line 3247
    move-result-object v9

    .line 3248
    new-instance v10, Ljava/math/BigDecimal;

    .line 3249
    .line 3250
    invoke-direct {v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3251
    .line 3252
    .line 3253
    iput-object v10, v7, Lcom/android/server/display/config/BrightnessPoint;->brightness:Ljava/math/BigDecimal;

    .line 3254
    .line 3255
    goto :goto_1c

    .line 3256
    :cond_c6
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3257
    .line 3258
    .line 3259
    goto :goto_1c

    .line 3260
    :cond_c7
    if-ne v9, v4, :cond_c9

    .line 3261
    .line 3262
    iget-object v9, v6, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 3263
    .line 3264
    if-nez v9, :cond_c8

    .line 3265
    .line 3266
    new-instance v9, Ljava/util/ArrayList;

    .line 3267
    .line 3268
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3269
    .line 3270
    .line 3271
    iput-object v9, v6, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 3272
    .line 3273
    :cond_c8
    iget-object v9, v6, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->brightnessPoint:Ljava/util/List;

    .line 3274
    .line 3275
    check-cast v9, Ljava/util/ArrayList;

    .line 3276
    .line 3277
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3278
    .line 3279
    .line 3280
    goto/16 :goto_1b

    .line 3281
    .line 3282
    :cond_c9
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 3283
    .line 3284
    const-string v0, "BrightnessPoint is not closed"

    .line 3285
    .line 3286
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 3287
    .line 3288
    .line 3289
    throw p0

    .line 3290
    :cond_ca
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3291
    .line 3292
    .line 3293
    goto/16 :goto_1b

    .line 3294
    .line 3295
    :cond_cb
    if-ne v7, v4, :cond_cc

    .line 3296
    .line 3297
    iput-object v6, v3, Lcom/android/server/display/config/EvenDimmerMode;->brightnessMapping:Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    .line 3298
    .line 3299
    goto/16 :goto_1a

    .line 3300
    .line 3301
    :cond_cc
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 3302
    .line 3303
    const-string v0, "ComprehensiveBrightnessMap is not closed"

    .line 3304
    .line 3305
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 3306
    .line 3307
    .line 3308
    throw p0

    .line 3309
    :cond_cd
    const-string/jumbo v7, "luxToMinimumNitsMap"

    .line 3310
    .line 3311
    .line 3312
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3313
    .line 3314
    .line 3315
    move-result v6

    .line 3316
    if-eqz v6, :cond_ce

    .line 3317
    .line 3318
    invoke-static {v0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    .line 3319
    .line 3320
    .line 3321
    move-result-object v6

    .line 3322
    iput-object v6, v3, Lcom/android/server/display/config/EvenDimmerMode;->luxToMinimumNitsMap:Lcom/android/server/display/config/NitsMap;

    .line 3323
    .line 3324
    goto/16 :goto_1a

    .line 3325
    .line 3326
    :cond_ce
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3327
    .line 3328
    .line 3329
    goto/16 :goto_1a

    .line 3330
    .line 3331
    :cond_cf
    if-ne v6, v4, :cond_d0

    .line 3332
    .line 3333
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    .line 3334
    .line 3335
    goto/16 :goto_0

    .line 3336
    .line 3337
    :cond_d0
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 3338
    .line 3339
    const-string v0, "EvenDimmerMode is not closed"

    .line 3340
    .line 3341
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 3342
    .line 3343
    .line 3344
    throw p0

    .line 3345
    :cond_d1
    const-string/jumbo v4, "screenBrightnessCapForWearBedtimeMode"

    .line 3346
    .line 3347
    .line 3348
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3349
    .line 3350
    .line 3351
    move-result v4

    .line 3352
    if-eqz v4, :cond_d2

    .line 3353
    .line 3354
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3355
    .line 3356
    .line 3357
    move-result-object v3

    .line 3358
    new-instance v4, Ljava/math/BigDecimal;

    .line 3359
    .line 3360
    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3361
    .line 3362
    .line 3363
    iput-object v4, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

    .line 3364
    .line 3365
    goto/16 :goto_0

    .line 3366
    .line 3367
    :cond_d2
    const-string/jumbo v4, "idleScreenRefreshRateTimeout"

    .line 3368
    .line 3369
    .line 3370
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3371
    .line 3372
    .line 3373
    move-result v4

    .line 3374
    if-eqz v4, :cond_d3

    .line 3375
    .line 3376
    invoke-static {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    .line 3377
    .line 3378
    .line 3379
    move-result-object v3

    .line 3380
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    .line 3381
    .line 3382
    goto/16 :goto_0

    .line 3383
    .line 3384
    :cond_d3
    const-string/jumbo v4, "supportsVrr"

    .line 3385
    .line 3386
    .line 3387
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3388
    .line 3389
    .line 3390
    move-result v3

    .line 3391
    if-eqz v3, :cond_d4

    .line 3392
    .line 3393
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 3394
    .line 3395
    .line 3396
    move-result-object v3

    .line 3397
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 3398
    .line 3399
    .line 3400
    move-result v3

    .line 3401
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 3402
    .line 3403
    .line 3404
    move-result-object v3

    .line 3405
    iput-object v3, p0, Lcom/android/server/display/config/DisplayConfiguration;->supportsVrr:Ljava/lang/Boolean;

    .line 3406
    .line 3407
    goto/16 :goto_0

    .line 3408
    .line 3409
    :cond_d4
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3410
    .line 3411
    .line 3412
    goto/16 :goto_0

    .line 3413
    .line 3414
    :cond_d5
    if-ne v3, v4, :cond_d6

    .line 3415
    .line 3416
    return-object p0

    .line 3417
    :cond_d6
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    .line 3418
    .line 3419
    const-string v0, "DisplayConfiguration is not closed"

    .line 3420
    .line 3421
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    .line 3422
    .line 3423
    .line 3424
    throw p0

    .line 3425
    :cond_d7
    return-object v1
.end method

.method public static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

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
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

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

.method public static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :goto_0
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eq v2, v1, :cond_1

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return-void

    .line 28
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p0
.end method
