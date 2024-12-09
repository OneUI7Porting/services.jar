.class public final Lcom/android/server/pm/PersonaManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

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
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, -0x2710

    .line 4
    .line 5
    const/16 v3, 0xd

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    iget v6, p0, Lcom/android/server/pm/PersonaManagerService$2;->$r8$classId:I

    .line 10
    .line 11
    packed-switch v6, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string p1, "PersonaManagerService"

    .line 27
    .line 28
    const-string p2, "ACTION_BOOT_COMPLETED"

    .line 29
    .line 30
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const-string p1, "android.intent.extra.user_handle"

    .line 57
    .line 58
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const-string v2, "com.samsung.android.knox.profilepolicy.intent.action.update"

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const-string/jumbo v3, "pN"

    .line 73
    .line 74
    .line 75
    const-string v6, "cTp"

    .line 76
    .line 77
    iget-object v7, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    const-string v2, "containerId"

    .line 82
    .line 83
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const-string/jumbo v8, "restrictionName"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    const-string/jumbo v9, "restrictionAllowed"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v9, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    iget-object v10, v7, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 102
    .line 103
    invoke-virtual {v10, v2}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-eqz v10, :cond_1

    .line 108
    .line 109
    invoke-virtual {v7, v2}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    iget-object v11, v7, Lcom/android/server/knox/BasicContainerAnalytics;->context:Landroid/content/Context;

    .line 114
    .line 115
    const-string v12, "device_policy"

    .line 116
    .line 117
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 122
    .line 123
    :try_start_0
    new-instance v12, Landroid/os/UserHandle;

    .line 124
    .line 125
    invoke-direct {v12, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    move-object v2, v1

    .line 142
    :goto_0
    const-string/jumbo v11, "rN"

    .line 143
    .line 144
    .line 145
    const-string v12, "bV"

    .line 146
    .line 147
    invoke-static {v9, v11, v8, v12}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-virtual {v8, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v2, "PROFILE_POLICY_RESTRICTION"

    .line 158
    .line 159
    invoke-virtual {v7, v8, v2}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_1
    iget-object v2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isAppSeparationUserId(I)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    .line 176
    .line 177
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-nez v9, :cond_9

    .line 182
    .line 183
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .line 184
    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-eqz v9, :cond_2

    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_2
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_3

    .line 208
    .line 209
    iget-object p0, v7, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-eqz p0, :cond_15

    .line 216
    .line 217
    new-instance p0, Landroid/os/Bundle;

    .line 218
    .line 219
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-virtual {p0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    const-string p1, "WORK_MODE_ON"

    .line 230
    .line 231
    invoke-virtual {v7, p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_b

    .line 235
    .line 236
    :cond_3
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 237
    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_4

    .line 247
    .line 248
    iget-object p0, v7, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 249
    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-eqz p0, :cond_15

    .line 255
    .line 256
    new-instance p0, Landroid/os/Bundle;

    .line 257
    .line 258
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    invoke-virtual {p0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    const-string p1, "WORK_MODE_OFF"

    .line 269
    .line 270
    invoke-virtual {v7, p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_b

    .line 274
    .line 275
    :cond_4
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 276
    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_7

    .line 286
    .line 287
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 288
    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_5

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_5
    const-string/jumbo v1, "samsung.knox.intent.action.rcp.MOVEMENT"

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_6

    .line 312
    .line 313
    const-string/jumbo p0, "move_to_knox"

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, p0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    iget-object p2, v7, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 321
    .line 322
    invoke-virtual {p2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 323
    .line 324
    .line 325
    move-result p2

    .line 326
    if-eqz p2, :cond_15

    .line 327
    .line 328
    new-instance p2, Landroid/os/Bundle;

    .line 329
    .line 330
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    .line 339
    .line 340
    const-string/jumbo p1, "move"

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    .line 345
    .line 346
    const-string p0, "MOVE_TO_KNOX_FILE"

    .line 347
    .line 348
    invoke-virtual {v7, p2, p0}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_b

    .line 352
    .line 353
    :cond_6
    const-string/jumbo v1, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result p2

    .line 364
    if-eqz p2, :cond_15

    .line 365
    .line 366
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    .line 367
    .line 368
    invoke-virtual {p0, v0, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    .line 374
    .line 375
    goto/16 :goto_b

    .line 376
    .line 377
    :cond_7
    :goto_1
    iget p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 378
    .line 379
    invoke-virtual {v2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    if-eqz p1, :cond_8

    .line 384
    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 386
    .line 387
    .line 388
    move-result-wide p1

    .line 389
    iget-wide v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    .line 390
    .line 391
    sub-long/2addr p1, v0

    .line 392
    iget v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 393
    .line 394
    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/knox/KnoxAnalyticsContainer;->checkTimeAndSendAnalytics(ILjava/lang/String;J)V

    .line 397
    .line 398
    .line 399
    :cond_8
    iput v4, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 400
    .line 401
    const-string p1, ""

    .line 402
    .line 403
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 406
    .line 407
    .line 408
    move-result-wide p1

    .line 409
    iput-wide p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    .line 410
    .line 411
    goto/16 :goto_b

    .line 412
    .line 413
    :cond_9
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    if-nez v0, :cond_a

    .line 418
    .line 419
    goto/16 :goto_b

    .line 420
    .line 421
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 430
    .line 431
    .line 432
    move-result v9

    .line 433
    const-string v11, "add"

    .line 434
    .line 435
    if-eqz v9, :cond_b

    .line 436
    .line 437
    new-instance p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 438
    .line 439
    const-string p1, "KNOX_DUALDAR"

    .line 440
    .line 441
    const-string v1, "DUALDAR_PACKAGE_ADDED"

    .line 442
    .line 443
    invoke-direct {p0, p1, v5, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, v11, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 458
    .line 459
    .line 460
    new-instance p2, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string v1, "On Pkg Add, Data values : packageName = "

    .line 463
    .line 464
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v0, ", add = "

    .line 471
    .line 472
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    const-string p2, "PersonaManagerService:DualDARAnalytics"

    .line 483
    .line 484
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const-string v0, "Payload / "

    .line 490
    .line 491
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_b

    .line 512
    .line 513
    :cond_b
    invoke-virtual {v2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-eqz v2, :cond_15

    .line 518
    .line 519
    if-eqz v8, :cond_10

    .line 520
    .line 521
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p2

    .line 525
    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result p2

    .line 529
    const-string v2, "PACKAGE_INFO"

    .line 530
    .line 531
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 532
    .line 533
    iget-object v6, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 534
    .line 535
    :try_start_1
    invoke-virtual {v6, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getVisibleApps(I)Ljava/util/Set;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    check-cast v7, Landroid/util/ArraySet;

    .line 540
    .line 541
    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 542
    .line 543
    .line 544
    move-result-object v7

    .line 545
    move v8, v4

    .line 546
    :cond_c
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 547
    .line 548
    .line 549
    move-result v9

    .line 550
    if-eqz v9, :cond_d

    .line 551
    .line 552
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v9

    .line 556
    check-cast v9, Ljava/lang/String;

    .line 557
    .line 558
    invoke-static {p1, v9}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 559
    .line 560
    .line 561
    move-result-object v9

    .line 562
    iget-object v10, v6, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 563
    .line 564
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    .line 568
    .line 569
    .line 570
    move-result v9

    .line 571
    if-nez v9, :cond_c

    .line 572
    .line 573
    add-int/2addr v8, v5

    .line 574
    goto :goto_3

    .line 575
    :catch_1
    move-exception p0

    .line 576
    goto :goto_5

    .line 577
    :cond_d
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    if-eqz p1, :cond_e

    .line 582
    .line 583
    const-string v1, "APP_SEPARATION_APP_LIST"

    .line 584
    .line 585
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    :cond_e
    new-instance p1, Landroid/os/Bundle;

    .line 590
    .line 591
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 592
    .line 593
    .line 594
    const-string v5, "e"

    .line 595
    .line 596
    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1, v11, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    .line 604
    .line 605
    const-string/jumbo p2, "noIP"

    .line 606
    .line 607
    .line 608
    invoke-virtual {p1, p2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    .line 610
    .line 611
    const-string/jumbo p2, "noWP"

    .line 612
    .line 613
    .line 614
    if-nez v1, :cond_f

    .line 615
    .line 616
    goto :goto_4

    .line 617
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 618
    .line 619
    .line 620
    move-result v4

    .line 621
    :goto_4
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p0, p1, v2}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    .line 626
    .line 627
    goto/16 :goto_b

    .line 628
    .line 629
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 630
    .line 631
    .line 632
    goto/16 :goto_b

    .line 633
    .line 634
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object p0

    .line 638
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result p0

    .line 642
    iget-object p2, v7, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 643
    .line 644
    invoke-virtual {p2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    if-eqz v2, :cond_15

    .line 649
    .line 650
    iget-object v2, v7, Lcom/android/server/knox/BasicContainerAnalytics;->context:Landroid/content/Context;

    .line 651
    .line 652
    invoke-static {v2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    if-eqz v2, :cond_11

    .line 657
    .line 658
    goto/16 :goto_b

    .line 659
    .line 660
    :cond_11
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 668
    goto :goto_8

    .line 669
    :catch_2
    move-exception v2

    .line 670
    goto :goto_6

    .line 671
    :catch_3
    move-exception v2

    .line 672
    goto :goto_7

    .line 673
    :goto_6
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 674
    .line 675
    .line 676
    goto :goto_8

    .line 677
    :goto_7
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 678
    .line 679
    .line 680
    :goto_8
    new-instance v2, Landroid/os/Bundle;

    .line 681
    .line 682
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 683
    .line 684
    .line 685
    if-eqz v1, :cond_12

    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 688
    .line 689
    .line 690
    move-result v8

    .line 691
    if-nez v8, :cond_12

    .line 692
    .line 693
    const-string v8, "instN"

    .line 694
    .line 695
    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    :cond_12
    if-ne p0, v5, :cond_14

    .line 699
    .line 700
    iget-object p2, p2, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 701
    .line 702
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 703
    .line 704
    .line 705
    move-result-object p2

    .line 706
    new-instance v1, Landroid/content/Intent;

    .line 707
    .line 708
    const-string v8, "android.view.InputMethod"

    .line 709
    .line 710
    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    const v8, 0x808280

    .line 714
    .line 715
    .line 716
    invoke-virtual {p2, v1, v8, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 717
    .line 718
    .line 719
    move-result-object p2

    .line 720
    move v1, v4

    .line 721
    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 722
    .line 723
    .line 724
    move-result v8

    .line 725
    if-ge v1, v8, :cond_14

    .line 726
    .line 727
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v8

    .line 731
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 732
    .line 733
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 734
    .line 735
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 736
    .line 737
    const-string v10, "android.permission.BIND_INPUT_METHOD"

    .line 738
    .line 739
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    move-result v9

    .line 743
    if-eqz v9, :cond_13

    .line 744
    .line 745
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 746
    .line 747
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v8

    .line 751
    if-eqz v8, :cond_13

    .line 752
    .line 753
    move v4, v5

    .line 754
    goto :goto_a

    .line 755
    :cond_13
    add-int/2addr v1, v5

    .line 756
    goto :goto_9

    .line 757
    :cond_14
    :goto_a
    invoke-virtual {v7, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 758
    .line 759
    .line 760
    move-result p1

    .line 761
    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v2, v11, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    .line 769
    .line 770
    const-string p0, "ime"

    .line 771
    .line 772
    invoke-virtual {v2, p0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    .line 774
    .line 775
    const-string p0, "PACKAGE_CHANGED"

    .line 776
    .line 777
    invoke-virtual {v7, v2, p0}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    :cond_15
    :goto_b
    return-void

    .line 781
    :pswitch_1
    const-string v0, "Delete stub app. "

    .line 782
    .line 783
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 788
    .line 789
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    if-eqz v1, :cond_16

    .line 794
    .line 795
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 796
    .line 797
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 798
    .line 799
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PersonaManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 800
    .line 801
    .line 802
    :cond_16
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 803
    .line 804
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v6

    .line 808
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    if-eqz v1, :cond_17

    .line 813
    .line 814
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 815
    .line 816
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 817
    .line 818
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PersonaManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 819
    .line 820
    .line 821
    :cond_17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object p1

    .line 825
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 826
    .line 827
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result p1

    .line 831
    const-string v6, "PersonaManagerService"

    .line 832
    .line 833
    if-eqz p1, :cond_19

    .line 834
    .line 835
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 836
    .line 837
    .line 838
    move-result-object p1

    .line 839
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object p1

    .line 843
    if-eqz p1, :cond_19

    .line 844
    .line 845
    const-string v7, "com.samsung.android.knox.containercore"

    .line 846
    .line 847
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    move-result v7

    .line 851
    if-eqz v7, :cond_19

    .line 852
    .line 853
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 854
    .line 855
    iget-object v7, v7, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 856
    .line 857
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 858
    .line 859
    .line 860
    move-result-object v7

    .line 861
    if-nez v7, :cond_18

    .line 862
    .line 863
    goto/16 :goto_12

    .line 864
    .line 865
    :cond_18
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 866
    .line 867
    .line 868
    move-result v8

    .line 869
    const/4 v9, 0x3

    .line 870
    if-ne v8, v9, :cond_19

    .line 871
    .line 872
    const-string v8, "enable container critical app !"

    .line 873
    .line 874
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .line 876
    .line 877
    invoke-virtual {v7, p1, v5, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 878
    .line 879
    .line 880
    :cond_19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object p1

    .line 884
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    move-result p1

    .line 888
    const-string v3, "android.intent.extra.user_handle"

    .line 889
    .line 890
    if-nez p1, :cond_1c

    .line 891
    .line 892
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object p1

    .line 896
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result p1

    .line 900
    if-eqz p1, :cond_1a

    .line 901
    .line 902
    goto :goto_f

    .line 903
    :cond_1a
    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 904
    .line 905
    .line 906
    move-result-object p1

    .line 907
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object p1

    .line 911
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 912
    .line 913
    .line 914
    move-result p2

    .line 915
    if-nez p2, :cond_1e

    .line 916
    .line 917
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 918
    .line 919
    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 920
    .line 921
    .line 922
    move-result-object p2

    .line 923
    invoke-virtual {p2, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 924
    .line 925
    .line 926
    move-result-object p2

    .line 927
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 928
    .line 929
    .line 930
    move-result v0

    .line 931
    if-ge v4, v0, :cond_1e

    .line 932
    .line 933
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    check-cast v0, Ljava/lang/Integer;

    .line 938
    .line 939
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    invoke-static {v0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isRequiredAppForKnox(ILjava/lang/String;)Z

    .line 944
    .line 945
    .line 946
    move-result v1

    .line 947
    if-eqz v1, :cond_1b

    .line 948
    .line 949
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 950
    .line 951
    invoke-virtual {v1, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 952
    .line 953
    .line 954
    goto :goto_d

    .line 955
    :catch_4
    move-exception p0

    .line 956
    goto :goto_e

    .line 957
    :cond_1b
    :goto_d
    add-int/2addr v4, v5

    .line 958
    goto :goto_c

    .line 959
    :goto_e
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 960
    .line 961
    .line 962
    goto :goto_12

    .line 963
    :cond_1c
    :goto_f
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 964
    .line 965
    .line 966
    move-result-object p1

    .line 967
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object p1

    .line 971
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 972
    .line 973
    .line 974
    move-result p2

    .line 975
    invoke-static {p2, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isDisallowedAppForKnox(ILjava/lang/String;)Z

    .line 976
    .line 977
    .line 978
    move-result v1

    .line 979
    if-eqz v1, :cond_1d

    .line 980
    .line 981
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 982
    .line 983
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)Z

    .line 984
    .line 985
    .line 986
    goto :goto_10

    .line 987
    :catch_5
    move-exception p0

    .line 988
    goto :goto_11

    .line 989
    :cond_1d
    :goto_10
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 990
    .line 991
    .line 992
    move-result v1

    .line 993
    if-eqz v1, :cond_1e

    .line 994
    .line 995
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 996
    .line 997
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 998
    .line 999
    .line 1000
    move-result v1

    .line 1001
    if-eqz v1, :cond_1e

    .line 1002
    .line 1003
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1004
    .line 1005
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1006
    .line 1007
    .line 1008
    :try_start_6
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->requiredApps:Ljava/util/List;

    .line 1009
    .line 1010
    if-eqz v2, :cond_1e

    .line 1011
    .line 1012
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    if-eqz v2, :cond_1e

    .line 1017
    .line 1018
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PersonaManagerService;->getLaunchableApps(I)Ljava/util/Set;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    check-cast v1, Landroid/util/ArraySet;

    .line 1023
    .line 1024
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1025
    .line 1026
    .line 1027
    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1028
    if-eqz v1, :cond_1e

    .line 1029
    .line 1030
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    .line 1037
    .line 1038
    const-string v0, " / "

    .line 1039
    .line 1040
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    .line 1052
    .line 1053
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1054
    .line 1055
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)Z

    .line 1056
    .line 1057
    .line 1058
    goto :goto_12

    .line 1059
    :catch_6
    move-exception p0

    .line 1060
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1061
    .line 1062
    .line 1063
    goto :goto_12

    .line 1064
    :goto_11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1065
    .line 1066
    .line 1067
    :cond_1e
    :goto_12
    return-void

    .line 1068
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    const-string v0, "FingerPrint data changed, action: "

    .line 1071
    .line 1072
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object p2

    .line 1079
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object p1

    .line 1086
    const-string p2, "PersonaManagerService"

    .line 1087
    .line 1088
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    .line 1090
    .line 1091
    new-instance p1, Landroid/os/Bundle;

    .line 1092
    .line 1093
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1094
    .line 1095
    .line 1096
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1097
    .line 1098
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 1099
    .line 1100
    const-string p2, "android.intent.extra.user_handle"

    .line 1101
    .line 1102
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1103
    .line 1104
    .line 1105
    const-string p0, "knox.container.proxy.EVENT_FINGERPRINT_CHANGE"

    .line 1106
    .line 1107
    invoke-static {p0, p1}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1108
    .line 1109
    .line 1110
    return-void

    .line 1111
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    const-string v0, "SetupWizardCompleteReceiver, action:   "

    .line 1114
    .line 1115
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object p2

    .line 1122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object p1

    .line 1129
    const-string p2, "PersonaManagerService"

    .line 1130
    .line 1131
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    .line 1133
    .line 1134
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1135
    .line 1136
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 1137
    .line 1138
    .line 1139
    move-result-object p1

    .line 1140
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1141
    .line 1142
    sget-object p2, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 1143
    .line 1144
    invoke-virtual {p1, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 1145
    .line 1146
    .line 1147
    move-result-object p1

    .line 1148
    if-eqz p1, :cond_28

    .line 1149
    .line 1150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1151
    .line 1152
    .line 1153
    move-result-object p1

    .line 1154
    :cond_1f
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1155
    .line 1156
    .line 1157
    move-result p2

    .line 1158
    if-eqz p2, :cond_28

    .line 1159
    .line 1160
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object p2

    .line 1164
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 1165
    .line 1166
    if-eqz p2, :cond_20

    .line 1167
    .line 1168
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 1169
    .line 1170
    .line 1171
    move-result v0

    .line 1172
    if-eqz v0, :cond_20

    .line 1173
    .line 1174
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 1175
    .line 1176
    .line 1177
    move-result p2

    .line 1178
    if-eqz p2, :cond_21

    .line 1179
    .line 1180
    :cond_20
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 1181
    .line 1182
    .line 1183
    move-result p2

    .line 1184
    if-eqz p2, :cond_1f

    .line 1185
    .line 1186
    :cond_21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1187
    .line 1188
    .line 1189
    move-result-object p2

    .line 1190
    const-string/jumbo v0, "samsung_errorlog_agree"

    .line 1191
    .line 1192
    .line 1193
    invoke-static {p2, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1194
    .line 1195
    .line 1196
    move-result p2

    .line 1197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v1

    .line 1201
    const-string/jumbo v2, "marketing_info_agree"

    .line 1202
    .line 1203
    .line 1204
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1205
    .line 1206
    .line 1207
    move-result v1

    .line 1208
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    const-string v5, "1. errorLogAgree = "

    .line 1211
    .line 1212
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v3

    .line 1222
    const-string v5, "ContainerDependencyWrapper"

    .line 1223
    .line 1224
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    .line 1226
    .line 1227
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    const-string v6, "1. marketingInfoAgree = "

    .line 1230
    .line 1231
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v3

    .line 1241
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    .line 1243
    .line 1244
    if-nez p2, :cond_22

    .line 1245
    .line 1246
    if-nez v1, :cond_22

    .line 1247
    .line 1248
    goto/16 :goto_15

    .line 1249
    .line 1250
    :cond_22
    const v3, 0x10407ba

    .line 1251
    .line 1252
    .line 1253
    const v6, 0x104047c

    .line 1254
    .line 1255
    .line 1256
    const-string v7, "\n - "

    .line 1257
    .line 1258
    if-eqz p2, :cond_24

    .line 1259
    .line 1260
    if-eqz v1, :cond_24

    .line 1261
    .line 1262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1263
    .line 1264
    .line 1265
    move-result-object p2

    .line 1266
    invoke-static {p2, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1270
    .line 1271
    .line 1272
    move-result-object p2

    .line 1273
    invoke-static {p2, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1274
    .line 1275
    .line 1276
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    const-string v1, "2. errorLogAgree = "

    .line 1279
    .line 1280
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v1

    .line 1287
    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1288
    .line 1289
    .line 1290
    move-result v0

    .line 1291
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object p2

    .line 1298
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    .line 1300
    .line 1301
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    const-string v0, "2. marketingInfoAgree = "

    .line 1304
    .line 1305
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1313
    .line 1314
    .line 1315
    move-result v0

    .line 1316
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object p2

    .line 1323
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    .line 1325
    .line 1326
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isTablet()Z

    .line 1327
    .line 1328
    .line 1329
    move-result p2

    .line 1330
    if-eqz p2, :cond_23

    .line 1331
    .line 1332
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1335
    .line 1336
    .line 1337
    const v0, 0x1040cbf

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v0

    .line 1344
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0

    .line 1354
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v0

    .line 1364
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object p2

    .line 1371
    goto/16 :goto_14

    .line 1372
    .line 1373
    :cond_23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1376
    .line 1377
    .line 1378
    const v0, 0x1040cbe

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v0

    .line 1385
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v0

    .line 1395
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1409
    .line 1410
    .line 1411
    move-result-object p2

    .line 1412
    goto/16 :goto_14

    .line 1413
    .line 1414
    :cond_24
    const v8, 0x1040cbc

    .line 1415
    .line 1416
    .line 1417
    const v9, 0x1040cbd

    .line 1418
    .line 1419
    .line 1420
    if-eqz p2, :cond_26

    .line 1421
    .line 1422
    if-nez v1, :cond_26

    .line 1423
    .line 1424
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1425
    .line 1426
    .line 1427
    move-result-object p2

    .line 1428
    invoke-static {p2, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1429
    .line 1430
    .line 1431
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    const-string v1, "3. errorLogAgree = "

    .line 1434
    .line 1435
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v1

    .line 1442
    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1443
    .line 1444
    .line 1445
    move-result v0

    .line 1446
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1450
    .line 1451
    .line 1452
    move-result-object p2

    .line 1453
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .line 1455
    .line 1456
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1457
    .line 1458
    const-string v0, "3. marketingInfoAgree = "

    .line 1459
    .line 1460
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v0

    .line 1467
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1468
    .line 1469
    .line 1470
    move-result v0

    .line 1471
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1475
    .line 1476
    .line 1477
    move-result-object p2

    .line 1478
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    .line 1480
    .line 1481
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isTablet()Z

    .line 1482
    .line 1483
    .line 1484
    move-result p2

    .line 1485
    if-eqz p2, :cond_25

    .line 1486
    .line 1487
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1490
    .line 1491
    .line 1492
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v0

    .line 1496
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v0

    .line 1506
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1510
    .line 1511
    .line 1512
    move-result-object p2

    .line 1513
    goto/16 :goto_14

    .line 1514
    .line 1515
    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1516
    .line 1517
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1518
    .line 1519
    .line 1520
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v0

    .line 1524
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v0

    .line 1534
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    .line 1536
    .line 1537
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1538
    .line 1539
    .line 1540
    move-result-object p2

    .line 1541
    goto :goto_14

    .line 1542
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1543
    .line 1544
    .line 1545
    move-result-object p2

    .line 1546
    invoke-static {p2, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1547
    .line 1548
    .line 1549
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    const-string v1, "4. errorLogAgree = "

    .line 1552
    .line 1553
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v1

    .line 1560
    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1561
    .line 1562
    .line 1563
    move-result v0

    .line 1564
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1568
    .line 1569
    .line 1570
    move-result-object p2

    .line 1571
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    .line 1573
    .line 1574
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1575
    .line 1576
    const-string v0, "4. marketingInfoAgree = "

    .line 1577
    .line 1578
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v0

    .line 1585
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1586
    .line 1587
    .line 1588
    move-result v0

    .line 1589
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1590
    .line 1591
    .line 1592
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1593
    .line 1594
    .line 1595
    move-result-object p2

    .line 1596
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    .line 1598
    .line 1599
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isTablet()Z

    .line 1600
    .line 1601
    .line 1602
    move-result p2

    .line 1603
    if-eqz p2, :cond_27

    .line 1604
    .line 1605
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1606
    .line 1607
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1608
    .line 1609
    .line 1610
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v0

    .line 1614
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    .line 1619
    .line 1620
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v0

    .line 1624
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    .line 1626
    .line 1627
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1628
    .line 1629
    .line 1630
    move-result-object p2

    .line 1631
    goto :goto_14

    .line 1632
    :cond_27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1633
    .line 1634
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v0

    .line 1641
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    .line 1646
    .line 1647
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v0

    .line 1651
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    .line 1653
    .line 1654
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1655
    .line 1656
    .line 1657
    move-result-object p2

    .line 1658
    :goto_14
    invoke-static {p0, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1659
    .line 1660
    .line 1661
    move-result-object p2

    .line 1662
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 1663
    .line 1664
    .line 1665
    goto/16 :goto_13

    .line 1666
    .line 1667
    :cond_28
    :goto_15
    return-void

    .line 1668
    :pswitch_4
    const-string v2, "caller_id_to_show_"

    .line 1669
    .line 1670
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v6

    .line 1674
    const-string v7, "android.intent.extra.user_handle"

    .line 1675
    .line 1676
    const/4 v8, -0x1

    .line 1677
    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1678
    .line 1679
    .line 1680
    move-result v7

    .line 1681
    const-string v9, "PersonaManagerService"

    .line 1682
    .line 1683
    const-string v10, "UserReceiver.onReceive() {action:"

    .line 1684
    .line 1685
    const-string v11, " userHandle:"

    .line 1686
    .line 1687
    const-string/jumbo v12, "}"

    .line 1688
    .line 1689
    .line 1690
    invoke-static {v7, v10, v6, v11, v12}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v10

    .line 1694
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    .line 1696
    .line 1697
    const-string v9, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 1698
    .line 1699
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1700
    .line 1701
    .line 1702
    move-result v9

    .line 1703
    const-wide/32 v10, 0xea60

    .line 1704
    .line 1705
    .line 1706
    if-eqz v9, :cond_2e

    .line 1707
    .line 1708
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1709
    .line 1710
    iput-boolean v4, v0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 1711
    .line 1712
    const-string v0, "android.intent.extra.USER"

    .line 1713
    .line 1714
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v0

    .line 1718
    check-cast v0, Landroid/os/UserHandle;

    .line 1719
    .line 1720
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1721
    .line 1722
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 1723
    .line 1724
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1725
    .line 1726
    .line 1727
    move-result v6

    .line 1728
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1729
    .line 1730
    .line 1731
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 1732
    .line 1733
    .line 1734
    move-result v3

    .line 1735
    if-eqz v3, :cond_29

    .line 1736
    .line 1737
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1738
    .line 1739
    .line 1740
    move-result v3

    .line 1741
    const/16 v6, 0x12

    .line 1742
    .line 1743
    invoke-static {p1, v3, v6}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 1744
    .line 1745
    .line 1746
    :cond_29
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1747
    .line 1748
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 1749
    .line 1750
    .line 1751
    move-result-object p1

    .line 1752
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1753
    .line 1754
    .line 1755
    move-result v3

    .line 1756
    invoke-virtual {p1, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 1757
    .line 1758
    .line 1759
    move-result-object p1

    .line 1760
    :try_start_8
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1761
    .line 1762
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1763
    .line 1764
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v3

    .line 1768
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1769
    .line 1770
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1771
    .line 1772
    .line 1773
    iget-object v2, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1774
    .line 1775
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    .line 1777
    .line 1778
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v2

    .line 1782
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v2

    .line 1786
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1787
    .line 1788
    iget-object v6, v6, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Lcom/android/server/pm/PersonaManagerService$7;

    .line 1789
    .line 1790
    invoke-virtual {v3, v2, v4, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1791
    .line 1792
    .line 1793
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1794
    .line 1795
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    .line 1796
    .line 1797
    iget-object v3, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1798
    .line 1799
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1800
    .line 1801
    .line 1802
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1803
    .line 1804
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 1805
    .line 1806
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1807
    .line 1808
    .line 1809
    move-result v3

    .line 1810
    invoke-virtual {v2, v3}, Lcom/android/server/knox/KnoxAnalyticsContainer;->knoxAnalyticsContainer(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1811
    .line 1812
    .line 1813
    goto :goto_16

    .line 1814
    :catch_7
    move-exception v2

    .line 1815
    const-string v3, "PersonaManagerService"

    .line 1816
    .line 1817
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1818
    .line 1819
    const-string v6, "DUAL_DAR_USER_ADDED KA failed : "

    .line 1820
    .line 1821
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1822
    .line 1823
    .line 1824
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v2

    .line 1831
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    .line 1833
    .line 1834
    :goto_16
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1835
    .line 1836
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 1837
    .line 1838
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$2$1;

    .line 1839
    .line 1840
    invoke-direct {v3, p0, v0, p2}, Lcom/android/server/pm/PersonaManagerService$2$1;-><init>(Lcom/android/server/pm/PersonaManagerService$2;Landroid/os/UserHandle;Landroid/content/Intent;)V

    .line 1841
    .line 1842
    .line 1843
    invoke-virtual {v2, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1847
    .line 1848
    .line 1849
    move-result p2

    .line 1850
    const/16 v2, 0x5f

    .line 1851
    .line 1852
    if-ge p2, v2, :cond_2a

    .line 1853
    .line 1854
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1855
    .line 1856
    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->registerPackageReceiver()V

    .line 1857
    .line 1858
    .line 1859
    :cond_2a
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1860
    .line 1861
    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 1862
    .line 1863
    .line 1864
    move-result p2

    .line 1865
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1866
    .line 1867
    if-ne p2, v2, :cond_2b

    .line 1868
    .line 1869
    const-string p2, "PersonaManagerService"

    .line 1870
    .line 1871
    const-string v2, "App Separation user added. Notify to KSP"

    .line 1872
    .line 1873
    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    .line 1875
    .line 1876
    new-instance p2, Landroid/content/Intent;

    .line 1877
    .line 1878
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 1879
    .line 1880
    .line 1881
    const-string v2, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    .line 1882
    .line 1883
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1884
    .line 1885
    .line 1886
    const-string/jumbo v2, "type"

    .line 1887
    .line 1888
    .line 1889
    const-string v3, "activate"

    .line 1890
    .line 1891
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1892
    .line 1893
    .line 1894
    const-string/jumbo v2, "status"

    .line 1895
    .line 1896
    .line 1897
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1898
    .line 1899
    .line 1900
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1901
    .line 1902
    invoke-virtual {v2, p2}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 1903
    .line 1904
    .line 1905
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1906
    .line 1907
    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    .line 1908
    .line 1909
    .line 1910
    :cond_2b
    :try_start_9
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1911
    .line 1912
    iget-object p2, p2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1913
    .line 1914
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1915
    .line 1916
    .line 1917
    move-result v2

    .line 1918
    sget-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1919
    .line 1920
    if-nez v3, :cond_2c

    .line 1921
    .line 1922
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1923
    .line 1924
    invoke-direct {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 1925
    .line 1926
    .line 1927
    sput-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1928
    .line 1929
    :cond_2c
    sget-object p2, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1930
    .line 1931
    invoke-virtual {p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 1932
    .line 1933
    .line 1934
    move-result p2

    .line 1935
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v2

    .line 1939
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1940
    .line 1941
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1942
    .line 1943
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1944
    .line 1945
    .line 1946
    move-result v4

    .line 1947
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 1948
    .line 1949
    invoke-direct {v6, p2, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 1950
    .line 1951
    .line 1952
    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 1953
    .line 1954
    .line 1955
    move-result-object p2

    .line 1956
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    .line 1957
    .line 1958
    .line 1959
    move-result-object p2

    .line 1960
    invoke-virtual {p2, v5, v1}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->enableNFC(ZLandroid/os/Bundle;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1961
    .line 1962
    .line 1963
    goto :goto_17

    .line 1964
    :catch_8
    move-exception p2

    .line 1965
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1966
    .line 1967
    .line 1968
    :goto_17
    :try_start_a
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1969
    .line 1970
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1971
    .line 1972
    .line 1973
    move-result p2

    .line 1974
    invoke-static {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 1975
    .line 1976
    .line 1977
    goto :goto_18

    .line 1978
    :catch_9
    move-exception p0

    .line 1979
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1980
    .line 1981
    .line 1982
    :goto_18
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1983
    .line 1984
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1985
    .line 1986
    .line 1987
    move-result p0

    .line 1988
    if-eqz p0, :cond_2d

    .line 1989
    .line 1990
    const-string p0, "PersonaManagerService"

    .line 1991
    .line 1992
    const-string/jumbo p1, "set secure folder available state true"

    .line 1993
    .line 1994
    .line 1995
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    .line 1997
    .line 1998
    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    .line 1999
    .line 2000
    .line 2001
    const-string/jumbo p1, "true"

    .line 2002
    .line 2003
    .line 2004
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    .line 2006
    .line 2007
    :cond_2d
    const-string p0, "PersonaManagerService"

    .line 2008
    .line 2009
    const-string p1, "ACTION_MANAGED_PROFILE_ADDED :: SystemProperties.set persist.sys.knox.provisioning_in_progress 0"

    .line 2010
    .line 2011
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    .line 2013
    .line 2014
    const-string/jumbo p0, "persist.sys.knox.provisioning_in_progress"

    .line 2015
    .line 2016
    .line 2017
    const-string p1, "0"

    .line 2018
    .line 2019
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    .line 2021
    .line 2022
    goto/16 :goto_1e

    .line 2023
    .line 2024
    :cond_2e
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 2025
    .line 2026
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2027
    .line 2028
    .line 2029
    move-result v1

    .line 2030
    if-eqz v1, :cond_31

    .line 2031
    .line 2032
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2033
    .line 2034
    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 2035
    .line 2036
    .line 2037
    move-result-object p2

    .line 2038
    invoke-virtual {p2, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 2039
    .line 2040
    .line 2041
    move-result-object p2

    .line 2042
    new-instance v0, Landroid/os/Bundle;

    .line 2043
    .line 2044
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2045
    .line 2046
    .line 2047
    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_USER_INFO:Ljava/lang/String;

    .line 2048
    .line 2049
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2050
    .line 2051
    .line 2052
    const/16 p2, 0xa

    .line 2053
    .line 2054
    invoke-static {p1, v7, p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 2055
    .line 2056
    .line 2057
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2058
    .line 2059
    iget-object v1, p1, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 2060
    .line 2061
    monitor-enter v1

    .line 2062
    :try_start_b
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2063
    .line 2064
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 2065
    .line 2066
    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2067
    .line 2068
    .line 2069
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2070
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2071
    .line 2072
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 2073
    .line 2074
    monitor-enter p1

    .line 2075
    :try_start_c
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2076
    .line 2077
    iget-object p2, p2, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 2078
    .line 2079
    invoke-virtual {p2, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2080
    .line 2081
    .line 2082
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2083
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2084
    .line 2085
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    .line 2086
    .line 2087
    invoke-virtual {p1, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 2088
    .line 2089
    .line 2090
    move-result-object p1

    .line 2091
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2092
    .line 2093
    iget-object p2, p2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 2094
    .line 2095
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 2096
    .line 2097
    iget-object v1, p2, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 2098
    .line 2099
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2100
    .line 2101
    .line 2102
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2103
    .line 2104
    .line 2105
    move-result v1

    .line 2106
    if-eqz v1, :cond_2f

    .line 2107
    .line 2108
    goto :goto_19

    .line 2109
    :cond_2f
    iget-object p2, p2, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 2110
    .line 2111
    iget-object v1, p2, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 2112
    .line 2113
    invoke-virtual {v1, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 2114
    .line 2115
    .line 2116
    move-result v1

    .line 2117
    if-eqz v1, :cond_30

    .line 2118
    .line 2119
    new-instance v1, Landroid/os/Bundle;

    .line 2120
    .line 2121
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2122
    .line 2123
    .line 2124
    const-string v2, "cTp"

    .line 2125
    .line 2126
    invoke-virtual {p2, v0}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 2127
    .line 2128
    .line 2129
    move-result v0

    .line 2130
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2131
    .line 2132
    .line 2133
    const-string v0, "WORK_PROFILE_REMOVED"

    .line 2134
    .line 2135
    invoke-virtual {p2, v1, v0}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2136
    .line 2137
    .line 2138
    :cond_30
    :goto_19
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2139
    .line 2140
    iput-boolean v4, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 2141
    .line 2142
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 2143
    .line 2144
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2145
    .line 2146
    .line 2147
    move-result p0

    .line 2148
    if-eqz p0, :cond_3f

    .line 2149
    .line 2150
    const-string p0, "PersonaManagerService"

    .line 2151
    .line 2152
    const-string/jumbo p1, "set secure folder available state false"

    .line 2153
    .line 2154
    .line 2155
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    .line 2157
    .line 2158
    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    .line 2159
    .line 2160
    .line 2161
    const-string p1, "false"

    .line 2162
    .line 2163
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    .line 2165
    .line 2166
    goto/16 :goto_1e

    .line 2167
    .line 2168
    :catchall_0
    move-exception p0

    .line 2169
    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2170
    throw p0

    .line 2171
    :catchall_1
    move-exception p0

    .line 2172
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2173
    throw p0

    .line 2174
    :cond_31
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 2175
    .line 2176
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2177
    .line 2178
    .line 2179
    move-result v1

    .line 2180
    const/4 v2, 0x5

    .line 2181
    if-eqz v1, :cond_36

    .line 2182
    .line 2183
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2184
    .line 2185
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 2186
    .line 2187
    .line 2188
    move-result-object p1

    .line 2189
    invoke-virtual {p1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 2190
    .line 2191
    .line 2192
    move-result-object p1

    .line 2193
    :goto_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2194
    .line 2195
    .line 2196
    move-result p2

    .line 2197
    if-ge v4, p2, :cond_33

    .line 2198
    .line 2199
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2200
    .line 2201
    .line 2202
    move-result-object p2

    .line 2203
    check-cast p2, Ljava/lang/Integer;

    .line 2204
    .line 2205
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 2206
    .line 2207
    .line 2208
    move-result p2

    .line 2209
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2210
    .line 2211
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 2212
    .line 2213
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2214
    .line 2215
    .line 2216
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2217
    .line 2218
    .line 2219
    move-result v0

    .line 2220
    if-eqz v0, :cond_32

    .line 2221
    .line 2222
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2223
    .line 2224
    .line 2225
    move-result v0

    .line 2226
    if-nez v0, :cond_32

    .line 2227
    .line 2228
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2229
    .line 2230
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2231
    .line 2232
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 2233
    .line 2234
    .line 2235
    move-result v0

    .line 2236
    if-nez v0, :cond_32

    .line 2237
    .line 2238
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2239
    .line 2240
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2241
    .line 2242
    invoke-static {v0, p2, v2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2243
    .line 2244
    .line 2245
    :cond_32
    add-int/2addr v4, v5

    .line 2246
    goto :goto_1a

    .line 2247
    :cond_33
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2248
    .line 2249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2250
    .line 2251
    .line 2252
    const-string/jumbo p1, "persist.sys.knox.foresight.version"

    .line 2253
    .line 2254
    .line 2255
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2256
    .line 2257
    .line 2258
    move-result-object p1

    .line 2259
    if-eqz p1, :cond_3f

    .line 2260
    .line 2261
    const-string p2, ""

    .line 2262
    .line 2263
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2264
    .line 2265
    .line 2266
    move-result p1

    .line 2267
    if-nez p1, :cond_3f

    .line 2268
    .line 2269
    :try_start_f
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 2270
    .line 2271
    const-string/jumbo v0, "yyyy.MM.dd"

    .line 2272
    .line 2273
    .line 2274
    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2275
    .line 2276
    .line 2277
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2278
    .line 2279
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v0

    .line 2283
    const-string v1, "knox_foresight_regulary_check"

    .line 2284
    .line 2285
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v2

    .line 2289
    new-instance v3, Ljava/util/Date;

    .line 2290
    .line 2291
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 2292
    .line 2293
    .line 2294
    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2295
    .line 2296
    .line 2297
    move-result-object p1

    .line 2298
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2299
    .line 2300
    .line 2301
    move-result p2

    .line 2302
    if-nez p2, :cond_35

    .line 2303
    .line 2304
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2305
    .line 2306
    .line 2307
    move-result p2

    .line 2308
    if-nez p2, :cond_34

    .line 2309
    .line 2310
    goto :goto_1b

    .line 2311
    :cond_34
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 2312
    .line 2313
    const-string p2, "!isVersionCheckNeeded"

    .line 2314
    .line 2315
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    .line 2317
    .line 2318
    goto/16 :goto_1e

    .line 2319
    .line 2320
    :catch_a
    move-exception p1

    .line 2321
    goto :goto_1c

    .line 2322
    :cond_35
    :goto_1b
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 2323
    .line 2324
    const-string v2, "isVersionCheckNeeded"

    .line 2325
    .line 2326
    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    .line 2328
    .line 2329
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2330
    .line 2331
    .line 2332
    move-result-object p2

    .line 2333
    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2334
    .line 2335
    .line 2336
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 2337
    .line 2338
    .line 2339
    new-instance p1, Landroid/content/Intent;

    .line 2340
    .line 2341
    const-string p2, "com.samsung.android.knox.containercore.action.FORESIGHT_COMMAND"

    .line 2342
    .line 2343
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2344
    .line 2345
    .line 2346
    const-string p2, "com.samsung.android.knox.containercore"

    .line 2347
    .line 2348
    const-string v0, "com.samsung.android.knox.containercore.KnoxForesightCommandReceiver"

    .line 2349
    .line 2350
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2351
    .line 2352
    .line 2353
    const-string p2, "check"

    .line 2354
    .line 2355
    invoke-virtual {p1, p2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2356
    .line 2357
    .line 2358
    const/high16 p2, 0x10000000

    .line 2359
    .line 2360
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2361
    .line 2362
    .line 2363
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2364
    .line 2365
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2366
    .line 2367
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2368
    .line 2369
    .line 2370
    goto/16 :goto_1e

    .line 2371
    .line 2372
    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2373
    .line 2374
    .line 2375
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 2376
    .line 2377
    const-string p1, "!isVersionCheckNeeded exception."

    .line 2378
    .line 2379
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    .line 2381
    .line 2382
    goto/16 :goto_1e

    .line 2383
    .line 2384
    :cond_36
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 2385
    .line 2386
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2387
    .line 2388
    .line 2389
    move-result v1

    .line 2390
    if-eqz v1, :cond_38

    .line 2391
    .line 2392
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2393
    .line 2394
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 2395
    .line 2396
    .line 2397
    move-result-object p1

    .line 2398
    invoke-virtual {p1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 2399
    .line 2400
    .line 2401
    move-result-object p1

    .line 2402
    :goto_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2403
    .line 2404
    .line 2405
    move-result p2

    .line 2406
    if-ge v4, p2, :cond_3f

    .line 2407
    .line 2408
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2409
    .line 2410
    .line 2411
    move-result-object p2

    .line 2412
    check-cast p2, Ljava/lang/Integer;

    .line 2413
    .line 2414
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 2415
    .line 2416
    .line 2417
    move-result p2

    .line 2418
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2419
    .line 2420
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 2421
    .line 2422
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2423
    .line 2424
    .line 2425
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2426
    .line 2427
    .line 2428
    move-result v0

    .line 2429
    if-eqz v0, :cond_37

    .line 2430
    .line 2431
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2432
    .line 2433
    .line 2434
    move-result v0

    .line 2435
    if-nez v0, :cond_37

    .line 2436
    .line 2437
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2438
    .line 2439
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2440
    .line 2441
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 2442
    .line 2443
    .line 2444
    move-result v0

    .line 2445
    if-nez v0, :cond_37

    .line 2446
    .line 2447
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2448
    .line 2449
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2450
    .line 2451
    const/16 v1, 0x13

    .line 2452
    .line 2453
    invoke-static {v0, p2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2454
    .line 2455
    .line 2456
    :cond_37
    add-int/2addr v4, v5

    .line 2457
    goto :goto_1d

    .line 2458
    :cond_38
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 2459
    .line 2460
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2461
    .line 2462
    .line 2463
    move-result v1

    .line 2464
    if-eqz v1, :cond_39

    .line 2465
    .line 2466
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2467
    .line 2468
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2469
    .line 2470
    invoke-static {p1, v7, v2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2471
    .line 2472
    .line 2473
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2474
    .line 2475
    iget-object v1, p1, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 2476
    .line 2477
    monitor-enter v1

    .line 2478
    :try_start_10
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2479
    .line 2480
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 2481
    .line 2482
    invoke-virtual {p0, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2483
    .line 2484
    .line 2485
    monitor-exit v1

    .line 2486
    goto/16 :goto_1e

    .line 2487
    .line 2488
    :catchall_2
    move-exception p0

    .line 2489
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 2490
    throw p0

    .line 2491
    :cond_39
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 2492
    .line 2493
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2494
    .line 2495
    .line 2496
    move-result v1

    .line 2497
    if-eqz v1, :cond_3a

    .line 2498
    .line 2499
    invoke-static {p1, v7, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2500
    .line 2501
    .line 2502
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2503
    .line 2504
    iget-object v0, p1, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 2505
    .line 2506
    monitor-enter v0

    .line 2507
    :try_start_11
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2508
    .line 2509
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 2510
    .line 2511
    invoke-virtual {p0, v7, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2512
    .line 2513
    .line 2514
    monitor-exit v0

    .line 2515
    goto/16 :goto_1e

    .line 2516
    .line 2517
    :catchall_3
    move-exception p0

    .line 2518
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 2519
    throw p0

    .line 2520
    :cond_3a
    const-string v0, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 2521
    .line 2522
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2523
    .line 2524
    .line 2525
    move-result v0

    .line 2526
    if-eqz v0, :cond_3c

    .line 2527
    .line 2528
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 2529
    .line 2530
    .line 2531
    move-result v0

    .line 2532
    if-eqz v0, :cond_3b

    .line 2533
    .line 2534
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2535
    .line 2536
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->registerPackageReceiver()V

    .line 2537
    .line 2538
    .line 2539
    invoke-static {p1, v4, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2540
    .line 2541
    .line 2542
    :cond_3b
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2543
    .line 2544
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 2545
    .line 2546
    new-instance v0, Lcom/android/server/pm/PersonaManagerService$2$2;

    .line 2547
    .line 2548
    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/PersonaManagerService$2$2;-><init>(Lcom/android/server/pm/PersonaManagerService$2;Landroid/content/Intent;)V

    .line 2549
    .line 2550
    .line 2551
    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2552
    .line 2553
    .line 2554
    const-string p0, "PersonaManagerService"

    .line 2555
    .line 2556
    const-string p1, "ACTION_DEVICE_OWNER_CHANGED :: SystemProperties.set persist.sys.knox.provisioning_in_progress 0"

    .line 2557
    .line 2558
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    .line 2560
    .line 2561
    const-string/jumbo p0, "persist.sys.knox.provisioning_in_progress"

    .line 2562
    .line 2563
    .line 2564
    const-string p1, "0"

    .line 2565
    .line 2566
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    .line 2568
    .line 2569
    goto :goto_1e

    .line 2570
    :cond_3c
    const-string p0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 2571
    .line 2572
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2573
    .line 2574
    .line 2575
    move-result p0

    .line 2576
    if-eqz p0, :cond_3d

    .line 2577
    .line 2578
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2579
    .line 2580
    .line 2581
    move-result p0

    .line 2582
    if-eqz p0, :cond_3f

    .line 2583
    .line 2584
    const-string p0, "PersonaManagerService"

    .line 2585
    .line 2586
    const-string/jumbo p1, "set secure folder available state true"

    .line 2587
    .line 2588
    .line 2589
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    .line 2591
    .line 2592
    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    .line 2593
    .line 2594
    .line 2595
    const-string/jumbo p1, "true"

    .line 2596
    .line 2597
    .line 2598
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    .line 2600
    .line 2601
    goto :goto_1e

    .line 2602
    :cond_3d
    const-string p0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 2603
    .line 2604
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2605
    .line 2606
    .line 2607
    move-result p0

    .line 2608
    if-eqz p0, :cond_3f

    .line 2609
    .line 2610
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2611
    .line 2612
    .line 2613
    move-result p0

    .line 2614
    if-eqz p0, :cond_3e

    .line 2615
    .line 2616
    const-string p0, "PersonaManagerService"

    .line 2617
    .line 2618
    const-string/jumbo p1, "set secure folder available state false"

    .line 2619
    .line 2620
    .line 2621
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    .line 2623
    .line 2624
    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    .line 2625
    .line 2626
    .line 2627
    const-string p1, "false"

    .line 2628
    .line 2629
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    .line 2631
    .line 2632
    goto :goto_1e

    .line 2633
    :cond_3e
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2634
    .line 2635
    .line 2636
    move-result p0

    .line 2637
    if-eqz p0, :cond_3f

    .line 2638
    .line 2639
    const-string p0, "PersonaManagerService"

    .line 2640
    .line 2641
    const-string/jumbo p1, "managed profile unavailable state"

    .line 2642
    .line 2643
    .line 2644
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    .line 2646
    .line 2647
    const-string p0, "activity_task"

    .line 2648
    .line 2649
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2650
    .line 2651
    .line 2652
    move-result-object p0

    .line 2653
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2654
    .line 2655
    if-eqz p0, :cond_3f

    .line 2656
    .line 2657
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2658
    .line 2659
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeTaskByCmpName()V

    .line 2660
    .line 2661
    .line 2662
    :cond_3f
    :goto_1e
    return-void

    .line 2663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
