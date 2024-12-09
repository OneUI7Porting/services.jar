.class public final Lcom/android/server/wm/DexController$H;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DexController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DexController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

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
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eq v0, v2, :cond_a

    .line 7
    .line 8
    if-eq v0, v1, :cond_9

    .line 9
    .line 10
    const/4 v4, 0x6

    .line 11
    if-eq v0, v4, :cond_8

    .line 12
    .line 13
    const/4 v4, 0x7

    .line 14
    if-eq v0, v4, :cond_3

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0xb

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_d

    .line 25
    .line 26
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 29
    .line 30
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Landroid/graphics/Rect;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_0
    if-ge v3, v2, :cond_1

    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 52
    .line 53
    iget-object v4, v4, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lcom/samsung/android/multiwindow/IDexSnappingCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    :try_start_1
    invoke-interface {v4, v0, p1}, Lcom/samsung/android/multiwindow/IDexSnappingCallback;->onWindowSnappingChanged(ILandroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception v4

    .line 68
    :try_start_2
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 79
    .line 80
    .line 81
    monitor-exit v1

    .line 82
    goto/16 :goto_d

    .line 83
    .line 84
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p0

    .line 86
    :cond_2
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    const v1, 0x103012b

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const v0, 0x104045e

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p1, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_d

    .line 125
    .line 126
    :cond_3
    const-string v0, "DexController"

    .line 127
    .line 128
    const-string v3, "handleMessage: START_DEX_HOME"

    .line 129
    .line 130
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 136
    .line 137
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 138
    .line 139
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 146
    .line 147
    if-nez v0, :cond_4

    .line 148
    .line 149
    const-string p0, "DexController"

    .line 150
    .line 151
    const-string/jumbo p1, "startHomeOnDexDisplay: Cannot found DesktopModeService"

    .line 152
    .line 153
    .line 154
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 159
    .line 160
    .line 161
    move-result-wide v3

    .line 162
    :try_start_3
    iget-object v5, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 163
    .line 164
    iget-object v5, v5, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 165
    .line 166
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 167
    .line 168
    .line 169
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 170
    :try_start_4
    iget-object v6, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 171
    .line 172
    iget-object v6, v6, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    .line 173
    .line 174
    check-cast v6, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    xor-int/2addr v6, v2

    .line 181
    if-nez v6, :cond_5

    .line 182
    .line 183
    iget-object v7, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 184
    .line 185
    iget-object v7, v7, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 186
    .line 187
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 188
    .line 189
    invoke-virtual {v7, p1, v2}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :catchall_1
    move-exception p0

    .line 194
    goto/16 :goto_7

    .line 195
    .line 196
    :cond_5
    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 197
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 198
    .line 199
    .line 200
    const-string v2, "DexController"

    .line 201
    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v7, "START_DEX_HOME: minimizeAll for "

    .line 205
    .line 206
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide v7

    .line 213
    sub-long/2addr v7, v3

    .line 214
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string/jumbo v3, "ms"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v2

    .line 234
    :try_start_6
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->startHome()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 235
    .line 236
    .line 237
    const-string v4, "DexController"

    .line 238
    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v7, "START_DEX_HOME: startHome for "

    .line 242
    .line 243
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v7

    .line 250
    sub-long/2addr v7, v2

    .line 251
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string/jumbo v2, "ms"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 268
    .line 269
    .line 270
    move-result-wide v2

    .line 271
    :try_start_7
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v4, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 276
    .line 277
    iget-object v4, v4, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 278
    .line 279
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 280
    .line 281
    .line 282
    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 283
    if-eqz v6, :cond_7

    .line 284
    .line 285
    if-eq p1, v1, :cond_6

    .line 286
    .line 287
    :try_start_8
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    const/4 v1, 0x4

    .line 292
    if-ne v0, v1, :cond_7

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :catchall_2
    move-exception p0

    .line 296
    goto :goto_5

    .line 297
    :cond_6
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 298
    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->restoreToggleTasksToFrontLocked(I)V

    .line 300
    .line 301
    .line 302
    :cond_7
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 303
    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 304
    .line 305
    .line 306
    const-string p0, "DexController"

    .line 307
    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v0, "START_DEX_HOME: restoreToggle for "

    .line 311
    .line 312
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 316
    .line 317
    .line 318
    move-result-wide v0

    .line 319
    sub-long/2addr v0, v2

    .line 320
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string/jumbo v0, "ms"

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    goto/16 :goto_d

    .line 337
    .line 338
    :catchall_3
    move-exception p0

    .line 339
    goto :goto_6

    .line 340
    :goto_5
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 341
    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 342
    .line 343
    .line 344
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 345
    :goto_6
    const-string p1, "DexController"

    .line 346
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v1, "START_DEX_HOME: restoreToggle for "

    .line 350
    .line 351
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 355
    .line 356
    .line 357
    move-result-wide v4

    .line 358
    sub-long/2addr v4, v2

    .line 359
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string/jumbo v1, "ms"

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    throw p0

    .line 376
    :catchall_4
    move-exception p0

    .line 377
    const-string p1, "DexController"

    .line 378
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v1, "START_DEX_HOME: startHome for "

    .line 382
    .line 383
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 387
    .line 388
    .line 389
    move-result-wide v4

    .line 390
    sub-long/2addr v4, v2

    .line 391
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string/jumbo v1, "ms"

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    throw p0

    .line 408
    :catchall_5
    move-exception p0

    .line 409
    goto :goto_8

    .line 410
    :goto_7
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 411
    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 412
    .line 413
    .line 414
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 415
    :goto_8
    const-string p1, "DexController"

    .line 416
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v1, "START_DEX_HOME: minimizeAll for "

    .line 420
    .line 421
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 425
    .line 426
    .line 427
    move-result-wide v1

    .line 428
    sub-long/2addr v1, v3

    .line 429
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string/jumbo v1, "ms"

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    throw p0

    .line 446
    :cond_8
    :try_start_e
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 447
    .line 448
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->notifyAppTransitionFinished()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 449
    .line 450
    .line 451
    goto/16 :goto_d

    .line 452
    .line 453
    :catch_1
    const-string p0, "DexController"

    .line 454
    .line 455
    const-string p1, "Failed to notify AppTransitionFinished"

    .line 456
    .line 457
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    goto/16 :goto_d

    .line 461
    .line 462
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 463
    .line 464
    invoke-static {p0}, Lcom/android/server/wm/DexController;->-$$Nest$mreparentToDisplayAndStartPendingActivity(Lcom/android/server/wm/DexController;)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_d

    .line 468
    .line 469
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast v0, Lcom/android/server/wm/DexRestartAppInfo;

    .line 472
    .line 473
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 474
    .line 475
    iget-object p0, p0, Lcom/android/server/wm/DexController$H;->this$0:Lcom/android/server/wm/DexController;

    .line 476
    .line 477
    if-nez v0, :cond_b

    .line 478
    .line 479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    const-string p0, "DexController"

    .line 483
    .line 484
    const-string p1, "DisplayChooserInfo is null. Abort to start pending activity"

    .line 485
    .line 486
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    goto/16 :goto_d

    .line 490
    .line 491
    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 492
    .line 493
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 494
    .line 495
    .line 496
    monitor-enter v4

    .line 497
    :try_start_f
    iget v5, v0, Lcom/android/server/wm/DexRestartAppInfo;->mUid:I

    .line 498
    .line 499
    iget-object v6, v0, Lcom/android/server/wm/DexRestartAppInfo;->mProcessName:Ljava/lang/String;

    .line 500
    .line 501
    invoke-virtual {p0, v5, p1, v6, v3}, Lcom/android/server/wm/DexController;->getTaskLocked(IILjava/lang/String;Z)Ljava/util/ArrayList;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    iget-object v6, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 506
    .line 507
    invoke-virtual {v6}, Lcom/android/server/wm/DexController$PendingActivityInfo;->reset()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 511
    .line 512
    .line 513
    move-result v6

    .line 514
    if-nez v6, :cond_15

    .line 515
    .line 516
    iget-object v6, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 517
    .line 518
    invoke-virtual {v6, v0, v5, p1}, Lcom/android/server/wm/DexController$PendingActivityInfo;->set(Lcom/android/server/wm/DexRestartAppInfo;Ljava/util/ArrayList;I)V

    .line 519
    .line 520
    .line 521
    new-instance p1, Ljava/util/HashSet;

    .line 522
    .line 523
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    :cond_c
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    if-eqz v5, :cond_13

    .line 535
    .line 536
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    check-cast v5, Lcom/android/server/wm/DexController$FindTaskResult;

    .line 541
    .line 542
    iget-object v5, v5, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 543
    .line 544
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    if-eqz v6, :cond_d

    .line 549
    .line 550
    move-object v6, v5

    .line 551
    goto :goto_a

    .line 552
    :cond_d
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 553
    .line 554
    .line 555
    move-result-object v6

    .line 556
    :goto_a
    if-nez v6, :cond_e

    .line 557
    .line 558
    goto :goto_9

    .line 559
    :cond_e
    iget-boolean v7, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    .line 560
    .line 561
    if-nez v7, :cond_f

    .line 562
    .line 563
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 564
    .line 565
    .line 566
    move-result v7

    .line 567
    if-ne v7, v1, :cond_f

    .line 568
    .line 569
    invoke-virtual {v5, v3, v2}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 570
    .line 571
    .line 572
    move-result-object v5

    .line 573
    if-eqz v5, :cond_c

    .line 574
    .line 575
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 576
    .line 577
    if-eqz v6, :cond_c

    .line 578
    .line 579
    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 580
    .line 581
    .line 582
    goto :goto_9

    .line 583
    :catchall_6
    move-exception p0

    .line 584
    goto/16 :goto_e

    .line 585
    .line 586
    :cond_f
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    .line 587
    .line 588
    .line 589
    move-result v7

    .line 590
    if-eqz v7, :cond_11

    .line 591
    .line 592
    iget-object v7, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 593
    .line 594
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 595
    .line 596
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 597
    .line 598
    if-eqz v7, :cond_11

    .line 599
    .line 600
    iget-boolean v8, v7, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 601
    .line 602
    if-eqz v8, :cond_10

    .line 603
    .line 604
    move v8, v2

    .line 605
    goto :goto_b

    .line 606
    :cond_10
    move v8, v1

    .line 607
    :goto_b
    const-string v9, "cancelAnimationForDisplayChange"

    .line 608
    .line 609
    invoke-virtual {v7, v8, v9, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 610
    .line 611
    .line 612
    :cond_11
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 613
    .line 614
    .line 615
    move-result v7

    .line 616
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 617
    .line 618
    .line 619
    move-result-object v7

    .line 620
    invoke-virtual {p1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    iput-boolean v2, v5, Lcom/android/server/wm/Task;->mIsAvoidTrimDexPendingActivityTask:Z

    .line 624
    .line 625
    iget-object v7, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 626
    .line 627
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 628
    .line 629
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 630
    .line 631
    if-eqz v8, :cond_12

    .line 632
    .line 633
    iput-boolean v3, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 634
    .line 635
    :cond_12
    const/4 v7, 0x0

    .line 636
    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z

    .line 637
    .line 638
    .line 639
    goto :goto_9

    .line 640
    :cond_13
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 641
    .line 642
    .line 643
    move-result-object p1

    .line 644
    :cond_14
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-eqz v0, :cond_15

    .line 649
    .line 650
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    check-cast v0, Ljava/lang/Integer;

    .line 655
    .line 656
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 657
    .line 658
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    if-eqz v0, :cond_14

    .line 669
    .line 670
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    if-eqz v1, :cond_14

    .line 679
    .line 680
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    iget-object v5, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 685
    .line 686
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 687
    .line 688
    invoke-virtual {v5, v1, v0, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    .line 689
    .line 690
    .line 691
    goto :goto_c

    .line 692
    :cond_15
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 693
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 694
    .line 695
    .line 696
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    .line 697
    .line 698
    const/4 v0, 0x3

    .line 699
    const-wide/16 v1, 0xfa0

    .line 700
    .line 701
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 702
    .line 703
    .line 704
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DexController;->scheduleReparentToDisplayAndStartPendingActivity(Z)V

    .line 705
    .line 706
    .line 707
    :goto_d
    return-void

    .line 708
    :goto_e
    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 709
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 710
    .line 711
    .line 712
    throw p0
.end method
