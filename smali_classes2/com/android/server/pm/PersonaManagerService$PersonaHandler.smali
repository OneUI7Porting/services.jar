.class public final Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "PersonaHandler"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, ", fota version - 10"

    .line 8
    .line 9
    const-string v5, "Storing fw version - "

    .line 10
    .line 11
    const-string/jumbo v6, "setForegroundUser(newProfileId:"

    .line 12
    .line 13
    .line 14
    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 15
    .line 16
    const-string v8, "PersonaHandler"

    .line 17
    .line 18
    invoke-virtual {v7, v8}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v7, v0, Landroid/os/Message;->what:I

    .line 22
    .line 23
    const/16 v8, 0xa

    .line 24
    .line 25
    if-eq v7, v8, :cond_3c

    .line 26
    .line 27
    const/16 v9, 0x1e

    .line 28
    .line 29
    if-eq v7, v9, :cond_3b

    .line 30
    .line 31
    const/16 v9, 0x3c

    .line 32
    .line 33
    if-eq v7, v9, :cond_3a

    .line 34
    .line 35
    const/16 v9, 0x50

    .line 36
    .line 37
    if-eq v7, v9, :cond_39

    .line 38
    .line 39
    const/16 v6, 0x5a

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    if-eq v7, v6, :cond_1c

    .line 43
    .line 44
    const/16 v6, 0x6e

    .line 45
    .line 46
    const/4 v8, 0x2

    .line 47
    const-wide/16 v10, 0x0

    .line 48
    .line 49
    if-eq v7, v6, :cond_11

    .line 50
    .line 51
    const/16 v6, 0xc8

    .line 52
    .line 53
    if-eq v7, v6, :cond_f

    .line 54
    .line 55
    packed-switch v7, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    packed-switch v7, :pswitch_data_1

    .line 59
    .line 60
    .line 61
    const-string v0, "PersonaManagerService"

    .line 62
    .line 63
    const-string/jumbo v1, "msg : ignore unknown message"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto/16 :goto_1a

    .line 70
    .line 71
    :pswitch_0
    const-string v0, "PersonaManagerService"

    .line 72
    .line 73
    const-string v2, "MSG_KNOX_APP_SEPARATION_COEXISTENCE_LIST_UPDATE "

    .line 74
    .line 75
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationCoexistenceAllowListUpdateInternal()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_1a

    .line 84
    .line 85
    :pswitch_1
    const-string v0, "PersonaManagerService"

    .line 86
    .line 87
    const-string v2, "MSG_KNOX_APP_SEPARATION_CLEAN_UP "

    .line 88
    .line 89
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->enforceSeparatedAppsRemoveInternal()Z

    .line 95
    .line 96
    .line 97
    goto/16 :goto_1a

    .line 98
    .line 99
    :pswitch_2
    const-string v2, "PersonaManagerService"

    .line 100
    .line 101
    const-string v3, "MSG_KNOX_APP_SEPARATION_ACTIVATION"

    .line 102
    .line 103
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Ljava/lang/String;

    .line 109
    .line 110
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iput-object v3, v2, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 117
    .line 118
    new-instance v2, Ljava/util/ArrayList;

    .line 119
    .line 120
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 121
    .line 122
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 123
    .line 124
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_0

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Ljava/lang/String;

    .line 145
    .line 146
    const-string v4, "PersonaManagerService"

    .line 147
    .line 148
    const-string v5, "MSG_KNOX_APP_SEPARATION_ACTIVATION: packageName = "

    .line 149
    .line 150
    invoke-static {v5, v3, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 155
    .line 156
    const-string v3, "com.samsung.android.knox.action.PROVISION_KNOX_PROFILE"

    .line 157
    .line 158
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/high16 v3, 0x10000000

    .line 162
    .line 163
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    const-string v3, "com.samsung.android.appseparation"

    .line 167
    .line 168
    const-string v4, "com.samsung.android.appseparation.receiver.ProvisionReceiver"

    .line 169
    .line 170
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    const-string/jumbo v3, "packageNames"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 180
    .line 181
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 184
    .line 185
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 194
    .line 195
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-nez v0, :cond_1

    .line 200
    .line 201
    const-string v0, "PersonaManagerService"

    .line 202
    .line 203
    const-string v1, "handleMessage - MSG_KNOX_APP_SEPARATION_ACTIVATION : no app separation data found in db"

    .line 204
    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    goto/16 :goto_1a

    .line 209
    .line 210
    :cond_1
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 211
    .line 212
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 213
    .line 214
    const-string v3, "APP_SEPARATION_APP_LIST"

    .line 215
    .line 216
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v1, v2, v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_1a

    .line 224
    .line 225
    :pswitch_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v0, Ljava/lang/String;

    .line 228
    .line 229
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallationInternal(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    const-string v1, "PersonaManagerService"

    .line 236
    .line 237
    const-string v2, "MSG_KNOX_APP_SEPARATION_INSTALLATION - "

    .line 238
    .line 239
    invoke-static {v0, v2, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_1a

    .line 243
    .line 244
    :pswitch_4
    const-string v0, "PersonaManagerService"

    .line 245
    .line 246
    const-string v4, "MSG_KNOX_APP_SEPARATION_DELETION "

    .line 247
    .line 248
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 257
    .line 258
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v4, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    .line 262
    .line 263
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    .line 265
    .line 266
    const-string/jumbo v4, "removestart"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    .line 271
    .line 272
    const-string v4, "com.samsung.android.appseparation"

    .line 273
    .line 274
    const-string v5, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    .line 275
    .line 276
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    .line 278
    .line 279
    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 280
    .line 281
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 282
    .line 283
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .line 285
    .line 286
    goto :goto_1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_3

    .line 308
    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 314
    .line 315
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_2

    .line 320
    .line 321
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 326
    .line 327
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->removeUser(I)Z

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->enforceSeparatedAppsRemoveInternal()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    new-instance v3, Landroid/content/Intent;

    .line 335
    .line 336
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v4, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    .line 340
    .line 341
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    .line 343
    .line 344
    const-string/jumbo v4, "type"

    .line 345
    .line 346
    .line 347
    const-string v5, "deactivate"

    .line 348
    .line 349
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    .line 351
    .line 352
    const-string/jumbo v4, "status"

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 359
    .line 360
    .line 361
    :cond_3
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 362
    .line 363
    iget-object v0, v0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    new-instance v3, Landroid/os/Bundle;

    .line 369
    .line 370
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v4, "e"

    .line 374
    .line 375
    const-string v5, "APP_SEPARATION_REMOVED"

    .line 376
    .line 377
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    const-string/jumbo v4, "rS"

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v3, v5}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 390
    .line 391
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    .line 396
    .line 397
    iput-object v9, v1, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    .line 398
    .line 399
    goto/16 :goto_1a

    .line 400
    .line 401
    :pswitch_5
    const-string v0, "PersonaManagerService"

    .line 402
    .line 403
    const-string v2, "MSG_KNOX_APP_SEPARATION_LIST_UPDATE "

    .line 404
    .line 405
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 409
    .line 410
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menforceAppSeparationAllowListUpdateInternal(Lcom/android/server/pm/PersonaManagerService;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_1a

    .line 414
    .line 415
    :pswitch_6
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 416
    .line 417
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 418
    .line 419
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 420
    .line 421
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v3, Ljava/lang/String;

    .line 424
    .line 425
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 426
    .line 427
    iget-object v1, v1, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 428
    .line 429
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    const-string v4, "LOGIN_ACCOUNTS_CHANGED"

    .line 433
    .line 434
    :try_start_1
    iget-object v5, v1, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 435
    .line 436
    invoke-virtual {v5, v2}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    if-eqz v5, :cond_3d

    .line 441
    .line 442
    new-instance v5, Landroid/os/Bundle;

    .line 443
    .line 444
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string v6, "cTp"

    .line 448
    .line 449
    invoke-virtual {v1, v2}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    .line 455
    .line 456
    const-string v2, "e"

    .line 457
    .line 458
    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    const-string v2, "accTy"

    .line 462
    .line 463
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    const-string v2, "add"

    .line 467
    .line 468
    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v5, v4}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 472
    .line 473
    .line 474
    goto/16 :goto_1a

    .line 475
    .line 476
    :catch_1
    move-exception v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_1a

    .line 481
    .line 482
    :pswitch_7
    const-string v0, "PersonaManagerService"

    .line 483
    .line 484
    const-string v3, "MSG_BOOT_LOAD_PERSONA_SYSTEMREADY is called..."

    .line 485
    .line 486
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 490
    .line 491
    new-instance v3, Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 492
    .line 493
    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 494
    .line 495
    invoke-direct {v3, v6}, Lcom/android/server/pm/PersonaLegacyStateMonitor;-><init>(Landroid/content/Context;)V

    .line 496
    .line 497
    .line 498
    iput-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 499
    .line 500
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 501
    .line 502
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    if-eqz v0, :cond_6

    .line 507
    .line 508
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 509
    .line 510
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 515
    .line 516
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 517
    .line 518
    const-string v6, "fwversion"

    .line 519
    .line 520
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    if-nez v0, :cond_6

    .line 529
    .line 530
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 531
    .line 532
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mhandleFOTAInstallToPackages(Lcom/android/server/pm/PersonaManagerService;)V

    .line 533
    .line 534
    .line 535
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 536
    .line 537
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mremoveDisallowedSFpackages(Lcom/android/server/pm/PersonaManagerService;)V

    .line 538
    .line 539
    .line 540
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 541
    .line 542
    const-string v6, "knox_screen_off_timeout"

    .line 543
    .line 544
    invoke-virtual {v3, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    check-cast v0, Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    :catch_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    if-eqz v0, :cond_5

    .line 559
    .line 560
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 565
    .line 566
    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    .line 567
    .line 568
    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-eqz v0, :cond_4

    .line 573
    .line 574
    goto :goto_2

    .line 575
    :cond_4
    :try_start_2
    iget-object v0, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 576
    .line 577
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 582
    .line 583
    .line 584
    :try_start_3
    iget-object v0, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 585
    .line 586
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    invoke-static {v0, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 591
    .line 592
    .line 593
    goto :goto_2

    .line 594
    :catch_3
    const-string v0, "Migrate screen timeout settings value. knoxId = "

    .line 595
    .line 596
    const-string v9, "PersonaManagerService:FOTA"

    .line 597
    .line 598
    invoke-static {v8, v0, v9}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    :try_start_4
    iget-object v0, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 602
    .line 603
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-static {v0, v6, v2, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    iget-object v10, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 612
    .line 613
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 614
    .line 615
    .line 616
    move-result-object v10

    .line 617
    invoke-static {v10, v6, v0, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 618
    .line 619
    .line 620
    goto :goto_2

    .line 621
    :catch_4
    move-exception v0

    .line 622
    new-instance v10, Ljava/lang/StringBuilder;

    .line 623
    .line 624
    const-string v11, "Migration failed! knoxId = "

    .line 625
    .line 626
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v8

    .line 636
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 640
    .line 641
    .line 642
    goto :goto_2

    .line 643
    :cond_5
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 644
    .line 645
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mmigrateKnoxFingerprintPlusValueIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V

    .line 646
    .line 647
    .line 648
    :cond_6
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 649
    .line 650
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getRequiredApps()Ljava/util/List;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    iput-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->requiredApps:Ljava/util/List;

    .line 655
    .line 656
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 657
    .line 658
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetWorkTabSupportLauncherUids(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    .line 663
    .line 664
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 665
    .line 666
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mrecoverContainerInfo(Lcom/android/server/pm/PersonaManagerService;)V

    .line 667
    .line 668
    .line 669
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 670
    .line 671
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    .line 672
    .line 673
    if-eqz v0, :cond_7

    .line 674
    .line 675
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-eqz v0, :cond_7

    .line 680
    .line 681
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 682
    .line 683
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    const-string v3, "PersonaManagerService:FOTA"

    .line 690
    .line 691
    const-string/jumbo v6, "user list file delete status - "

    .line 692
    .line 693
    .line 694
    invoke-static {v6, v3, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 695
    .line 696
    .line 697
    :cond_7
    new-instance v0, Ljava/io/File;

    .line 698
    .line 699
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 700
    .line 701
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    .line 702
    .line 703
    const-string/jumbo v6, "userwithpersonalist.xml.crt"

    .line 704
    .line 705
    .line 706
    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 710
    .line 711
    .line 712
    move-result v3

    .line 713
    if-eqz v3, :cond_8

    .line 714
    .line 715
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 716
    .line 717
    .line 718
    move-result v0

    .line 719
    const-string v3, "PersonaManagerService:FOTA"

    .line 720
    .line 721
    const-string/jumbo v6, "user list backup file delete status - "

    .line 722
    .line 723
    .line 724
    invoke-static {v6, v3, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 725
    .line 726
    .line 727
    :cond_8
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 728
    .line 729
    iget-object v3, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 730
    .line 731
    monitor-enter v3

    .line 732
    :try_start_5
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 733
    .line 734
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 735
    .line 736
    const-string v6, "fwversion"

    .line 737
    .line 738
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    check-cast v0, Ljava/lang/String;

    .line 743
    .line 744
    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 745
    .line 746
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v6

    .line 750
    if-eqz v0, :cond_9

    .line 751
    .line 752
    if-eqz v6, :cond_a

    .line 753
    .line 754
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    if-nez v0, :cond_a

    .line 759
    .line 760
    goto :goto_3

    .line 761
    :catchall_0
    move-exception v0

    .line 762
    goto :goto_4

    .line 763
    :cond_9
    :goto_3
    const-string v0, "PersonaManagerService"

    .line 764
    .line 765
    new-instance v7, Ljava/lang/StringBuilder;

    .line 766
    .line 767
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .line 782
    .line 783
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 784
    .line 785
    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 786
    .line 787
    const-string v5, "fwversion"

    .line 788
    .line 789
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 797
    .line 798
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 799
    .line 800
    const-string v4, "fotaversion"

    .line 801
    .line 802
    const-string v5, "10"

    .line 803
    .line 804
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 808
    .line 809
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    .line 810
    .line 811
    .line 812
    :cond_a
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 813
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 814
    .line 815
    const-string v3, "com.sec.knox.bluetooth"

    .line 816
    .line 817
    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 818
    .line 819
    .line 820
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 821
    .line 822
    const-string v1, "com.samsung.android.bbc.fileprovider"

    .line 823
    .line 824
    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 825
    .line 826
    .line 827
    goto/16 :goto_1a

    .line 828
    .line 829
    :goto_4
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 830
    throw v0

    .line 831
    :pswitch_8
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 832
    .line 833
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$msendMessageAndLockTimeout(Lcom/android/server/pm/PersonaManagerService;)V

    .line 834
    .line 835
    .line 836
    goto/16 :goto_1a

    .line 837
    .line 838
    :pswitch_9
    const-string v0, "PersonaManagerServiceHandler"

    .line 839
    .line 840
    const-string v4, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    .line 841
    .line 842
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .line 844
    .line 845
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 846
    .line 847
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 848
    .line 849
    invoke-static {v0}, Lcom/android/server/knox/KnoxForesightService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/KnoxForesightService;

    .line 850
    .line 851
    .line 852
    :try_start_7
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 853
    .line 854
    .line 855
    move-result v0

    .line 856
    if-eqz v0, :cond_b

    .line 857
    .line 858
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 859
    .line 860
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    const-string v4, "com.felicanetworks.mfm"

    .line 865
    .line 866
    invoke-interface {v0, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 867
    .line 868
    .line 869
    move-result v0

    .line 870
    if-ne v0, v8, :cond_b

    .line 871
    .line 872
    const-string v0, "PersonaManagerServiceHandler"

    .line 873
    .line 874
    const-string v4, " MSG_BOOT_COMPLETE_RECEIVED : DO is enabled. recorver disabled app."

    .line 875
    .line 876
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    .line 878
    .line 879
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 880
    .line 881
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 882
    .line 883
    .line 884
    move-result-object v4

    .line 885
    const-string v5, "com.felicanetworks.mfm"

    .line 886
    .line 887
    const/4 v6, 0x0

    .line 888
    const/4 v7, 0x0

    .line 889
    const/4 v8, 0x0

    .line 890
    const/4 v9, 0x0

    .line 891
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 892
    .line 893
    .line 894
    goto :goto_5

    .line 895
    :catch_5
    move-exception v0

    .line 896
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 897
    .line 898
    .line 899
    :cond_b
    :goto_5
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 900
    .line 901
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    const-string v0, "PersonaManagerService:FOTA"

    .line 905
    .line 906
    const-string v4, "handleFotaResetSecureFolderAdmin()"

    .line 907
    .line 908
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    .line 910
    .line 911
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->resetSecureFolderAdmin()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 912
    .line 913
    .line 914
    goto :goto_6

    .line 915
    :catch_6
    move-exception v0

    .line 916
    move-object v4, v0

    .line 917
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 918
    .line 919
    .line 920
    :goto_6
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 921
    .line 922
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    .line 923
    .line 924
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    if-lez v0, :cond_c

    .line 929
    .line 930
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 931
    .line 932
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 945
    .line 946
    .line 947
    move-result v4

    .line 948
    if-eqz v4, :cond_c

    .line 949
    .line 950
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v4

    .line 954
    check-cast v4, Ljava/lang/Integer;

    .line 955
    .line 956
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 957
    .line 958
    .line 959
    move-result v4

    .line 960
    iget-object v5, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 961
    .line 962
    invoke-static {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$msetDpmScreenTimeoutFlag(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 963
    .line 964
    .line 965
    goto :goto_7

    .line 966
    :cond_c
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 967
    .line 968
    invoke-virtual {v0, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    move v5, v2

    .line 973
    :goto_8
    move-object v0, v4

    .line 974
    check-cast v0, Ljava/util/ArrayList;

    .line 975
    .line 976
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 977
    .line 978
    .line 979
    move-result v6

    .line 980
    if-ge v5, v6, :cond_3d

    .line 981
    .line 982
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    move-object v6, v0

    .line 987
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 988
    .line 989
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 990
    .line 991
    .line 992
    move-result v0

    .line 993
    if-eqz v0, :cond_d

    .line 994
    .line 995
    :try_start_9
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 996
    .line 997
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    new-instance v7, Landroid/content/ComponentName;

    .line 1002
    .line 1003
    const-string v8, "com.samsung.android.appseparation"

    .line 1004
    .line 1005
    const-string v9, "com.samsung.android.appseparation.view.launcher.LauncherActivity"

    .line 1006
    .line 1007
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    invoke-interface {v0, v7, v2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    .line 1011
    .line 1012
    .line 1013
    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1014
    goto :goto_9

    .line 1015
    :catch_7
    move-exception v0

    .line 1016
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1017
    .line 1018
    .line 1019
    move v0, v2

    .line 1020
    :goto_9
    if-eq v0, v3, :cond_d

    .line 1021
    .line 1022
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1023
    .line 1024
    iget-object v7, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 1025
    .line 1026
    const/16 v8, 0x48

    .line 1027
    .line 1028
    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v7

    .line 1032
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 1033
    .line 1034
    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1035
    .line 1036
    .line 1037
    const-string v0, "PersonaManagerService"

    .line 1038
    .line 1039
    const-string v7, "enforceAppSeparationDeletion"

    .line 1040
    .line 1041
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    .line 1043
    .line 1044
    :cond_d
    :try_start_a
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 1045
    .line 1046
    .line 1047
    move-result v0

    .line 1048
    if-eqz v0, :cond_e

    .line 1049
    .line 1050
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1051
    .line 1052
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 1053
    .line 1054
    invoke-static {v0, v6}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1055
    .line 1056
    .line 1057
    goto :goto_a

    .line 1058
    :catch_8
    move-exception v0

    .line 1059
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1060
    .line 1061
    .line 1062
    :cond_e
    :goto_a
    add-int/2addr v5, v3

    .line 1063
    goto :goto_8

    .line 1064
    :cond_f
    const-string v4, "PersonaManagerServiceHandler"

    .line 1065
    .line 1066
    const-string v5, "MSG_POST_NOTI_FOR_PWD_CHANGE_DO "

    .line 1067
    .line 1068
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    .line 1070
    .line 1071
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1072
    .line 1073
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1074
    .line 1075
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1076
    .line 1077
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v0

    .line 1081
    if-eqz v0, :cond_10

    .line 1082
    .line 1083
    goto/16 :goto_1a

    .line 1084
    .line 1085
    :cond_10
    new-instance v0, Landroid/content/Intent;

    .line 1086
    .line 1087
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1088
    .line 1089
    .line 1090
    const/high16 v4, 0x4c000000    # 3.3554432E7f

    .line 1091
    .line 1092
    invoke-static {v1, v2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    const v2, 0x1040491

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v2

    .line 1103
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v2

    .line 1107
    const v4, 0x1040490

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v4

    .line 1114
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v4

    .line 1118
    new-instance v5, Landroid/app/Notification$Builder;

    .line 1119
    .line 1120
    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 1121
    .line 1122
    invoke-direct {v5, v1, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    const v6, 0x10805fc

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v5

    .line 1132
    invoke-virtual {v5, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v5

    .line 1136
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v5

    .line 1140
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v5

    .line 1144
    const v6, 0x106001c

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v1, v6}, Landroid/content/Context;->getColor(I)I

    .line 1148
    .line 1149
    .line 1150
    move-result v6

    .line 1151
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v5

    .line 1155
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v2

    .line 1159
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v2

    .line 1163
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v2

    .line 1167
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v0

    .line 1171
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 1172
    .line 1173
    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v2, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v2

    .line 1180
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v0

    .line 1184
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v0

    .line 1188
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v0

    .line 1192
    iget v2, v0, Landroid/app/Notification;->semFlags:I

    .line 1193
    .line 1194
    or-int/lit8 v2, v2, 0x8

    .line 1195
    .line 1196
    iput v2, v0, Landroid/app/Notification;->semFlags:I

    .line 1197
    .line 1198
    const-string/jumbo v2, "notification"

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v1

    .line 1205
    check-cast v1, Landroid/app/NotificationManager;

    .line 1206
    .line 1207
    const/16 v2, 0x457

    .line 1208
    .line 1209
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1210
    .line 1211
    .line 1212
    goto/16 :goto_1a

    .line 1213
    .line 1214
    :cond_11
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1215
    .line 1216
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 1217
    .line 1218
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1219
    .line 1220
    check-cast v0, Landroid/os/Bundle;

    .line 1221
    .line 1222
    iget-object v1, v1, Lcom/android/server/knox/KnoxAnalyticsContainer;->dpmAnalytics:Lcom/android/server/knox/DevicePolicyManagerAnalytics;

    .line 1223
    .line 1224
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1225
    .line 1226
    .line 1227
    const-string v3, "aN"

    .line 1228
    .line 1229
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1230
    .line 1231
    .line 1232
    move-result v2

    .line 1233
    sget-object v4, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EX_EVENTS:Ljava/util/HashMap;

    .line 1234
    .line 1235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v5

    .line 1239
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1240
    .line 1241
    .line 1242
    move-result v4

    .line 1243
    if-eqz v4, :cond_12

    .line 1244
    .line 1245
    goto/16 :goto_1a

    .line 1246
    .line 1247
    :cond_12
    sget-object v4, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EVENTS_MAP:Ljava/util/HashMap;

    .line 1248
    .line 1249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v5

    .line 1253
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v5

    .line 1257
    if-eqz v5, :cond_13

    .line 1258
    .line 1259
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v5

    .line 1263
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v4

    .line 1267
    check-cast v4, Ljava/lang/String;

    .line 1268
    .line 1269
    goto :goto_b

    .line 1270
    :cond_13
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v4

    .line 1274
    :goto_b
    new-instance v5, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1275
    .line 1276
    const-string v6, "DPMS_API_USAGE"

    .line 1277
    .line 1278
    const-string v7, "DPMS_EVENT"

    .line 1279
    .line 1280
    invoke-direct {v5, v6, v8, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    .line 1285
    .line 1286
    const-string v6, "iV"

    .line 1287
    .line 1288
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1289
    .line 1290
    .line 1291
    move-result v7

    .line 1292
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1293
    .line 1294
    .line 1295
    const-string v7, "bV"

    .line 1296
    .line 1297
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 1298
    .line 1299
    .line 1300
    move-result v12

    .line 1301
    invoke-virtual {v5, v7, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    .line 1302
    .line 1303
    .line 1304
    const-string/jumbo v7, "tpms"

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 1308
    .line 1309
    .line 1310
    move-result-wide v12

    .line 1311
    invoke-virtual {v5, v7, v12, v13}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 1312
    .line 1313
    .line 1314
    const-string/jumbo v7, "saV"

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v12

    .line 1321
    const-string v13, ";;"

    .line 1322
    .line 1323
    if-eqz v12, :cond_14

    .line 1324
    .line 1325
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v12

    .line 1329
    new-instance v14, Lcom/android/server/knox/DevicePolicyManagerAnalytics$$ExternalSyntheticLambda0;

    .line 1330
    .line 1331
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1335
    .line 1336
    .line 1337
    invoke-static {v13, v12}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v12

    .line 1341
    invoke-virtual {v5, v7, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    :cond_14
    const-string v12, "apN"

    .line 1345
    .line 1346
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1347
    .line 1348
    .line 1349
    move-result v14

    .line 1350
    if-eqz v14, :cond_15

    .line 1351
    .line 1352
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v14

    .line 1356
    invoke-virtual {v5, v12, v14}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    :cond_15
    const-string/jumbo v14, "userId"

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1363
    .line 1364
    .line 1365
    move-result v0

    .line 1366
    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 1367
    .line 1368
    .line 1369
    sget-object v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

    .line 1370
    .line 1371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v14

    .line 1375
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0

    .line 1379
    check-cast v0, Ljava/lang/String;

    .line 1380
    .line 1381
    sget-boolean v14, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DEBUG:Z

    .line 1382
    .line 1383
    const-string v15, "DevicePolicyManagerAnalytics"

    .line 1384
    .line 1385
    if-eqz v0, :cond_1b

    .line 1386
    .line 1387
    const-string v9, "SET_APPLICATION_EXEMPTIONS"

    .line 1388
    .line 1389
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v0

    .line 1393
    if-nez v0, :cond_16

    .line 1394
    .line 1395
    goto/16 :goto_e

    .line 1396
    .line 1397
    :cond_16
    invoke-virtual {v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v0

    .line 1401
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    if-eqz v0, :cond_17

    .line 1406
    .line 1407
    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v0

    .line 1411
    array-length v0, v0

    .line 1412
    if-ge v0, v8, :cond_1b

    .line 1413
    .line 1414
    :cond_17
    const/16 v0, 0xd9

    .line 1415
    .line 1416
    if-eq v2, v0, :cond_18

    .line 1417
    .line 1418
    const/4 v9, 0x0

    .line 1419
    goto :goto_c

    .line 1420
    :cond_18
    invoke-virtual {v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v9

    .line 1428
    :goto_c
    :try_start_b
    iget-object v0, v1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->context:Landroid/content/Context;

    .line 1429
    .line 1430
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v0

    .line 1434
    invoke-static {v2, v9, v0}, Lcom/android/server/knox/JsonHelper;->shallSaveOrReturnCount(ILjava/lang/String;Landroid/content/SharedPreferences;)J

    .line 1435
    .line 1436
    .line 1437
    move-result-wide v7
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_9

    .line 1438
    goto :goto_d

    .line 1439
    :catch_9
    const-string v0, "IllegalStateExcpetion. User may be in locked state."

    .line 1440
    .line 1441
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    .line 1443
    .line 1444
    move-wide v7, v10

    .line 1445
    :goto_d
    const-string v0, "isEventCountable true, eventId = "

    .line 1446
    .line 1447
    invoke-static {v2, v0, v15}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    cmp-long v0, v7, v10

    .line 1451
    .line 1452
    if-nez v0, :cond_19

    .line 1453
    .line 1454
    if-eqz v14, :cond_3d

    .line 1455
    .line 1456
    const-string/jumbo v0, "result = 0"

    .line 1457
    .line 1458
    .line 1459
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    .line 1461
    .line 1462
    goto/16 :goto_1a

    .line 1463
    .line 1464
    :cond_19
    sget-object v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_KA_COUNTER_EVENTS_MAP:Ljava/util/HashMap;

    .line 1465
    .line 1466
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v9

    .line 1470
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v9

    .line 1474
    check-cast v9, Ljava/lang/String;

    .line 1475
    .line 1476
    invoke-virtual {v5, v3, v9}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v3

    .line 1483
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    .line 1484
    .line 1485
    .line 1486
    move-result v3

    .line 1487
    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 1488
    .line 1489
    .line 1490
    if-eqz v14, :cond_1a

    .line 1491
    .line 1492
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    const-string v6, " event name updated = "

    .line 1495
    .line 1496
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1497
    .line 1498
    .line 1499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v2

    .line 1503
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v0

    .line 1507
    check-cast v0, Ljava/lang/String;

    .line 1508
    .line 1509
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    const-string v0, " count set = "

    .line 1513
    .line 1514
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    .line 1520
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v0

    .line 1524
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    .line 1526
    .line 1527
    :cond_1a
    if-eqz v14, :cond_1b

    .line 1528
    .line 1529
    const-string/jumbo v0, "updateEventNameAndSetCount done"

    .line 1530
    .line 1531
    .line 1532
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    .line 1534
    .line 1535
    :cond_1b
    :goto_e
    iget-object v0, v1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 1536
    .line 1537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1538
    .line 1539
    .line 1540
    invoke-static {v5}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 1541
    .line 1542
    .line 1543
    if-eqz v14, :cond_3d

    .line 1544
    .line 1545
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1546
    .line 1547
    const-string v1, "API_NAME : "

    .line 1548
    .line 1549
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v0

    .line 1559
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v0

    .line 1566
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    .line 1568
    .line 1569
    goto/16 :goto_1a

    .line 1570
    .line 1571
    :cond_1c
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1572
    .line 1573
    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService;->mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 1574
    .line 1575
    if-eqz v4, :cond_3d

    .line 1576
    .line 1577
    const/4 v5, 0x0

    .line 1578
    sput-object v5, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 1579
    .line 1580
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    .line 1581
    .line 1582
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v0

    .line 1586
    if-eqz v0, :cond_38

    .line 1587
    .line 1588
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1589
    .line 1590
    .line 1591
    move-result v5

    .line 1592
    if-nez v5, :cond_1d

    .line 1593
    .line 1594
    goto/16 :goto_19

    .line 1595
    .line 1596
    :cond_1d
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v0

    .line 1600
    move-object v5, v0

    .line 1601
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1602
    .line 1603
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1604
    .line 1605
    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 1606
    .line 1607
    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1608
    .line 1609
    invoke-virtual {v4, v0}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchUserId(I)I

    .line 1610
    .line 1611
    .line 1612
    move-result v9

    .line 1613
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 1614
    .line 1615
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 1616
    .line 1617
    .line 1618
    move-result v0

    .line 1619
    const-string v10, "SeamLessSwitchHandler"

    .line 1620
    .line 1621
    const/4 v11, -0x1

    .line 1622
    if-nez v0, :cond_1f

    .line 1623
    .line 1624
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 1625
    .line 1626
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    .line 1627
    .line 1628
    .line 1629
    move-result v0

    .line 1630
    if-nez v0, :cond_1f

    .line 1631
    .line 1632
    if-eq v9, v11, :cond_1e

    .line 1633
    .line 1634
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mUserManager:Landroid/os/UserManager;

    .line 1635
    .line 1636
    invoke-virtual {v0, v9}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 1637
    .line 1638
    .line 1639
    move-result v0

    .line 1640
    if-nez v0, :cond_1f

    .line 1641
    .line 1642
    :cond_1e
    const-string v0, "Quick Switch abort! User is not running"

    .line 1643
    .line 1644
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    .line 1646
    .line 1647
    goto/16 :goto_19

    .line 1648
    .line 1649
    :cond_1f
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1650
    .line 1651
    .line 1652
    move-result v0

    .line 1653
    if-eqz v0, :cond_20

    .line 1654
    .line 1655
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1656
    .line 1657
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 1658
    .line 1659
    .line 1660
    move-result v0

    .line 1661
    if-nez v0, :cond_20

    .line 1662
    .line 1663
    const-string v0, "Quick Switch abort! User Lock type is not set"

    .line 1664
    .line 1665
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    .line 1667
    .line 1668
    goto/16 :goto_19

    .line 1669
    .line 1670
    :cond_20
    :try_start_c
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 1671
    .line 1672
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 1673
    .line 1674
    .line 1675
    move-result v0

    .line 1676
    if-nez v0, :cond_28

    .line 1677
    .line 1678
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 1679
    .line 1680
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    .line 1681
    .line 1682
    .line 1683
    move-result v0

    .line 1684
    if-eqz v0, :cond_21

    .line 1685
    .line 1686
    goto/16 :goto_10

    .line 1687
    .line 1688
    :cond_21
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->SEAMLESS_NOTALLOWED_EXCEPTIONAL_LIST:Ljava/util/List;

    .line 1689
    .line 1690
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v12

    .line 1694
    check-cast v0, Ljava/util/ArrayList;

    .line 1695
    .line 1696
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1697
    .line 1698
    .line 1699
    move-result v0

    .line 1700
    if-eqz v0, :cond_22

    .line 1701
    .line 1702
    goto :goto_10

    .line 1703
    :cond_22
    iget-object v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 1704
    .line 1705
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1706
    .line 1707
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 1708
    .line 1709
    .line 1710
    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 1711
    if-ne v0, v3, :cond_28

    .line 1712
    .line 1713
    :try_start_d
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    .line 1714
    .line 1715
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v0

    .line 1719
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v0

    .line 1723
    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1724
    .line 1725
    .line 1726
    move-result v8

    .line 1727
    if-eqz v8, :cond_24

    .line 1728
    .line 1729
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v8

    .line 1733
    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1734
    .line 1735
    if-eqz v8, :cond_23

    .line 1736
    .line 1737
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    .line 1738
    .line 1739
    .line 1740
    move-result v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 1741
    if-eqz v8, :cond_23

    .line 1742
    .line 1743
    goto :goto_10

    .line 1744
    :catch_a
    move-exception v0

    .line 1745
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1746
    .line 1747
    .line 1748
    :cond_24
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->am:Landroid/app/ActivityManager;

    .line 1749
    .line 1750
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    .line 1751
    .line 1752
    .line 1753
    move-result v0

    .line 1754
    if-eqz v0, :cond_25

    .line 1755
    .line 1756
    goto :goto_10

    .line 1757
    :cond_25
    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1758
    .line 1759
    invoke-virtual {v4, v0}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchUserId(I)I

    .line 1760
    .line 1761
    .line 1762
    move-result v0

    .line 1763
    if-nez v0, :cond_26

    .line 1764
    .line 1765
    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1766
    .line 1767
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1768
    .line 1769
    .line 1770
    move-result v0

    .line 1771
    if-nez v0, :cond_27

    .line 1772
    .line 1773
    goto :goto_f

    .line 1774
    :catch_b
    move-exception v0

    .line 1775
    goto :goto_11

    .line 1776
    :cond_26
    :goto_f
    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1777
    .line 1778
    invoke-virtual {v4, v0}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchUserId(I)I

    .line 1779
    .line 1780
    .line 1781
    move-result v0

    .line 1782
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1783
    .line 1784
    .line 1785
    move-result v0

    .line 1786
    if-nez v0, :cond_27

    .line 1787
    .line 1788
    goto :goto_10

    .line 1789
    :cond_27
    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z

    .line 1790
    .line 1791
    .line 1792
    move-result v0

    .line 1793
    if-eqz v0, :cond_29

    .line 1794
    .line 1795
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1796
    .line 1797
    if-eqz v0, :cond_28

    .line 1798
    .line 1799
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 1800
    .line 1801
    .line 1802
    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 1803
    if-nez v0, :cond_29

    .line 1804
    .line 1805
    :cond_28
    :goto_10
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 1806
    .line 1807
    const v3, 0x1040e3e

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v3

    .line 1814
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v3

    .line 1818
    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v0

    .line 1822
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1823
    .line 1824
    .line 1825
    goto/16 :goto_19

    .line 1826
    .line 1827
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1828
    .line 1829
    .line 1830
    :cond_29
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1831
    .line 1832
    const-string v8, "android.intent.action.MAIN"

    .line 1833
    .line 1834
    if-eqz v0, :cond_33

    .line 1835
    .line 1836
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 1837
    .line 1838
    .line 1839
    move-result v0

    .line 1840
    if-eqz v0, :cond_33

    .line 1841
    .line 1842
    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 1843
    .line 1844
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1845
    .line 1846
    .line 1847
    move-result v0

    .line 1848
    if-nez v0, :cond_38

    .line 1849
    .line 1850
    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSettingsExceptionalCase(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;I)Z

    .line 1851
    .line 1852
    .line 1853
    move-result v0

    .line 1854
    if-nez v0, :cond_38

    .line 1855
    .line 1856
    const-string v0, "com.samsung.knox.securefolder"

    .line 1857
    .line 1858
    :try_start_f
    iget-object v5, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1859
    .line 1860
    invoke-virtual {v5, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v5

    .line 1864
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v5

    .line 1868
    move v7, v11

    .line 1869
    :cond_2a
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1870
    .line 1871
    .line 1872
    move-result v9

    .line 1873
    if-eqz v9, :cond_2b

    .line 1874
    .line 1875
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v9

    .line 1879
    check-cast v9, Ljava/lang/Integer;

    .line 1880
    .line 1881
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1882
    .line 1883
    .line 1884
    move-result v9

    .line 1885
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1886
    .line 1887
    .line 1888
    move-result v12

    .line 1889
    if-eqz v12, :cond_2a

    .line 1890
    .line 1891
    move v7, v9

    .line 1892
    goto :goto_12

    .line 1893
    :catch_c
    move-exception v0

    .line 1894
    goto/16 :goto_16

    .line 1895
    .line 1896
    :cond_2b
    if-ne v7, v11, :cond_2c

    .line 1897
    .line 1898
    goto/16 :goto_19

    .line 1899
    .line 1900
    :cond_2c
    new-instance v5, Landroid/content/Intent;

    .line 1901
    .line 1902
    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1903
    .line 1904
    .line 1905
    invoke-static {v6}, Lcom/android/server/knox/SeamLessSwitchHandler;->isAllowedAppsInLockscreen(Landroid/content/ComponentName;)Z

    .line 1906
    .line 1907
    .line 1908
    move-result v8

    .line 1909
    if-eqz v8, :cond_2e

    .line 1910
    .line 1911
    const-string v0, "Allowed Apps In Lockscreen Case is Running"

    .line 1912
    .line 1913
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    .line 1915
    .line 1916
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v0

    .line 1920
    invoke-virtual {v4, v0, v7}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v5

    .line 1924
    if-nez v5, :cond_2d

    .line 1925
    .line 1926
    goto/16 :goto_19

    .line 1927
    .line 1928
    :cond_2d
    const/4 v8, 0x0

    .line 1929
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1930
    .line 1931
    .line 1932
    const/high16 v0, 0x200000

    .line 1933
    .line 1934
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1935
    .line 1936
    .line 1937
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v0

    .line 1941
    sput-object v0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 1942
    .line 1943
    :goto_13
    move-object v13, v5

    .line 1944
    goto :goto_15

    .line 1945
    :cond_2e
    invoke-virtual {v4}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSecureFolderHidden()Z

    .line 1946
    .line 1947
    .line 1948
    move-result v8

    .line 1949
    if-eqz v8, :cond_2f

    .line 1950
    .line 1951
    const-string v8, "com.samsung.knox.launcher.home.view.HomeActivity"

    .line 1952
    .line 1953
    goto :goto_14

    .line 1954
    :cond_2f
    const-string v8, "com.samsung.knox.securefolder.presentation.switcher.view.SecureFolderShortcutActivity"

    .line 1955
    .line 1956
    :goto_14
    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1957
    .line 1958
    .line 1959
    const-string/jumbo v8, "userId"

    .line 1960
    .line 1961
    .line 1962
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1963
    .line 1964
    .line 1965
    iget-object v8, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 1966
    .line 1967
    invoke-virtual {v8, v7}, Lcom/samsung/android/knox/PersonaManagerInternal;->shouldConfirmCredentials(I)Z

    .line 1968
    .line 1969
    .line 1970
    move-result v8

    .line 1971
    if-nez v8, :cond_30

    .line 1972
    .line 1973
    const-string/jumbo v8, "quick_switch"

    .line 1974
    .line 1975
    .line 1976
    invoke-virtual {v5, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1977
    .line 1978
    .line 1979
    :cond_30
    const v8, 0x8000

    .line 1980
    .line 1981
    .line 1982
    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1983
    .line 1984
    .line 1985
    sput-object v0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 1986
    .line 1987
    goto :goto_13

    .line 1988
    :goto_15
    const v0, 0x10004000

    .line 1989
    .line 1990
    .line 1991
    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1992
    .line 1993
    .line 1994
    new-instance v0, Landroid/content/Intent;

    .line 1995
    .line 1996
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1997
    .line 1998
    .line 1999
    const-string v5, "afterKeyguardGone"

    .line 2000
    .line 2001
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2002
    .line 2003
    .line 2004
    const-string v5, "ignoreKeyguardState"

    .line 2005
    .line 2006
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2007
    .line 2008
    .line 2009
    const-string v5, "dismissIfInsecure"

    .line 2010
    .line 2011
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2012
    .line 2013
    .line 2014
    iget-object v11, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 2015
    .line 2016
    new-instance v3, Landroid/os/UserHandle;

    .line 2017
    .line 2018
    invoke-virtual {v4}, Lcom/android/server/knox/SeamLessSwitchHandler;->isSecureFolderHidden()Z

    .line 2019
    .line 2020
    .line 2021
    move-result v5

    .line 2022
    if-nez v5, :cond_31

    .line 2023
    .line 2024
    invoke-static {v6}, Lcom/android/server/knox/SeamLessSwitchHandler;->isAllowedAppsInLockscreen(Landroid/content/ComponentName;)Z

    .line 2025
    .line 2026
    .line 2027
    move-result v5

    .line 2028
    if-eqz v5, :cond_32

    .line 2029
    .line 2030
    :cond_31
    move v2, v7

    .line 2031
    :cond_32
    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 2032
    .line 2033
    .line 2034
    const/4 v12, 0x0

    .line 2035
    const/high16 v14, 0xc000000

    .line 2036
    .line 2037
    const/4 v15, 0x0

    .line 2038
    move-object/from16 v16, v3

    .line 2039
    .line 2040
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v2

    .line 2044
    iget-object v3, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2045
    .line 2046
    invoke-virtual {v3, v2, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 2047
    .line 2048
    .line 2049
    goto/16 :goto_19

    .line 2050
    .line 2051
    :goto_16
    const-string v2, "Exception in setting pending intent"

    .line 2052
    .line 2053
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    .line 2055
    .line 2056
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2057
    .line 2058
    .line 2059
    goto/16 :goto_19

    .line 2060
    .line 2061
    :cond_33
    const-string v0, "Quick Switch is triggered for "

    .line 2062
    .line 2063
    invoke-static {v9, v0, v10}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 2064
    .line 2065
    .line 2066
    :try_start_10
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    .line 2067
    .line 2068
    if-eqz v0, :cond_34

    .line 2069
    .line 2070
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    .line 2071
    .line 2072
    .line 2073
    move-result v0

    .line 2074
    if-eqz v0, :cond_34

    .line 2075
    .line 2076
    const-string v0, "Collapsing notification panel before quick switch"

    .line 2077
    .line 2078
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    .line 2080
    .line 2081
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->statusBarManager:Landroid/app/SemStatusBarManager;

    .line 2082
    .line 2083
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 2084
    .line 2085
    .line 2086
    goto :goto_17

    .line 2087
    :catch_d
    move-exception v0

    .line 2088
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2089
    .line 2090
    .line 2091
    :cond_34
    :goto_17
    const-string v0, "No launchable component for "

    .line 2092
    .line 2093
    if-nez v7, :cond_35

    .line 2094
    .line 2095
    goto/16 :goto_19

    .line 2096
    .line 2097
    :cond_35
    :try_start_11
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v2

    .line 2101
    invoke-virtual {v4, v2, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->isPackageEnabled(Ljava/lang/String;I)Z

    .line 2102
    .line 2103
    .line 2104
    move-result v3

    .line 2105
    if-eqz v3, :cond_37

    .line 2106
    .line 2107
    invoke-virtual {v4, v2, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v3

    .line 2111
    if-eqz v3, :cond_36

    .line 2112
    .line 2113
    new-instance v5, Landroid/content/Intent;

    .line 2114
    .line 2115
    const/4 v6, 0x0

    .line 2116
    invoke-direct {v5, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2117
    .line 2118
    .line 2119
    const-string v6, "android.intent.category.LAUNCHER"

    .line 2120
    .line 2121
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v5

    .line 2125
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v5

    .line 2129
    iget-object v6, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->pm:Landroid/content/pm/PackageManager;

    .line 2130
    .line 2131
    const/high16 v7, 0xc0000

    .line 2132
    .line 2133
    invoke-virtual {v6, v5, v7, v9}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v5

    .line 2137
    if-eqz v5, :cond_36

    .line 2138
    .line 2139
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 2140
    .line 2141
    .line 2142
    move-result v5

    .line 2143
    if-eqz v5, :cond_36

    .line 2144
    .line 2145
    const/4 v5, 0x0

    .line 2146
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2147
    .line 2148
    .line 2149
    const v0, 0x10204000

    .line 2150
    .line 2151
    .line 2152
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2153
    .line 2154
    .line 2155
    iget-object v0, v4, Lcom/android/server/knox/SeamLessSwitchHandler;->c:Landroid/content/Context;

    .line 2156
    .line 2157
    new-instance v5, Landroid/os/UserHandle;

    .line 2158
    .line 2159
    invoke-direct {v5, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 2160
    .line 2161
    .line 2162
    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2163
    .line 2164
    .line 2165
    new-instance v0, Landroid/os/Handler;

    .line 2166
    .line 2167
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v3

    .line 2171
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2172
    .line 2173
    .line 2174
    new-instance v3, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;

    .line 2175
    .line 2176
    invoke-direct {v3, v4, v9}, Lcom/android/server/knox/SeamLessSwitchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/SeamLessSwitchHandler;I)V

    .line 2177
    .line 2178
    .line 2179
    const-wide/16 v4, 0x1f4

    .line 2180
    .line 2181
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2182
    .line 2183
    .line 2184
    sput-object v2, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 2185
    .line 2186
    goto :goto_19

    .line 2187
    :catch_e
    move-exception v0

    .line 2188
    goto :goto_18

    .line 2189
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2190
    .line 2191
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2192
    .line 2193
    .line 2194
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    .line 2196
    .line 2197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2198
    .line 2199
    .line 2200
    move-result-object v0

    .line 2201
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual {v4, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->launchFolderContainerOrHome(I)V

    .line 2205
    .line 2206
    .line 2207
    goto :goto_19

    .line 2208
    :cond_37
    invoke-virtual {v4, v9}, Lcom/android/server/knox/SeamLessSwitchHandler;->launchFolderContainerOrHome(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 2209
    .line 2210
    .line 2211
    goto :goto_19

    .line 2212
    :goto_18
    const-string v2, "Exception in securefolder quick switch"

    .line 2213
    .line 2214
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2218
    .line 2219
    .line 2220
    :cond_38
    :goto_19
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2221
    .line 2222
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

    .line 2223
    .line 2224
    sget-object v1, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    .line 2225
    .line 2226
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2227
    .line 2228
    .line 2229
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2230
    .line 2231
    .line 2232
    move-result-object v2

    .line 2233
    new-instance v3, Lcom/android/server/knox/SeamLessSwitchHandler$1;

    .line 2234
    .line 2235
    invoke-direct {v3, v0, v1}, Lcom/android/server/knox/SeamLessSwitchHandler$1;-><init>(Lcom/android/server/knox/SeamLessSwitchHandler;Ljava/lang/String;)V

    .line 2236
    .line 2237
    .line 2238
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2239
    .line 2240
    .line 2241
    goto :goto_1a

    .line 2242
    :cond_39
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 2243
    .line 2244
    new-instance v2, Ljava/lang/Object;

    .line 2245
    .line 2246
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2247
    .line 2248
    .line 2249
    monitor-enter v2

    .line 2250
    :try_start_12
    const-string v3, "PersonaManagerService"

    .line 2251
    .line 2252
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2253
    .line 2254
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2255
    .line 2256
    .line 2257
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2258
    .line 2259
    .line 2260
    const-string v5, ")"

    .line 2261
    .line 2262
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    .line 2264
    .line 2265
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v4

    .line 2269
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    .line 2271
    .line 2272
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2273
    .line 2274
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2275
    .line 2276
    const/4 v3, 0x3

    .line 2277
    invoke-static {v1, v0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2278
    .line 2279
    .line 2280
    monitor-exit v2

    .line 2281
    goto :goto_1a

    .line 2282
    :catchall_1
    move-exception v0

    .line 2283
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 2284
    throw v0

    .line 2285
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2286
    .line 2287
    .line 2288
    goto :goto_1a

    .line 2289
    :cond_3b
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 2290
    .line 2291
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2292
    .line 2293
    check-cast v0, Ljava/lang/String;

    .line 2294
    .line 2295
    const-string v3, "PersonaManagerServiceHandler"

    .line 2296
    .line 2297
    const-string v4, " MSG_REMOVE_USER : "

    .line 2298
    .line 2299
    invoke-static {v2, v4, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 2300
    .line 2301
    .line 2302
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2303
    .line 2304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2305
    .line 2306
    .line 2307
    :try_start_13
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 2308
    .line 2309
    monitor-enter v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    .line 2310
    :try_start_14
    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    .line 2311
    .line 2312
    const-string v4, "USER-REMOVED"

    .line 2313
    .line 2314
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    .line 2316
    .line 2317
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    .line 2318
    .line 2319
    .line 2320
    monitor-exit v2

    .line 2321
    goto :goto_1a

    .line 2322
    :catchall_2
    move-exception v0

    .line 2323
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2324
    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    .line 2325
    :catch_f
    move-exception v0

    .line 2326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2327
    .line 2328
    .line 2329
    goto :goto_1a

    .line 2330
    :cond_3c
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2331
    .line 2332
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$msendMessageAndLockTimeout(Lcom/android/server/pm/PersonaManagerService;)V

    .line 2333
    .line 2334
    .line 2335
    :cond_3d
    :goto_1a
    return-void

    .line 2336
    nop

    .line 2337
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 2338
    .line 2339
    .line 2340
    .line 2341
    .line 2342
    .line 2343
    .line 2344
    .line 2345
    .line 2346
    .line 2347
    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
