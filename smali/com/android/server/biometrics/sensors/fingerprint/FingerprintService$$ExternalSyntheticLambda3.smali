.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string/jumbo v5, "fingerprint_screen_lock"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v6, "fingerprint_always_on"

    .line 9
    .line 10
    .line 11
    iget-object v7, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda3;->f$1:I

    .line 14
    .line 15
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-boolean v8, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    .line 19
    .line 20
    iget-object v7, v7, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    .line 21
    .line 22
    if-eqz v8, :cond_0

    .line 23
    .line 24
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v9, "onBootPhase: "

    .line 30
    .line 31
    .line 32
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const-string v9, "FingerprintService.Ext"

    .line 43
    .line 44
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    sget-object v8, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 48
    .line 49
    iget-object v9, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    .line 50
    .line 51
    const/4 v10, -0x2

    .line 52
    const/4 v11, -0x1

    .line 53
    const/16 v12, 0x226

    .line 54
    .line 55
    const-string v13, ","

    .line 56
    .line 57
    const-string v14, "FingerprintService"

    .line 58
    .line 59
    iget-object v15, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 60
    .line 61
    if-ne v0, v12, :cond_c

    .line 62
    .line 63
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;

    .line 64
    .line 65
    invoke-direct {v0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasOpticalUdfps:Z

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-direct {v0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 78
    .line 79
    .line 80
    iget-object v12, v15, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    .line 81
    .line 82
    check-cast v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    .line 84
    invoke-virtual {v12, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-eqz v12, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v12, v15, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    .line 92
    .line 93
    check-cast v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    .line 95
    invoke-virtual {v12, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    iget-boolean v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 99
    .line 100
    if-eqz v0, :cond_21

    .line 101
    .line 102
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    iget-object v12, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 115
    .line 116
    const/16 v1, 0x8

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;

    .line 121
    .line 122
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-direct {v0, v9, v8, v12}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Landroid/os/Handler;Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    :try_start_0
    invoke-virtual {v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isFirstApiLevel31orGreater()Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-eqz v8, :cond_3

    .line 134
    .line 135
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v8, v4, v2, v0, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    :goto_1
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v4, v8, v2, v0, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v8, "TspCommand: "

    .line 164
    .line 165
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v4, v14}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_3
    invoke-static {v12, v2, v10, v5, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eq v0, v3, :cond_4

    .line 176
    .line 177
    :goto_4
    move v0, v2

    .line 178
    goto :goto_5

    .line 179
    :cond_4
    invoke-virtual {v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isFirstApiLevel31orGreater()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_5

    .line 184
    .line 185
    invoke-static {v12, v2, v10, v6, v3}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eq v0, v3, :cond_5

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_5
    move v0, v3

    .line 193
    :goto_5
    iget-boolean v4, v9, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    .line 194
    .line 195
    if-ne v4, v0, :cond_6

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_6
    iput-boolean v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    .line 199
    .line 200
    invoke-virtual {v9, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    .line 201
    .line 202
    .line 203
    :cond_7
    :goto_6
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 204
    .line 205
    if-eqz v0, :cond_8

    .line 206
    .line 207
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 208
    .line 209
    const-string/jumbo v0, "ro.factory.factory_binary"

    .line 210
    .line 211
    .line 212
    const-string v4, ""

    .line 213
    .line 214
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string/jumbo v4, "factory"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_8

    .line 226
    .line 227
    invoke-virtual {v9, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;

    .line 231
    .line 232
    invoke-direct {v0, v9}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 236
    .line 237
    .line 238
    :cond_8
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 239
    .line 240
    sget-object v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 241
    .line 242
    iget-object v5, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    const-string v0, ", "

    .line 245
    .line 246
    const-string/jumbo v6, "readSensorConfig: "

    .line 247
    .line 248
    .line 249
    iget-object v7, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSysFsProviderImpl:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 250
    .line 251
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    new-instance v7, Ljava/io/File;

    .line 255
    .line 256
    const-string v8, "/sys/class/fingerprint/fingerprint/position"

    .line 257
    .line 258
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v7}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    if-eqz v7, :cond_a

    .line 266
    .line 267
    :try_start_1
    new-instance v8, Ljava/lang/String;

    .line 268
    .line 269
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 270
    .line 271
    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    array-length v8, v7

    .line 283
    const/4 v9, 0x5

    .line 284
    const/4 v10, 0x7

    .line 285
    if-lt v8, v1, :cond_9

    .line 286
    .line 287
    aget-object v8, v7, v2

    .line 288
    .line 289
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 290
    .line 291
    aget-object v8, v7, v3

    .line 292
    .line 293
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 294
    .line 295
    const/4 v8, 0x2

    .line 296
    aget-object v11, v7, v8

    .line 297
    .line 298
    iput-object v11, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaWidth:Ljava/lang/String;

    .line 299
    .line 300
    const/4 v8, 0x3

    .line 301
    aget-object v11, v7, v8

    .line 302
    .line 303
    iput-object v11, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 304
    .line 305
    aget-object v8, v7, v10

    .line 306
    .line 307
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorImageSize:Ljava/lang/String;

    .line 308
    .line 309
    aget-object v8, v7, v9

    .line 310
    .line 311
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 312
    .line 313
    aget-object v8, v7, v1

    .line 314
    .line 315
    iput-object v8, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :catch_1
    move-exception v0

    .line 319
    goto :goto_8

    .line 320
    :cond_9
    :goto_7
    sget-boolean v8, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 321
    .line 322
    if-eqz v8, :cond_a

    .line 323
    .line 324
    new-instance v8, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const/4 v11, 0x2

    .line 330
    aget-object v12, v7, v11

    .line 331
    .line 332
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v11, " x "

    .line 336
    .line 337
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const/4 v11, 0x3

    .line 341
    aget-object v11, v7, v11

    .line 342
    .line 343
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    aget-object v11, v7, v2

    .line 350
    .line 351
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    aget-object v3, v7, v3

    .line 358
    .line 359
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    aget-object v3, v7, v10

    .line 366
    .line 367
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    aget-object v3, v7, v9

    .line 374
    .line 375
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    aget-object v0, v7, v1

    .line 382
    .line 383
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    .line 392
    .line 393
    goto :goto_9

    .line 394
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-static {v0, v1, v14}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    :cond_a
    :goto_9
    new-instance v0, Landroid/graphics/Point;

    .line 403
    .line 404
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 405
    .line 406
    .line 407
    :try_start_2
    new-instance v1, Landroid/view/DisplayInfo;

    .line 408
    .line 409
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 410
    .line 411
    .line 412
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 413
    .line 414
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 419
    .line 420
    invoke-virtual {v3, v2, v1}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 421
    .line 422
    .line 423
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-interface {v3, v2, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 428
    .line 429
    .line 430
    sget-boolean v3, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 431
    .line 432
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    const-string/jumbo v5, "display_cutout_hide_notch"

    .line 437
    .line 438
    .line 439
    invoke-static {v3, v5, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    if-eqz v3, :cond_b

    .line 444
    .line 445
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 446
    .line 447
    const-string/jumbo v5, "persist.sys.displayinset.top"

    .line 448
    .line 449
    .line 450
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    add-int/2addr v3, v2

    .line 455
    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 456
    .line 457
    goto :goto_a

    .line 458
    :catch_2
    move-exception v0

    .line 459
    move-object/from16 p0, v14

    .line 460
    .line 461
    goto :goto_b

    .line 462
    :cond_b
    :goto_a
    iget-object v2, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorActiveArea:Ljava/lang/String;

    .line 463
    .line 464
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 465
    .line 466
    .line 467
    move-result-wide v2

    .line 468
    iget v5, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 469
    .line 470
    float-to-double v5, v5

    .line 471
    mul-double/2addr v2, v5

    .line 472
    const-wide v5, 0x3fa42850a0000000L    # 0.03937007859349251

    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    mul-double/2addr v2, v5

    .line 478
    iget-object v7, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 479
    .line 480
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 481
    .line 482
    .line 483
    move-result-wide v7

    .line 484
    iget v9, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 485
    .line 486
    float-to-double v9, v9

    .line 487
    mul-double/2addr v7, v9

    .line 488
    mul-double/2addr v7, v5

    .line 489
    iget-object v9, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 490
    .line 491
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 492
    .line 493
    .line 494
    move-result-wide v9

    .line 495
    iget v11, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 496
    .line 497
    float-to-double v11, v11

    .line 498
    mul-double/2addr v9, v11

    .line 499
    mul-double/2addr v9, v5

    .line 500
    iget-object v11, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 501
    .line 502
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 503
    .line 504
    .line 505
    move-result-wide v11

    .line 506
    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 507
    .line 508
    move-object/from16 p0, v14

    .line 509
    .line 510
    float-to-double v13, v1

    .line 511
    mul-double/2addr v11, v13

    .line 512
    mul-double/2addr v11, v5

    .line 513
    double-to-int v1, v2

    .line 514
    const/4 v2, 0x2

    .line 515
    :try_start_3
    div-int/lit8 v3, v1, 0x2

    .line 516
    .line 517
    double-to-int v5, v9

    .line 518
    sub-int/2addr v3, v5

    .line 519
    double-to-int v5, v7

    .line 520
    double-to-int v6, v11

    .line 521
    div-int/2addr v6, v2

    .line 522
    add-int/2addr v5, v6

    .line 523
    div-int/lit8 v6, v1, 0x2

    .line 524
    .line 525
    add-int/2addr v5, v6

    .line 526
    iget-object v6, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mFodRect:Landroid/graphics/Rect;

    .line 527
    .line 528
    iget v7, v0, Landroid/graphics/Point;->x:I

    .line 529
    .line 530
    div-int/2addr v7, v2

    .line 531
    sub-int/2addr v7, v3

    .line 532
    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 533
    .line 534
    add-int/2addr v7, v1

    .line 535
    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 536
    .line 537
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 538
    .line 539
    sub-int/2addr v0, v5

    .line 540
    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 541
    .line 542
    add-int/2addr v0, v1

    .line 543
    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 544
    .line 545
    iget-object v0, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mGetTspManager:Ljava/util/function/Supplier;

    .line 546
    .line 547
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 552
    .line 553
    iget-object v1, v4, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mFodRect:Landroid/graphics/Rect;

    .line 554
    .line 555
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodRect(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 556
    .line 557
    .line 558
    goto/16 :goto_18

    .line 559
    .line 560
    :catch_3
    move-exception v0

    .line 561
    :goto_b
    const-string v1, " setFodRect: "

    .line 562
    .line 563
    move-object/from16 v4, p0

    .line 564
    .line 565
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .line 567
    .line 568
    goto/16 :goto_18

    .line 569
    .line 570
    :cond_c
    move-object v4, v14

    .line 571
    const/16 v1, 0x258

    .line 572
    .line 573
    iget-object v5, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    .line 574
    .line 575
    if-ne v0, v1, :cond_1d

    .line 576
    .line 577
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 578
    .line 579
    if-eqz v0, :cond_d

    .line 580
    .line 581
    goto :goto_c

    .line 582
    :cond_d
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;

    .line 583
    .line 584
    invoke-direct {v0, v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 585
    .line 586
    .line 587
    iput-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 588
    .line 589
    iget-object v1, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 590
    .line 591
    new-instance v6, Landroid/content/IntentFilter;

    .line 592
    .line 593
    const-string v12, "android.intent.action.USER_REMOVED"

    .line 594
    .line 595
    invoke-direct {v6, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 599
    .line 600
    invoke-virtual {v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->getBiometricHandler()Landroid/os/Handler;

    .line 601
    .line 602
    .line 603
    move-result-object v14

    .line 604
    invoke-static {v1, v0, v6, v12, v14}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 605
    .line 606
    .line 607
    :goto_c
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    if-eqz v1, :cond_21

    .line 612
    .line 613
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 614
    .line 615
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 616
    .line 617
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    .line 618
    .line 619
    iget-boolean v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 620
    .line 621
    if-eqz v0, :cond_f

    .line 622
    .line 623
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    .line 624
    .line 625
    if-eqz v0, :cond_f

    .line 626
    .line 627
    iget-object v6, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 628
    .line 629
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 633
    .line 634
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 635
    .line 636
    .line 637
    move-result-object v14

    .line 638
    invoke-direct {v12, v6, v1, v14}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;-><init>(Landroid/content/Context;Landroid/util/Pair;Landroid/os/Handler;)V

    .line 639
    .line 640
    .line 641
    iget-object v15, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v15, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 644
    .line 645
    check-cast v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 646
    .line 647
    iget-object v15, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 648
    .line 649
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 650
    .line 651
    .line 652
    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 653
    .line 654
    invoke-direct {v11, v15, v12, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 655
    .line 656
    .line 657
    iget-object v15, v15, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 658
    .line 659
    invoke-virtual {v15, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 660
    .line 661
    .line 662
    iget-object v11, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 663
    .line 664
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 665
    .line 666
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 667
    .line 668
    invoke-virtual {v11, v12}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 669
    .line 670
    .line 671
    iget-object v11, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 672
    .line 673
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 674
    .line 675
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 676
    .line 677
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 678
    .line 679
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    new-instance v15, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 683
    .line 684
    invoke-direct {v15, v11, v12, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 685
    .line 686
    .line 687
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 688
    .line 689
    invoke-virtual {v11, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    .line 691
    .line 692
    if-eqz v0, :cond_f

    .line 693
    .line 694
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    .line 695
    .line 696
    if-eqz v0, :cond_e

    .line 697
    .line 698
    goto :goto_d

    .line 699
    :cond_e
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;

    .line 700
    .line 701
    invoke-direct {v0, v12}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V

    .line 702
    .line 703
    .line 704
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    .line 705
    .line 706
    new-instance v0, Landroid/content/IntentFilter;

    .line 707
    .line 708
    const-string/jumbo v11, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    .line 709
    .line 710
    .line 711
    invoke-direct {v0, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    iget-object v11, v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mTspBrReceiver:Landroid/content/BroadcastReceiver;

    .line 715
    .line 716
    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 717
    .line 718
    invoke-static {v6, v11, v0, v12, v14}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 719
    .line 720
    .line 721
    :cond_f
    :goto_d
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 722
    .line 723
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 724
    .line 725
    iget-boolean v6, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUdfps:Z

    .line 726
    .line 727
    if-eqz v6, :cond_10

    .line 728
    .line 729
    iget-object v6, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 730
    .line 731
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 732
    .line 733
    .line 734
    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    .line 735
    .line 736
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    .line 737
    .line 738
    invoke-direct {v12}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;-><init>()V

    .line 739
    .line 740
    .line 741
    invoke-direct {v11, v6, v0, v12}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;)V

    .line 742
    .line 743
    .line 744
    iget-object v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 745
    .line 746
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 747
    .line 748
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 749
    .line 750
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    .line 752
    .line 753
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 754
    .line 755
    invoke-direct {v6, v0, v11, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 756
    .line 757
    .line 758
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 759
    .line 760
    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    .line 762
    .line 763
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;

    .line 764
    .line 765
    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    invoke-direct {v0, v11, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;Landroid/os/Handler;)V

    .line 770
    .line 771
    .line 772
    iput-object v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 773
    .line 774
    iget-object v0, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContext:Landroid/content/Context;

    .line 775
    .line 776
    const-string v6, "any_screen_running"

    .line 777
    .line 778
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 779
    .line 780
    .line 781
    move-result-object v6

    .line 782
    iget-object v8, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 783
    .line 784
    iget-object v11, v11, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    .line 785
    .line 786
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {v0, v6, v2, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 794
    .line 795
    .line 796
    :cond_10
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 797
    .line 798
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 799
    .line 800
    iget-boolean v6, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mHasUltrasonicUdfps:Z

    .line 801
    .line 802
    if-eqz v6, :cond_11

    .line 803
    .line 804
    iget-object v6, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 805
    .line 806
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 810
    .line 811
    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    .line 812
    .line 813
    invoke-direct {v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;-><init>()V

    .line 814
    .line 815
    .line 816
    invoke-direct {v8, v6, v0, v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;)V

    .line 817
    .line 818
    .line 819
    iput-object v8, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 820
    .line 821
    iget-object v0, v8, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 822
    .line 823
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 824
    .line 825
    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 826
    .line 827
    .line 828
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 829
    .line 830
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    .line 832
    .line 833
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 834
    .line 835
    invoke-direct {v6, v0, v8, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 836
    .line 837
    .line 838
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 839
    .line 840
    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 841
    .line 842
    .line 843
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mFpProtectiveFilmGuide:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    .line 844
    .line 845
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    .line 846
    .line 847
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 848
    .line 849
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 853
    .line 854
    .line 855
    move-result-object v6

    .line 856
    const-string/jumbo v8, "fingerprint_protective_film_guideline_displayed"

    .line 857
    .line 858
    .line 859
    const/4 v10, -0x1

    .line 860
    invoke-static {v6, v8, v10, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 861
    .line 862
    .line 863
    move-result v6

    .line 864
    if-ltz v6, :cond_11

    .line 865
    .line 866
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    .line 867
    .line 868
    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 869
    .line 870
    .line 871
    :cond_11
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 872
    .line 873
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 874
    .line 875
    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;

    .line 876
    .line 877
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 878
    .line 879
    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;

    .line 880
    .line 881
    invoke-direct {v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;-><init>()V

    .line 882
    .line 883
    .line 884
    invoke-direct {v6, v8, v0, v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$Injector;)V

    .line 885
    .line 886
    .line 887
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 888
    .line 889
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 890
    .line 891
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getSensorProperties()Ljava/util/List;

    .line 892
    .line 893
    .line 894
    move-result-object v8

    .line 895
    check-cast v8, Ljava/util/ArrayList;

    .line 896
    .line 897
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v8

    .line 901
    check-cast v8, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 902
    .line 903
    iget v8, v8, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 904
    .line 905
    const/16 v19, 0x0

    .line 906
    .line 907
    const/16 v20, 0x0

    .line 908
    .line 909
    const/16 v18, 0x25

    .line 910
    .line 911
    const/16 v21, 0x0

    .line 912
    .line 913
    move-object/from16 v16, v0

    .line 914
    .line 915
    move/from16 v17, v8

    .line 916
    .line 917
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 918
    .line 919
    .line 920
    move-result v8

    .line 921
    const-string v10, "TZ BUILD TYPE = "

    .line 922
    .line 923
    const-string v11, "SemFpScreenStatusNotifier"

    .line 924
    .line 925
    invoke-static {v8, v10, v11}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    if-eq v8, v3, :cond_12

    .line 929
    .line 930
    goto :goto_e

    .line 931
    :cond_12
    invoke-virtual {v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    .line 932
    .line 933
    .line 934
    :goto_e
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 935
    .line 936
    .line 937
    move-result-object v0

    .line 938
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 939
    .line 940
    .line 941
    move-result-object v5

    .line 942
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 943
    .line 944
    .line 945
    move-result v0

    .line 946
    if-eqz v0, :cond_1c

    .line 947
    .line 948
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 953
    .line 954
    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 955
    .line 956
    const/4 v6, 0x3

    .line 957
    if-ne v0, v6, :cond_1b

    .line 958
    .line 959
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 960
    .line 961
    .line 962
    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->DEBUG:Z

    .line 963
    .line 964
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    .line 965
    .line 966
    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->mOpticalImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;

    .line 967
    .line 968
    iget-object v8, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 969
    .line 970
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 971
    .line 972
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 973
    .line 974
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 975
    .line 976
    check-cast v10, Ljava/lang/Integer;

    .line 977
    .line 978
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 979
    .line 980
    .line 981
    move-result v17

    .line 982
    move-object v10, v0

    .line 983
    check-cast v10, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 984
    .line 985
    const/16 v0, 0x100

    .line 986
    .line 987
    new-array v0, v0, [B

    .line 988
    .line 989
    const/16 v19, 0x0

    .line 990
    .line 991
    const/16 v20, 0x0

    .line 992
    .line 993
    const/16 v18, 0x20

    .line 994
    .line 995
    move-object/from16 v16, v10

    .line 996
    .line 997
    move-object/from16 v21, v0

    .line 998
    .line 999
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->handleRequestCommandWithoutScheduler(III[B[B)I

    .line 1000
    .line 1001
    .line 1002
    move-result v11

    .line 1003
    if-lez v11, :cond_13

    .line 1004
    .line 1005
    :try_start_4
    new-instance v12, Ljava/lang/String;

    .line 1006
    .line 1007
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1008
    .line 1009
    invoke-direct {v12, v0, v2, v11, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1020
    goto :goto_10

    .line 1021
    :catch_4
    move-exception v0

    .line 1022
    invoke-virtual {v10}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getTag$1()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v10

    .line 1026
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    const-string/jumbo v12, "semGetOpticalBrightnessConfigs: "

    .line 1029
    .line 1030
    .line 1031
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    invoke-static {v0, v11, v10}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    :cond_13
    new-array v0, v2, [Ljava/lang/String;

    .line 1038
    .line 1039
    :goto_10
    const/16 v10, 0x20d

    .line 1040
    .line 1041
    iput v10, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1042
    .line 1043
    if-eqz v0, :cond_17

    .line 1044
    .line 1045
    :try_start_5
    array-length v8, v0

    .line 1046
    if-lez v8, :cond_14

    .line 1047
    .line 1048
    aget-object v8, v0, v2

    .line 1049
    .line 1050
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1051
    .line 1052
    .line 1053
    move-result v8

    .line 1054
    iput v8, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1055
    .line 1056
    goto :goto_11

    .line 1057
    :catch_5
    move-exception v0

    .line 1058
    goto :goto_13

    .line 1059
    :cond_14
    :goto_11
    array-length v8, v0

    .line 1060
    const/4 v10, 0x3

    .line 1061
    if-le v8, v10, :cond_15

    .line 1062
    .line 1063
    aget-object v8, v0, v10

    .line 1064
    .line 1065
    iput-object v8, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColor:Ljava/lang/String;

    .line 1066
    .line 1067
    :cond_15
    array-length v8, v0

    .line 1068
    const/4 v10, 0x4

    .line 1069
    if-le v8, v10, :cond_16

    .line 1070
    .line 1071
    aget-object v8, v0, v10

    .line 1072
    .line 1073
    iput-object v8, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBrightnessColorForLowBrightness:Ljava/lang/String;

    .line 1074
    .line 1075
    :cond_16
    array-length v8, v0

    .line 1076
    move v10, v2

    .line 1077
    :goto_12
    if-ge v10, v8, :cond_19

    .line 1078
    .line 1079
    aget-object v11, v0, v10

    .line 1080
    .line 1081
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1084
    .line 1085
    .line 1086
    const-string/jumbo v14, "setBrightnessConfigs: node = "

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v11

    .line 1099
    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    .line 1101
    .line 1102
    add-int/2addr v10, v3

    .line 1103
    goto :goto_12

    .line 1104
    :cond_17
    const-string/jumbo v0, "setBrightnessConfigs: failed to read from HAL"

    .line 1105
    .line 1106
    .line 1107
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    const v8, 0x107007e

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    array-length v8, v0

    .line 1122
    sub-int/2addr v8, v3

    .line 1123
    aget-object v0, v0, v8

    .line 1124
    .line 1125
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1126
    .line 1127
    .line 1128
    move-result v0

    .line 1129
    if-ge v0, v10, :cond_18

    .line 1130
    .line 1131
    iput v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1132
    .line 1133
    :cond_18
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    .line 1134
    .line 1135
    .line 1136
    move-result v0

    .line 1137
    iput v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1138
    .line 1139
    goto :goto_14

    .line 1140
    :goto_13
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    const-string/jumbo v10, "getBrightnessNitsValue: failure to read nits info: "

    .line 1143
    .line 1144
    .line 1145
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1146
    .line 1147
    .line 1148
    invoke-static {v0, v8, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    :cond_19
    :goto_14
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 1152
    .line 1153
    if-eqz v0, :cond_1a

    .line 1154
    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    const-string/jumbo v8, "setBrightnessConfigs: nits = ["

    .line 1158
    .line 1159
    .line 1160
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    iget v8, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 1164
    .line 1165
    const-string v10, "]"

    .line 1166
    .line 1167
    invoke-static {v0, v8, v10, v4}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    :cond_1a
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 1171
    .line 1172
    const/4 v8, 0x3

    .line 1173
    invoke-direct {v0, v6, v8}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v10

    .line 1180
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1181
    .line 1182
    .line 1183
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 1184
    .line 1185
    const/4 v10, 0x2

    .line 1186
    invoke-direct {v0, v6, v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->getBgHandler()Landroid/os/Handler;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v10

    .line 1193
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1194
    .line 1195
    .line 1196
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mGetDisplayStateMonitor:Ljava/util/function/Supplier;

    .line 1197
    .line 1198
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    check-cast v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 1203
    .line 1204
    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;

    .line 1205
    .line 1206
    invoke-direct {v10, v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 1210
    .line 1211
    .line 1212
    goto/16 :goto_f

    .line 1213
    .line 1214
    :cond_1b
    move v8, v6

    .line 1215
    goto/16 :goto_f

    .line 1216
    .line 1217
    :cond_1c
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;

    .line 1218
    .line 1219
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;-><init>(Landroid/util/Pair;)V

    .line 1220
    .line 1221
    .line 1222
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1223
    .line 1224
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 1225
    .line 1226
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 1227
    .line 1228
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mCallbackDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 1229
    .line 1230
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1231
    .line 1232
    .line 1233
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;

    .line 1234
    .line 1235
    const/4 v3, 0x2

    .line 1236
    invoke-direct {v2, v1, v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V

    .line 1237
    .line 1238
    .line 1239
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 1240
    .line 1241
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1242
    .line 1243
    .line 1244
    goto :goto_18

    .line 1245
    :cond_1d
    const/16 v1, 0x3e8

    .line 1246
    .line 1247
    if-ne v0, v1, :cond_21

    .line 1248
    .line 1249
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getAllProperties()Ljava/util/List;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v0

    .line 1253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1258
    .line 1259
    .line 1260
    move-result v1

    .line 1261
    if-eqz v1, :cond_20

    .line 1262
    .line 1263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v1

    .line 1267
    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 1268
    .line 1269
    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1270
    .line 1271
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v1

    .line 1275
    iput-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mIsBootComplete:Z

    .line 1276
    .line 1277
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 1278
    .line 1279
    if-nez v2, :cond_1e

    .line 1280
    .line 1281
    goto :goto_15

    .line 1282
    :cond_1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v2

    .line 1286
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1287
    .line 1288
    .line 1289
    move-result v4

    .line 1290
    if-eqz v4, :cond_1f

    .line 1291
    .line 1292
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v4

    .line 1296
    check-cast v4, Ljava/lang/Runnable;

    .line 1297
    .line 1298
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1299
    .line 1300
    .line 1301
    goto :goto_16

    .line 1302
    :cond_1f
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 1303
    .line 1304
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1305
    .line 1306
    .line 1307
    const/4 v2, 0x0

    .line 1308
    iput-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 1309
    .line 1310
    goto :goto_15

    .line 1311
    :cond_20
    iget-object v0, v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 1312
    .line 1313
    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v1

    .line 1317
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1318
    .line 1319
    .line 1320
    const-string v0, "BiometricContextProvider"

    .line 1321
    .line 1322
    const-string/jumbo v2, "ensureBiometricContextListener"

    .line 1323
    .line 1324
    .line 1325
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    .line 1327
    .line 1328
    :try_start_6
    const-string/jumbo v0, "statusbar"

    .line 1329
    .line 1330
    .line 1331
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v0

    .line 1335
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    iget-object v2, v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIBiometricContextListener:Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    .line 1340
    .line 1341
    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    :try_end_6
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1342
    .line 1343
    .line 1344
    goto :goto_17

    .line 1345
    :catch_6
    move-exception v0

    .line 1346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1347
    .line 1348
    .line 1349
    :goto_17
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$4;

    .line 1350
    .line 1351
    invoke-direct {v0, v1}, Lcom/android/server/biometrics/log/BiometricContextProvider$4;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 1355
    .line 1356
    .line 1357
    :cond_21
    :goto_18
    return-void
.end method
