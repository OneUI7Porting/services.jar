.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/android/server/am/UserState;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-string p0, "ActivityManager"

    .line 24
    .line 25
    const-string v0, "User\'s CE storage got locked unexpectedly, leaving user locked."

    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v2, p0, Lcom/android/server/am/UserState;->state:I

    .line 32
    .line 33
    const-string/jumbo v3, "finishUserUnlocking"

    .line 34
    .line 35
    .line 36
    const-string v4, "Start getUserManager().onBeforeUnlockUser"

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 43
    .line 44
    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "UM.onBeforeUnlockUser-"

    .line 50
    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v3, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 74
    .line 75
    .line 76
    iget v2, p0, Lcom/android/server/am/UserState;->state:I

    .line 77
    .line 78
    const-string/jumbo v3, "finishUserUnlocking"

    .line 79
    .line 80
    .line 81
    const-string v4, "End getUserManager().onBeforeUnlockUser"

    .line 82
    .line 83
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter v2

    .line 89
    const/4 v3, 0x2

    .line 90
    :try_start_0
    invoke-virtual {p0, v5, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_1

    .line 95
    .line 96
    monitor-exit v2

    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget v3, p0, Lcom/android/server/am/UserState;->state:I

    .line 108
    .line 109
    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 113
    .line 114
    const/16 v3, 0x14

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    iput-wide v2, v0, Lcom/android/server/am/UserController;->mLastUserUnlockingUptime:J

    .line 124
    .line 125
    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 126
    .line 127
    const/16 v2, 0x64

    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    .line 136
    .line 137
    iget p0, p0, Lcom/android/server/am/UserState;->state:I

    .line 138
    .line 139
    const-string/jumbo v0, "finishUserUnlocking"

    .line 140
    .line 141
    .line 142
    const-string/jumbo v2, "sendToTarget USER_UNLOCK_MSG"

    .line 143
    .line 144
    .line 145
    invoke-static {v1, p0, v5, v0, v2}, Lcom/android/server/am/UserController;->showEventLog(IIILjava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_0
    return-void

    .line 149
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw p0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    .line 152
    .line 153
    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Ljava/util/List;

    .line 158
    .line 159
    const-string v2, "Locking CE storage for user #"

    .line 160
    .line 161
    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 162
    .line 163
    monitor-enter v3

    .line 164
    :try_start_2
    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 165
    .line 166
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    if-eqz v4, :cond_2

    .line 171
    .line 172
    const-string p0, "ActivityManager"

    .line 173
    .line 174
    const-string v0, "User was restarted, skipping key eviction"

    .line 175
    .line 176
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    monitor-exit v3

    .line 180
    goto :goto_3

    .line 181
    :catchall_1
    move-exception p0

    .line 182
    goto :goto_4

    .line 183
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    :try_start_3
    const-string v3, "ActivityManager"

    .line 185
    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    const-string/jumbo v0, "mount"

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {v0, v1}, Landroid/os/storage/IStorageManager;->lockCeStorage(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 218
    .line 219
    .line 220
    if-nez p0, :cond_3

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_3
    const/4 v0, 0x0

    .line 224
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-ge v0, v2, :cond_4

    .line 229
    .line 230
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Lcom/android/server/am/UserController$4;

    .line 235
    .line 236
    iget-object v3, v2, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    .line 237
    .line 238
    iget-object v3, v3, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 239
    .line 240
    new-instance v4, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;

    .line 241
    .line 242
    iget v5, v2, Lcom/android/server/am/UserController$4;->val$userStartMode:I

    .line 243
    .line 244
    const/4 v6, 0x1

    .line 245
    invoke-direct {v4, v1, v5, v6, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;-><init>(IIILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    .line 250
    .line 251
    add-int/lit8 v0, v0, 0x1

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_4
    :goto_3
    return-void

    .line 255
    :catch_0
    move-exception p0

    .line 256
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    throw p0

    .line 261
    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 262
    throw p0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserController;

    .line 264
    .line 265
    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$1:I

    .line 266
    .line 267
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast p0, Ljava/lang/Runnable;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    new-instance v3, Landroid/content/Intent;

    .line 275
    .line 276
    const-string v2, "android.intent.action.USER_STOPPING"

    .line 277
    .line 278
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const/high16 v2, 0x40000000    # 2.0f

    .line 282
    .line 283
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    const-string v2, "android.intent.extra.user_handle"

    .line 287
    .line 288
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    const-string v2, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    .line 292
    .line 293
    const/4 v4, 0x1

    .line 294
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    new-instance v4, Lcom/android/server/am/UserController$5;

    .line 298
    .line 299
    check-cast p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    .line 300
    .line 301
    invoke-direct {v4, v1, p0}, Lcom/android/server/am/UserController$5;-><init>(ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;)V

    .line 302
    .line 303
    .line 304
    new-instance p0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 305
    .line 306
    invoke-direct {p0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 307
    .line 308
    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string/jumbo v5, "clearBroadcastQueueForUser-"

    .line 312
    .line 313
    .line 314
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v5, "-[stopUser]"

    .line 321
    .line 322
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {p0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 333
    .line 334
    iget-object v5, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 335
    .line 336
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 337
    .line 338
    .line 339
    monitor-enter v5

    .line 340
    :try_start_5
    iget-object v2, v2, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 341
    .line 342
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 343
    .line 344
    const/4 v6, 0x0

    .line 345
    invoke-virtual {v2, v1, v6, v6}, Lcom/android/server/am/BroadcastQueueModernImpl;->cleanupDisabledPackageReceiversLocked(ILjava/lang/String;Ljava/util/Set;)Z

    .line 346
    .line 347
    .line 348
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 349
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 353
    .line 354
    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string/jumbo v2, "broadcast-ACTION_USER_STOPPING-"

    .line 358
    .line 359
    .line 360
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v2, "-[stopUser]"

    .line 367
    .line 368
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    invoke-static {v1, p0}, Lcom/android/server/am/UserController;->asyncTraceBegin(ILjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 379
    .line 380
    const-string p0, "android.permission.INTERACT_ACROSS_USERS"

    .line 381
    .line 382
    filled-new-array {p0}, [Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 387
    .line 388
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    const/4 v6, 0x0

    .line 397
    const/4 v10, -0x1

    .line 398
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :catchall_2
    move-exception p0

    .line 403
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 404
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 405
    .line 406
    .line 407
    throw p0

    .line 408
    nop

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
