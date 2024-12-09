.class public final Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget v1, v0, Landroid/os/Message;->what:I

    .line 4
    .line 5
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 6
    .line 7
    move-object/from16 v2, p0

    .line 8
    .line 9
    iget-object v2, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 10
    .line 11
    const-string v3, "com.samsung.android.mcfds"

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    const-string v6, "[MCF_DS_SYS]_McfDsManager"

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    const/4 v8, 0x2

    .line 19
    if-eqz v1, :cond_c

    .line 20
    .line 21
    if-eq v1, v7, :cond_b

    .line 22
    .line 23
    const/4 v9, 0x3

    .line 24
    if-eq v1, v8, :cond_4

    .line 25
    .line 26
    if-eq v1, v9, :cond_3

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    if-eq v1, v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    goto/16 :goto_7

    .line 35
    .line 36
    :cond_0
    iget-object v0, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    .line 37
    .line 38
    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const-string/jumbo v1, "replacedPackage - remove unbind message"

    .line 45
    .line 46
    .line 47
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v9}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const-string/jumbo v0, "replacedPackage - has bind message"

    .line 60
    .line 61
    .line 62
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_2
    const-string/jumbo v0, "replacedPackage"

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x5

    .line 74
    invoke-virtual {v2, v8, v0, v4, v5}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IIJ)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_7

    .line 78
    .line 79
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_4
    iget-boolean v1, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    .line 85
    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    const-string v0, "bindMcf - invalid state"

    .line 89
    .line 90
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    goto/16 :goto_7

    .line 94
    .line 95
    :cond_5
    iget-object v1, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 96
    .line 97
    iget v4, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 98
    .line 99
    if-eqz v4, :cond_7

    .line 100
    .line 101
    if-ne v4, v7, :cond_6

    .line 102
    .line 103
    const/4 v5, 0x6

    .line 104
    if-eq v0, v5, :cond_7

    .line 105
    .line 106
    :cond_6
    const-string v1, "bindMcf - invalid state "

    .line 107
    .line 108
    const-string v3, ", reason "

    .line 109
    .line 110
    invoke-static {v4, v0, v1, v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    if-ne v4, v9, :cond_1e

    .line 114
    .line 115
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->initMcfDeviceSyncMainController(I)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_7
    iget-object v5, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 121
    .line 122
    if-nez v5, :cond_8

    .line 123
    .line 124
    const-string v0, "bindMcf - null current user handle"

    .line 125
    .line 126
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    goto/16 :goto_7

    .line 130
    .line 131
    :cond_8
    new-instance v9, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

    .line 132
    .line 133
    invoke-direct {v9, v2, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    .line 134
    .line 135
    .line 136
    const-string v10, "[MCF_DS_LIB]_DeviceSyncManager"

    .line 137
    .line 138
    if-eqz v4, :cond_9

    .line 139
    .line 140
    if-eq v4, v7, :cond_9

    .line 141
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v3, "connectServiceAsUser : invalid request "

    .line 145
    .line 146
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget v1, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 150
    .line 151
    invoke-static {v2, v1, v10}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_9
    new-instance v4, Landroid/content/Intent;

    .line 156
    .line 157
    const-string v11, "com.samsung.android.mcfds.ACTION_START"

    .line 158
    .line 159
    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v11, Landroid/content/ComponentName;

    .line 163
    .line 164
    const-string v12, "com.samsung.android.mcfds.McfDeviceSyncService"

    .line 165
    .line 166
    invoke-direct {v11, v3, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    iget-object v3, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    const-string v11, "Caller"

    .line 179
    .line 180
    invoke-virtual {v4, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    iget-object v3, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    iget-object v11, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceConnection:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    .line 186
    .line 187
    invoke-virtual {v3, v4, v11, v7, v5}, Landroid/content/Context;->semBindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_a

    .line 192
    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v3, "connectServiceAsUser : success "

    .line 196
    .line 197
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    iput v8, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    .line 215
    .line 216
    iput-object v9, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

    .line 217
    .line 218
    :goto_0
    const-string v1, "bindMcf - success with reason: "

    .line 219
    .line 220
    invoke-static {v0, v1, v6}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_7

    .line 224
    .line 225
    :cond_a
    const-string v1, "connectService : failed"

    .line 226
    .line 227
    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v3, "bindMcf - failed with reason: "

    .line 233
    .line 234
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    const-wide/16 v3, 0xbb8

    .line 248
    .line 249
    invoke-virtual {v2, v8, v0, v3, v4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IIJ)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_7

    .line 253
    .line 254
    :cond_b
    invoke-virtual {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_7

    .line 258
    .line 259
    :cond_c
    iget-object v0, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 260
    .line 261
    const/16 v1, -0x2710

    .line 262
    .line 263
    if-nez v0, :cond_d

    .line 264
    .line 265
    move v0, v1

    .line 266
    goto :goto_1

    .line 267
    :cond_d
    sget-object v9, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    :goto_1
    if-ne v0, v1, :cond_e

    .line 274
    .line 275
    const-string/jumbo v0, "start : userId is USER_NULL"

    .line 276
    .line 277
    .line 278
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    goto/16 :goto_7

    .line 282
    .line 283
    :cond_e
    new-instance v1, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    .line 284
    .line 285
    invoke-direct {v1, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    .line 286
    .line 287
    .line 288
    iget-object v6, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 289
    .line 290
    iput v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 291
    .line 292
    iput-object v1, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    .line 293
    .line 294
    new-instance v12, Landroid/content/IntentFilter;

    .line 295
    .line 296
    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 300
    .line 301
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 305
    .line 306
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 310
    .line 311
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-string/jumbo v0, "package"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const-string v1, "com.samsung.android.scloud"

    .line 321
    .line 322
    const/4 v15, 0x0

    .line 323
    invoke-virtual {v12, v1, v15}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v12, v3, v15}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    iget-object v9, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 330
    .line 331
    iget v10, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 332
    .line 333
    invoke-static {v10}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    sget-object v10, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 338
    .line 339
    const/4 v14, 0x0

    .line 340
    const/16 v16, 0x2

    .line 341
    .line 342
    iget-object v10, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    .line 343
    .line 344
    const/4 v13, 0x0

    .line 345
    move v4, v15

    .line 346
    move/from16 v15, v16

    .line 347
    .line 348
    invoke-virtual/range {v9 .. v15}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 349
    .line 350
    .line 351
    new-instance v5, Landroid/content/IntentFilter;

    .line 352
    .line 353
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    .line 357
    .line 358
    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5, v3, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 365
    .line 366
    .line 367
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 368
    .line 369
    iget v9, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 370
    .line 371
    invoke-static {v9}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 372
    .line 373
    .line 374
    move-result-object v19

    .line 375
    const/16 v22, 0x0

    .line 376
    .line 377
    const/16 v23, 0x2

    .line 378
    .line 379
    iget-object v9, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    .line 380
    .line 381
    const/16 v21, 0x0

    .line 382
    .line 383
    move-object/from16 v17, v0

    .line 384
    .line 385
    move-object/from16 v18, v9

    .line 386
    .line 387
    move-object/from16 v20, v5

    .line 388
    .line 389
    invoke-virtual/range {v17 .. v23}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 390
    .line 391
    .line 392
    iput-boolean v7, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsPkgObserverRegistered:Z

    .line 393
    .line 394
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 395
    .line 396
    invoke-static {v0, v1}, Lcom/samsung/android/server/continuity/common/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_f

    .line 401
    .line 402
    const/16 v0, 0xf0

    .line 403
    .line 404
    invoke-virtual {v6, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    .line 405
    .line 406
    .line 407
    :cond_f
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 408
    .line 409
    invoke-static {v0, v3}, Lcom/samsung/android/server/continuity/common/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_10

    .line 414
    .line 415
    const/16 v0, 0xf00

    .line 416
    .line 417
    invoke-virtual {v6, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    .line 418
    .line 419
    .line 420
    :cond_10
    invoke-virtual {v6}, Lcom/samsung/android/server/continuity/PreconditionObserver;->getSamsungAccount()Landroid/accounts/Account;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    iput-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    .line 425
    .line 426
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 427
    .line 428
    iget v1, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 429
    .line 430
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    const-string/jumbo v3, "mcf_continuity"

    .line 435
    .line 436
    .line 437
    const/4 v5, -0x1

    .line 438
    invoke-static {v0, v3, v5, v1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-ne v0, v5, :cond_12

    .line 443
    .line 444
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    .line 445
    .line 446
    if-eqz v0, :cond_11

    .line 447
    .line 448
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isHighPowerConsumptionChipset()Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-nez v0, :cond_11

    .line 453
    .line 454
    move v15, v7

    .line 455
    goto :goto_2

    .line 456
    :cond_11
    move v15, v4

    .line 457
    :goto_2
    invoke-virtual {v6, v15}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V

    .line 458
    .line 459
    .line 460
    :cond_12
    invoke-virtual {v6}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings()Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    invoke-virtual {v6, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->updateSettings(Z)V

    .line 465
    .line 466
    .line 467
    sget v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->FEATURE_CONTINUITY:I

    .line 468
    .line 469
    const-string v1, "[MCF_DS_SYS]_PreconditionObserver"

    .line 470
    .line 471
    if-gtz v0, :cond_13

    .line 472
    .line 473
    const-string/jumbo v0, "registerSettingsObserver - invalid feature value"

    .line 474
    .line 475
    .line 476
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    goto/16 :goto_5

    .line 480
    .line 481
    :cond_13
    iget-boolean v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    .line 482
    .line 483
    if-eqz v0, :cond_14

    .line 484
    .line 485
    goto/16 :goto_5

    .line 486
    .line 487
    :cond_14
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_15

    .line 492
    .line 493
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 494
    .line 495
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    iget-object v5, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

    .line 504
    .line 505
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 506
    .line 507
    .line 508
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 509
    .line 510
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    const-string/jumbo v3, "multi_control_enabled"

    .line 515
    .line 516
    .line 517
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 522
    .line 523
    .line 524
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 525
    .line 526
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    const-string/jumbo v3, "vcc_continuity"

    .line 531
    .line 532
    .line 533
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 538
    .line 539
    .line 540
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 541
    .line 542
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    const-string v3, "hwrs_service"

    .line 547
    .line 548
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 553
    .line 554
    .line 555
    :cond_15
    invoke-static {v8}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_1a

    .line 560
    .line 561
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    const-string v5, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    .line 571
    .line 572
    if-nez v3, :cond_16

    .line 573
    .line 574
    const-string/jumbo v0, "start - null bluetoothAdapter"

    .line 575
    .line 576
    .line 577
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    goto :goto_4

    .line 581
    :cond_16
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    iget-object v9, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mBtStateReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 586
    .line 587
    if-eqz v3, :cond_18

    .line 588
    .line 589
    const-string/jumbo v3, "start - BleEnabled true"

    .line 590
    .line 591
    .line 592
    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setStandAloneBleMode(Z)V

    .line 596
    .line 597
    .line 598
    iget-boolean v3, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    .line 599
    .line 600
    if-eqz v3, :cond_17

    .line 601
    .line 602
    iput-boolean v4, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    .line 603
    .line 604
    iget-object v3, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 605
    .line 606
    invoke-virtual {v3, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 607
    .line 608
    .line 609
    :cond_17
    new-instance v3, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;

    .line 610
    .line 611
    invoke-direct {v3, v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    .line 612
    .line 613
    .line 614
    sget-object v4, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 615
    .line 616
    new-instance v5, Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable;

    .line 617
    .line 618
    invoke-direct {v5, v3}, Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 622
    .line 623
    .line 624
    goto :goto_3

    .line 625
    :cond_18
    iget-boolean v3, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    .line 626
    .line 627
    if-nez v3, :cond_19

    .line 628
    .line 629
    const-string v3, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 630
    .line 631
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 632
    .line 633
    invoke-static {v3, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    iget-object v4, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 638
    .line 639
    invoke-virtual {v4, v9, v3, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 640
    .line 641
    .line 642
    iput-boolean v7, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    .line 643
    .line 644
    :cond_19
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setStandAloneBleMode(Z)V

    .line 645
    .line 646
    .line 647
    :goto_3
    const-string v3, "com.samsung.bluetooth.device.action.AUTO_SWITCH_MODE_CHANGED"

    .line 648
    .line 649
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    iget-object v4, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 654
    .line 655
    iget-object v5, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 656
    .line 657
    invoke-virtual {v4, v5, v3, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 658
    .line 659
    .line 660
    new-instance v11, Landroid/content/IntentFilter;

    .line 661
    .line 662
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 663
    .line 664
    .line 665
    const-string v3, "com.samsung.intent.action.SETTINGS_WIFI_BLUETOOTH_RESET"

    .line 666
    .line 667
    invoke-virtual {v11, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    iget-object v9, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 671
    .line 672
    const-string v12, "com.sec.android.settings.permission.WIFI_BLUETOOTH_RESET"

    .line 673
    .line 674
    const/4 v13, 0x0

    .line 675
    iget-object v10, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 676
    .line 677
    const/4 v14, 0x2

    .line 678
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 679
    .line 680
    .line 681
    const-string v3, "android.intent.action.SETTINGS_SOFT_RESET"

    .line 682
    .line 683
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 684
    .line 685
    .line 686
    move-result-object v11

    .line 687
    iget-object v9, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    .line 688
    .line 689
    const-string v12, "com.sec.android.settings.permission.SOFT_RESET"

    .line 690
    .line 691
    iget-object v10, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    .line 692
    .line 693
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 694
    .line 695
    .line 696
    :cond_1a
    :goto_4
    iput-boolean v7, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    .line 697
    .line 698
    :goto_5
    iget-boolean v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    .line 699
    .line 700
    if-eqz v0, :cond_1b

    .line 701
    .line 702
    const-string v0, "addOnAccountsUpdatedListener - already added"

    .line 703
    .line 704
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .line 706
    .line 707
    goto :goto_6

    .line 708
    :cond_1b
    const-string v0, "addOnAccountsUpdatedListener"

    .line 709
    .line 710
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .line 712
    .line 713
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 714
    .line 715
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    sget-object v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

    .line 720
    .line 721
    filled-new-array {v1}, [Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    const/4 v3, 0x0

    .line 726
    iget-object v4, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

    .line 727
    .line 728
    invoke-virtual {v0, v4, v3, v7, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    iget v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 732
    .line 733
    if-eqz v0, :cond_1c

    .line 734
    .line 735
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 736
    .line 737
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 738
    .line 739
    .line 740
    move-result-object v12

    .line 741
    iget-object v9, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    .line 742
    .line 743
    iget v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    .line 744
    .line 745
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 746
    .line 747
    .line 748
    move-result-object v11

    .line 749
    const/4 v13, 0x0

    .line 750
    const/4 v14, 0x0

    .line 751
    iget-object v10, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/continuity/PreconditionObserver$1;

    .line 752
    .line 753
    const/4 v15, 0x2

    .line 754
    invoke-virtual/range {v9 .. v15}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 755
    .line 756
    .line 757
    :cond_1c
    iput-boolean v7, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    .line 758
    .line 759
    :goto_6
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    .line 760
    .line 761
    if-eqz v0, :cond_1d

    .line 762
    .line 763
    const/16 v0, 0xf

    .line 764
    .line 765
    invoke-virtual {v6, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    .line 766
    .line 767
    .line 768
    :cond_1d
    invoke-virtual {v6}, Lcom/samsung/android/server/continuity/PreconditionObserver;->meetConditions()Z

    .line 769
    .line 770
    .line 771
    move-result v0

    .line 772
    iput-boolean v0, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    .line 773
    .line 774
    if-eqz v0, :cond_1e

    .line 775
    .line 776
    const-wide/16 v0, 0x0

    .line 777
    .line 778
    invoke-virtual {v2, v8, v7, v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IIJ)V

    .line 779
    .line 780
    .line 781
    :cond_1e
    :goto_7
    return-void
.end method
