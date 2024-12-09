.class public final Lcom/samsung/server/wallpaper/DesktopMode$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/DesktopMode;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/DesktopMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DesktopMode$1;->this$0:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 10

    .line 1
    const-string v0, "DesktopMode"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Wallpaper onDesktopModeChanged : "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->DESKTOP_STANDALONE_MODE_WALLPAPER:Z

    .line 21
    .line 22
    const/16 v1, 0x65

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ne v4, v1, :cond_4

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x3

    .line 39
    if-ne v4, v5, :cond_0

    .line 40
    .line 41
    move v4, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v4, v2

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-ne v5, v3, :cond_1

    .line 49
    .line 50
    move v5, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v5, v2

    .line 53
    :goto_1
    iget-object v6, p0, Lcom/samsung/server/wallpaper/DesktopMode$1;->this$0:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 54
    .line 55
    iget-object v6, v6, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v6

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/samsung/server/wallpaper/DesktopMode$1;->this$0:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 61
    .line 62
    iput v1, v4, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    if-eqz v5, :cond_3

    .line 68
    .line 69
    iget-object v4, p0, Lcom/samsung/server/wallpaper/DesktopMode$1;->this$0:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 70
    .line 71
    iput v2, v4, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 72
    .line 73
    :cond_3
    :goto_2
    monitor-exit v6

    .line 74
    goto :goto_4

    .line 75
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0

    .line 77
    :cond_4
    :goto_4
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    const/4 v5, 0x4

    .line 82
    const/16 v6, 0x32

    .line 83
    .line 84
    if-ne v4, v5, :cond_5

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-ne v4, v6, :cond_5

    .line 91
    .line 92
    iget-object v4, p0, Lcom/samsung/server/wallpaper/DesktopMode$1;->this$0:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 93
    .line 94
    iput-boolean v3, v4, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    const/4 v5, 0x2

    .line 102
    if-ne v4, v5, :cond_13

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-ne v4, v6, :cond_13

    .line 109
    .line 110
    iget-object v4, p0, Lcom/samsung/server/wallpaper/DesktopMode$1;->this$0:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 111
    .line 112
    iput-boolean v2, v4, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 113
    .line 114
    :goto_5
    if-nez v0, :cond_6

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-ne v0, v1, :cond_6

    .line 121
    .line 122
    const-string p0, "DesktopMode"

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "Do not switch dex wallpaper if standalone mode : "

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_6
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DesktopMode$1;->this$0:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 143
    .line 144
    iget-object p1, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 145
    .line 146
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 147
    .line 148
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 159
    .line 160
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 161
    .line 162
    monitor-enter v1

    .line 163
    const/16 v4, 0x9

    .line 164
    .line 165
    if-nez p0, :cond_7

    .line 166
    .line 167
    :try_start_1
    const-string v5, "WallpaperManagerService"

    .line 168
    .line 169
    const-string v6, "DesktopMode disabled"

    .line 170
    .line 171
    invoke-static {v5, v6}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 175
    .line 176
    iget v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 177
    .line 178
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 183
    .line 184
    invoke-virtual {v6, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :catchall_1
    move-exception p0

    .line 189
    goto/16 :goto_e

    .line 190
    .line 191
    :cond_7
    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 193
    .line 194
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 195
    .line 196
    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    const-string v5, "mDesktopMode = "

    .line 202
    .line 203
    const-string v6, "DesktopMode"

    .line 204
    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string/jumbo v8, "onRefreshWallpaperByUiMode() isDesktopMode = "

    .line 208
    .line 209
    .line 210
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-static {v6, v7}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v6, v1, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopModeLock:Ljava/lang/Object;

    .line 224
    .line 225
    monitor-enter v6

    .line 226
    :try_start_2
    iput-boolean p0, v1, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 227
    .line 228
    if-eqz p0, :cond_8

    .line 229
    .line 230
    const-class v2, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 231
    .line 232
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    if-eqz v2, :cond_a

    .line 243
    .line 244
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    iput v2, v1, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :catchall_2
    move-exception p0

    .line 252
    goto/16 :goto_d

    .line 253
    .line 254
    :cond_8
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    if-eqz v7, :cond_9

    .line 259
    .line 260
    iput v2, v1, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 261
    .line 262
    const-string v1, "DesktopMode"

    .line 263
    .line 264
    const-string v2, "No need to refresh phone wallpaper when Dual dex is disabled"

    .line 265
    .line 266
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    monitor-exit v6

    .line 270
    goto/16 :goto_a

    .line 271
    .line 272
    :cond_9
    iput v2, v1, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 273
    .line 274
    :cond_a
    :goto_7
    const-string v2, "DesktopMode"

    .line 275
    .line 276
    new-instance v7, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget v5, v1, Lcom/samsung/server/wallpaper/DesktopMode;->mDesktopMode:I

    .line 282
    .line 283
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-static {v2, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopMode()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_b

    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-eqz v2, :cond_b

    .line 304
    .line 305
    const-string v1, "DesktopMode"

    .line 306
    .line 307
    const-string v2, "No need to refresh phone wallpaper when Dual dex is enabled"

    .line 308
    .line 309
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    monitor-exit v6

    .line 313
    goto :goto_a

    .line 314
    :cond_b
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 315
    iget-object v2, v1, Lcom/samsung/server/wallpaper/DesktopMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 316
    .line 317
    iget-object v5, v1, Lcom/samsung/server/wallpaper/DesktopMode;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 318
    .line 319
    iget v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 320
    .line 321
    iget-boolean v1, v1, Lcom/samsung/server/wallpaper/DesktopMode;->mIsDesktopMode:Z

    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    if-eqz v1, :cond_c

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_c
    const/4 v4, 0x5

    .line 330
    :goto_8
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 331
    .line 332
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 333
    .line 334
    monitor-enter v7

    .line 335
    :try_start_3
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 336
    .line 337
    iget-object v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 338
    .line 339
    invoke-virtual {v6, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    if-nez v6, :cond_d

    .line 344
    .line 345
    const-string v6, "WallpaperManagerService"

    .line 346
    .line 347
    const-string/jumbo v8, "no current wallpaper -- first switching DeX?"

    .line 348
    .line 349
    .line 350
    invoke-static {v6, v8}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 354
    .line 355
    invoke-virtual {v6, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    goto :goto_9

    .line 360
    :catchall_3
    move-exception p0

    .line 361
    goto :goto_c

    .line 362
    :cond_d
    :goto_9
    iget-object v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 363
    .line 364
    iget-object v8, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 365
    .line 366
    iget-object v8, v8, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 367
    .line 368
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    new-instance v8, Ljava/io/File;

    .line 372
    .line 373
    invoke-static {v5}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    const-string/jumbo v9, "wallpaper_desktop_orig"

    .line 378
    .line 379
    .line 380
    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 384
    .line 385
    .line 386
    move-result v5

    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string v9, "isDesktopWallpaperFileExist "

    .line 390
    .line 391
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v8

    .line 401
    const-string v9, "DesktopMode"

    .line 402
    .line 403
    invoke-static {v9, v8}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    const/4 v8, 0x0

    .line 407
    if-nez v5, :cond_e

    .line 408
    .line 409
    if-nez v1, :cond_f

    .line 410
    .line 411
    :cond_e
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 412
    .line 413
    invoke-virtual {v1, v6, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 417
    .line 418
    .line 419
    :cond_f
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 420
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 421
    .line 422
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 423
    .line 424
    iget v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 425
    .line 426
    invoke-virtual {v1, v2, v4, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(IILandroid/os/Bundle;)V

    .line 427
    .line 428
    .line 429
    :goto_a
    if-eqz v0, :cond_10

    .line 430
    .line 431
    if-eqz p0, :cond_11

    .line 432
    .line 433
    :cond_10
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 434
    .line 435
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 436
    .line 437
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DesktopMode;->isDesktopDualMode()Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_12

    .line 444
    .line 445
    if-eqz p0, :cond_12

    .line 446
    .line 447
    :cond_11
    const-string p0, "WallpaperManagerService"

    .line 448
    .line 449
    const-string p1, "Wallpaper ignore wallpaper refresh in default display when desktop dual mode is enabled/disabled"

    .line 450
    .line 451
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    goto :goto_b

    .line 455
    :cond_12
    iget-object p0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 456
    .line 457
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 458
    .line 459
    invoke-virtual {p0, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->handleWallpaperBindingTimeout(Z)V

    .line 460
    .line 461
    .line 462
    :goto_b
    return-void

    .line 463
    :goto_c
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 464
    throw p0

    .line 465
    :goto_d
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 466
    throw p0

    .line 467
    :goto_e
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 468
    throw p0

    .line 469
    :cond_13
    return-void
.end method
