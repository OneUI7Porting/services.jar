.class public final synthetic Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic f$0:Lcom/samsung/security/securekeyblob/SecureKeyGenerator;

.field public final synthetic f$1:Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/security/securekeyblob/SecureKeyGenerator;Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/security/securekeyblob/SecureKeyGenerator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Landroid/security/securekeygeneration/ISecureKeyGeneration;)Landroid/security/securekeygeneration/SecureKeyInfo;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    iget-object v4, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/security/securekeyblob/SecureKeyGenerator;

    .line 6
    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v4, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;

    .line 16
    .line 17
    iget v5, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mKeySize:I

    .line 18
    .line 19
    const v6, 0x30000003

    .line 20
    .line 21
    .line 22
    invoke-static {v6}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    const/high16 v8, 0x30000000

    .line 27
    .line 28
    if-eq v7, v8, :cond_1

    .line 29
    .line 30
    const/high16 v8, 0x40000000    # 2.0f

    .line 31
    .line 32
    if-ne v7, v8, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p1, "Not an int or repeatable int tag: 805306371"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    :goto_0
    new-instance v7, Landroid/hardware/security/keymint/KeyParameter;

    .line 44
    .line 45
    invoke-direct {v7}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 46
    .line 47
    .line 48
    iput v6, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 49
    .line 50
    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    iput-object v6, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 55
    .line 56
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v6, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mAlgorithm:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const v7, 0x10000002

    .line 65
    .line 66
    .line 67
    const-string v8, "EC"

    .line 68
    .line 69
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-nez v8, :cond_5

    .line 74
    .line 75
    const-string v5, "RSA"

    .line 76
    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_2

    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_2
    invoke-static {v7, v2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    sget-object v5, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    const v7, 0x500000c8

    .line 99
    .line 100
    .line 101
    invoke-static {v7}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    const/high16 v9, 0x50000000

    .line 106
    .line 107
    if-eq v8, v9, :cond_4

    .line 108
    .line 109
    const/high16 v9, -0x60000000

    .line 110
    .line 111
    if-ne v8, v9, :cond_3

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string p1, "Not a long or repeatable long tag: 1342177480"

    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_4
    :goto_1
    new-instance v8, Landroid/hardware/security/keymint/KeyParameter;

    .line 123
    .line 124
    invoke-direct {v8}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 125
    .line 126
    .line 127
    iput v7, v8, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 128
    .line 129
    invoke-static {v5, v6}, Landroid/hardware/security/keymint/KeyParameterValue;->longInteger(J)Landroid/hardware/security/keymint/KeyParameterValue;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    iput-object v5, v8, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 134
    .line 135
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    invoke-static {v7, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    const/16 v6, 0xe0

    .line 147
    .line 148
    if-eq v5, v6, :cond_9

    .line 149
    .line 150
    const/16 v6, 0x100

    .line 151
    .line 152
    if-eq v5, v6, :cond_8

    .line 153
    .line 154
    const/16 v6, 0x180

    .line 155
    .line 156
    if-eq v5, v6, :cond_7

    .line 157
    .line 158
    const/16 v6, 0x209

    .line 159
    .line 160
    if-ne v5, v6, :cond_6

    .line 161
    .line 162
    move v5, v1

    .line 163
    goto :goto_2

    .line 164
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    const-string p1, "Unsupported EC curve keysize: "

    .line 167
    .line 168
    invoke-static {v5, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :cond_7
    move v5, v0

    .line 177
    goto :goto_2

    .line 178
    :cond_8
    move v5, v2

    .line 179
    goto :goto_2

    .line 180
    :cond_9
    move v5, v3

    .line 181
    :goto_2
    const v6, 0x1000000a

    .line 182
    .line 183
    .line 184
    invoke-static {v6, v5}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :goto_3
    iget v5, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mPurposes:I

    .line 192
    .line 193
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    new-instance v6, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda1;

    .line 198
    .line 199
    invoke-direct {v6, v3, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v5, v6}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 203
    .line 204
    .line 205
    iget-object v5, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mBlockModes:[Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v5}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    new-instance v6, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda1;

    .line 216
    .line 217
    invoke-direct {v6, v2, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v5, v6}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 221
    .line 222
    .line 223
    iget-object v5, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    .line 224
    .line 225
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    xor-int/2addr v5, v2

    .line 230
    if-eqz v5, :cond_b

    .line 231
    .line 232
    iget-object v5, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    .line 233
    .line 234
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-nez v5, :cond_a

    .line 239
    .line 240
    new-instance v5, Ljava/util/HashSet;

    .line 241
    .line 242
    iget-object v6, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mMgf1Digests:Ljava/util/Set;

    .line 243
    .line 244
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    new-array v6, v6, [I

    .line 252
    .line 253
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    move v7, v3

    .line 258
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    if-eqz v8, :cond_c

    .line 263
    .line 264
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    check-cast v8, Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v8

    .line 274
    aput v8, v6, v7

    .line 275
    .line 276
    add-int/2addr v7, v2

    .line 277
    goto :goto_4

    .line 278
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 279
    .line 280
    const-string p1, "Mask generation function (MGF) not specified"

    .line 281
    .line 282
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw p0

    .line 286
    :cond_b
    new-array v6, v2, [I

    .line 287
    .line 288
    const-string v5, "SHA-1"

    .line 289
    .line 290
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    aput v5, v6, v3

    .line 295
    .line 296
    :cond_c
    iget-object v5, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mEncryptionPaddings:[Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {v5}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    new-instance v7, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;

    .line 307
    .line 308
    invoke-direct {v7, v4, v3, v6}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-static {v5, v7}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 312
    .line 313
    .line 314
    iget-object v5, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mSignaturePaddings:[Ljava/lang/String;

    .line 315
    .line 316
    invoke-static {v5}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    new-instance v6, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda1;

    .line 325
    .line 326
    invoke-direct {v6, v0, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v5, v6}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 330
    .line 331
    .line 332
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDigests:[Ljava/lang/String;

    .line 333
    .line 334
    if-eqz v0, :cond_12

    .line 335
    .line 336
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    new-instance v5, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda1;

    .line 345
    .line 346
    invoke-direct {v5, v1, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v5}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 350
    .line 351
    .line 352
    const v0, -0x6ffff69f

    .line 353
    .line 354
    .line 355
    iget-object v1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mServiceTAName:[B

    .line 356
    .line 357
    invoke-static {v0, v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDNQualifier:[B

    .line 365
    .line 366
    if-eqz v0, :cond_d

    .line 367
    .line 368
    const v1, -0x6ffff69d

    .line 369
    .line 370
    .line 371
    invoke-static {v1, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    new-array v0, v0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 383
    .line 384
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 389
    .line 390
    new-instance v1, Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .line 394
    .line 395
    const v4, -0x6ffffd3c

    .line 396
    .line 397
    .line 398
    iget-object v5, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mChallenge:[B

    .line 399
    .line 400
    invoke-static {v4, v5}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    iget-boolean v4, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mDeviceAttestation:Z

    .line 408
    .line 409
    const v5, -0x6ffff7ca

    .line 410
    .line 411
    .line 412
    if-eqz v4, :cond_e

    .line 413
    .line 414
    const-string/jumbo v4, "samsungDeviceIds"

    .line 415
    .line 416
    .line 417
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 418
    .line 419
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-static {v5, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_e
    const-string/jumbo v4, "samsung"

    .line 432
    .line 433
    .line 434
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 435
    .line 436
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-static {v5, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    :goto_5
    iget-object v4, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 448
    .line 449
    if-eqz v4, :cond_f

    .line 450
    .line 451
    const-string v5, "RFC1779"

    .line 452
    .line 453
    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-nez v6, :cond_f

    .line 462
    .line 463
    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 468
    .line 469
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    const v5, -0x6ffff7c9

    .line 474
    .line 475
    .line 476
    invoke-static {v5, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    :cond_f
    iget-boolean p0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mVerifiableIntegrity:Z

    .line 484
    .line 485
    if-eqz p0, :cond_11

    .line 486
    .line 487
    const p0, 0x700008fe

    .line 488
    .line 489
    .line 490
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    const/high16 v5, 0x70000000

    .line 495
    .line 496
    if-ne v4, v5, :cond_10

    .line 497
    .line 498
    new-instance v4, Landroid/hardware/security/keymint/KeyParameter;

    .line 499
    .line 500
    invoke-direct {v4}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 501
    .line 502
    .line 503
    iput p0, v4, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 504
    .line 505
    invoke-static {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    .line 506
    .line 507
    .line 508
    move-result-object p0

    .line 509
    iput-object p0, v4, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 510
    .line 511
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    goto :goto_6

    .line 515
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 516
    .line 517
    const-string p1, "Not a boolean tag: 1879050494"

    .line 518
    .line 519
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw p0

    .line 523
    :cond_11
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 524
    .line 525
    .line 526
    move-result p0

    .line 527
    new-array p0, p0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 528
    .line 529
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    check-cast p0, [Landroid/hardware/security/keymint/KeyParameter;

    .line 534
    .line 535
    check-cast p1, Landroid/security/securekeygeneration/ISecureKeyGeneration$Stub$Proxy;

    .line 536
    .line 537
    iget-object v1, p1, Landroid/security/securekeygeneration/ISecureKeyGeneration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 538
    .line 539
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 544
    .line 545
    .line 546
    move-result-object v4

    .line 547
    :try_start_0
    const-string v5, "android.security.securekeygeneration.ISecureKeyGeneration"

    .line 548
    .line 549
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1, v0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1, p0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 556
    .line 557
    .line 558
    iget-object p0, p1, Landroid/security/securekeygeneration/ISecureKeyGeneration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 559
    .line 560
    invoke-interface {p0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 561
    .line 562
    .line 563
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 564
    .line 565
    .line 566
    sget-object p0, Landroid/security/securekeygeneration/SecureKeyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 567
    .line 568
    invoke-virtual {v4, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object p0

    .line 572
    check-cast p0, Landroid/security/securekeygeneration/SecureKeyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    .line 574
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 578
    .line 579
    .line 580
    return-object p0

    .line 581
    :catchall_0
    move-exception p0

    .line 582
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    .line 587
    .line 588
    throw p0

    .line 589
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 590
    .line 591
    const-string p1, "Digests not specified"

    .line 592
    .line 593
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    throw p0
.end method
