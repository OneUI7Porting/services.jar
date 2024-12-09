.class public final Lcom/android/server/pm/PackageInstallerSession$4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const-string v3, "PackageInstallerSession"

    .line 8
    .line 9
    const-string v4, "android.content.pm.extra.PRE_APPROVAL"

    .line 10
    .line 11
    const-string v5, "android.content.pm.extra.STATUS"

    .line 12
    .line 13
    const-string v6, "android.content.pm.extra.SESSION_ID"

    .line 14
    .line 15
    const/4 v7, 0x3

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x1

    .line 19
    packed-switch v2, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :goto_0
    move v1, v10

    .line 23
    goto/16 :goto_8

    .line 24
    .line 25
    :pswitch_0
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 26
    .line 27
    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntentIfNeeded(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 38
    .line 39
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    new-instance v14, Landroid/content/Intent;

    .line 41
    .line 42
    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 43
    .line 44
    .line 45
    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 46
    .line 47
    invoke-virtual {v14, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v14, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v14, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    :try_start_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v9}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v18

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v15, 0x0

    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    const/16 v17, 0x0

    .line 74
    .line 75
    invoke-virtual/range {v11 .. v18}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw v0

    .line 82
    :pswitch_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 83
    .line 84
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Ljava/lang/String;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 97
    .line 98
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Ljava/lang/String;

    .line 101
    .line 102
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v7, Ljava/lang/String;

    .line 105
    .line 106
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v8, Landroid/os/Bundle;

    .line 109
    .line 110
    iget-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 111
    .line 112
    move-object v12, v11

    .line 113
    check-cast v12, Landroid/content/IntentSender;

    .line 114
    .line 115
    iget v11, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 116
    .line 117
    iget v13, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 118
    .line 119
    if-ne v13, v10, :cond_1

    .line 120
    .line 121
    move v13, v10

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    move v13, v9

    .line 124
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 128
    .line 129
    iget-object v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    iget v15, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 138
    .line 139
    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 140
    .line 141
    if-ne v10, v11, :cond_4

    .line 142
    .line 143
    if-eqz v1, :cond_4

    .line 144
    .line 145
    if-eqz v8, :cond_2

    .line 146
    .line 147
    const-string v1, "android.intent.extra.REPLACING"

    .line 148
    .line 149
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_2

    .line 154
    .line 155
    move v1, v10

    .line 156
    goto :goto_2

    .line 157
    :cond_2
    move v1, v9

    .line 158
    :goto_2
    const-class v10, Landroid/app/admin/DevicePolicyManager;

    .line 159
    .line 160
    invoke-virtual {v14, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 165
    .line 166
    if-eqz v1, :cond_3

    .line 167
    .line 168
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v10, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;

    .line 173
    .line 174
    invoke-direct {v10, v14, v9}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;I)V

    .line 175
    .line 176
    .line 177
    const-string v9, "Core.PACKAGE_UPDATED_BY_DO"

    .line 178
    .line 179
    invoke-virtual {v1, v9, v10}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    goto :goto_3

    .line 184
    :cond_3
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    new-instance v9, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;

    .line 189
    .line 190
    const/4 v10, 0x1

    .line 191
    invoke-direct {v9, v14, v10}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;I)V

    .line 192
    .line 193
    .line 194
    const-string v10, "Core.PACKAGE_INSTALLED_BY_DO"

    .line 195
    .line 196
    invoke-virtual {v1, v10, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    :goto_3
    invoke-static {v0, v14, v1, v2}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-eqz v1, :cond_4

    .line 205
    .line 206
    const-string/jumbo v9, "notification"

    .line 207
    .line 208
    .line 209
    invoke-virtual {v14, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    check-cast v9, Landroid/app/NotificationManager;

    .line 214
    .line 215
    const/16 v10, 0x15

    .line 216
    .line 217
    invoke-virtual {v9, v2, v10, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 218
    .line 219
    .line 220
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 221
    .line 222
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v9, "android.content.pm.extra.PACKAGE_NAME"

    .line 226
    .line 227
    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    invoke-static {v11}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    const-string v5, "android.content.pm.extra.STATUS_MESSAGE"

    .line 241
    .line 242
    invoke-static {v11, v7}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    .line 248
    .line 249
    const-string v5, "android.content.pm.extra.LEGACY_STATUS"

    .line 250
    .line 251
    invoke-virtual {v1, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    if-eqz v8, :cond_6

    .line 258
    .line 259
    const-string v4, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    .line 260
    .line 261
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    if-nez v5, :cond_5

    .line 270
    .line 271
    const-string v5, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    .line 272
    .line 273
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    :cond_5
    const-string v4, "android.content.pm.extra.WARNINGS"

    .line 277
    .line 278
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    if-nez v6, :cond_6

    .line 287
    .line 288
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    :cond_6
    const-string/jumbo v4, "result of session: "

    .line 292
    .line 293
    .line 294
    const-string/jumbo v5, "{"

    .line 295
    .line 296
    .line 297
    const-string/jumbo v6, "}, "

    .line 298
    .line 299
    .line 300
    invoke-static {v11, v15, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-static {v4, v7, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    :try_start_3
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    const/4 v4, 0x0

    .line 312
    invoke-virtual {v3, v4}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 316
    .line 317
    .line 318
    move-result-object v19

    .line 319
    const/16 v17, 0x0

    .line 320
    .line 321
    const/16 v18, 0x0

    .line 322
    .line 323
    const/4 v3, 0x0

    .line 324
    const/16 v16, 0x0

    .line 325
    .line 326
    move-object v13, v14

    .line 327
    move v14, v3

    .line 328
    move-object v15, v1

    .line 329
    invoke-virtual/range {v12 .. v19}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 330
    .line 331
    .line 332
    :catch_1
    invoke-static {v11, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->notifyKnoxSignatureVerificationFailure(IILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :cond_7
    :goto_4
    const/4 v1, 0x1

    .line 336
    goto/16 :goto_8

    .line 337
    .line 338
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 345
    .line 346
    sget-object v2, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 347
    .line 348
    const-string v2, "com.samsung.android.themecenter"

    .line 349
    .line 350
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-eqz v1, :cond_8

    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    const/16 v2, 0x3e8

    .line 361
    .line 362
    if-eq v1, v2, :cond_8

    .line 363
    .line 364
    const-string v1, "Install failed with internal error"

    .line 365
    .line 366
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const/16 v2, -0x6e

    .line 370
    .line 371
    invoke-virtual {v0, v2, v1, v8}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 372
    .line 373
    .line 374
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_9

    .line 382
    .line 383
    const/16 v1, 0x70

    .line 384
    .line 385
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 400
    .line 401
    .line 402
    :cond_9
    const/4 v1, 0x0

    .line 403
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntentIfNeeded(Z)Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    .line 408
    .line 409
    if-nez v2, :cond_a

    .line 410
    .line 411
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    .line 416
    .line 417
    :cond_a
    if-eqz v1, :cond_b

    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->deactivate()V

    .line 420
    .line 421
    .line 422
    goto :goto_4

    .line 423
    :cond_b
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    .line 424
    .line 425
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_c

    .line 430
    .line 431
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-nez v1, :cond_c

    .line 438
    .line 439
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 440
    .line 441
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 442
    .line 443
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 444
    .line 445
    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 446
    .line 447
    iget v4, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 448
    .line 449
    sget v5, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    .line 450
    .line 451
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 452
    .line 453
    invoke-virtual {v1, v7, v2, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 458
    .line 459
    .line 460
    :cond_c
    iget-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    .line 461
    .line 462
    if-eqz v1, :cond_d

    .line 463
    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    const-string v2, "Verification is already in progress for session "

    .line 467
    .line 468
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 472
    .line 473
    invoke-static {v1, v0, v3}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_4

    .line 477
    .line 478
    :cond_d
    const/4 v1, 0x1

    .line 479
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    .line 480
    .line 481
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 482
    .line 483
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 484
    .line 485
    if-eqz v1, :cond_e

    .line 486
    .line 487
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 488
    .line 489
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->verifySession()V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_4

    .line 493
    .line 494
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_4

    .line 498
    .line 499
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 500
    .line 501
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    const/4 v10, 0x1

    .line 513
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-eqz v2, :cond_f

    .line 518
    .line 519
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 524
    .line 525
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    and-int/2addr v10, v2

    .line 530
    goto :goto_5

    .line 531
    :catch_2
    move-exception v0

    .line 532
    goto :goto_6

    .line 533
    :cond_f
    if-eqz v10, :cond_7

    .line 534
    .line 535
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    if-eqz v0, :cond_7

    .line 540
    .line 541
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 542
    .line 543
    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_2

    .line 548
    .line 549
    .line 550
    goto/16 :goto_4

    .line 551
    .line 552
    :goto_6
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 560
    .line 561
    invoke-virtual {v1, v3, v2, v8}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 562
    .line 563
    .line 564
    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 565
    .line 566
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 567
    .line 568
    .line 569
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 570
    .line 571
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-eqz v2, :cond_10

    .line 576
    .line 577
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerException;->packageName:Ljava/lang/String;

    .line 578
    .line 579
    goto :goto_7

    .line 580
    :cond_10
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 581
    .line 582
    :goto_7
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 583
    .line 584
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 585
    .line 586
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->notifyKnoxSignatureVerificationFailure(IILjava/lang/String;)V

    .line 587
    .line 588
    .line 589
    goto/16 :goto_4

    .line 590
    .line 591
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 592
    .line 593
    const-string v1, "dispatchSessionSealed"

    .line 594
    .line 595
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-eqz v2, :cond_11

    .line 600
    .line 601
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 602
    .line 603
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 604
    .line 605
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 606
    .line 607
    iget-object v2, v1, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 608
    .line 609
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1}, Lcom/android/server/pm/utils/RequestThrottle;->runInternal()Z

    .line 613
    .line 614
    .line 615
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 616
    .line 617
    const/4 v1, 0x2

    .line 618
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 623
    .line 624
    .line 625
    goto/16 :goto_4

    .line 626
    .line 627
    :goto_8
    return v1

    .line 628
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 629
    .line 630
    const-string v2, " before sealing"

    .line 631
    .line 632
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    throw v0

    .line 640
    nop

    .line 641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
