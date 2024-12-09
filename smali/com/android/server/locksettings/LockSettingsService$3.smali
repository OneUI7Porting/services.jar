.class public final Lcom/android/server/locksettings/LockSettingsService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsService$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, -0x1

    .line 17
    const-string/jumbo v1, "urid"

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p1, "LockSettingsService.SDP"

    .line 23
    .line 24
    const-string/jumbo v2, "onReceive :: android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const-string/jumbo p1, "cred"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    const-string/jumbo p1, "token"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string p0, "SyntheticPasswordDump_SDP"

    .line 53
    .line 54
    const-string p1, "Dump not supported for this device"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_0
    const-string p1, "android.intent.action.DUMP_DUALDAR_PASSWORD"

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const-string v2, "LockSettingsService.DUALDAR"

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    const-string/jumbo p1, "onReceive :: android.intent.action.DUMP_DUALDAR_PASSWORD"

    .line 77
    .line 78
    .line 79
    new-array v4, v3, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v2, p1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const-string/jumbo v0, "path"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 104
    .line 105
    if-nez v0, :cond_1

    .line 106
    .line 107
    new-array p0, v3, [Ljava/lang/Object;

    .line 108
    .line 109
    const-string p1, "DualDARDaemonProxy"

    .line 110
    .line 111
    const-string/jumbo p2, "dumpSecret failed! Error: native interface not yet connected failed"

    .line 112
    .line 113
    .line 114
    invoke-static {p1, p2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :cond_1
    const-string/jumbo v0, "dumpSecret() - userId : "

    .line 120
    .line 121
    .line 122
    const-string v1, ", filePath : "

    .line 123
    .line 124
    invoke-static {p1, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-array v1, v3, [Ljava/lang/Object;

    .line 129
    .line 130
    const-string v2, "DualDARDaemonProxy.DUALDAR"

    .line 131
    .line 132
    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;

    .line 136
    .line 137
    const-string/jumbo v1, "key"

    .line 138
    .line 139
    .line 140
    const-string/jumbo v2, "key_dump"

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_8

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDARDaemonProxy;->mEvent:Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto/16 :goto_5

    .line 169
    .line 170
    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_5

    .line 175
    .line 176
    :cond_2
    const-string p1, "android.intent.action.CHECK_DUALDAR_POLICY_PACKAGES"

    .line 177
    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_8

    .line 187
    .line 188
    const-string/jumbo p1, "onReceive :: android.intent.action.CHECK_DUALDAR_POLICY_PACKAGES"

    .line 189
    .line 190
    .line 191
    new-array v4, v3, [Ljava/lang/Object;

    .line 192
    .line 193
    invoke-static {v2, p1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    const-string p2, "/data/user/"

    .line 212
    .line 213
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    const-string v1, "DualDarDoPolicyChecker"

    .line 218
    .line 219
    if-nez v0, :cond_3

    .line 220
    .line 221
    const-string p0, "Not a DualDAR at DO user - "

    .line 222
    .line 223
    invoke-static {p1, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_5

    .line 227
    .line 228
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .line 232
    .line 233
    new-instance v2, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .line 237
    .line 238
    sget-object v4, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->sContext:Landroid/content/Context;

    .line 239
    .line 240
    invoke-static {v4}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    :try_start_1
    new-instance v5, Ljava/io/File;

    .line 245
    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    array-length v5, p2

    .line 266
    move v6, v3

    .line 267
    :goto_0
    if-ge v6, v5, :cond_7

    .line 268
    .line 269
    aget-object v7, p2, v6

    .line 270
    .line 271
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    if-eqz v8, :cond_6

    .line 276
    .line 277
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    iget-object v9, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    .line 282
    .line 283
    if-eqz v9, :cond_5

    .line 284
    .line 285
    check-cast v9, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    if-eqz v9, :cond_4

    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_4
    iget-object v9, p0, Lcom/android/server/knox/dar/ddar/DualDarDoPolicyChecker;->skippedPackages:Ljava/util/List;

    .line 295
    .line 296
    check-cast v9, Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    goto :goto_2

    .line 303
    :cond_5
    :goto_1
    move v9, v3

    .line 304
    :goto_2
    if-nez v9, :cond_6

    .line 305
    .line 306
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    invoke-virtual {v4, v7, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    if-nez v7, :cond_6

    .line 315
    .line 316
    new-instance v7, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string/jumbo v9, "ddar policy mismatch on user directory : "

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    goto :goto_3

    .line 338
    :catch_1
    move-exception p0

    .line 339
    goto :goto_4

    .line 340
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 341
    .line 342
    goto :goto_0

    .line 343
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    const-string p2, "/data/media/"

    .line 349
    .line 350
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string p1, "/Android/data"

    .line 357
    .line 358
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    invoke-virtual {v4, p0, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    .line 366
    .line 367
    .line 368
    move-result p0

    .line 369
    if-nez p0, :cond_8

    .line 370
    .line 371
    const-string/jumbo p0, "ddar policy mismatch on media directory"

    .line 372
    .line 373
    .line 374
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    .line 376
    .line 377
    goto :goto_5

    .line 378
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    .line 380
    .line 381
    :cond_8
    :goto_5
    return-void

    .line 382
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    const-string v0, "android.intent.action.USER_ADDED"

    .line 387
    .line 388
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    const-string v0, "android.intent.extra.user_handle"

    .line 393
    .line 394
    const-string v1, "LockSettingsService"

    .line 395
    .line 396
    const/4 v2, 0x0

    .line 397
    if-eqz p1, :cond_a

    .line 398
    .line 399
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    sget-boolean p2, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 404
    .line 405
    if-nez p2, :cond_9

    .line 406
    .line 407
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserAdded(I)I

    .line 408
    .line 409
    .line 410
    :cond_9
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 411
    .line 412
    .line 413
    move-result p2

    .line 414
    if-eqz p2, :cond_f

    .line 415
    .line 416
    const-string p2, "OnUserAdded(): Setup SeparateCredential for DualDAR User : "

    .line 417
    .line 418
    invoke-static {p1, p2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 422
    .line 423
    const/4 p2, 0x0

    .line 424
    const/4 v0, 0x1

    .line 425
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 426
    .line 427
    .line 428
    new-instance p0, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    const-string p2, "OnUserAdded(): Successfully added OLK to vold for DualDAR User : "

    .line 431
    .line 432
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-static {p0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_8

    .line 439
    .line 440
    :cond_a
    const-string p1, "android.intent.action.USER_STARTING"

    .line 441
    .line 442
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    if-eqz p1, :cond_b

    .line 451
    .line 452
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 457
    .line 458
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 459
    .line 460
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_8

    .line 464
    .line 465
    :cond_b
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    .line 466
    .line 467
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    if-eqz p1, :cond_e

    .line 476
    .line 477
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 478
    .line 479
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 480
    .line 481
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    :cond_c
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 490
    .line 491
    .line 492
    move-result p2

    .line 493
    if-eqz p2, :cond_f

    .line 494
    .line 495
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p2

    .line 499
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 500
    .line 501
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 502
    .line 503
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 504
    .line 505
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    const-string/jumbo v1, "notification"

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    check-cast v0, Landroid/app/NotificationManager;

    .line 521
    .line 522
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    array-length v1, v0

    .line 527
    move v3, v2

    .line 528
    :goto_7
    if-ge v3, v1, :cond_c

    .line 529
    .line 530
    aget-object v4, v0, v3

    .line 531
    .line 532
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    const/16 v5, 0x9

    .line 537
    .line 538
    if-ne v4, v5, :cond_d

    .line 539
    .line 540
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 541
    .line 542
    const-string/jumbo v0, "locale changed"

    .line 543
    .line 544
    .line 545
    invoke-virtual {p0, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V

    .line 546
    .line 547
    .line 548
    goto :goto_6

    .line 549
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 550
    .line 551
    goto :goto_7

    .line 552
    :cond_e
    const-string p1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 553
    .line 554
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result p1

    .line 562
    if-eqz p1, :cond_f

    .line 563
    .line 564
    const-string p1, "android.intent.extra.USER"

    .line 565
    .line 566
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    check-cast p1, Landroid/os/UserHandle;

    .line 571
    .line 572
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 573
    .line 574
    .line 575
    move-result p1

    .line 576
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 577
    .line 578
    .line 579
    move-result p2

    .line 580
    if-eqz p2, :cond_f

    .line 581
    .line 582
    const-string/jumbo p2, "reportEnabledTrustAgentsChanged for DualDAR User : "

    .line 583
    .line 584
    .line 585
    invoke-static {p1, p2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$3;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 589
    .line 590
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 591
    .line 592
    const-class p2, Landroid/app/trust/TrustManager;

    .line 593
    .line 594
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    check-cast p0, Landroid/app/trust/TrustManager;

    .line 599
    .line 600
    invoke-virtual {p0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 601
    .line 602
    .line 603
    :cond_f
    :goto_8
    return-void

    .line 604
    nop

    .line 605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
