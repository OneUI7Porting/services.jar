.class public final synthetic Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WallpaperController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WallpaperController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x3

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto/16 :goto_10

    .line 33
    .line 34
    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    goto/16 :goto_10

    .line 49
    .line 50
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v3, 0x0

    .line 60
    :goto_0
    const/4 v4, 0x1

    .line 61
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_3

    .line 72
    .line 73
    iget v6, v3, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 74
    .line 75
    invoke-static {v6}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    iget v6, v3, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    .line 82
    .line 83
    and-int/lit8 v6, v6, 0x4

    .line 84
    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    iput-boolean v4, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 88
    .line 89
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 90
    .line 91
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 92
    .line 93
    check-cast v7, Lcom/android/server/policy/PhoneWindowManager;

    .line 94
    .line 95
    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 100
    .line 101
    const/4 v9, -0x1

    .line 102
    if-eqz v7, :cond_a

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_5

    .line 109
    .line 110
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 111
    .line 112
    if-eqz v7, :cond_4

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_4

    .line 119
    .line 120
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 121
    .line 122
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 123
    .line 124
    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 125
    .line 126
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    invoke-virtual {v7, v10, v11}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_4

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_a

    .line 146
    .line 147
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 148
    .line 149
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 150
    .line 151
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 152
    .line 153
    invoke-virtual {v0, v7}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_a

    .line 158
    .line 159
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 160
    .line 161
    invoke-virtual {v0, v8}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_a

    .line 166
    .line 167
    iput-object p1, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 168
    .line 169
    goto/16 :goto_10

    .line 170
    .line 171
    :cond_5
    :goto_1
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 172
    .line 173
    check-cast v7, Lcom/android/server/policy/PhoneWindowManager;

    .line 174
    .line 175
    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-nez v7, :cond_7

    .line 180
    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_a

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_6
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 191
    .line 192
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-eqz v7, :cond_a

    .line 199
    .line 200
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 201
    .line 202
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->isAppTransitionStateIdle()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_a

    .line 207
    .line 208
    :cond_7
    :goto_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 209
    .line 210
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 211
    .line 212
    if-nez v7, :cond_9

    .line 213
    .line 214
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 215
    .line 216
    if-nez v7, :cond_9

    .line 217
    .line 218
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 219
    .line 220
    if-ne v7, v9, :cond_9

    .line 221
    .line 222
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 223
    .line 224
    if-ne v0, v9, :cond_9

    .line 225
    .line 226
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 227
    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_8

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_8
    move v0, v1

    .line 238
    goto :goto_4

    .line 239
    :cond_9
    :goto_3
    move v0, v4

    .line 240
    :goto_4
    iput-boolean v0, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_a

    .line 247
    .line 248
    iput-boolean v4, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    .line 249
    .line 250
    move v0, v4

    .line 251
    goto :goto_5

    .line 252
    :cond_a
    move v0, v1

    .line 253
    :goto_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    const/4 v10, 0x2

    .line 258
    if-ne v7, v10, :cond_e

    .line 259
    .line 260
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 261
    .line 262
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 263
    .line 264
    invoke-virtual {v7}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-ne v7, v10, :cond_e

    .line 269
    .line 270
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 271
    .line 272
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 273
    .line 274
    invoke-virtual {v7, v10}, Lcom/android/server/policy/PhoneWindowManagerExt;->isKeyguardOccluded(I)Z

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    if-eqz v7, :cond_e

    .line 279
    .line 280
    iget-boolean v7, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    .line 281
    .line 282
    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 283
    .line 284
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 285
    .line 286
    if-nez v11, :cond_d

    .line 287
    .line 288
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 289
    .line 290
    if-nez v11, :cond_d

    .line 291
    .line 292
    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 293
    .line 294
    if-ne v11, v9, :cond_d

    .line 295
    .line 296
    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 297
    .line 298
    if-ne v10, v9, :cond_d

    .line 299
    .line 300
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 301
    .line 302
    if-eqz v9, :cond_b

    .line 303
    .line 304
    invoke-virtual {v9, v4}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 305
    .line 306
    .line 307
    move-result v9

    .line 308
    if-eqz v9, :cond_d

    .line 309
    .line 310
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    if-eqz v9, :cond_c

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_c
    move v9, v1

    .line 318
    goto :goto_7

    .line 319
    :cond_d
    :goto_6
    move v9, v4

    .line 320
    :goto_7
    or-int/2addr v7, v9

    .line 321
    iput-boolean v7, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    .line 322
    .line 323
    :cond_e
    if-eqz v3, :cond_f

    .line 324
    .line 325
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    if-eqz v7, :cond_f

    .line 330
    .line 331
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-interface {v3}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-eqz v3, :cond_f

    .line 340
    .line 341
    move v3, v4

    .line 342
    goto :goto_8

    .line 343
    :cond_f
    move v3, v1

    .line 344
    :goto_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    if-nez v7, :cond_11

    .line 349
    .line 350
    if-eqz v3, :cond_10

    .line 351
    .line 352
    goto :goto_9

    .line 353
    :cond_10
    move v3, v1

    .line 354
    goto :goto_a

    .line 355
    :cond_11
    :goto_9
    move v3, v4

    .line 356
    :goto_a
    iget-object v7, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 357
    .line 358
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    if-eqz v7, :cond_12

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_12
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 366
    .line 367
    if-eqz v7, :cond_16

    .line 368
    .line 369
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 370
    .line 371
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 372
    .line 373
    if-ne v9, v4, :cond_16

    .line 374
    .line 375
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 376
    .line 377
    if-eqz v9, :cond_13

    .line 378
    .line 379
    iget-object v10, v7, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 380
    .line 381
    if-eq v10, v9, :cond_14

    .line 382
    .line 383
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    invoke-virtual {v7, v9}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    if-eqz v9, :cond_16

    .line 392
    .line 393
    :cond_14
    iget-object v7, v7, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 394
    .line 395
    if-nez v7, :cond_15

    .line 396
    .line 397
    move v7, v1

    .line 398
    goto :goto_b

    .line 399
    :cond_15
    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    :goto_b
    if-eqz v7, :cond_16

    .line 404
    .line 405
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    if-eqz v7, :cond_16

    .line 410
    .line 411
    goto :goto_d

    .line 412
    :cond_16
    :goto_c
    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 413
    .line 414
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 415
    .line 416
    iget-object v9, v7, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 417
    .line 418
    iget-boolean v10, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 419
    .line 420
    if-eqz v10, :cond_18

    .line 421
    .line 422
    iget-boolean v7, v7, Lcom/android/server/wm/BackNavigationController;->mShowWallpaper:Z

    .line 423
    .line 424
    if-eqz v7, :cond_18

    .line 425
    .line 426
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 427
    .line 428
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 429
    .line 430
    if-ne v7, v4, :cond_18

    .line 431
    .line 432
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 433
    .line 434
    if-eqz v7, :cond_18

    .line 435
    .line 436
    invoke-virtual {v9, v7, v4}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    if-eqz v7, :cond_18

    .line 441
    .line 442
    :goto_d
    iput-object p1, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 443
    .line 444
    :cond_17
    move v1, v4

    .line 445
    goto :goto_10

    .line 446
    :cond_18
    if-eqz v3, :cond_1e

    .line 447
    .line 448
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 449
    .line 450
    if-eqz v3, :cond_19

    .line 451
    .line 452
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    if-eqz v3, :cond_1e

    .line 457
    .line 458
    goto :goto_e

    .line 459
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_1e

    .line 464
    .line 465
    :goto_e
    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 466
    .line 467
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 468
    .line 469
    iget-boolean v3, v3, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    .line 470
    .line 471
    if-eqz v3, :cond_1a

    .line 472
    .line 473
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_1a

    .line 478
    .line 479
    goto :goto_10

    .line 480
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    if-eqz v3, :cond_1b

    .line 485
    .line 486
    if-nez v0, :cond_1b

    .line 487
    .line 488
    goto :goto_10

    .line 489
    :cond_1b
    iput-object p1, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 490
    .line 491
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 492
    .line 493
    if-eqz v0, :cond_1c

    .line 494
    .line 495
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 496
    .line 497
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 498
    .line 499
    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 500
    .line 501
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_1c

    .line 506
    .line 507
    move v0, v4

    .line 508
    goto :goto_f

    .line 509
    :cond_1c
    move v0, v1

    .line 510
    :goto_f
    iput-boolean v0, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 511
    .line 512
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 513
    .line 514
    if-ne p1, p0, :cond_1d

    .line 515
    .line 516
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 517
    .line 518
    .line 519
    :cond_1d
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 520
    .line 521
    if-nez p0, :cond_17

    .line 522
    .line 523
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    .line 524
    .line 525
    .line 526
    move-result p0

    .line 527
    if-eqz p0, :cond_17

    .line 528
    .line 529
    :cond_1e
    :goto_10
    return v1
.end method
