.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 12
    .line 13
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 22
    .line 23
    invoke-virtual {v3, v4, v1, v5, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 41
    .line 42
    iput v2, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/app/SemWallpaperResourcesInfo;->isSupportCMF()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_5

    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 55
    .line 56
    iget-object v4, v3, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v5, "cmf_color_code"

    .line 63
    .line 64
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v6, "getDefaultDeviceColor : "

    .line 71
    .line 72
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-string v6, "CMFWallpaper"

    .line 83
    .line 84
    invoke-static {v6, v5}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_4

    .line 92
    .line 93
    const-string/jumbo v4, "ril.product_code"

    .line 94
    .line 95
    .line 96
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string/jumbo v7, "rilProductCode = "

    .line 103
    .line 104
    .line 105
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-static {v6, v5}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    if-eqz v4, :cond_1

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    const/16 v7, 0xa

    .line 125
    .line 126
    if-ge v5, v7, :cond_0

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    const/16 v5, 0x8

    .line 130
    .line 131
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    move-object v5, v1

    .line 141
    :goto_1
    iget-object v7, v3, Lcom/samsung/server/wallpaper/CMFWallpaper;->mAlternativeCode:Ljava/lang/String;

    .line 142
    .line 143
    if-eqz v5, :cond_2

    .line 144
    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string/jumbo v9, "rilProductCode=\'"

    .line 148
    .line 149
    .line 150
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v4, "\', colorCode="

    .line 157
    .line 158
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-static {v6, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v5, v7}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getProperColorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    iget-object v5, v3, Lcom/samsung/server/wallpaper/CMFWallpaper;->mHandler:Lcom/samsung/server/wallpaper/CMFWallpaper$1;

    .line 176
    .line 177
    const/16 v6, 0x3f5

    .line 178
    .line 179
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    iput-object v4, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    .line 185
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_2
    iget-object v4, v3, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    .line 190
    .line 191
    if-eqz v4, :cond_3

    .line 192
    .line 193
    :goto_2
    move-object v4, v1

    .line 194
    goto :goto_3

    .line 195
    :cond_3
    new-instance v4, Lcom/samsung/server/wallpaper/CMFWallpaper$3;

    .line 196
    .line 197
    invoke-direct {v4, v3}, Lcom/samsung/server/wallpaper/CMFWallpaper$3;-><init>(Lcom/samsung/server/wallpaper/CMFWallpaper;)V

    .line 198
    .line 199
    .line 200
    iput-object v4, v3, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    .line 201
    .line 202
    const-string v5, "ColorCodePollingThread"

    .line 203
    .line 204
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v4, v3, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :goto_3
    invoke-virtual {v3, v4, v7}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getProperColorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    :cond_4
    invoke-static {v4}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    iput-object v5, v3, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v3, v4}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_5
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 227
    .line 228
    if-eqz v3, :cond_6

    .line 229
    .line 230
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 231
    .line 232
    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 233
    .line 234
    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SubDisplayMode;->updateLidStateFromInputManager()V

    .line 235
    .line 236
    .line 237
    :cond_6
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsWallpaperInitialized:Landroid/util/SparseArray;

    .line 238
    .line 239
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperFileExists(I)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 251
    .line 252
    iget-object v5, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 253
    .line 254
    monitor-enter v5

    .line 255
    :try_start_0
    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 256
    .line 257
    invoke-virtual {v4, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->loadSettingsLockedForSnapshot(I)V

    .line 258
    .line 259
    .line 260
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 261
    const/4 v4, 0x3

    .line 262
    const/4 v5, 0x4

    .line 263
    invoke-virtual {p0, v2, v4, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    .line 264
    .line 265
    .line 266
    const/4 v6, 0x5

    .line 267
    invoke-virtual {p0, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 268
    .line 269
    .line 270
    const/16 v7, 0x10

    .line 271
    .line 272
    const/16 v8, 0x11

    .line 273
    .line 274
    if-eqz v3, :cond_7

    .line 275
    .line 276
    sget-boolean v9, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 277
    .line 278
    if-nez v9, :cond_7

    .line 279
    .line 280
    invoke-virtual {p0, v2, v4, v7, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v2, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 284
    .line 285
    .line 286
    :cond_7
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 287
    .line 288
    if-eqz v4, :cond_8

    .line 289
    .line 290
    invoke-virtual {p0, v2, v0, v7, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v2, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 294
    .line 295
    .line 296
    :cond_8
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    .line 297
    .line 298
    if-eqz v4, :cond_9

    .line 299
    .line 300
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    .line 301
    .line 302
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->isVirtualWallpaperDisplay(I)Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-eqz v4, :cond_9

    .line 307
    .line 308
    const/16 v4, 0x20

    .line 309
    .line 310
    invoke-virtual {p0, v2, v0, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    .line 311
    .line 312
    .line 313
    const/16 v4, 0x21

    .line 314
    .line 315
    invoke-virtual {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 316
    .line 317
    .line 318
    :cond_9
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 319
    .line 320
    invoke-virtual {v4, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    const-string v9, "WallpaperManagerService"

    .line 325
    .line 326
    const-string/jumbo v10, "systemReady: initImageWallpaperCropFile - 1"

    .line 327
    .line 328
    .line 329
    invoke-static {v9, v10}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0, v6, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->initImageWallpaperCropFile(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 333
    .line 334
    .line 335
    if-eqz v3, :cond_a

    .line 336
    .line 337
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 338
    .line 339
    invoke-virtual {v3, v2, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    const-string/jumbo v4, "systemReady: initImageWallpaperCropFile - 2"

    .line 344
    .line 345
    .line 346
    invoke-static {v9, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v8, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->initImageWallpaperCropFile(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 350
    .line 351
    .line 352
    :cond_a
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 353
    .line 354
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 359
    .line 360
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    .line 361
    .line 362
    invoke-direct {v6, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    .line 367
    .line 368
    new-instance v3, Landroid/content/IntentFilter;

    .line 369
    .line 370
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    .line 371
    .line 372
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 376
    .line 377
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    .line 378
    .line 379
    invoke-direct {v6, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    .line 384
    .line 385
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 386
    .line 387
    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 388
    .line 389
    iget-object v4, v3, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    .line 390
    .line 391
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    iput-object v4, v3, Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;

    .line 396
    .line 397
    new-instance v4, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;

    .line 398
    .line 399
    invoke-direct {v4, v3}, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;-><init>(Lcom/samsung/server/wallpaper/LegibilityColor;)V

    .line 400
    .line 401
    .line 402
    iget-object v6, v3, Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;

    .line 403
    .line 404
    const-string v8, "accelerometer_rotation"

    .line 405
    .line 406
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    invoke-virtual {v6, v8, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v3, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    iput-boolean v4, v3, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    .line 418
    .line 419
    const/4 v4, 0x2

    .line 420
    invoke-virtual {v3, v4}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    iput-boolean v4, v3, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    .line 425
    .line 426
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    .line 431
    .line 432
    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 433
    .line 434
    .line 435
    invoke-interface {v3, v4, v9}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 436
    .line 437
    .line 438
    goto :goto_4

    .line 439
    :catch_0
    move-exception v3

    .line 440
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 441
    .line 442
    .line 443
    :goto_4
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 444
    .line 445
    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 446
    .line 447
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    const-string v4, "OMCWallpaper"

    .line 451
    .line 452
    const-string/jumbo v6, "registerOMCWallpaperUpdatedReceiver"

    .line 453
    .line 454
    .line 455
    invoke-static {v4, v6}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    new-instance v6, Landroid/content/IntentFilter;

    .line 459
    .line 460
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 461
    .line 462
    .line 463
    const-string v8, "com.samsung.intent.action.RSCUPDATE_START"

    .line 464
    .line 465
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    new-instance v8, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;

    .line 469
    .line 470
    invoke-direct {v8, v3}, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;-><init>(Lcom/samsung/server/wallpaper/OMCWallpaper;)V

    .line 471
    .line 472
    .line 473
    iget-object v3, v3, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    .line 474
    .line 475
    invoke-virtual {v3, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    .line 477
    .line 478
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 479
    .line 480
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 481
    .line 482
    .line 483
    move-result v6

    .line 484
    invoke-virtual {v3, v6, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    const/4 v6, -0x1

    .line 489
    if-eqz v3, :cond_c

    .line 490
    .line 491
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 492
    .line 493
    iget v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 494
    .line 495
    if-ne v3, v6, :cond_b

    .line 496
    .line 497
    goto :goto_5

    .line 498
    :cond_b
    move v0, v2

    .line 499
    :cond_c
    :goto_5
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 500
    .line 501
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 502
    .line 503
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    const-string v3, "checkTSSActivation"

    .line 507
    .line 508
    invoke-static {v4, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    new-instance v3, Ljava/io/File;

    .line 512
    .line 513
    new-instance v8, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v9, "/wallpaper_status"

    .line 526
    .line 527
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v8

    .line 534
    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 538
    .line 539
    .line 540
    move-result v8

    .line 541
    if-eqz v8, :cond_d

    .line 542
    .line 543
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-static {v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 551
    goto :goto_6

    .line 552
    :catch_1
    move-object v3, v1

    .line 553
    goto :goto_6

    .line 554
    :cond_d
    const-string v3, "false"

    .line 555
    .line 556
    :goto_6
    const-string/jumbo v8, "mdc.singlesku.activated"

    .line 557
    .line 558
    .line 559
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v8

    .line 563
    new-instance v10, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string v11, "checkTSSActivation, old= "

    .line 566
    .line 567
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    const-string v11, ", new="

    .line 574
    .line 575
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v10

    .line 585
    invoke-static {v4, v10}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v10

    .line 592
    if-nez v10, :cond_11

    .line 593
    .line 594
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 595
    .line 596
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 597
    .line 598
    invoke-static {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mhandleOMCWallpaperUpdatedLocked(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 599
    .line 600
    .line 601
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 602
    .line 603
    if-eqz v3, :cond_e

    .line 604
    .line 605
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 606
    .line 607
    if-nez v3, :cond_e

    .line 608
    .line 609
    invoke-static {v0, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mhandleOMCWallpaperUpdatedLocked(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 610
    .line 611
    .line 612
    :cond_e
    const-string/jumbo v0, "saveTSSActivation, "

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    new-instance v0, Ljava/io/File;

    .line 623
    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .line 628
    .line 629
    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 647
    .line 648
    .line 649
    goto :goto_7

    .line 650
    :catch_2
    move-exception v2

    .line 651
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 652
    .line 653
    .line 654
    :goto_7
    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    .line 655
    .line 656
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 657
    .line 658
    .line 659
    :try_start_5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 660
    .line 661
    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 666
    .line 667
    .line 668
    const-string/jumbo v0, "save done"

    .line 669
    .line 670
    .line 671
    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 672
    .line 673
    .line 674
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 675
    .line 676
    .line 677
    goto :goto_9

    .line 678
    :catch_3
    move-exception v0

    .line 679
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 680
    .line 681
    .line 682
    goto :goto_9

    .line 683
    :catchall_0
    move-exception p0

    .line 684
    move-object v1, v2

    .line 685
    goto :goto_a

    .line 686
    :catch_4
    move-exception v0

    .line 687
    move-object v1, v2

    .line 688
    goto :goto_8

    .line 689
    :catchall_1
    move-exception p0

    .line 690
    goto :goto_a

    .line 691
    :catch_5
    move-exception v0

    .line 692
    :goto_8
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 693
    .line 694
    .line 695
    if-eqz v1, :cond_f

    .line 696
    .line 697
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 698
    .line 699
    .line 700
    :cond_f
    :goto_9
    invoke-virtual {p0, v8}, Lcom/samsung/server/wallpaper/OMCWallpaper;->saveTSSActivationSettings(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    goto :goto_c

    .line 704
    :goto_a
    if-eqz v1, :cond_10

    .line 705
    .line 706
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 707
    .line 708
    .line 709
    goto :goto_b

    .line 710
    :catch_6
    move-exception v0

    .line 711
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 712
    .line 713
    .line 714
    :cond_10
    :goto_b
    throw p0

    .line 715
    :cond_11
    const-string/jumbo v1, "true"

    .line 716
    .line 717
    .line 718
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v1

    .line 722
    if-eqz v1, :cond_12

    .line 723
    .line 724
    iget-object v1, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    .line 725
    .line 726
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    const-string/jumbo v2, "tss_activated"

    .line 731
    .line 732
    .line 733
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    if-eqz v0, :cond_12

    .line 738
    .line 739
    if-ne v1, v6, :cond_12

    .line 740
    .line 741
    invoke-virtual {p0, v3}, Lcom/samsung/server/wallpaper/OMCWallpaper;->saveTSSActivationSettings(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    :cond_12
    :goto_c
    return-void

    .line 745
    :catchall_2
    move-exception p0

    .line 746
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 747
    throw p0

    .line 748
    nop

    .line 749
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
