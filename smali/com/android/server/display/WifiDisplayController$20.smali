.class public final Lcom/android/server/display/WifiDisplayController$20;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/WifiDisplayController$20;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

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
    iget p1, p0, Lcom/android/server/display/WifiDisplayController$20;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string/jumbo v1, "keyguard"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "swipe"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "usls"

    .line 24
    .line 25
    .line 26
    const-string v4, "WifiDisplayController"

    .line 27
    .line 28
    if-eqz v0, :cond_7

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-string/jumbo v0, "power"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/os/PowerManager;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_a

    .line 48
    .line 49
    const-string/jumbo p1, "bouncerShowing"

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const-string p2, "Received KEYGUARD_STATE_UPDATE = "

    .line 58
    .line 59
    invoke-static {p2, v4, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    const-string/jumbo p2, "none"

    .line 63
    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    const v0, 0x8000

    .line 90
    .line 91
    .line 92
    if-eq p1, v0, :cond_3

    .line 93
    .line 94
    const/high16 v0, 0x10000

    .line 95
    .line 96
    if-eq p1, v0, :cond_2

    .line 97
    .line 98
    const/high16 v0, 0x20000

    .line 99
    .line 100
    if-eq p1, v0, :cond_1

    .line 101
    .line 102
    const/high16 v0, 0x30000

    .line 103
    .line 104
    if-eq p1, v0, :cond_1

    .line 105
    .line 106
    const/high16 v0, 0x40000

    .line 107
    .line 108
    if-eq p1, v0, :cond_0

    .line 109
    .line 110
    const/high16 v0, 0x50000

    .line 111
    .line 112
    if-eq p1, v0, :cond_0

    .line 113
    .line 114
    const/high16 v0, 0x60000

    .line 115
    .line 116
    if-eq p1, v0, :cond_0

    .line 117
    .line 118
    move-object v2, p2

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    const-string p1, "LockScreenType : Password"

    .line 121
    .line 122
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    const-string/jumbo v2, "password"

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    const-string p1, "LockScreenType : Pin"

    .line 130
    .line 131
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    const-string/jumbo v2, "pin"

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    const-string p1, "LockScreenType : Pattern"

    .line 139
    .line 140
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    const-string/jumbo v2, "pattern"

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    const-string p1, "LockScreenType : Bio"

    .line 148
    .line 149
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    const-string/jumbo v2, "bio"

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_4
    const-string p1, "LockScreenType : Swipe"

    .line 157
    .line 158
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 166
    .line 167
    iget-object p1, p1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroid/app/KeyguardManager;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 182
    .line 183
    invoke-virtual {p0, v3, v2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_6
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 188
    .line 189
    invoke-virtual {p0, v3, p2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_7
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 194
    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    if-eqz p2, :cond_9

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 202
    .line 203
    iget-boolean p1, p1, Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z

    .line 204
    .line 205
    if-eqz p1, :cond_8

    .line 206
    .line 207
    const-string p1, "Received ACTION_SCREEN_ON by user"

    .line 208
    .line 209
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 213
    .line 214
    iget-object p1, p1, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 215
    .line 216
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Landroid/app/KeyguardManager;

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_a

    .line 227
    .line 228
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 229
    .line 230
    invoke-virtual {p0, v3, v2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_8
    const-string p1, "Received ACTION_SCREEN_ON by controller"

    .line 235
    .line 236
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 240
    .line 241
    const/4 p1, 0x1

    .line 242
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_9
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 246
    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-eqz p1, :cond_a

    .line 252
    .line 253
    const-string p1, "Received ACTION_SCREEN_OFF"

    .line 254
    .line 255
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 259
    .line 260
    const-string/jumbo p1, "screen_off"

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v3, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_a
    :goto_1
    return-void

    .line 267
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    const-string v0, "android.samsung.media.action.AUDIO_MODE"

    .line 272
    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_b

    .line 278
    .line 279
    const-string p1, "android.samsung.media.extra.AUDIO_MODE"

    .line 280
    .line 281
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 287
    .line 288
    iget-boolean p2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 289
    .line 290
    if-eqz p2, :cond_b

    .line 291
    .line 292
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 293
    .line 294
    invoke-static {p0, p2, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendVoipModeMessageIfNecessary(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;I)V

    .line 295
    .line 296
    .line 297
    :cond_b
    return-void

    .line 298
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 303
    .line 304
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    const/4 v1, 0x0

    .line 309
    const/4 v2, 0x1

    .line 310
    const-string v3, "WifiDisplayController"

    .line 311
    .line 312
    if-eqz v0, :cond_f

    .line 313
    .line 314
    const-string/jumbo p1, "wifi_p2p_state"

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    const/4 p2, 0x2

    .line 322
    if-ne p1, p2, :cond_c

    .line 323
    .line 324
    move p1, v2

    .line 325
    goto :goto_2

    .line 326
    :cond_c
    move p1, v1

    .line 327
    :goto_2
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 328
    .line 329
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    .line 330
    .line 331
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 332
    .line 333
    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    .line 334
    .line 335
    .line 336
    move-result p2

    .line 337
    if-eq p2, v2, :cond_d

    .line 338
    .line 339
    new-instance p0, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string/jumbo p2, "handleStateChanged, do not handle p2p intent, enabled = "

    .line 342
    .line 343
    .line 344
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    goto/16 :goto_4

    .line 358
    .line 359
    :cond_d
    iget-boolean p2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 360
    .line 361
    if-eqz p2, :cond_e

    .line 362
    .line 363
    if-nez p1, :cond_e

    .line 364
    .line 365
    const-string/jumbo p1, "handleStateChanged, wifi p2p state turn off, but wfd state on"

    .line 366
    .line 367
    .line 368
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 372
    .line 373
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 374
    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    const-string/jumbo p1, "wifi_display_on"

    .line 380
    .line 381
    .line 382
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    .line 384
    .line 385
    goto/16 :goto_4

    .line 386
    .line 387
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_4

    .line 391
    .line 392
    :cond_f
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    .line 393
    .line 394
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    const-string/jumbo v4, "com.samsung.android.smartmirroring"

    .line 399
    .line 400
    .line 401
    if-eqz v0, :cond_11

    .line 402
    .line 403
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 404
    .line 405
    iget-boolean v0, p1, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 406
    .line 407
    if-eqz v0, :cond_10

    .line 408
    .line 409
    iget-object v0, p1, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 410
    .line 411
    iget-object v1, p1, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 412
    .line 413
    new-instance v2, Lcom/android/server/display/WifiDisplayController$5;

    .line 414
    .line 415
    invoke-direct {v2, p1}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 419
    .line 420
    .line 421
    :cond_10
    const-string/jumbo p1, "connectedDevAddress"

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    const-string/jumbo v1, "wifiP2pDeviceList"

    .line 429
    .line 430
    .line 431
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 432
    .line 433
    .line 434
    move-result-object p2

    .line 435
    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 436
    .line 437
    new-instance v2, Landroid/content/Intent;

    .line 438
    .line 439
    const-string/jumbo v3, "com.samsung.intent.action.WIFI_P2P_PEERS_CHANGED"

    .line 440
    .line 441
    .line 442
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    .line 453
    .line 454
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 455
    .line 456
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 457
    .line 458
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 459
    .line 460
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_4

    .line 464
    .line 465
    :cond_11
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 466
    .line 467
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-eqz v0, :cond_19

    .line 472
    .line 473
    const-string/jumbo v0, "networkInfo"

    .line 474
    .line 475
    .line 476
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    check-cast v1, Landroid/net/NetworkInfo;

    .line 481
    .line 482
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 483
    .line 484
    iget-object v5, v5, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 485
    .line 486
    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayConfig;->getConnectionType()I

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    if-eq v5, v2, :cond_12

    .line 491
    .line 492
    const-string/jumbo p0, "do not handle p2p intent, action = "

    .line 493
    .line 494
    .line 495
    invoke-static {p0, p1, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_4

    .line 499
    .line 500
    :cond_12
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 505
    .line 506
    if-ne p1, v2, :cond_13

    .line 507
    .line 508
    const-string/jumbo p0, "do not handle p2p CONNECTING state"

    .line 509
    .line 510
    .line 511
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    goto/16 :goto_4

    .line 515
    .line 516
    :cond_13
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 517
    .line 518
    iput-object v1, p1, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 519
    .line 520
    iget-boolean v2, p1, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    .line 521
    .line 522
    if-eqz v2, :cond_15

    .line 523
    .line 524
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    if-eqz v2, :cond_15

    .line 529
    .line 530
    iget-object v2, p1, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 531
    .line 532
    if-nez v2, :cond_14

    .line 533
    .line 534
    iget-boolean v2, p1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    .line 535
    .line 536
    if-eqz v2, :cond_18

    .line 537
    .line 538
    :cond_14
    iget-object v2, p1, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 539
    .line 540
    iget-object v3, p1, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 541
    .line 542
    new-instance v5, Lcom/android/server/display/WifiDisplayController$15;

    .line 543
    .line 544
    invoke-direct {v5, p1}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 548
    .line 549
    .line 550
    goto :goto_3

    .line 551
    :cond_15
    const/4 v2, 0x0

    .line 552
    iput-object v2, p1, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 553
    .line 554
    iget-object v2, p1, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 555
    .line 556
    if-nez v2, :cond_16

    .line 557
    .line 558
    iget-object v2, p1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 559
    .line 560
    if-eqz v2, :cond_17

    .line 561
    .line 562
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 563
    .line 564
    .line 565
    :cond_17
    iget-boolean v2, p1, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    .line 566
    .line 567
    if-eqz v2, :cond_18

    .line 568
    .line 569
    iget-object v2, p1, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 570
    .line 571
    iget-object v3, p1, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 572
    .line 573
    new-instance v5, Lcom/android/server/display/WifiDisplayController$5;

    .line 574
    .line 575
    invoke-direct {v5, p1}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 579
    .line 580
    .line 581
    :cond_18
    :goto_3
    const-string/jumbo p1, "wifiP2pInfo"

    .line 582
    .line 583
    .line 584
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 585
    .line 586
    .line 587
    move-result-object p2

    .line 588
    check-cast p2, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 589
    .line 590
    new-instance v2, Landroid/content/Intent;

    .line 591
    .line 592
    const-string/jumbo v3, "com.samsung.intent.action.WIFI_P2P_CONNECTION_CHANGED"

    .line 593
    .line 594
    .line 595
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 605
    .line 606
    .line 607
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 608
    .line 609
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 610
    .line 611
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 612
    .line 613
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 614
    .line 615
    .line 616
    goto/16 :goto_4

    .line 617
    .line 618
    :cond_19
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    .line 619
    .line 620
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-eqz v0, :cond_1a

    .line 625
    .line 626
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 627
    .line 628
    const-string/jumbo v0, "wifiP2pDevice"

    .line 629
    .line 630
    .line 631
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 632
    .line 633
    .line 634
    move-result-object p2

    .line 635
    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 636
    .line 637
    iput-object p2, p1, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 638
    .line 639
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 640
    .line 641
    iget-boolean p2, p1, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    .line 642
    .line 643
    if-eqz p2, :cond_1c

    .line 644
    .line 645
    iget-boolean p2, p1, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 646
    .line 647
    if-eqz p2, :cond_1c

    .line 648
    .line 649
    iget-object p2, p1, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 650
    .line 651
    if-eqz p2, :cond_1c

    .line 652
    .line 653
    iget-object p2, p1, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 654
    .line 655
    if-eqz p2, :cond_1c

    .line 656
    .line 657
    iget-object p1, p1, Lcom/android/server/display/WifiDisplayController;->mLocalDeviceP2pMacAddress:Ljava/lang/String;

    .line 658
    .line 659
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 660
    .line 661
    .line 662
    move-result p1

    .line 663
    if-eqz p1, :cond_1c

    .line 664
    .line 665
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 666
    .line 667
    iget-object p2, p1, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 668
    .line 669
    iget-object p1, p1, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 670
    .line 671
    new-instance v0, Lcom/android/server/display/WifiDisplayController$20$1;

    .line 672
    .line 673
    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayController$20$1;-><init>(Lcom/android/server/display/WifiDisplayController$20;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestDeviceInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V

    .line 677
    .line 678
    .line 679
    goto :goto_4

    .line 680
    :cond_1a
    const-string v0, "android.net.wifi.p2p.action.WIFI_P2P_REQUEST_RESPONSE_CHANGED"

    .line 681
    .line 682
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result p1

    .line 686
    if-eqz p1, :cond_1c

    .line 687
    .line 688
    const-string p1, "android.net.wifi.p2p.extra.REQUEST_RESPONSE"

    .line 689
    .line 690
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    const-string p2, "Received WifiP2pManager.ACTION_WIFI_P2P_REQUEST_RESPONSE_CHANGED : requestAccepted = "

    .line 695
    .line 696
    invoke-static {p2, v3, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 697
    .line 698
    .line 699
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 700
    .line 701
    iget-boolean v0, p2, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    .line 702
    .line 703
    if-nez v0, :cond_1c

    .line 704
    .line 705
    iget-object v0, p2, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 706
    .line 707
    if-eqz v0, :cond_1c

    .line 708
    .line 709
    iget-object p2, p2, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayConfig:Landroid/hardware/display/SemWifiDisplayConfig;

    .line 710
    .line 711
    invoke-virtual {p2}, Landroid/hardware/display/SemWifiDisplayConfig;->isPinRequest()Z

    .line 712
    .line 713
    .line 714
    move-result p2

    .line 715
    if-eqz p2, :cond_1c

    .line 716
    .line 717
    if-eqz p1, :cond_1b

    .line 718
    .line 719
    const-string p1, "User accepted PIN connect"

    .line 720
    .line 721
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .line 723
    .line 724
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 725
    .line 726
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 727
    .line 728
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Lcom/android/server/display/WifiDisplayController$6;

    .line 729
    .line 730
    const-wide/16 v0, 0x7530

    .line 731
    .line 732
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 733
    .line 734
    .line 735
    goto :goto_4

    .line 736
    :cond_1b
    const-string p1, "User cancelled PIN connect or timeout"

    .line 737
    .line 738
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .line 740
    .line 741
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 742
    .line 743
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 744
    .line 745
    .line 746
    :cond_1c
    :goto_4
    return-void

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
