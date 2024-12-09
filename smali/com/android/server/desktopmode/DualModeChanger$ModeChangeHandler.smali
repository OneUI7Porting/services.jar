.class public final Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

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
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "[DMS]DualModeChanger"

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    if-eq v0, v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 17
    .line 18
    if-eqz p1, :cond_10

    .line 19
    .line 20
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string/jumbo p1, "mStateListener unregistered"

    .line 25
    .line 26
    .line 27
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 33
    .line 34
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/StateManager;->unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 52
    .line 53
    iget-object v5, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 54
    .line 55
    check-cast v5, Lcom/android/server/desktopmode/StateManager;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const/4 v7, -0x1

    .line 62
    const/4 v8, 0x1

    .line 63
    if-ne p1, v7, :cond_5

    .line 64
    .line 65
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v10, "Loading screen timeout! enter="

    .line 72
    .line 73
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-static {v3, v9}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iput-boolean v8, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 87
    .line 88
    iput-boolean v8, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 89
    .line 90
    iget v9, v6, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 91
    .line 92
    invoke-virtual {p0, v9}, Lcom/android/server/desktopmode/ModeChanger;->hasPackageTask(I)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-nez v9, :cond_5

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    const-string p1, "DeX Home task does not exist in DeX display"

    .line 101
    .line 102
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    iget p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 106
    .line 107
    if-eq p1, v7, :cond_5

    .line 108
    .line 109
    invoke-virtual {p0, v6, p1}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 110
    .line 111
    .line 112
    :cond_5
    iget-object p1, v6, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 113
    .line 114
    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 115
    .line 116
    const/16 v7, 0x32

    .line 117
    .line 118
    if-eq p1, v7, :cond_6

    .line 119
    .line 120
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 121
    .line 122
    if-eqz p0, :cond_10

    .line 123
    .line 124
    const-string p0, "Failed to stop loading screen. onDesktopDisplayConfigured() is not called! enter="

    .line 125
    .line 126
    const-string p1, ", desktopModeState="

    .line 127
    .line 128
    invoke-static {p0, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    iget-object p1, v6, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v3, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_3

    .line 145
    .line 146
    :cond_6
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 147
    .line 148
    if-eqz p1, :cond_7

    .line 149
    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v9, "Stopping loading screen... enter="

    .line 153
    .line 154
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v9, " state="

    .line 161
    .line 162
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-static {v3, v7}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 176
    .line 177
    const/4 v7, 0x0

    .line 178
    if-eqz v3, :cond_8

    .line 179
    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    iget v3, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 183
    .line 184
    iget v9, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 185
    .line 186
    const/4 v10, 0x5

    .line 187
    invoke-virtual {p0, v3, v9, v10}, Lcom/android/server/desktopmode/ModeChanger;->bringTaskToForeground(III)V

    .line 188
    .line 189
    .line 190
    iput-boolean v7, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 191
    .line 192
    :cond_8
    iget-object v3, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 193
    .line 194
    const/16 v9, 0x67

    .line 195
    .line 196
    const/16 v10, 0x6f

    .line 197
    .line 198
    invoke-virtual {v3, v9, v10}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    .line 199
    .line 200
    .line 201
    iget-object v9, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 202
    .line 203
    check-cast v9, Lcom/android/server/desktopmode/StateManager;

    .line 204
    .line 205
    invoke-virtual {v9, v7}, Lcom/android/server/desktopmode/StateManager;->setModeChangeLocked(Z)V

    .line 206
    .line 207
    .line 208
    if-eqz v0, :cond_9

    .line 209
    .line 210
    const/4 v9, 0x4

    .line 211
    goto :goto_0

    .line 212
    :cond_9
    move v9, v1

    .line 213
    :goto_0
    invoke-virtual {p0, v9, v7}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 214
    .line 215
    .line 216
    if-eqz p1, :cond_a

    .line 217
    .line 218
    const-string/jumbo p1, "notifyDualStopLoadingScreen(enter="

    .line 219
    .line 220
    .line 221
    const-string v9, ")"

    .line 222
    .line 223
    const-string v10, "[DMS]StateManager"

    .line 224
    .line 225
    invoke-static {p1, v9, v10, v0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    .line 227
    .line 228
    :cond_a
    iget-object p1, v5, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    if-eqz v9, :cond_b

    .line 239
    .line 240
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    check-cast v9, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 245
    .line 246
    invoke-virtual {v9, v0}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeStopLoadingScreen(Z)V

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_b
    if-nez v0, :cond_c

    .line 251
    .line 252
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    .line 253
    .line 254
    iget-object v1, p1, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 255
    .line 256
    iget-object v1, v1, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 257
    .line 258
    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    .line 260
    .line 261
    iput-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    .line 262
    .line 263
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 264
    .line 265
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 269
    .line 270
    const-wide/16 v1, 0x7d0

    .line 271
    .line 272
    invoke-virtual {p1, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 273
    .line 274
    .line 275
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 276
    .line 277
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->killProcessWhenDexExit()V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_c
    iput-boolean v7, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    .line 282
    .line 283
    iget-boolean p1, v6, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 284
    .line 285
    if-eqz p1, :cond_d

    .line 286
    .line 287
    iget p1, v6, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 288
    .line 289
    iget-object v4, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 290
    .line 291
    invoke-virtual {v4, p1, v1, v2}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 292
    .line 293
    .line 294
    iput-boolean v8, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    .line 295
    .line 296
    :cond_d
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    .line 297
    .line 298
    if-eqz p1, :cond_e

    .line 299
    .line 300
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 301
    .line 302
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 303
    .line 304
    const-string/jumbo v2, "auto_open_last_app"

    .line 305
    .line 306
    .line 307
    invoke-static {p1, v2, v7, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-eqz p1, :cond_e

    .line 312
    .line 313
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    .line 314
    .line 315
    sget-object v1, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    .line 316
    .line 317
    const v1, 0x104045f

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-static {p1, v1, v8}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 325
    .line 326
    .line 327
    :cond_e
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 328
    .line 329
    const v1, 0x1040465

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 337
    .line 338
    const v2, 0x1040464

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {p0, p1, v1}, Lcom/android/server/desktopmode/ModeChanger;->showDexMirroringTipsNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-eqz p1, :cond_f

    .line 353
    .line 354
    const/16 p1, 0xcc

    .line 355
    .line 356
    invoke-virtual {v3, p1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    .line 357
    .line 358
    .line 359
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->showStabilizerModeDialogIfNeeded()V

    .line 360
    .line 361
    .line 362
    :goto_2
    xor-int/lit8 p0, v0, 0x1

    .line 363
    .line 364
    invoke-virtual {v5, p0}, Lcom/android/server/desktopmode/StateManager;->notifyScheduleUpdateDesktopMode(Z)V

    .line 365
    .line 366
    .line 367
    :cond_10
    :goto_3
    return-void
.end method
