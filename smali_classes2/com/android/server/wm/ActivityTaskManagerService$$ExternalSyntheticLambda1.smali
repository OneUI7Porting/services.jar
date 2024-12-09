.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-boolean v8, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$1:Z

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;->f$2:Z

    .line 8
    .line 9
    move-object/from16 v2, p1

    .line 10
    .line 11
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 14
    .line 15
    iget v9, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 18
    .line 19
    invoke-virtual {v2, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    const-string v2, "ActivityTaskManager"

    .line 24
    .line 25
    if-nez v10, :cond_0

    .line 26
    .line 27
    const-string/jumbo v0, "setKeyguardShown called on non-existent display "

    .line 28
    .line 29
    .line 30
    invoke-static {v9, v0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_0
    iget-object v3, v10, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 36
    .line 37
    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    .line 38
    .line 39
    and-int/lit16 v3, v3, 0x200

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const-string/jumbo v0, "setKeyguardShown ignoring always unlocked display "

    .line 44
    .line 45
    .line 46
    invoke-static {v9, v0, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v1, v9}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    iget-boolean v2, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mWakeAndUnlock:Z

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    if-ne v8, v0, :cond_2

    .line 61
    .line 62
    iput-boolean v12, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mWakeAndUnlock:Z

    .line 63
    .line 64
    :cond_2
    iget-boolean v2, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 65
    .line 66
    const/4 v13, 0x1

    .line 67
    if-eq v0, v2, :cond_3

    .line 68
    .line 69
    move v14, v13

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move v14, v12

    .line 72
    :goto_0
    if-eqz v2, :cond_4

    .line 73
    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    move v2, v13

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move v2, v12

    .line 79
    :goto_1
    iget-boolean v3, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 80
    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    if-eqz v8, :cond_5

    .line 84
    .line 85
    move v15, v13

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    move v15, v12

    .line 88
    :goto_2
    iget-boolean v3, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 89
    .line 90
    if-eq v8, v3, :cond_6

    .line 91
    .line 92
    iget-boolean v3, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mWakeAndUnlock:Z

    .line 93
    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    :cond_6
    if-eqz v15, :cond_8

    .line 97
    .line 98
    if-nez v2, :cond_8

    .line 99
    .line 100
    :cond_7
    move/from16 v16, v13

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_8
    move/from16 v16, v12

    .line 104
    .line 105
    :goto_3
    if-eqz v2, :cond_9

    .line 106
    .line 107
    invoke-virtual {v1, v12}, Lcom/android/server/wm/KeyguardController;->updateDeferTransitionForAod(Z)V

    .line 108
    .line 109
    .line 110
    :cond_9
    if-nez v16, :cond_a

    .line 111
    .line 112
    if-nez v14, :cond_a

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->setWakeTransitionReady()V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_a
    iget-boolean v5, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 120
    .line 121
    iget-boolean v6, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 122
    .line 123
    const-string/jumbo v7, "setKeyguardShown"

    .line 124
    .line 125
    .line 126
    move v2, v9

    .line 127
    move v3, v8

    .line 128
    move v4, v0

    .line 129
    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIIIILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    if-nez v9, :cond_c

    .line 133
    .line 134
    xor-int v2, v0, v8

    .line 135
    .line 136
    if-nez v2, :cond_b

    .line 137
    .line 138
    if-eqz v0, :cond_c

    .line 139
    .line 140
    if-eqz v14, :cond_c

    .line 141
    .line 142
    if-eqz v16, :cond_c

    .line 143
    .line 144
    :cond_b
    iget-boolean v2, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 145
    .line 146
    if-nez v2, :cond_c

    .line 147
    .line 148
    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 149
    .line 150
    iget v2, v2, Landroid/view/DisplayInfo;->state:I

    .line 151
    .line 152
    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_c

    .line 157
    .line 158
    iget-object v2, v1, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 159
    .line 160
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 161
    .line 162
    invoke-virtual {v2, v12}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 163
    .line 164
    .line 165
    :cond_c
    iput-boolean v8, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 166
    .line 167
    iput-boolean v0, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 168
    .line 169
    if-eqz v8, :cond_d

    .line 170
    .line 171
    iget-object v2, v1, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 172
    .line 173
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 174
    .line 175
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 176
    .line 177
    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    const/4 v3, 0x2

    .line 182
    if-ne v2, v3, :cond_d

    .line 183
    .line 184
    iget-object v2, v1, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 191
    .line 192
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 193
    .line 194
    if-eqz v3, :cond_d

    .line 195
    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string/jumbo v4, "set ControlTarget to NotificationShade="

    .line 199
    .line 200
    .line 201
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v4, v2, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    const-string v4, "WindowManager"

    .line 214
    .line 215
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 219
    .line 220
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 221
    .line 222
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 223
    .line 224
    invoke-virtual {v3, v2}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 225
    .line 226
    .line 227
    :cond_d
    const/4 v2, 0x0

    .line 228
    if-nez v9, :cond_f

    .line 229
    .line 230
    if-eqz v16, :cond_f

    .line 231
    .line 232
    if-eqz v8, :cond_f

    .line 233
    .line 234
    iget-object v3, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 235
    .line 236
    if-eqz v3, :cond_f

    .line 237
    .line 238
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_f

    .line 243
    .line 244
    invoke-virtual {v10, v13, v12}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    if-eqz v3, :cond_e

    .line 249
    .line 250
    invoke-virtual {v3, v12}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    goto :goto_4

    .line 255
    :cond_e
    move-object v3, v2

    .line 256
    :goto_4
    if-eqz v3, :cond_f

    .line 257
    .line 258
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-nez v3, :cond_f

    .line 263
    .line 264
    iget-object v3, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 265
    .line 266
    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 267
    .line 268
    .line 269
    :cond_f
    const/4 v3, 0x3

    .line 270
    if-eqz v16, :cond_14

    .line 271
    .line 272
    iput-boolean v12, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 273
    .line 274
    if-eqz v8, :cond_10

    .line 275
    .line 276
    iput-boolean v12, v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    .line 277
    .line 278
    :cond_10
    if-nez v15, :cond_11

    .line 279
    .line 280
    invoke-static {}, Lcom/android/window/flags/Flags;->keyguardAppearTransition()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_15

    .line 285
    .line 286
    if-eqz v8, :cond_15

    .line 287
    .line 288
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 289
    .line 290
    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    .line 291
    .line 292
    invoke-static {v0}, Landroid/view/Display;->isOffState(I)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_15

    .line 297
    .line 298
    :cond_11
    invoke-static {}, Lcom/android/window/flags/Flags;->keyguardAppearTransition()Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_12

    .line 303
    .line 304
    move-object v0, v10

    .line 305
    goto :goto_5

    .line 306
    :cond_12
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 307
    .line 308
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 309
    .line 310
    :goto_5
    const/16 v4, 0x800

    .line 311
    .line 312
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 313
    .line 314
    .line 315
    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 316
    .line 317
    invoke-virtual {v5, v3, v4, v2, v0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 318
    .line 319
    .line 320
    invoke-static {}, Lcom/android/window/flags/Flags;->keyguardAppearTransition()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_13

    .line 325
    .line 326
    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 329
    .line 330
    .line 331
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_14
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_AOD_APPEAR:Z

    .line 336
    .line 337
    if-eqz v4, :cond_15

    .line 338
    .line 339
    if-eqz v14, :cond_15

    .line 340
    .line 341
    if-eqz v0, :cond_15

    .line 342
    .line 343
    const v0, 0x40800

    .line 344
    .line 345
    .line 346
    invoke-virtual {v10, v3, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 347
    .line 348
    .line 349
    iget-object v4, v10, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 350
    .line 351
    invoke-virtual {v4, v3, v0, v2, v10}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 352
    .line 353
    .line 354
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 360
    .line 361
    .line 362
    :cond_15
    :goto_6
    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 363
    .line 364
    .line 365
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 366
    .line 367
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 368
    .line 369
    .line 370
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0, v12}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->setWakeTransitionReady()V

    .line 378
    .line 379
    .line 380
    if-eqz v14, :cond_16

    .line 381
    .line 382
    iget-object v0, v1, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 383
    .line 384
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 385
    .line 386
    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 387
    .line 388
    .line 389
    :cond_16
    :goto_7
    return-void
.end method
