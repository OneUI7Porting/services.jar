.class public final Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 6
    .line 7
    const-string v1, "[DMS]DualModeChanger"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v3, "onReceive(), action="

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 32
    .line 33
    check-cast v2, Lcom/android/server/desktopmode/StateManager;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string/jumbo v3, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 52
    .line 53
    if-nez p1, :cond_e

    .line 54
    .line 55
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 56
    .line 57
    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_1
    const-string v3, "android.intent.action.TIME_TICK"

    .line 63
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    const-wide/32 v2, 0x19000000

    .line 75
    .line 76
    .line 77
    cmp-long v2, p1, v2

    .line 78
    .line 79
    if-gez v2, :cond_e

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "Low memory warning: "

    .line 86
    .line 87
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-wide/32 v2, 0x100000

    .line 91
    .line 92
    .line 93
    div-long/2addr p1, v2

    .line 94
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p1, "MB"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    .line 112
    .line 113
    if-eqz p0, :cond_e

    .line 114
    .line 115
    sget-object p1, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    .line 116
    .line 117
    const p1, 0x1040470

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p0, p1, v4}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_3
    const-string/jumbo v3, "com.samsung.android.desktopmode.action.SPEN_NOTIFICATION_PRESSED"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    const/4 v5, 0x0

    .line 137
    const-string v6, "ACTION_CLICK_DISPLAYID"

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    if-eqz v3, :cond_5

    .line 141
    .line 142
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    const-string p2, "SPen notification clicked, displayID="

    .line 149
    .line 150
    invoke-static {p1, p2, v1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 154
    .line 155
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V

    .line 156
    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 161
    .line 162
    const/4 p2, 0x6

    .line 163
    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_5
    const-string/jumbo v3, "com.samsung.android.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    const-string v8, "CLICK_DISPLAYID"

    .line 176
    .line 177
    if-eqz v3, :cond_7

    .line 178
    .line 179
    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 184
    .line 185
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V

    .line 186
    .line 187
    .line 188
    if-eqz v0, :cond_6

    .line 189
    .line 190
    const-string p2, "Touchpad notification clicked, displayID="

    .line 191
    .line 192
    invoke-static {p1, p2, v1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_6
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 198
    .line 199
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_7
    const-string/jumbo v3, "com.samsung.android.desktopmode.action.SPEN_NOTIFICATION_CHANGE_MODE_PRESSED"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    const/4 v5, -0x1

    .line 212
    if-eqz v3, :cond_9

    .line 213
    .line 214
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    const-string p2, "SPen notification change mode clicked, displayID="

    .line 221
    .line 222
    invoke-static {p1, p2, v1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_8
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 226
    .line 227
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V

    .line 228
    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 231
    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    new-instance p1, Landroid/content/Intent;

    .line 236
    .line 237
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 238
    .line 239
    .line 240
    new-instance p2, Landroid/content/ComponentName;

    .line 241
    .line 242
    const-string/jumbo v0, "com.sec.android.app.desktoplauncher"

    .line 243
    .line 244
    .line 245
    const-string/jumbo v1, "com.android.launcher3.settings.SPenInputModePreferenceActivity"

    .line 246
    .line 247
    .line 248
    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const/high16 p2, 0x14200000

    .line 256
    .line 257
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iget p2, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 262
    .line 263
    if-eq p2, v5, :cond_e

    .line 264
    .line 265
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    iget v0, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 270
    .line 271
    invoke-virtual {p2, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 272
    .line 273
    .line 274
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 275
    .line 276
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    iget v0, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 281
    .line 282
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_9
    const-string/jumbo v0, "com.samsung.android.desktopmode.action.TOUCHPAD_AVAILABLE_NOTIFICATION_PRESSED"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_d

    .line 299
    .line 300
    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 305
    .line 306
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V

    .line 307
    .line 308
    .line 309
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 310
    .line 311
    iget-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    .line 312
    .line 313
    iget-object p2, p1, Lcom/android/server/desktopmode/TouchpadManager;->mInternalUiCallback:Lcom/android/server/desktopmode/TouchpadManager$1;

    .line 314
    .line 315
    const/16 v0, 0x12c

    .line 316
    .line 317
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 318
    .line 319
    invoke-virtual {v1, v7, v0, p2}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 320
    .line 321
    .line 322
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 323
    .line 324
    invoke-virtual {p2, v7, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->minimizeAllTasks(IZ)V

    .line 325
    .line 326
    .line 327
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 328
    .line 329
    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 330
    .line 331
    .line 332
    move-result p2

    .line 333
    if-eqz p2, :cond_a

    .line 334
    .line 335
    iget-object p2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 336
    .line 337
    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 338
    .line 339
    .line 340
    move-result p2

    .line 341
    if-eqz p2, :cond_a

    .line 342
    .line 343
    iget-boolean p2, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 344
    .line 345
    if-nez p2, :cond_a

    .line 346
    .line 347
    iget-object p2, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 348
    .line 349
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    const v0, 0x1110226

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 357
    .line 358
    .line 359
    move-result p2

    .line 360
    if-eqz p2, :cond_a

    .line 361
    .line 362
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 363
    .line 364
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    .line 365
    .line 366
    .line 367
    goto :goto_0

    .line 368
    :cond_a
    iget-object p2, p1, Lcom/android/server/desktopmode/TouchpadManager;->mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 369
    .line 370
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 371
    .line 372
    .line 373
    move-result p2

    .line 374
    if-nez p2, :cond_c

    .line 375
    .line 376
    iget-object p2, p1, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 377
    .line 378
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 383
    .line 384
    const-string/jumbo v1, "touchpad_auto_run_guide_count"

    .line 385
    .line 386
    .line 387
    invoke-static {p2, v1, v7, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 388
    .line 389
    .line 390
    move-result p2

    .line 391
    const/4 v0, 0x3

    .line 392
    if-ge p2, v0, :cond_b

    .line 393
    .line 394
    iget-object v0, p1, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 395
    .line 396
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    add-int/2addr p2, v4

    .line 401
    invoke-static {v0, v1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 402
    .line 403
    .line 404
    :cond_b
    iget-object p1, p1, Lcom/android/server/desktopmode/TouchpadManager;->mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 405
    .line 406
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 407
    .line 408
    .line 409
    :cond_c
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    .line 410
    .line 411
    goto :goto_0

    .line 412
    :cond_d
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 413
    .line 414
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    if-eqz p1, :cond_e

    .line 419
    .line 420
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    if-ne p1, v5, :cond_e

    .line 425
    .line 426
    iget p1, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 427
    .line 428
    if-eq p1, v5, :cond_e

    .line 429
    .line 430
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 431
    .line 432
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 433
    .line 434
    invoke-virtual {p0, v7}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    .line 435
    .line 436
    .line 437
    :cond_e
    :goto_0
    return-void
.end method
