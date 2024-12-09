.class public final Lcom/android/server/display/WifiDisplayController$6;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/WifiDisplayController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/WifiDisplayController$6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

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
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/display/WifiDisplayController$6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 16
    .line 17
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 25
    .line 26
    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0

    .line 32
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v1, "try to turn off wifi, mWifiDisplayOnSetting : "

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 41
    .line 42
    iget-boolean v1, v1, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 43
    .line 44
    const-string v2, "WifiDisplayController"

    .line 45
    .line 46
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 50
    .line 51
    iget-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const-string/jumbo v0, "turn off wifi"

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiTurnedOnByController:Z

    .line 80
    .line 81
    :cond_2
    return-void

    .line 82
    :pswitch_1
    const-string v0, "WifiDisplayController"

    .line 83
    .line 84
    const-string/jumbo v1, "wakeUpScreen"

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    const-string/jumbo v1, "power"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/os/PowerManager;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    iput-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    iput-boolean v2, v1, Lcom/android/server/display/WifiDisplayController;->mScreenWakeUpByUser:Z

    .line 119
    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    const/4 v3, 0x2

    .line 125
    const-string v4, "WifiDisplay WakeUpScreen"

    .line 126
    .line 127
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    const-string/jumbo v0, "keyguard"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, Landroid/app/KeyguardManager;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 148
    .line 149
    iget-boolean v1, v0, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    .line 150
    .line 151
    const/4 v2, 0x1

    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 155
    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getState()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    const/4 v1, 0x6

    .line 163
    if-ne v0, v1, :cond_4

    .line 164
    .line 165
    move v0, v2

    .line 166
    goto :goto_1

    .line 167
    :cond_4
    const/4 v0, 0x0

    .line 168
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v3, "[VolumeControl] Send SEM_WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED "

    .line 171
    .line 172
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v3, "WifiDisplayController"

    .line 183
    .line 184
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    new-instance v1, Landroid/content/Intent;

    .line 188
    .line 189
    const-string/jumbo v3, "com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED"

    .line 190
    .line 191
    .line 192
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string/jumbo v3, "state"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    const-string/jumbo v2, "isSupportDisplayVolumeControl"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 210
    .line 211
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 212
    .line 213
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$misVpnConnected(Lcom/android/server/display/WifiDisplayController;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_5

    .line 224
    .line 225
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 226
    .line 227
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 228
    .line 229
    if-eqz v1, :cond_5

    .line 230
    .line 231
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 232
    .line 233
    if-eqz v1, :cond_5

    .line 234
    .line 235
    iget-boolean v0, v0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 236
    .line 237
    if-nez v0, :cond_5

    .line 238
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v1, "Timed out waiting for Wifi display RTSP connection after 30 seconds: "

    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 247
    .line 248
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 249
    .line 250
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 251
    .line 252
    const-string v2, "WifiDisplayController"

    .line 253
    .line 254
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 258
    .line 259
    const/4 v0, 0x2

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    .line 261
    .line 262
    .line 263
    :cond_5
    return-void

    .line 264
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 265
    .line 266
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$misVpnConnected(Lcom/android/server/display/WifiDisplayController;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_6

    .line 271
    .line 272
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 273
    .line 274
    iget-object v1, v0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 275
    .line 276
    if-eqz v1, :cond_6

    .line 277
    .line 278
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 279
    .line 280
    if-ne v1, v0, :cond_6

    .line 281
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v1, "Timed out waiting for Wifi display connection after 30 seconds: "

    .line 285
    .line 286
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 290
    .line 291
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 292
    .line 293
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 294
    .line 295
    const-string v2, "WifiDisplayController"

    .line 296
    .line 297
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 301
    .line 302
    const/4 v0, 0x2

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(I)V

    .line 304
    .line 305
    .line 306
    :cond_6
    return-void

    .line 307
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 308
    .line 309
    const/4 v0, 0x0

    .line 310
    const/16 v1, 0x2710

    .line 311
    .line 312
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers(II)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 317
    .line 318
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayAdapter$14;

    .line 319
    .line 320
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 321
    .line 322
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 323
    .line 324
    monitor-enter v0

    .line 325
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 326
    .line 327
    iget v2, v1, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    .line 328
    .line 329
    const/4 v3, 0x1

    .line 330
    if-eq v2, v3, :cond_8

    .line 331
    .line 332
    iget-object v1, v1, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 333
    .line 334
    if-eqz v1, :cond_7

    .line 335
    .line 336
    const-string v1, "WifiDisplayAdapter"

    .line 337
    .line 338
    const-string/jumbo v2, "onScanStarted in counnected status"

    .line 339
    .line 340
    .line 341
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 345
    .line 346
    new-array v2, v3, [Landroid/hardware/display/WifiDisplay;

    .line 347
    .line 348
    iget-object v4, v1, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 349
    .line 350
    const/4 v5, 0x0

    .line 351
    aput-object v4, v2, v5

    .line 352
    .line 353
    iput-object v2, v1, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 354
    .line 355
    goto :goto_2

    .line 356
    :catchall_1
    move-exception p0

    .line 357
    goto :goto_3

    .line 358
    :cond_7
    const-string v1, "WifiDisplayAdapter"

    .line 359
    .line 360
    const-string/jumbo v2, "onScanStarted"

    .line 361
    .line 362
    .line 363
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 367
    .line 368
    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    .line 369
    .line 370
    iput-object v2, v1, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 371
    .line 372
    :goto_2
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 373
    .line 374
    iput v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    .line 375
    .line 376
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    .line 377
    .line 378
    .line 379
    :cond_8
    monitor-exit v0

    .line 380
    return-void

    .line 381
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 382
    throw p0

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
