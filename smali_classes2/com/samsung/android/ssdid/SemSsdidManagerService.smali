.class public final Lcom/samsung/android/ssdid/SemSsdidManagerService;
.super Lcom/samsung/android/ssdid/ISemSsdidManagerService$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSsdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/ssdid/ISemSsdidManagerService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string p0, "SemSsdidManagerService"

    .line 11
    .line 12
    const-string/jumbo p1, "start"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getSsdid()Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "invalid "

    .line 4
    .line 5
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v3, "com.samsung.android.permission.READ_SSDID"

    .line 8
    .line 9
    const-string/jumbo v4, "required permissions"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const-string v3, "SemSsdidManagerService"

    .line 29
    .line 30
    if-eqz v2, :cond_f

    .line 31
    .line 32
    const-string/jumbo v2, "ro.security.keystore.keytype"

    .line 33
    .line 34
    .line 35
    const-string v4, ""

    .line 36
    .line 37
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string/jumbo v5, "sakv2"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const/4 v7, 0x0

    .line 49
    const-string/jumbo v8, "sakm"

    .line 50
    .line 51
    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    move-object v2, v5

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    const-string/jumbo v2, "ro.product.first_api_level"

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const/16 v6, 0x22

    .line 70
    .line 71
    if-lt v2, v6, :cond_1

    .line 72
    .line 73
    const-string v2, "m55xq"

    .line 74
    .line 75
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_1

    .line 82
    .line 83
    move-object v2, v8

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move-object v2, v4

    .line 86
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const-string v9, ","

    .line 91
    .line 92
    const/4 v10, 0x0

    .line 93
    if-nez v6, :cond_a

    .line 94
    .line 95
    :try_start_0
    new-instance v6, Lcom/samsung/android/security/keystore/AttestationUtils;

    .line 96
    .line 97
    invoke-direct {v6}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    const/4 v12, 0x1

    .line 105
    if-eqz v11, :cond_2

    .line 106
    .line 107
    new-array v0, v7, [B

    .line 108
    .line 109
    invoke-virtual {v6, v3, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :cond_2
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_8

    .line 121
    .line 122
    new-array v0, v7, [B

    .line 123
    .line 124
    new-instance v8, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 125
    .line 126
    const/4 v11, 0x4

    .line 127
    invoke-direct {v8, v3, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    const-string v17, "SHA-384"

    .line 131
    .line 132
    const-string v18, "SHA-512"

    .line 133
    .line 134
    const-string v13, "NONE"

    .line 135
    .line 136
    const-string v14, "SHA-1"

    .line 137
    .line 138
    const-string v15, "SHA-224"

    .line 139
    .line 140
    const-string v16, "SHA-256"

    .line 141
    .line 142
    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-virtual {v8, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    new-instance v11, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    .line 155
    .line 156
    invoke-direct {v11, v0, v7, v12, v8}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>([BZZLandroid/security/keystore/KeyGenParameterSpec;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v11}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-static {v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    aget-object v0, v0, v7

    .line 167
    .line 168
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 169
    .line 170
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_3

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    :goto_2
    if-eqz v0, :cond_4

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    goto :goto_3

    .line 196
    :cond_4
    move-object v0, v10

    .line 197
    :goto_3
    if-eqz v0, :cond_7

    .line 198
    .line 199
    array-length v2, v0

    .line 200
    :goto_4
    if-ge v7, v2, :cond_6

    .line 201
    .line 202
    aget-object v5, v0, v7

    .line 203
    .line 204
    const-string v6, "UID"

    .line 205
    .line 206
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    if-eqz v6, :cond_5

    .line 211
    .line 212
    move-object v10, v5

    .line 213
    goto :goto_5

    .line 214
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_6
    :goto_5
    const-string/jumbo v0, "sakUid: "

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v10, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    if-eqz v10, :cond_9

    .line 224
    .line 225
    const-string v0, "\""

    .line 226
    .line 227
    invoke-virtual {v10, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v2, ":"

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    array-length v2, v0

    .line 238
    sub-int/2addr v2, v12

    .line 239
    aget-object v4, v0, v2

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_7
    :try_start_1
    const-string/jumbo v0, "not found UID in sak"

    .line 243
    .line 244
    .line 245
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    .line 255
    .line 256
    goto :goto_7

    .line 257
    :goto_6
    const-string v2, "exception"

    .line 258
    .line 259
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .line 261
    .line 262
    :cond_9
    :goto_7
    iput-object v4, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 263
    .line 264
    goto/16 :goto_d

    .line 265
    .line 266
    :cond_a
    const-string v0, "getSsdid: can not read SAK"

    .line 267
    .line 268
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    if-eqz v0, :cond_b

    .line 276
    .line 277
    const-string/jumbo v2, "unknown"

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-nez v2, :cond_b

    .line 285
    .line 286
    goto :goto_b

    .line 287
    :cond_b
    const-string v0, "/efs/FactoryApp/serial_no"

    .line 288
    .line 289
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    .line 290
    .line 291
    new-instance v5, Ljava/io/FileReader;

    .line 292
    .line 293
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 294
    .line 295
    invoke-direct {v5, v0, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 296
    .line 297
    .line 298
    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 299
    .line 300
    .line 301
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 306
    .line 307
    .line 308
    goto :goto_a

    .line 309
    :catch_1
    move-exception v0

    .line 310
    goto :goto_9

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    move-object v5, v0

    .line 313
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 314
    .line 315
    .line 316
    goto :goto_8

    .line 317
    :catchall_1
    move-exception v0

    .line 318
    move-object v2, v0

    .line 319
    :try_start_6
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 320
    .line 321
    .line 322
    :goto_8
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 323
    :goto_9
    const-string v2, "exception in readFromFile"

    .line 324
    .line 325
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .line 327
    .line 328
    move-object v0, v10

    .line 329
    :goto_a
    if-eqz v0, :cond_c

    .line 330
    .line 331
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    aget-object v0, v0, v7

    .line 336
    .line 337
    goto :goto_b

    .line 338
    :cond_c
    move-object v0, v10

    .line 339
    :goto_b
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    .line 340
    .line 341
    const-string/jumbo v5, "sem_wifi"

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    .line 349
    .line 350
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    if-eqz v0, :cond_e

    .line 355
    .line 356
    if-eqz v2, :cond_e

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    if-nez v0, :cond_d

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_d
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 366
    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    :try_start_7
    const-string v2, "SHA-256"

    .line 372
    .line 373
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 381
    .line 382
    .line 383
    move-result-object v10
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_2

    .line 384
    goto :goto_c

    .line 385
    :catch_2
    move-exception v0

    .line 386
    const-string v2, "exception during hash"

    .line 387
    .line 388
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .line 390
    .line 391
    :goto_c
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v0, v10}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    :cond_e
    iput-object v4, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 400
    .line 401
    :cond_f
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string v2, "getSsdid: "

    .line 404
    .line 405
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 409
    .line 410
    invoke-static {v0, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget-object v0, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    .line 414
    .line 415
    return-object v0
.end method
