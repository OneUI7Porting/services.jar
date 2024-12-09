.class public final Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x14

    .line 9
    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eq v2, v6, :cond_27

    .line 13
    .line 14
    const/16 v9, 0x64

    .line 15
    .line 16
    const/4 v14, -0x1

    .line 17
    const/4 v15, 0x2

    .line 18
    if-eq v2, v15, :cond_1c

    .line 19
    .line 20
    if-eq v2, v5, :cond_0

    .line 21
    .line 22
    goto/16 :goto_13

    .line 23
    .line 24
    :cond_0
    iget-object v0, v0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 25
    .line 26
    iget-boolean v2, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 27
    .line 28
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 31
    .line 32
    const-string v10, "[DMS]StandaloneModeChanger"

    .line 33
    .line 34
    if-ne v1, v14, :cond_3

    .line 35
    .line 36
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    new-instance v11, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v12, "Loading screen dismissed by timeout enter="

    .line 43
    .line 44
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    invoke-static {v10, v11}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/ModeChanger;->hasPackageTask(I)Z

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    if-nez v11, :cond_4

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    const-string v1, "DeX Home task does not exist"

    .line 66
    .line 67
    invoke-static {v10, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    move-object v1, v4

    .line 71
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v11, "Stopping loading screen... enter="

    .line 88
    .line 89
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v10, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object v1, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v4, Lcom/android/server/desktopmode/StateManager;

    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    iget-object v11, v11, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-ne v12, v6, :cond_6

    .line 132
    .line 133
    iget-boolean v13, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 134
    .line 135
    if-eqz v13, :cond_9

    .line 136
    .line 137
    :cond_6
    if-nez v12, :cond_7

    .line 138
    .line 139
    iget-boolean v13, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 140
    .line 141
    if-nez v13, :cond_9

    .line 142
    .line 143
    :cond_7
    if-eq v12, v14, :cond_9

    .line 144
    .line 145
    iget v13, v11, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 146
    .line 147
    if-ne v13, v5, :cond_8

    .line 148
    .line 149
    if-eqz v12, :cond_9

    .line 150
    .line 151
    :cond_8
    if-ne v13, v6, :cond_f

    .line 152
    .line 153
    if-ne v12, v6, :cond_f

    .line 154
    .line 155
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string/jumbo v14, "verifyCurrentState(), Something is wrong! config="

    .line 158
    .line 159
    .line 160
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v14, ", mStandaloneModeEnabled="

    .line 167
    .line 168
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-boolean v14, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 172
    .line 173
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v14, ", desktopModeDensity="

    .line 177
    .line 178
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v14, v0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 182
    .line 183
    iget-object v14, v14, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 184
    .line 185
    iget-object v15, v14, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 186
    .line 187
    iget-object v15, v15, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 188
    .line 189
    if-eqz v15, :cond_a

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_a
    iget-object v15, v14, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 193
    .line 194
    :goto_1
    iget v14, v15, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 195
    .line 196
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v14, ", desktopModeState="

    .line 200
    .line 201
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v13

    .line 211
    sget-boolean v14, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 212
    .line 213
    if-eqz v14, :cond_b

    .line 214
    .line 215
    iget-object v15, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    const/16 v7, 0x3e8

    .line 218
    .line 219
    invoke-static {v15, v13, v7}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    :cond_b
    invoke-static {v10, v13}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget v7, v11, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 226
    .line 227
    if-ne v7, v5, :cond_c

    .line 228
    .line 229
    if-eq v12, v6, :cond_d

    .line 230
    .line 231
    :cond_c
    if-ne v7, v6, :cond_e

    .line 232
    .line 233
    if-nez v12, :cond_e

    .line 234
    .line 235
    :cond_d
    const-string v2, "Configuration is changed correctly, but was too late. Calling onConfigurationChanged() directly..."

    .line 236
    .line 237
    invoke-static {v10, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 244
    .line 245
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    .line 247
    .line 248
    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 249
    .line 250
    const-wide/16 v1, 0x0

    .line 251
    .line 252
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    .line 254
    .line 255
    goto/16 :goto_13

    .line 256
    .line 257
    :cond_e
    if-nez v14, :cond_1b

    .line 258
    .line 259
    invoke-virtual {v4, v3}, Lcom/android/server/desktopmode/StateManager;->notifyScheduleUpdateDesktopMode(Z)V

    .line 260
    .line 261
    .line 262
    :cond_f
    if-eqz v2, :cond_10

    .line 263
    .line 264
    const/4 v15, 0x4

    .line 265
    goto :goto_2

    .line 266
    :cond_10
    const/4 v15, 0x2

    .line 267
    :goto_2
    invoke-virtual {v0, v15, v3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 271
    .line 272
    if-eqz v1, :cond_11

    .line 273
    .line 274
    iget v1, v1, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    .line 275
    .line 276
    if-ne v1, v6, :cond_13

    .line 277
    .line 278
    :cond_11
    iget v1, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    .line 279
    .line 280
    if-eqz v2, :cond_12

    .line 281
    .line 282
    const/4 v5, 0x5

    .line 283
    goto :goto_3

    .line 284
    :cond_12
    move v5, v6

    .line 285
    :goto_3
    invoke-virtual {v0, v1, v3, v5}, Lcom/android/server/desktopmode/ModeChanger;->bringTaskToForeground(III)V

    .line 286
    .line 287
    .line 288
    :cond_13
    iget-object v1, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 289
    .line 290
    if-eqz v1, :cond_15

    .line 291
    .line 292
    iget-boolean v1, v1, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mShowModeChangeScreen:Z

    .line 293
    .line 294
    if-eqz v1, :cond_15

    .line 295
    .line 296
    if-eqz v2, :cond_14

    .line 297
    .line 298
    const/16 v1, 0x74

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_14
    const/16 v1, 0x75

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_15
    if-eqz v2, :cond_16

    .line 305
    .line 306
    const/16 v1, 0x71

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_16
    const/16 v1, 0x72

    .line 310
    .line 311
    :goto_4
    iget-object v5, v0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 312
    .line 313
    invoke-virtual {v5, v9, v1}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    .line 314
    .line 315
    .line 316
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 317
    .line 318
    if-eqz v1, :cond_17

    .line 319
    .line 320
    const-string/jumbo v1, "notifyStopLoadingScreen(enter="

    .line 321
    .line 322
    .line 323
    const-string v5, ")"

    .line 324
    .line 325
    const-string v7, "[DMS]StateManager"

    .line 326
    .line 327
    invoke-static {v1, v5, v7, v2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 328
    .line 329
    .line 330
    :cond_17
    iget-object v1, v4, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    if-eqz v5, :cond_18

    .line 341
    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    check-cast v5, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 347
    .line 348
    invoke-virtual {v5, v2}, Lcom/android/server/desktopmode/StateManager$StateListener;->onStopLoadingScreen(Z)V

    .line 349
    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_18
    invoke-virtual {v0, v3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setModeChangeLock$1(Z)V

    .line 353
    .line 354
    .line 355
    if-nez v2, :cond_1a

    .line 356
    .line 357
    iget-object v1, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    .line 358
    .line 359
    if-eqz v1, :cond_19

    .line 360
    .line 361
    iget-object v5, v1, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 362
    .line 363
    iget-object v5, v5, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 364
    .line 365
    invoke-virtual {v5, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 366
    .line 367
    .line 368
    const/4 v1, 0x0

    .line 369
    iput-object v1, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_19
    const-string/jumbo v1, "mReceiver is null!"

    .line 373
    .line 374
    .line 375
    invoke-static {v10, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :goto_6
    iget-object v1, v0, Lcom/android/server/desktopmode/ModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 379
    .line 380
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->killProcessWhenDexExit()V

    .line 381
    .line 382
    .line 383
    :cond_1a
    xor-int/lit8 v1, v2, 0x1

    .line 384
    .line 385
    invoke-virtual {v4, v1}, Lcom/android/server/desktopmode/StateManager;->notifyScheduleUpdateDesktopMode(Z)V

    .line 386
    .line 387
    .line 388
    iget-object v1, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 389
    .line 390
    const v2, 0x1040465

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    iget-object v2, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 398
    .line 399
    const v4, 0x1040464

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/ModeChanger;->showDexMirroringTipsNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string/jumbo v0, "loading screen"

    .line 410
    .line 411
    .line 412
    const-wide/32 v1, 0x80000

    .line 413
    .line 414
    .line 415
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_13

    .line 419
    .line 420
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 421
    .line 422
    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    throw v0

    .line 426
    :cond_1c
    iget-object v0, v0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 427
    .line 428
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v2, Ljava/lang/Boolean;

    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    const-string/jumbo v7, "loading screen"

    .line 442
    .line 443
    .line 444
    const-wide/32 v10, 0x80000

    .line 445
    .line 446
    .line 447
    invoke-static {v10, v11, v7, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 448
    .line 449
    .line 450
    const-string v7, "[DMS]StandaloneModeChanger"

    .line 451
    .line 452
    if-ne v1, v14, :cond_1d

    .line 453
    .line 454
    new-instance v8, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    const-string v10, "Loading screen shown by in-call UI timeout enter="

    .line 457
    .line 458
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    goto :goto_7

    .line 472
    :cond_1d
    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 473
    .line 474
    if-eqz v8, :cond_1e

    .line 475
    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string v10, "Starting loading screen... enter="

    .line 479
    .line 480
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v10, ", reason="

    .line 487
    .line 488
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    invoke-static {v7, v8}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    :cond_1e
    :goto_7
    new-instance v8, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda2;

    .line 502
    .line 503
    invoke-direct {v8, v0, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    .line 504
    .line 505
    .line 506
    iget-object v10, v0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 507
    .line 508
    const/16 v11, 0x384

    .line 509
    .line 510
    invoke-virtual {v10, v11, v14, v14, v8}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    .line 511
    .line 512
    .line 513
    move-result v8

    .line 514
    if-eqz v8, :cond_26

    .line 515
    .line 516
    if-nez v1, :cond_21

    .line 517
    .line 518
    if-eqz v2, :cond_1f

    .line 519
    .line 520
    goto :goto_8

    .line 521
    :cond_1f
    move v5, v6

    .line 522
    :goto_8
    invoke-virtual {v0, v5, v4}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 523
    .line 524
    .line 525
    iget-object v1, v0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 526
    .line 527
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 528
    .line 529
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 533
    .line 534
    if-eqz v4, :cond_20

    .line 535
    .line 536
    const-string/jumbo v4, "notifyStartLoadingScreen(enter="

    .line 537
    .line 538
    .line 539
    const-string v5, ")"

    .line 540
    .line 541
    const-string v6, "[DMS]StateManager"

    .line 542
    .line 543
    invoke-static {v4, v5, v6, v2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 544
    .line 545
    .line 546
    :cond_20
    iget-object v1, v1, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 547
    .line 548
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    if-eqz v4, :cond_21

    .line 557
    .line 558
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    check-cast v4, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 563
    .line 564
    invoke-virtual {v4, v2}, Lcom/android/server/desktopmode/StateManager$StateListener;->onStartLoadingScreen(Z)V

    .line 565
    .line 566
    .line 567
    goto :goto_9

    .line 568
    :cond_21
    iget-object v1, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 569
    .line 570
    if-eqz v1, :cond_23

    .line 571
    .line 572
    iget-boolean v1, v1, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mShowModeChangeScreen:Z

    .line 573
    .line 574
    if-eqz v1, :cond_23

    .line 575
    .line 576
    if-eqz v2, :cond_22

    .line 577
    .line 578
    const/16 v1, 0x74

    .line 579
    .line 580
    goto :goto_a

    .line 581
    :cond_22
    const/16 v1, 0x75

    .line 582
    .line 583
    goto :goto_a

    .line 584
    :cond_23
    if-eqz v2, :cond_24

    .line 585
    .line 586
    const/16 v1, 0x71

    .line 587
    .line 588
    goto :goto_a

    .line 589
    :cond_24
    const/16 v1, 0x72

    .line 590
    .line 591
    :goto_a
    new-instance v4, Lcom/android/server/desktopmode/StandaloneModeChanger$2;

    .line 592
    .line 593
    invoke-direct {v4, v0, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger$2;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v10, v9, v1, v4}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 597
    .line 598
    .line 599
    iget-object v1, v0, Lcom/android/server/desktopmode/ModeChanger;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 600
    .line 601
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->launchHomeForDesktopMode(I)V

    .line 602
    .line 603
    .line 604
    if-eqz v2, :cond_35

    .line 605
    .line 606
    new-instance v5, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    .line 607
    .line 608
    invoke-direct {v5, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;)V

    .line 609
    .line 610
    .line 611
    iput-object v5, v0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mReceiver:Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeReceiver;

    .line 612
    .line 613
    new-instance v7, Landroid/content/IntentFilter;

    .line 614
    .line 615
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 616
    .line 617
    .line 618
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    .line 619
    .line 620
    if-eqz v1, :cond_25

    .line 621
    .line 622
    const-string/jumbo v1, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    .line 623
    .line 624
    .line 625
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    :cond_25
    const-string v1, "android.intent.action.TIME_TICK"

    .line 629
    .line 630
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    iget-object v4, v0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 634
    .line 635
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 636
    .line 637
    const/4 v8, 0x0

    .line 638
    const/4 v9, 0x0

    .line 639
    const/4 v10, 0x2

    .line 640
    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 641
    .line 642
    .line 643
    goto/16 :goto_13

    .line 644
    .line 645
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    const-string/jumbo v1, "handleStartLoadingScreen(), Binding DesktopUiService... enter="

    .line 648
    .line 649
    .line 650
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-static {v7, v0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_13

    .line 664
    .line 665
    :cond_27
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 666
    .line 667
    check-cast v2, Ljava/lang/Boolean;

    .line 668
    .line 669
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 674
    .line 675
    const/16 v8, 0xa

    .line 676
    .line 677
    if-ge v1, v8, :cond_28

    .line 678
    .line 679
    move v8, v6

    .line 680
    goto :goto_b

    .line 681
    :cond_28
    move v8, v3

    .line 682
    :goto_b
    if-eqz v8, :cond_2a

    .line 683
    .line 684
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 685
    .line 686
    if-eqz v4, :cond_29

    .line 687
    .line 688
    const-string v4, "[DMS]StandaloneModeChanger"

    .line 689
    .line 690
    new-instance v5, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    const-string v7, "Not all activities are stopped! retryCount="

    .line 693
    .line 694
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    const-string v7, ", waiting more 500ms..."

    .line 701
    .line 702
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v5

    .line 709
    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    :cond_29
    iget-object v0, v0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 713
    .line 714
    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 715
    .line 716
    add-int/2addr v1, v6

    .line 717
    invoke-virtual {v0, v6, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    const-wide/16 v2, 0x1f4

    .line 722
    .line 723
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 724
    .line 725
    .line 726
    goto/16 :goto_13

    .line 727
    .line 728
    :cond_2a
    if-nez v8, :cond_2b

    .line 729
    .line 730
    const-string v2, "[DMS]StandaloneModeChanger"

    .line 731
    .line 732
    new-instance v8, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    const-string v9, "Not all activities are stopped! timeout!! retryCount="

    .line 735
    .line 736
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    :cond_2b
    iget-object v1, v0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 750
    .line 751
    iget-object v0, v1, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 752
    .line 753
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 754
    .line 755
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    iget-object v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 760
    .line 761
    if-eqz v7, :cond_2c

    .line 762
    .line 763
    move v8, v5

    .line 764
    goto :goto_c

    .line 765
    :cond_2c
    move v8, v6

    .line 766
    :goto_c
    const/16 v9, 0x65

    .line 767
    .line 768
    invoke-virtual {v2, v8, v4, v9}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 769
    .line 770
    .line 771
    move-result v2

    .line 772
    if-nez v2, :cond_2d

    .line 773
    .line 774
    goto/16 :goto_13

    .line 775
    .line 776
    :cond_2d
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 777
    .line 778
    if-eqz v2, :cond_2e

    .line 779
    .line 780
    const-string v4, "[DMS]StandaloneModeChanger"

    .line 781
    .line 782
    new-instance v8, Ljava/lang/StringBuilder;

    .line 783
    .line 784
    const-string/jumbo v9, "setDesktopModeInternal(), enabled="

    .line 785
    .line 786
    .line 787
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v8

    .line 797
    invoke-static {v4, v8}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    :cond_2e
    iget-object v4, v1, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 801
    .line 802
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    .line 804
    .line 805
    filled-new-array {v3}, [I

    .line 806
    .line 807
    .line 808
    move-result-object v4

    .line 809
    aget v4, v4, v3

    .line 810
    .line 811
    iget-object v8, v1, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 812
    .line 813
    invoke-virtual {v8, v3, v4}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    .line 814
    .line 815
    .line 816
    sget-object v4, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    .line 817
    .line 818
    if-eqz v2, :cond_2f

    .line 819
    .line 820
    const-string v2, "[DMS]ToastManager"

    .line 821
    .line 822
    const-string/jumbo v4, "cancelToasts()"

    .line 823
    .line 824
    .line 825
    invoke-static {v2, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    :cond_2f
    sget-object v2, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    .line 829
    .line 830
    monitor-enter v2

    .line 831
    :try_start_0
    move-object v4, v2

    .line 832
    check-cast v4, Ljava/util/ArrayList;

    .line 833
    .line 834
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 835
    .line 836
    .line 837
    move-result-object v4

    .line 838
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 839
    .line 840
    .line 841
    move-result v8

    .line 842
    if-eqz v8, :cond_30

    .line 843
    .line 844
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v8

    .line 848
    check-cast v8, Landroid/widget/Toast;

    .line 849
    .line 850
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v8}, Landroid/widget/Toast;->cancel()V

    .line 854
    .line 855
    .line 856
    goto :goto_d

    .line 857
    :catchall_0
    move-exception v0

    .line 858
    goto/16 :goto_14

    .line 859
    .line 860
    :cond_30
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    if-eqz v7, :cond_31

    .line 862
    .line 863
    goto :goto_e

    .line 864
    :cond_31
    move v5, v6

    .line 865
    :goto_e
    const/16 v2, 0x1e

    .line 866
    .line 867
    invoke-virtual {v1, v5, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopModeState(II)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/ModeChanger;->backupLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 871
    .line 872
    .line 873
    if-eqz v7, :cond_32

    .line 874
    .line 875
    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/ModeChanger;->switchKnoxToFolderMode(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 876
    .line 877
    .line 878
    :try_start_1
    iget-object v0, v1, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 879
    .line 880
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopSystemLockTaskMode()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 881
    .line 882
    .line 883
    goto :goto_f

    .line 884
    :catch_0
    move-exception v0

    .line 885
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 886
    .line 887
    .line 888
    :cond_32
    :goto_f
    iput-boolean v3, v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    .line 889
    .line 890
    :try_start_2
    iget-object v0, v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 891
    .line 892
    invoke-interface {v0, v7}, Landroid/app/IUiModeManager;->setDesktopMode(Z)V

    .line 893
    .line 894
    .line 895
    iget-object v0, v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerService$LocalService;

    .line 896
    .line 897
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$LocalService;->isNightMode()Z

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    if-eqz v0, :cond_33

    .line 902
    .line 903
    const/16 v0, 0x20

    .line 904
    .line 905
    goto :goto_10

    .line 906
    :cond_33
    const/16 v0, 0x10

    .line 907
    .line 908
    :goto_10
    iget-object v2, v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 909
    .line 910
    invoke-interface {v2}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    .line 911
    .line 912
    .line 913
    move-result v2

    .line 914
    or-int/2addr v0, v2

    .line 915
    iput v0, v1, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 916
    .line 917
    goto :goto_11

    .line 918
    :catch_1
    move-exception v0

    .line 919
    const-string v2, "[DMS]StandaloneModeChanger"

    .line 920
    .line 921
    const-string v3, "Failed to set custom configurations"

    .line 922
    .line 923
    invoke-static {v2, v3, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 924
    .line 925
    .line 926
    :goto_11
    iget-object v0, v1, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 927
    .line 928
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 929
    .line 930
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 931
    .line 932
    .line 933
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 934
    .line 935
    if-eqz v1, :cond_34

    .line 936
    .line 937
    const-string/jumbo v1, "notifySetDesktopModeInternal(enter="

    .line 938
    .line 939
    .line 940
    const-string v2, ")"

    .line 941
    .line 942
    const-string v3, "[DMS]StateManager"

    .line 943
    .line 944
    invoke-static {v1, v2, v3, v7}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 945
    .line 946
    .line 947
    :cond_34
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 948
    .line 949
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 954
    .line 955
    .line 956
    move-result v1

    .line 957
    if-eqz v1, :cond_35

    .line 958
    .line 959
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v1

    .line 963
    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 964
    .line 965
    invoke-virtual {v1, v7}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSetDesktopModeInternal(Z)V

    .line 966
    .line 967
    .line 968
    goto :goto_12

    .line 969
    :cond_35
    :goto_13
    return-void

    .line 970
    :goto_14
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 971
    throw v0
.end method
