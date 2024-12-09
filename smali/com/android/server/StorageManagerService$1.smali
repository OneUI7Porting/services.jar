.class public final Lcom/android/server/StorageManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/StorageManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

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
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/server/StorageManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "StorageManagerService"

    .line 7
    .line 8
    const-string v0, "Monitored package uninstalled: "

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :try_start_0
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Lcom/android/server/StorageManagerService;->PASS_CLIENTS:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    const-string v2, "android.intent.extra.UID"

    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 52
    .line 53
    invoke-interface {v2, v1, p0, p2}, Landroid/os/IVold;->destroyPassStorage(Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ", uid: "

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p2, ", result: "

    .line 74
    .line 75
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception p0

    .line 90
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    const-string/jumbo p1, "mPolicyReceiver :: "

    .line 95
    .line 96
    .line 97
    const-string p2, "StorageManagerService"

    .line 98
    .line 99
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 103
    .line 104
    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowedByEAS(Z)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string/jumbo v2, "applyCurrentSdCardPolicy :: "

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {p2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    if-ne v0, p1, :cond_6

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-ge v0, v1, :cond_6

    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 148
    .line 149
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    const/4 v5, 0x2

    .line 160
    if-ne v4, v5, :cond_1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_1
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    if-nez v4, :cond_2

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string/jumbo v5, "removable storage path :: "

    .line 173
    .line 174
    .line 175
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {p2, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :try_start_1
    iget v1, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 189
    .line 190
    if-ne v1, p1, :cond_5

    .line 191
    .line 192
    const/16 v1, 0x1e

    .line 193
    .line 194
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 199
    .line 200
    .line 201
    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    if-ne v2, p1, :cond_4

    .line 203
    .line 204
    add-int/lit8 v2, v1, -0x1

    .line 205
    .line 206
    if-ltz v1, :cond_3

    .line 207
    .line 208
    const-wide/16 v4, 0x3e8

    .line 209
    .line 210
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 211
    .line 212
    .line 213
    move v1, v2

    .line 214
    goto :goto_2

    .line 215
    :catch_1
    move-exception v1

    .line 216
    goto :goto_3

    .line 217
    :catch_2
    move-exception v1

    .line 218
    :try_start_3
    const-string v4, "Interrupted while waiting for media"

    .line 219
    .line 220
    invoke-static {p2, v4, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .line 222
    .line 223
    :cond_3
    move v1, v2

    .line 224
    :cond_4
    if-nez v1, :cond_5

    .line 225
    .line 226
    const-string v1, "Timed out waiting for media to check"

    .line 227
    .line 228
    invoke-static {p2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :goto_3
    const-string/jumbo v2, "volume removed, while waiting "

    .line 236
    .line 237
    .line 238
    invoke-static {p2, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .line 240
    .line 241
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_6
    return-void

    .line 245
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    const-string v0, "android.intent.extra.user_handle"

    .line 250
    .line 251
    const/4 v1, -0x1

    .line 252
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    const/4 v0, 0x0

    .line 257
    if-ltz p2, :cond_7

    .line 258
    .line 259
    const/4 v2, 0x1

    .line 260
    goto :goto_5

    .line 261
    :cond_7
    move v2, v0

    .line 262
    :goto_5
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 263
    .line 264
    .line 265
    :try_start_4
    const-string v2, "android.intent.action.USER_ADDED"

    .line 266
    .line 267
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_9

    .line 272
    .line 273
    iget-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 274
    .line 275
    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 276
    .line 277
    const-class v0, Landroid/os/UserManager;

    .line 278
    .line 279
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Landroid/os/UserManager;

    .line 284
    .line 285
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_8

    .line 298
    .line 299
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 300
    .line 301
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 302
    .line 303
    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 304
    .line 305
    invoke-interface {p0, p2, v0, p1}, Landroid/os/IVold;->onUserAdded(III)V

    .line 306
    .line 307
    .line 308
    goto :goto_a

    .line 309
    :catch_3
    move-exception p0

    .line 310
    goto :goto_9

    .line 311
    :cond_8
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 312
    .line 313
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 314
    .line 315
    invoke-interface {p0, p2, v0, v1}, Landroid/os/IVold;->onUserAdded(III)V

    .line 316
    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_9
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 320
    .line 321
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-eqz p1, :cond_c

    .line 326
    .line 327
    iget-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 328
    .line 329
    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 330
    .line 331
    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 332
    :try_start_5
    iget-object v1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 333
    .line 334
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 335
    .line 336
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    :goto_6
    if-ge v0, v1, :cond_b

    .line 341
    .line 342
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 343
    .line 344
    iget-object v2, v2, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 345
    .line 346
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 351
    .line 352
    iget v3, v2, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 353
    .line 354
    if-ne v3, p2, :cond_a

    .line 355
    .line 356
    const/16 v3, -0x2710

    .line 357
    .line 358
    iput v3, v2, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 359
    .line 360
    iget-object v3, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 361
    .line 362
    iget-object v3, v3, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 363
    .line 364
    const/16 v4, 0x8

    .line 365
    .line 366
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 371
    .line 372
    .line 373
    goto :goto_7

    .line 374
    :catchall_0
    move-exception p0

    .line 375
    goto :goto_8

    .line 376
    :cond_a
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_b
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 380
    :try_start_6
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 381
    .line 382
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 383
    .line 384
    invoke-interface {p0, p2}, Landroid/os/IVold;->onUserRemoved(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 385
    .line 386
    .line 387
    goto :goto_a

    .line 388
    :goto_8
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 389
    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 390
    :goto_9
    const-string p1, "StorageManagerService"

    .line 391
    .line 392
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .line 394
    .line 395
    :cond_c
    :goto_a
    return-void

    .line 396
    nop

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
