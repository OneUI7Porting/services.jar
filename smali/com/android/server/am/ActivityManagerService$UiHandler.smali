.class public final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private final handleMessage$com$android$server$am$ActivityManagerService$UiHandler(Landroid/os/Message;)V
    .locals 8

    .line 1
    const-string v0, "App already has strict mode dialog: "

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_20

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_1f

    .line 10
    .line 11
    const/4 v3, 0x6

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v1, v3, :cond_1b

    .line 14
    .line 15
    const/16 v3, 0x1a

    .line 16
    .line 17
    if-eq v1, v3, :cond_17

    .line 18
    .line 19
    const/16 v0, 0x44

    .line 20
    .line 21
    if-eq v1, v0, :cond_16

    .line 22
    .line 23
    const/16 v0, 0x46

    .line 24
    .line 25
    if-eq v1, v0, :cond_15

    .line 26
    .line 27
    const/16 v0, 0x1f

    .line 28
    .line 29
    if-eq v1, v0, :cond_14

    .line 30
    .line 31
    const/16 v0, 0x20

    .line 32
    .line 33
    if-eq v1, v0, :cond_11

    .line 34
    .line 35
    const/16 v0, 0x50

    .line 36
    .line 37
    if-eq v1, v0, :cond_8

    .line 38
    .line 39
    const/16 v0, 0x51

    .line 40
    .line 41
    if-eq v1, v0, :cond_0

    .line 42
    .line 43
    goto/16 :goto_e

    .line 44
    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 48
    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/os/IBinder;

    .line 52
    .line 53
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_0
    add-int/lit8 v3, v1, -0x1

    .line 62
    .line 63
    if-lez v1, :cond_7

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 72
    .line 73
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    .line 74
    .line 75
    invoke-interface {v5, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    iget-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    array-length v3, v0

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_1
    array-length v3, v0

    .line 90
    sub-int/2addr v3, v2

    .line 91
    new-array v3, v3, [I

    .line 92
    .line 93
    iput-object v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 94
    .line 95
    move v3, v4

    .line 96
    :goto_1
    array-length v5, v0

    .line 97
    if-ge v4, v5, :cond_7

    .line 98
    .line 99
    if-nez v3, :cond_4

    .line 100
    .line 101
    aget v5, v0, v4

    .line 102
    .line 103
    if-ne v5, p1, :cond_2

    .line 104
    .line 105
    move v3, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    array-length v6, v0

    .line 108
    sub-int/2addr v6, v2

    .line 109
    if-ne v4, v6, :cond_3

    .line 110
    .line 111
    iput-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    iget-object v6, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 115
    .line 116
    aput v5, v6, v4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 120
    .line 121
    add-int/lit8 v6, v4, -0x1

    .line 122
    .line 123
    aget v7, v0, v4

    .line 124
    .line 125
    aput v7, v5, v6

    .line 126
    .line 127
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    if-nez v3, :cond_6

    .line 131
    .line 132
    const-string v1, "ActivityManager"

    .line 133
    .line 134
    const-string v5, "Unable to find UidObserver by token"

    .line 135
    .line 136
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_6
    move v1, v3

    .line 140
    goto :goto_0

    .line 141
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_e

    .line 147
    .line 148
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 151
    .line 152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Landroid/os/IBinder;

    .line 155
    .line 156
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 157
    .line 158
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    :goto_4
    add-int/lit8 v3, v1, -0x1

    .line 165
    .line 166
    if-lez v1, :cond_10

    .line 167
    .line 168
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 169
    .line 170
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 175
    .line 176
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    .line 177
    .line 178
    invoke-interface {v5, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_e

    .line 183
    .line 184
    iget-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 185
    .line 186
    if-nez v0, :cond_9

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_9
    array-length v3, v0

    .line 190
    add-int/2addr v3, v2

    .line 191
    new-array v3, v3, [I

    .line 192
    .line 193
    iput-object v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 194
    .line 195
    move v3, v4

    .line 196
    :goto_5
    array-length v5, v0

    .line 197
    if-ge v4, v5, :cond_d

    .line 198
    .line 199
    if-nez v3, :cond_c

    .line 200
    .line 201
    aget v5, v0, v4

    .line 202
    .line 203
    if-ge v5, p1, :cond_a

    .line 204
    .line 205
    iget-object v6, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 206
    .line 207
    aput v5, v6, v4

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_a
    if-ne v5, p1, :cond_b

    .line 211
    .line 212
    iput-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_b
    iget-object v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 216
    .line 217
    aput p1, v3, v4

    .line 218
    .line 219
    add-int/lit8 v5, v4, 0x1

    .line 220
    .line 221
    aget v6, v0, v4

    .line 222
    .line 223
    aput v6, v3, v5

    .line 224
    .line 225
    move v3, v2

    .line 226
    goto :goto_6

    .line 227
    :cond_c
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 228
    .line 229
    add-int/lit8 v6, v4, 0x1

    .line 230
    .line 231
    aget v7, v0, v4

    .line 232
    .line 233
    aput v7, v5, v6

    .line 234
    .line 235
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_d
    if-nez v3, :cond_10

    .line 239
    .line 240
    iget-object v1, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 241
    .line 242
    array-length v0, v0

    .line 243
    aput p1, v1, v0

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_e
    if-nez v3, :cond_f

    .line 247
    .line 248
    const-string v1, "ActivityManager"

    .line 249
    .line 250
    const-string v5, "Unable to find UidObserver by token"

    .line 251
    .line 252
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    :cond_f
    move v1, v3

    .line 256
    goto :goto_4

    .line 257
    :cond_10
    :goto_7
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 258
    .line 259
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_e

    .line 263
    .line 264
    :cond_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 265
    .line 266
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 269
    .line 270
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 271
    .line 272
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    :catch_0
    :cond_12
    :goto_8
    if-lez v1, :cond_13

    .line 279
    .line 280
    add-int/lit8 v1, v1, -0x1

    .line 281
    .line 282
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 283
    .line 284
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    check-cast v2, Landroid/app/IProcessObserver;

    .line 289
    .line 290
    if-eqz v2, :cond_12

    .line 291
    .line 292
    :try_start_0
    invoke-interface {v2, v0, p1}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_13
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 297
    .line 298
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_e

    .line 302
    .line 303
    :cond_14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 304
    .line 305
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 306
    .line 307
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->dispatchProcessesChanged()V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_e

    .line 311
    .line 312
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 313
    .line 314
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast p1, Ljava/lang/String;

    .line 317
    .line 318
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    .line 319
    .line 320
    monitor-enter v0

    .line 321
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    .line 322
    .line 323
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 324
    if-eqz p0, :cond_22

    .line 325
    .line 326
    check-cast p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    .line 327
    .line 328
    monitor-enter p0

    .line 329
    :try_start_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 330
    .line 331
    .line 332
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 334
    .line 335
    const-string v2, "# "

    .line 336
    .line 337
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 341
    .line 342
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 346
    .line 347
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 348
    .line 349
    .line 350
    :try_start_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 351
    .line 352
    .line 353
    monitor-exit p0

    .line 354
    goto/16 :goto_e

    .line 355
    .line 356
    :catchall_0
    move-exception p1

    .line 357
    goto :goto_9

    .line 358
    :catchall_1
    move-exception p1

    .line 359
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 360
    .line 361
    .line 362
    throw p1

    .line 363
    :goto_9
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    throw p1

    .line 365
    :catchall_2
    move-exception p0

    .line 366
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 367
    throw p0

    .line 368
    :cond_16
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->pushTempAllowlist()V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_e

    .line 374
    .line 375
    :cond_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast p1, Ljava/util/HashMap;

    .line 378
    .line 379
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 380
    .line 381
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 382
    .line 383
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 384
    .line 385
    .line 386
    monitor-enter v1

    .line 387
    :try_start_6
    const-string/jumbo v2, "app"

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 395
    .line 396
    if-nez v2, :cond_18

    .line 397
    .line 398
    const-string p0, "ActivityManager"

    .line 399
    .line 400
    const-string p1, "App not found when showing strict mode dialog."

    .line 401
    .line 402
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 406
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_e

    .line 410
    .line 411
    :catchall_3
    move-exception p0

    .line 412
    goto :goto_b

    .line 413
    :cond_18
    :try_start_7
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 414
    .line 415
    iget-object v3, v3, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 416
    .line 417
    iget-object v3, v3, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 418
    .line 419
    if-eqz v3, :cond_19

    .line 420
    .line 421
    const-string p0, "ActivityManager"

    .line 422
    .line 423
    new-instance p1, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 439
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 440
    .line 441
    .line 442
    return-void

    .line 443
    :cond_19
    :try_start_8
    const-string/jumbo v0, "result"

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    check-cast p1, Lcom/android/server/am/AppErrorResult;

    .line 451
    .line 452
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 453
    .line 454
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 455
    .line 456
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->showStrictModeViolationDialog()Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    if-eqz v0, :cond_1a

    .line 461
    .line 462
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 463
    .line 464
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 465
    .line 466
    invoke-virtual {v0, p1}, Lcom/android/server/am/ErrorDialogController;->showViolationDialogs(Lcom/android/server/am/AppErrorResult;)V

    .line 467
    .line 468
    .line 469
    goto :goto_a

    .line 470
    :cond_1a
    invoke-virtual {p1, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 471
    .line 472
    .line 473
    :goto_a
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 474
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 475
    .line 476
    .line 477
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_e

    .line 483
    .line 484
    :goto_b
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 485
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 486
    .line 487
    .line 488
    throw p0

    .line 489
    :cond_1b
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 490
    .line 491
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 492
    .line 493
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 494
    .line 495
    .line 496
    monitor-enter v0

    .line 497
    :try_start_a
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 500
    .line 501
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 502
    .line 503
    if-eqz p1, :cond_1c

    .line 504
    .line 505
    iget-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    .line 506
    .line 507
    if-nez p1, :cond_1e

    .line 508
    .line 509
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 510
    .line 511
    iget-object p1, p1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 512
    .line 513
    invoke-virtual {p1, v2}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    check-cast v1, Ljava/util/ArrayList;

    .line 518
    .line 519
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    check-cast v1, Landroid/content/Context;

    .line 524
    .line 525
    new-instance v3, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 526
    .line 527
    iget-object v4, p1, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 528
    .line 529
    iget-object v5, p1, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 530
    .line 531
    invoke-direct {v3, v5, v1, v4}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 532
    .line 533
    .line 534
    iput-object v3, p1, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 535
    .line 536
    iget-object v1, v5, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 537
    .line 538
    new-instance v3, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    .line 539
    .line 540
    const/4 v4, 0x0

    .line 541
    invoke-direct {v3, v4, p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 545
    .line 546
    .line 547
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    .line 548
    .line 549
    goto :goto_c

    .line 550
    :catchall_4
    move-exception p0

    .line 551
    goto :goto_d

    .line 552
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 553
    .line 554
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 555
    .line 556
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 557
    .line 558
    if-nez p1, :cond_1d

    .line 559
    .line 560
    goto :goto_c

    .line 561
    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 562
    .line 563
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 564
    .line 565
    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    .line 566
    .line 567
    const/4 v3, 0x2

    .line 568
    invoke-direct {v2, v3, p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    .line 573
    .line 574
    const/4 p1, 0x0

    .line 575
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 576
    .line 577
    :cond_1e
    :goto_c
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 578
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 579
    .line 580
    .line 581
    goto :goto_e

    .line 582
    :goto_d
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 583
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 584
    .line 585
    .line 586
    throw p0

    .line 587
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 588
    .line 589
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 590
    .line 591
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V

    .line 592
    .line 593
    .line 594
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 595
    .line 596
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 597
    .line 598
    .line 599
    goto :goto_e

    .line 600
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 601
    .line 602
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 603
    .line 604
    if-nez v0, :cond_21

    .line 605
    .line 606
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 607
    .line 608
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 609
    .line 610
    if-nez v0, :cond_21

    .line 611
    .line 612
    const-string v0, "ActivityManager"

    .line 613
    .line 614
    const-string v1, "SHOW_ERROR_UI_MSG will deliver again in 5s"

    .line 615
    .line 616
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .line 618
    .line 619
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 620
    .line 621
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 622
    .line 623
    iget v1, p1, Landroid/os/Message;->what:I

    .line 624
    .line 625
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 626
    .line 627
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 628
    .line 629
    .line 630
    move-result-object p1

    .line 631
    const-wide/16 v0, 0x1388

    .line 632
    .line 633
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 634
    .line 635
    .line 636
    goto :goto_e

    .line 637
    :cond_21
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 638
    .line 639
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 640
    .line 641
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V

    .line 642
    .line 643
    .line 644
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 645
    .line 646
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 647
    .line 648
    .line 649
    :cond_22
    :goto_e
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    if-eq v0, v1, :cond_15

    .line 10
    .line 11
    const/16 v1, 0x14

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_14

    .line 15
    .line 16
    const/16 v1, 0x16

    .line 17
    .line 18
    if-eq v0, v1, :cond_13

    .line 19
    .line 20
    const/16 v1, 0x21

    .line 21
    .line 22
    if-eq v0, v1, :cond_12

    .line 23
    .line 24
    const/16 v1, 0x29

    .line 25
    .line 26
    if-eq v0, v1, :cond_f

    .line 27
    .line 28
    const/16 v1, 0x3f

    .line 29
    .line 30
    if-eq v0, v1, :cond_c

    .line 31
    .line 32
    const/16 v1, 0x45

    .line 33
    .line 34
    if-eq v0, v1, :cond_b

    .line 35
    .line 36
    const/16 v1, 0x5a

    .line 37
    .line 38
    if-eq v0, v1, :cond_9

    .line 39
    .line 40
    const/16 v1, 0xc

    .line 41
    .line 42
    if-eq v0, v1, :cond_8

    .line 43
    .line 44
    const/16 v1, 0xd

    .line 45
    .line 46
    if-eq v0, v1, :cond_7

    .line 47
    .line 48
    const/16 v1, 0x42

    .line 49
    .line 50
    if-eq v0, v1, :cond_6

    .line 51
    .line 52
    const/16 v1, 0x43

    .line 53
    .line 54
    if-eq v0, v1, :cond_5

    .line 55
    .line 56
    packed-switch v0, :pswitch_data_1

    .line 57
    .line 58
    .line 59
    packed-switch v0, :pswitch_data_2

    .line 60
    .line 61
    .line 62
    packed-switch v0, :pswitch_data_3

    .line 63
    .line 64
    .line 65
    packed-switch v0, :pswitch_data_4

    .line 66
    .line 67
    .line 68
    packed-switch v0, :pswitch_data_5

    .line 69
    .line 70
    .line 71
    goto/16 :goto_b

    .line 72
    .line 73
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 74
    .line 75
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleFollowUpOomAdjusterUpdate(Lcom/android/server/am/ActivityManagerService;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_b

    .line 79
    .line 80
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 83
    .line 84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onFgsCrashTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_b

    .line 92
    .line 93
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 96
    .line 97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onFgsTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_b

    .line 105
    .line 106
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 107
    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->handleBindApplicationTimeoutHard(Lcom/android/server/am/ProcessRecord;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_b

    .line 116
    .line 117
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 118
    .line 119
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 122
    .line 123
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 129
    .line 130
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 131
    .line 132
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 133
    .line 134
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuDelayTimeForPid(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 141
    .line 142
    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    sub-long v5, v1, v3

    .line 149
    .line 150
    const-wide/16 v7, 0x0

    .line 151
    .line 152
    int-to-long v9, p1

    .line 153
    invoke-static/range {v5 .. v10}, Landroid/util/MathUtils;->constrain(JJJ)J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    const-wide/16 v3, 0x0

    .line 158
    .line 159
    cmp-long p1, v1, v3

    .line 160
    .line 161
    if-nez p1, :cond_0

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->handleBindApplicationTimeoutHard(Lcom/android/server/am/ProcessRecord;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_b

    .line 167
    .line 168
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v3, "Extending process start timeout by "

    .line 171
    .line 172
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string/jumbo v3, "ms for "

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string v3, "ActivityManager"

    .line 192
    .line 193
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string/jumbo v3, "bindApplicationTimeSoft "

    .line 199
    .line 200
    .line 201
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v3, "("

    .line 210
    .line 211
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 215
    .line 216
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v3, ")"

    .line 220
    .line 221
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const-wide/16 v3, 0x40

    .line 229
    .line 230
    invoke-static {v3, v4, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 234
    .line 235
    const/16 v3, 0x53

    .line 236
    .line 237
    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 242
    .line 243
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    .line 245
    .line 246
    goto/16 :goto_b

    .line 247
    .line 248
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 249
    .line 250
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 251
    .line 252
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 253
    .line 254
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast p1, Ljava/lang/Long;

    .line 257
    .line 258
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 259
    .line 260
    .line 261
    move-result-wide v0

    .line 262
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->updateCachedAppsSnapshot(J)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_b

    .line 266
    .line 267
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 268
    .line 269
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 270
    .line 271
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 274
    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsAnrTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_b

    .line 279
    .line 280
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 281
    .line 282
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 283
    .line 284
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 287
    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsProcstateTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_b

    .line 292
    .line 293
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 294
    .line 295
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 296
    .line 297
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 300
    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_b

    .line 305
    .line 306
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 307
    .line 308
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBindServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 309
    .line 310
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;

    .line 311
    .line 312
    const/4 v1, 0x1

    .line 313
    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/Message;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_b

    .line 320
    .line 321
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 322
    .line 323
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 324
    .line 325
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;

    .line 326
    .line 327
    const/4 v1, 0x0

    .line 328
    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/Message;I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_b

    .line 335
    .line 336
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 337
    .line 338
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 339
    .line 340
    .line 341
    monitor-enter v0

    .line 342
    :try_start_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    .line 345
    .line 346
    invoke-virtual {p0, v2}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 347
    .line 348
    .line 349
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_b

    .line 354
    .line 355
    :catchall_0
    move-exception p0

    .line 356
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 358
    .line 359
    .line 360
    throw p0

    .line 361
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 362
    .line 363
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleBinderHeavyHitterAutoSamplerTimeOut(Lcom/android/server/am/ActivityManagerService;)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_b

    .line 367
    .line 368
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 369
    .line 370
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 371
    .line 372
    .line 373
    monitor-enter v0

    .line 374
    :try_start_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast p1, Landroid/os/AppZygote;

    .line 377
    .line 378
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 379
    .line 380
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 381
    .line 382
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 383
    .line 384
    .line 385
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 386
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_b

    .line 390
    .line 391
    :catchall_1
    move-exception p0

    .line 392
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 393
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 394
    .line 395
    .line 396
    throw p0

    .line 397
    :pswitch_e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 398
    .line 399
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_b

    .line 403
    .line 404
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    .line 406
    move-object v1, p1

    .line 407
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 408
    .line 409
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 410
    .line 411
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 412
    .line 413
    .line 414
    monitor-enter v8

    .line 415
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 416
    .line 417
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    .line 418
    .line 419
    const/4 p1, 0x1

    .line 420
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 421
    .line 422
    .line 423
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 424
    .line 425
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 426
    .line 427
    const-string/jumbo v6, "timeout publishing content providers"

    .line 428
    .line 429
    .line 430
    const/4 v4, 0x7

    .line 431
    const/4 v5, 0x0

    .line 432
    const/4 v7, 0x1

    .line 433
    const/4 v2, 0x0

    .line 434
    const/4 v3, 0x1

    .line 435
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 436
    .line 437
    .line 438
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 439
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_b

    .line 443
    .line 444
    :catchall_2
    move-exception p0

    .line 445
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 446
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 447
    .line 448
    .line 449
    throw p0

    .line 450
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast p1, Landroid/app/IUiAutomationConnection;

    .line 453
    .line 454
    :try_start_6
    invoke-interface {p1}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 455
    .line 456
    .line 457
    goto :goto_0

    .line 458
    :catch_0
    const-string p1, "ActivityManager"

    .line 459
    .line 460
    const-string v0, "Error shutting down UiAutomationConnection"

    .line 461
    .line 462
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 466
    .line 467
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerService;->mUserIsMonkey:Z

    .line 468
    .line 469
    goto/16 :goto_b

    .line 470
    .line 471
    :pswitch_11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 472
    .line 473
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 474
    .line 475
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast p1, Ljava/lang/String;

    .line 478
    .line 479
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler;->handleAbortDumpHeap(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_b

    .line 483
    .line 484
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 485
    .line 486
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 487
    .line 488
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->handlePostDumpHeapNotification()V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_b

    .line 492
    .line 493
    :pswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 494
    .line 495
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast p1, [B

    .line 498
    .line 499
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 500
    .line 501
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 502
    .line 503
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 504
    .line 505
    .line 506
    monitor-enter v1

    .line 507
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 508
    .line 509
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 510
    .line 511
    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 512
    :goto_1
    :try_start_8
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 513
    .line 514
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 515
    .line 516
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v4, Landroid/util/SparseArray;

    .line 519
    .line 520
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 521
    .line 522
    .line 523
    move-result v4

    .line 524
    if-ge v2, v4, :cond_2

    .line 525
    .line 526
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 527
    .line 528
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 529
    .line 530
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 535
    .line 536
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 537
    .line 538
    if-ne v4, v0, :cond_1

    .line 539
    .line 540
    if-eqz v5, :cond_1

    .line 541
    .line 542
    :try_start_9
    invoke-interface {v5, p1}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 543
    .line 544
    .line 545
    goto :goto_2

    .line 546
    :catchall_3
    move-exception p0

    .line 547
    goto :goto_3

    .line 548
    :catch_1
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 549
    .line 550
    goto :goto_1

    .line 551
    :cond_2
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 552
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 553
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_b

    .line 557
    .line 558
    :catchall_4
    move-exception p0

    .line 559
    goto :goto_4

    .line 560
    :goto_3
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 561
    :try_start_d
    throw p0

    .line 562
    :goto_4
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 563
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 564
    .line 565
    .line 566
    throw p0

    .line 567
    :pswitch_14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 568
    .line 569
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 570
    .line 571
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->setAllHttpProxy()V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_b

    .line 575
    .line 576
    :pswitch_15
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 577
    .line 578
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 579
    .line 580
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 581
    .line 582
    .line 583
    monitor-enter p1

    .line 584
    :try_start_e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 585
    .line 586
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 587
    .line 588
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    add-int/lit8 v0, v0, -0x1

    .line 595
    .line 596
    :goto_5
    if-ltz v0, :cond_4

    .line 597
    .line 598
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 599
    .line 600
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 605
    .line 606
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 607
    .line 608
    if-eqz v2, :cond_3

    .line 609
    .line 610
    :try_start_f
    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 611
    .line 612
    .line 613
    goto :goto_6

    .line 614
    :catch_2
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    const-string v3, "Failed to clear dns cache for: "

    .line 617
    .line 618
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 622
    .line 623
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 624
    .line 625
    const-string v3, "ActivityManager"

    .line 626
    .line 627
    invoke-static {v2, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    :cond_3
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 631
    .line 632
    goto :goto_5

    .line 633
    :cond_4
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 634
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_b

    .line 638
    .line 639
    :catchall_5
    move-exception p0

    .line 640
    :try_start_11
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 641
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 642
    .line 643
    .line 644
    throw p0

    .line 645
    :pswitch_16
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 646
    .line 647
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mcheckExcessivePowerUsage(Lcom/android/server/am/ActivityManagerService;)V

    .line 648
    .line 649
    .line 650
    const/16 p1, 0x1b

    .line 651
    .line 652
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 660
    .line 661
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 662
    .line 663
    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 664
    .line 665
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 666
    .line 667
    .line 668
    goto/16 :goto_b

    .line 669
    .line 670
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 673
    .line 674
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 675
    .line 676
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 677
    .line 678
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 681
    .line 682
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v1, Lcom/android/internal/os/TimeoutRecord;

    .line 685
    .line 686
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 687
    .line 688
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    .line 689
    .line 690
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_b

    .line 697
    .line 698
    :cond_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 699
    .line 700
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 701
    .line 702
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 703
    .line 704
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 705
    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 707
    .line 708
    .line 709
    goto/16 :goto_b

    .line 710
    .line 711
    :cond_7
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 712
    .line 713
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 714
    .line 715
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 716
    .line 717
    .line 718
    monitor-enter v0

    .line 719
    :try_start_12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 720
    .line 721
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 722
    .line 723
    new-instance p1, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda0;

    .line 724
    .line 725
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 726
    .line 727
    .line 728
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 729
    .line 730
    .line 731
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 732
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_b

    .line 736
    .line 737
    :catchall_6
    move-exception p0

    .line 738
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 739
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 740
    .line 741
    .line 742
    throw p0

    .line 743
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 744
    .line 745
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 746
    .line 747
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 750
    .line 751
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 752
    .line 753
    .line 754
    goto/16 :goto_b

    .line 755
    .line 756
    :cond_9
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 757
    .line 758
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 759
    .line 760
    if-nez v0, :cond_a

    .line 761
    .line 762
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 763
    .line 764
    const-string v1, "APP_LAUNCH"

    .line 765
    .line 766
    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    iput-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 771
    .line 772
    :cond_a
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 773
    .line 774
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 775
    .line 776
    if-eqz p1, :cond_16

    .line 777
    .line 778
    const/16 v0, 0x12

    .line 779
    .line 780
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 781
    .line 782
    .line 783
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 784
    .line 785
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 786
    .line 787
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 788
    .line 789
    .line 790
    goto/16 :goto_b

    .line 791
    .line 792
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 793
    .line 794
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 795
    .line 796
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 797
    .line 798
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 799
    .line 800
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 803
    .line 804
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 805
    .line 806
    check-cast v1, Ljava/lang/String;

    .line 807
    .line 808
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 809
    .line 810
    check-cast v2, Landroid/content/ComponentName;

    .line 811
    .line 812
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 813
    .line 814
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 815
    .line 816
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 817
    .line 818
    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 819
    .line 820
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 821
    .line 822
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 823
    .line 824
    const-string p0, "Context.startForegroundService() did not then call Service.startForeground(): "

    .line 825
    .line 826
    invoke-static {p0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v8

    .line 830
    invoke-static {v2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;->createExtrasForService(Landroid/content/ComponentName;)Landroid/os/Bundle;

    .line 831
    .line 832
    .line 833
    move-result-object v11

    .line 834
    const/4 v9, 0x0

    .line 835
    const/4 v10, 0x1

    .line 836
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 840
    .line 841
    .line 842
    goto/16 :goto_b

    .line 843
    .line 844
    :cond_c
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 845
    .line 846
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 847
    .line 848
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 849
    .line 850
    .line 851
    monitor-enter v0

    .line 852
    :try_start_14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 853
    .line 854
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 855
    .line 856
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 857
    .line 858
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 859
    .line 860
    .line 861
    move-result p1

    .line 862
    add-int/lit8 p1, p1, -0x1

    .line 863
    .line 864
    :goto_7
    if-ltz p1, :cond_e

    .line 865
    .line 866
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 867
    .line 868
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 873
    .line 874
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 875
    .line 876
    if-eqz v2, :cond_d

    .line 877
    .line 878
    :try_start_15
    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 879
    .line 880
    .line 881
    goto :goto_8

    .line 882
    :catch_3
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 883
    .line 884
    const-string v3, "Failed to handle trust storage update for: "

    .line 885
    .line 886
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 890
    .line 891
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 892
    .line 893
    const-string v3, "ActivityManager"

    .line 894
    .line 895
    invoke-static {v2, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    :cond_d
    :goto_8
    add-int/lit8 p1, p1, -0x1

    .line 899
    .line 900
    goto :goto_7

    .line 901
    :cond_e
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 902
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 903
    .line 904
    .line 905
    goto/16 :goto_b

    .line 906
    .line 907
    :catchall_7
    move-exception p0

    .line 908
    :try_start_17
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 909
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 910
    .line 911
    .line 912
    throw p0

    .line 913
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 914
    .line 915
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 916
    .line 917
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 918
    .line 919
    .line 920
    monitor-enter v0

    .line 921
    :try_start_18
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 922
    .line 923
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 924
    .line 925
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 926
    .line 927
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 928
    .line 929
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 930
    .line 931
    .line 932
    move-result v1

    .line 933
    add-int/lit8 v1, v1, -0x1

    .line 934
    .line 935
    :goto_9
    if-ltz v1, :cond_11

    .line 936
    .line 937
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 938
    .line 939
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v2

    .line 943
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 944
    .line 945
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 946
    .line 947
    if-eqz v3, :cond_10

    .line 948
    .line 949
    :try_start_19
    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 950
    .line 951
    .line 952
    goto :goto_a

    .line 953
    :catch_4
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 954
    .line 955
    const-string v4, "Failed to update preferences for: "

    .line 956
    .line 957
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 961
    .line 962
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 963
    .line 964
    const-string v4, "ActivityManager"

    .line 965
    .line 966
    invoke-static {v3, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    :cond_10
    :goto_a
    add-int/lit8 v1, v1, -0x1

    .line 970
    .line 971
    goto :goto_9

    .line 972
    :cond_11
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 973
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 974
    .line 975
    .line 976
    goto :goto_b

    .line 977
    :catchall_8
    move-exception p0

    .line 978
    :try_start_1b
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 979
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 980
    .line 981
    .line 982
    throw p0

    .line 983
    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 984
    .line 985
    check-cast p1, Ljava/util/ArrayList;

    .line 986
    .line 987
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    .line 988
    .line 989
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;Ljava/util/ArrayList;)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 993
    .line 994
    .line 995
    goto :goto_b

    .line 996
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 997
    .line 998
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 999
    .line 1000
    .line 1001
    monitor-enter v0

    .line 1002
    :try_start_1c
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1003
    .line 1004
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 1005
    .line 1006
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1009
    .line 1010
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1011
    .line 1012
    move-object v7, v1

    .line 1013
    check-cast v7, Ljava/lang/String;

    .line 1014
    .line 1015
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1016
    .line 1017
    move-object v8, v1

    .line 1018
    check-cast v8, Ljava/lang/String;

    .line 1019
    .line 1020
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1021
    .line 1022
    check-cast v1, Ljava/lang/Integer;

    .line 1023
    .line 1024
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1025
    .line 1026
    .line 1027
    move-result v4

    .line 1028
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1029
    .line 1030
    .line 1031
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1032
    .line 1033
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 1034
    .line 1035
    const/4 v6, 0x0

    .line 1036
    const/4 v5, 0x0

    .line 1037
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerServiceExt;->forceStopPackageLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    .line 1038
    .line 1039
    .line 1040
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 1041
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1042
    .line 1043
    .line 1044
    goto :goto_b

    .line 1045
    :catchall_9
    move-exception p0

    .line 1046
    :try_start_1d
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 1047
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1048
    .line 1049
    .line 1050
    throw p0

    .line 1051
    :cond_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1052
    .line 1053
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 1054
    .line 1055
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1056
    .line 1057
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1058
    .line 1059
    .line 1060
    monitor-enter v0

    .line 1061
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1062
    .line 1063
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1064
    .line 1065
    .line 1066
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 1067
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1068
    .line 1069
    .line 1070
    goto :goto_b

    .line 1071
    :catchall_a
    move-exception p0

    .line 1072
    :try_start_1f
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 1073
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1074
    .line 1075
    .line 1076
    throw p0

    .line 1077
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1078
    .line 1079
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1080
    .line 1081
    .line 1082
    monitor-enter v0

    .line 1083
    :try_start_20
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1084
    .line 1085
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1086
    .line 1087
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsIfAppropriateLocked()V

    .line 1088
    .line 1089
    .line 1090
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 1091
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1092
    .line 1093
    .line 1094
    :cond_16
    :goto_b
    return-void

    .line 1095
    :catchall_b
    move-exception p0

    .line 1096
    :try_start_21
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 1097
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1098
    .line 1099
    .line 1100
    throw p0

    .line 1101
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$UiHandler;->handleMessage$com$android$server$am$ActivityManagerService$UiHandler(Landroid/os/Message;)V

    .line 1102
    .line 1103
    .line 1104
    return-void

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch

    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    :pswitch_data_3
    .packed-switch 0x38
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    :pswitch_data_4
    .packed-switch 0x47
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    :pswitch_data_5
    .packed-switch 0x52
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
