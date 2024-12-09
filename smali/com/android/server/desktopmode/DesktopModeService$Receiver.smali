.class public final Lcom/android/server/desktopmode/DesktopModeService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v5, 0x1

    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 13
    .line 14
    const-string v8, "[DMS]DesktopModeService"

    .line 15
    .line 16
    if-eqz v7, :cond_0

    .line 17
    .line 18
    sget v9, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 19
    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v10, "onReceive(), action="

    .line 23
    .line 24
    .line 25
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    invoke-static {v8, v9}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v9, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 39
    .line 40
    iget-object v9, v9, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 41
    .line 42
    check-cast v9, Lcom/android/server/desktopmode/StateManager;

    .line 43
    .line 44
    invoke-virtual {v9}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    const-string/jumbo v10, "com.samsung.android.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    const/4 v11, 0x4

    .line 56
    if-eqz v10, :cond_15

    .line 57
    .line 58
    iget-object v6, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const-string/jumbo v10, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_STATE"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    const-string/jumbo v13, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_SOURCE"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v13, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    new-instance v15, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v4, "EXTRA_DESKTOP_MODE_SOURCE="

    .line 80
    .line 81
    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v14}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->sourceToString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v8, v4}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v4, v6, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 99
    .line 100
    check-cast v4, Lcom/android/server/desktopmode/StateManager;

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget-boolean v4, v4, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 107
    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    if-le v14, v3, :cond_4

    .line 111
    .line 112
    if-ne v12, v5, :cond_1

    .line 113
    .line 114
    move v4, v5

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    const/4 v4, 0x0

    .line 117
    :goto_0
    if-eqz v7, :cond_2

    .line 118
    .line 119
    const-string/jumbo v12, "logDesktopModeChanged("

    .line 120
    .line 121
    .line 122
    const-string v15, ")"

    .line 123
    .line 124
    invoke-static {v12, v15, v8, v4}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    :cond_2
    iget-object v6, v6, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    const-string v4, "LMTD"

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    const-string v4, "LDTM"

    .line 135
    .line 136
    :goto_1
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-static {v6, v4, v12}, Lcom/android/server/desktopmode/DesktopModeLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    invoke-virtual {v1, v13, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    const-string/jumbo v6, "com.samsung.android.desktopmode.extra.NEW_DEX_MODE_STATE"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-le v6, v3, :cond_5

    .line 155
    .line 156
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 157
    .line 158
    invoke-virtual {v0, v6}, Lcom/android/server/desktopmode/DesktopModeService;->updateNewDexMode(I)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_5
    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_14

    .line 167
    .line 168
    const/4 v3, 0x3

    .line 169
    if-eq v1, v5, :cond_e

    .line 170
    .line 171
    if-eq v1, v2, :cond_6

    .line 172
    .line 173
    goto/16 :goto_6

    .line 174
    .line 175
    :cond_6
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Lcom/android/server/desktopmode/StateManager$InternalState;->isHdmiConnected()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    iget-object v2, v9, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    const/16 v6, 0x66

    .line 198
    .line 199
    if-ne v4, v6, :cond_8

    .line 200
    .line 201
    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 202
    .line 203
    if-eq v2, v3, :cond_7

    .line 204
    .line 205
    if-ne v2, v11, :cond_8

    .line 206
    .line 207
    :cond_7
    move v2, v5

    .line 208
    goto :goto_2

    .line 209
    :cond_8
    const/4 v2, 0x0

    .line 210
    :goto_2
    if-eqz v2, :cond_9

    .line 211
    .line 212
    iget-object v3, v1, Lcom/android/server/desktopmode/DesktopModeService;->mDexManager:Lcom/samsung/android/knox/dex/DexManager;

    .line 213
    .line 214
    invoke-virtual {v3}, Lcom/samsung/android/knox/dex/DexManager;->getHDMIAutoEnterState()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-ne v3, v5, :cond_9

    .line 219
    .line 220
    iget-object v0, v1, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    const v1, 0x1040468

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-static {v0, v1, v5}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_6

    .line 233
    .line 234
    :cond_9
    if-eqz v2, :cond_a

    .line 235
    .line 236
    invoke-virtual {v9}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexStationConnectedWithFlipCover()Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_a

    .line 241
    .line 242
    iget-object v0, v1, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    const v2, 0x1040473

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 252
    .line 253
    const v3, 0x1040478

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-static {v0, v1, v5}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_6

    .line 272
    .line 273
    :cond_a
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 274
    .line 275
    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 276
    .line 277
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 278
    .line 279
    .line 280
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 281
    .line 282
    if-eqz v1, :cond_c

    .line 283
    .line 284
    invoke-virtual {v9}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_c

    .line 289
    .line 290
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 291
    .line 292
    iget v2, v9, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 293
    .line 294
    if-eqz v2, :cond_b

    .line 295
    .line 296
    iget-object v3, v1, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 297
    .line 298
    iget-object v4, v3, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 299
    .line 300
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getForegroundTaskId(I)I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    iput v4, v3, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 305
    .line 306
    iput-boolean v5, v3, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 307
    .line 308
    :cond_b
    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 309
    .line 310
    const/4 v3, 0x0

    .line 311
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->minimizeAllTasks(IZ)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 315
    .line 316
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 317
    .line 318
    invoke-virtual {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_6

    .line 322
    .line 323
    :cond_c
    invoke-virtual {v9}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcConnected()Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_d

    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 332
    .line 333
    const/16 v1, 0x3e8

    .line 334
    .line 335
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/StateManager;->notifyDisplayDisconnectionRequest(I)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_6

    .line 341
    .line 342
    :cond_d
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 343
    .line 344
    const/4 v1, 0x0

    .line 345
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_6

    .line 349
    .line 350
    :cond_e
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 351
    .line 352
    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 353
    .line 354
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 355
    .line 356
    .line 357
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 358
    .line 359
    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 360
    .line 361
    sget v6, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 362
    .line 363
    const-string/jumbo v10, "welcome_completed"

    .line 364
    .line 365
    .line 366
    const/4 v11, 0x0

    .line 367
    invoke-static {v1, v10, v11, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    iget-object v6, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 372
    .line 373
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    if-eqz v7, :cond_f

    .line 377
    .line 378
    const-string/jumbo v6, "isNeededStartConnectivityActivity()"

    .line 379
    .line 380
    .line 381
    invoke-static {v8, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :cond_f
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 385
    .line 386
    if-nez v6, :cond_10

    .line 387
    .line 388
    if-eq v4, v3, :cond_10

    .line 389
    .line 390
    const/4 v3, 0x5

    .line 391
    if-eq v4, v3, :cond_10

    .line 392
    .line 393
    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    if-nez v3, :cond_10

    .line 398
    .line 399
    iget-object v3, v9, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 400
    .line 401
    const/4 v4, 0x0

    .line 402
    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_10

    .line 407
    .line 408
    move v2, v5

    .line 409
    goto :goto_3

    .line 410
    :cond_10
    const/4 v2, 0x0

    .line 411
    :goto_3
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 412
    .line 413
    if-eqz v3, :cond_13

    .line 414
    .line 415
    invoke-virtual {v9}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    if-nez v3, :cond_11

    .line 420
    .line 421
    if-eqz v2, :cond_13

    .line 422
    .line 423
    :cond_11
    if-eqz v2, :cond_12

    .line 424
    .line 425
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 426
    .line 427
    const/4 v1, 0x0

    .line 428
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->startConnectivityActivity(I)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_6

    .line 432
    .line 433
    :cond_12
    if-nez v1, :cond_1f

    .line 434
    .line 435
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 436
    .line 437
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 438
    .line 439
    invoke-static {v0, v10, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_6

    .line 443
    .line 444
    :cond_13
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 445
    .line 446
    invoke-virtual {v1, v5}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 447
    .line 448
    .line 449
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 450
    .line 451
    iput-boolean v5, v0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDexSourceEntry:Z

    .line 452
    .line 453
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 454
    .line 455
    .line 456
    goto/16 :goto_6

    .line 457
    .line 458
    :cond_14
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 459
    .line 460
    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 461
    .line 462
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 463
    .line 464
    .line 465
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 466
    .line 467
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_6

    .line 471
    .line 472
    :cond_15
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    .line 473
    .line 474
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    if-eqz v4, :cond_17

    .line 479
    .line 480
    if-eqz v7, :cond_16

    .line 481
    .line 482
    sget v1, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 483
    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    const-string v2, "Shutdown received with UserId: "

    .line 487
    .line 488
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-static {v8, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-ne v1, v3, :cond_1f

    .line 510
    .line 511
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 512
    .line 513
    const/4 v1, 0x0

    .line 514
    iput-boolean v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    .line 515
    .line 516
    goto/16 :goto_6

    .line 517
    .line 518
    :cond_17
    const-string/jumbo v4, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 519
    .line 520
    .line 521
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v4

    .line 525
    if-eqz v4, :cond_1d

    .line 526
    .line 527
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 528
    .line 529
    iget-object v4, v1, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 530
    .line 531
    iget v1, v1, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 532
    .line 533
    const-string/jumbo v6, "persist.omc.sales_code"

    .line 534
    .line 535
    .line 536
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v6

    .line 540
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 541
    .line 542
    .line 543
    move-result v8

    .line 544
    if-eqz v8, :cond_18

    .line 545
    .line 546
    const-string/jumbo v6, "ro.csc.sales_code"

    .line 547
    .line 548
    .line 549
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 554
    .line 555
    .line 556
    move-result v8

    .line 557
    if-eqz v8, :cond_18

    .line 558
    .line 559
    const-string/jumbo v6, "ril.sales_code"

    .line 560
    .line 561
    .line 562
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v6

    .line 566
    :cond_18
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 570
    .line 571
    .line 572
    move-result v8

    .line 573
    sparse-switch v8, :sswitch_data_0

    .line 574
    .line 575
    .line 576
    :goto_4
    move v2, v3

    .line 577
    goto :goto_5

    .line 578
    :sswitch_0
    const-string v8, "PAP"

    .line 579
    .line 580
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v6

    .line 584
    if-nez v6, :cond_1b

    .line 585
    .line 586
    goto :goto_4

    .line 587
    :sswitch_1
    const-string v2, "LDU"

    .line 588
    .line 589
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    if-nez v2, :cond_19

    .line 594
    .line 595
    goto :goto_4

    .line 596
    :cond_19
    move v2, v5

    .line 597
    goto :goto_5

    .line 598
    :sswitch_2
    const-string v2, "FOP"

    .line 599
    .line 600
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    if-nez v2, :cond_1a

    .line 605
    .line 606
    goto :goto_4

    .line 607
    :cond_1a
    const/4 v2, 0x0

    .line 608
    :cond_1b
    :goto_5
    packed-switch v2, :pswitch_data_0

    .line 609
    .line 610
    .line 611
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    const-string/jumbo v3, "shopdemo"

    .line 616
    .line 617
    .line 618
    const/4 v4, 0x0

    .line 619
    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 620
    .line 621
    .line 622
    move-result v1

    .line 623
    if-ne v1, v5, :cond_1f

    .line 624
    .line 625
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 626
    .line 627
    iget-object v2, v1, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 628
    .line 629
    iget v1, v1, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 630
    .line 631
    invoke-virtual {v2, v9, v1}, Lcom/android/server/desktopmode/SettingsHelper;->clearSettingsByLauncherDataCleared(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 632
    .line 633
    .line 634
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 635
    .line 636
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 637
    .line 638
    iget v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 639
    .line 640
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    if-eqz v7, :cond_1c

    .line 644
    .line 645
    const-string v2, "[DMS]SettingsHelper"

    .line 646
    .line 647
    const-string/jumbo v3, "setDefaultSettingsInRetailMode()"

    .line 648
    .line 649
    .line 650
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    :cond_1c
    iget-object v2, v9, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 654
    .line 655
    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 656
    .line 657
    if-ne v2, v11, :cond_1f

    .line 658
    .line 659
    iget-object v2, v1, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 660
    .line 661
    const-string/jumbo v3, "keyboard_dex"

    .line 662
    .line 663
    .line 664
    invoke-static {v2, v3, v5, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 665
    .line 666
    .line 667
    iget-object v1, v1, Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 668
    .line 669
    const-string/jumbo v2, "primary_mouse_button_option"

    .line 670
    .line 671
    .line 672
    const/4 v3, 0x0

    .line 673
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 674
    .line 675
    .line 676
    goto :goto_6

    .line 677
    :cond_1d
    const-string/jumbo v2, "com.samsung.android.desktopmode.action.DEX_RUNNING_NOTIFICATION_PRESSED"

    .line 678
    .line 679
    .line 680
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    if-eqz v2, :cond_1e

    .line 685
    .line 686
    iget-object v2, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 687
    .line 688
    iget-object v2, v2, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 689
    .line 690
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 691
    .line 692
    .line 693
    const-string v2, "CLICK_DISPLAYID"

    .line 694
    .line 695
    const/4 v3, 0x0

    .line 696
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 701
    .line 702
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->startConnectivityActivity(I)V

    .line 703
    .line 704
    .line 705
    goto :goto_6

    .line 706
    :cond_1e
    const-string/jumbo v1, "com.sec.android.app.secsetupwizard.FOTA_SUW_COMPLETE"

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    if-eqz v1, :cond_1f

    .line 714
    .line 715
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 716
    .line 717
    invoke-static {v1, v9}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetEnterRequestIfStandaloneLastBoot(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 718
    .line 719
    .line 720
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 721
    .line 722
    invoke-virtual {v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 723
    .line 724
    .line 725
    :cond_1f
    :goto_6
    return-void

    .line 726
    nop

    .line 727
    :sswitch_data_0
    .sparse-switch
        0x110a7 -> :sswitch_2
        0x125dd -> :sswitch_1
        0x1347f -> :sswitch_0
    .end sparse-switch

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
