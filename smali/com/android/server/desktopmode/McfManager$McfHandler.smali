.class public final Lcom/android/server/desktopmode/McfManager$McfHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/McfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/McfManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

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
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0xc9

    .line 5
    .line 6
    const-string v3, "[DMS]McfManager"

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$McfHandler;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 9
    .line 10
    if-eq v0, v2, :cond_20

    .line 11
    .line 12
    const/16 v2, 0x191

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    if-eq v0, v2, :cond_1d

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/16 v6, 0x12d

    .line 20
    .line 21
    if-eq v0, v6, :cond_12

    .line 22
    .line 23
    const/16 v4, 0x12e

    .line 24
    .line 25
    const-string v7, "BLE_SCANNER_STATE_MCF_ADAPTER_UNBIND"

    .line 26
    .line 27
    const-wide/16 v8, 0x0

    .line 28
    .line 29
    if-eq v0, v4, :cond_11

    .line 30
    .line 31
    packed-switch v0, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    packed-switch v0, :pswitch_data_1

    .line 35
    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    const-string/jumbo p1, "handleNearbyScanningChanged"

    .line 47
    .line 48
    .line 49
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->isNearbyScanningOn(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    const/16 p1, 0x3ee

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->unbindMcfAdapter()V

    .line 68
    .line 69
    .line 70
    iput-object v7, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0, v8, v9}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Landroid/content/Intent;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 85
    .line 86
    const/16 v1, 0xa

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    const-string/jumbo v0, "handleSemBleStateChanged STATE:"

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v0, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    const/16 v0, 0xf

    .line 103
    .line 104
    if-eq p1, v0, :cond_3

    .line 105
    .line 106
    const/16 v0, 0xc

    .line 107
    .line 108
    if-ne p1, v0, :cond_22

    .line 109
    .line 110
    :cond_3
    const/16 p1, 0x3ec

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_6

    .line 116
    .line 117
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    if-eqz p1, :cond_4

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string v0, "airplane_mode_on"

    .line 126
    .line 127
    invoke-static {p1, v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_22

    .line 132
    .line 133
    :cond_4
    const/16 p1, 0x3eb

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_6

    .line 139
    .line 140
    :pswitch_3
    const/16 p1, 0x3ed

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_6

    .line 146
    .line 147
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p1, Ljava/lang/Boolean;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->bleMacAddressListExists()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_22

    .line 160
    .line 161
    if-eqz p1, :cond_5

    .line 162
    .line 163
    invoke-virtual {p0, v8, v9}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_6

    .line 167
    .line 168
    :cond_5
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 169
    .line 170
    iget-boolean v0, p1, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    .line 171
    .line 172
    if-nez v0, :cond_22

    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/android/server/desktopmode/McfManager;->isNearbyScanningOn(Landroid/content/Context;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_22

    .line 181
    .line 182
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 183
    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    goto :goto_1

    .line 191
    :cond_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_7

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_7

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_7
    move v1, v5

    .line 205
    :goto_0
    move v0, v1

    .line 206
    :goto_1
    if-eqz v0, :cond_22

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->bindService()V

    .line 209
    .line 210
    .line 211
    const-wide/32 v0, 0xafc8

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_6

    .line 218
    .line 219
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast p1, Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    if-nez p1, :cond_b

    .line 227
    .line 228
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 229
    .line 230
    if-eqz p1, :cond_8

    .line 231
    .line 232
    const-string/jumbo v0, "handleWirelessDexBleMacAddressChanged deleted."

    .line 233
    .line 234
    .line 235
    invoke-static {v3, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mRegisterIntent:Z

    .line 239
    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    if-eqz p1, :cond_9

    .line 243
    .line 244
    const-string/jumbo p1, "unregisterIntent"

    .line 245
    .line 246
    .line 247
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_9
    iput-boolean v5, p0, Lcom/android/server/desktopmode/McfManager;->mRegisterIntent:Z

    .line 251
    .line 252
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBroadcastReceiver:Lcom/android/server/desktopmode/McfManager$1;

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    .line 258
    .line 259
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->unbindMcfAdapter()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v8, v9}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_6

    .line 266
    .line 267
    :cond_b
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 268
    .line 269
    if-eqz p1, :cond_c

    .line 270
    .line 271
    const-string/jumbo p1, "handleWirelessDexBleMacAddressChanged changed."

    .line 272
    .line 273
    .line 274
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :cond_c
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 278
    .line 279
    if-nez p1, :cond_d

    .line 280
    .line 281
    const/16 p1, 0x3ea

    .line 282
    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_6

    .line 287
    .line 288
    :cond_d
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 289
    .line 290
    if-eqz p1, :cond_e

    .line 291
    .line 292
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanCallback:Lcom/android/server/desktopmode/McfManager$5;

    .line 293
    .line 294
    invoke-interface {p1, v0}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    .line 295
    .line 296
    .line 297
    iput-object v2, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 298
    .line 299
    const-string p1, "BLE_SCANNER_STATE_STOP_SCAN_REQUEST"

    .line 300
    .line 301
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 302
    .line 303
    :cond_e
    const-string p1, "BLE_SCANNER_STATE_SCAN_FILTER_CHANGE"

    .line 304
    .line 305
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 306
    .line 307
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 308
    .line 309
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v6, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    const-wide/16 v0, 0x64

    .line 317
    .line 318
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 319
    .line 320
    .line 321
    goto/16 :goto_6

    .line 322
    .line 323
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast p1, Ljava/lang/Long;

    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 328
    .line 329
    .line 330
    move-result-wide v0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 335
    .line 336
    if-eqz p1, :cond_f

    .line 337
    .line 338
    const-string/jumbo p1, "handleBleAdvertiserServiceUnbind timeout "

    .line 339
    .line 340
    .line 341
    const-string v2, ", mBleScannerState="

    .line 342
    .line 343
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_f
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    if-nez p1, :cond_10

    .line 366
    .line 367
    const-string p1, "BLE_SCANNER_STATE_SCAN_TIMEOUT"

    .line 368
    .line 369
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 370
    .line 371
    :cond_10
    const-wide/16 v0, -0x1

    .line 372
    .line 373
    iput-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    .line 374
    .line 375
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 376
    .line 377
    invoke-virtual {p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->unbindService()V

    .line 378
    .line 379
    .line 380
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 381
    .line 382
    if-eqz p1, :cond_22

    .line 383
    .line 384
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    if-eqz p1, :cond_22

    .line 389
    .line 390
    iput-wide v8, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLockTimeout:J

    .line 391
    .line 392
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 393
    .line 394
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_6

    .line 398
    .line 399
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->unbindMcfAdapter()V

    .line 400
    .line 401
    .line 402
    iput-object v7, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {p0, v8, v9}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_6

    .line 408
    .line 409
    :cond_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 410
    .line 411
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast p1, Lcom/samsung/android/mcf/McfAdapter;

    .line 414
    .line 415
    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 416
    .line 417
    if-eqz v7, :cond_13

    .line 418
    .line 419
    const-string v8, "MSG_MCF_ADAPTER_SERVICE_CONNECTED retryCount="

    .line 420
    .line 421
    invoke-static {v0, v8, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    :cond_13
    if-eqz p1, :cond_14

    .line 425
    .line 426
    const-string v8, "BLE_SCANNER_STATE_MCF_ADAPTER_BIND"

    .line 427
    .line 428
    iput-object v8, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 429
    .line 430
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 431
    .line 432
    goto :goto_2

    .line 433
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    :goto_2
    :try_start_0
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 437
    .line 438
    if-eqz p1, :cond_1c

    .line 439
    .line 440
    if-eqz v7, :cond_15

    .line 441
    .line 442
    const-string/jumbo p1, "handleMcfAdapterServiceConnected mMcfAdapter"

    .line 443
    .line 444
    .line 445
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto :goto_3

    .line 449
    :catch_0
    move-exception p0

    .line 450
    goto :goto_5

    .line 451
    :cond_15
    :goto_3
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 452
    .line 453
    if-nez p1, :cond_17

    .line 454
    .line 455
    if-eqz v7, :cond_16

    .line 456
    .line 457
    const-string/jumbo p1, "handleMcfAdapterServiceConnected getBleAdapter"

    .line 458
    .line 459
    .line 460
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    :cond_16
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 464
    .line 465
    iget-object v8, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdapterCallback:Lcom/android/server/desktopmode/McfManager$3;

    .line 466
    .line 467
    const/16 v9, 0x23

    .line 468
    .line 469
    invoke-virtual {p1, v9, v8}, Lcom/samsung/android/mcf/McfAdapter;->getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 474
    .line 475
    :cond_17
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 476
    .line 477
    if-eqz p1, :cond_1b

    .line 478
    .line 479
    invoke-interface {p1, v1}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    .line 480
    .line 481
    .line 482
    move-result p1

    .line 483
    if-eqz p1, :cond_19

    .line 484
    .line 485
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mResolver:Landroid/content/ContentResolver;

    .line 486
    .line 487
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 488
    .line 489
    const-string/jumbo v1, "ble_mac_address_list"

    .line 490
    .line 491
    .line 492
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    if-eqz p1, :cond_18

    .line 497
    .line 498
    const-string v0, ","

    .line 499
    .line 500
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    goto :goto_4

    .line 505
    :cond_18
    const-string p1, "There is no bleMacAddress"

    .line 506
    .line 507
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/McfManager;->tryBleScannerStartScan([Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_6

    .line 514
    .line 515
    :cond_19
    if-ge v0, v4, :cond_1a

    .line 516
    .line 517
    const-string p1, "BLE_SCANNER_STATE_BLE_NETWORK_NOT_READY_YET"

    .line 518
    .line 519
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 520
    .line 521
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 522
    .line 523
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    .line 525
    .line 526
    add-int/2addr v0, v1

    .line 527
    invoke-virtual {p0, v6, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    const-wide/16 v0, 0xbb8

    .line 532
    .line 533
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 534
    .line 535
    .line 536
    goto/16 :goto_6

    .line 537
    .line 538
    :cond_1a
    const-string p1, "BLE_SCANNER_STATE_BLE_NETWORK_NOT_READY"

    .line 539
    .line 540
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 541
    .line 542
    goto/16 :goto_6

    .line 543
    .line 544
    :cond_1b
    if-eqz v7, :cond_22

    .line 545
    .line 546
    const-string/jumbo p0, "handleMcfAdapterServiceConnected mMcfBleAdapter null"

    .line 547
    .line 548
    .line 549
    invoke-static {v3, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_6

    .line 553
    .line 554
    :cond_1c
    if-eqz v7, :cond_22

    .line 555
    .line 556
    const-string/jumbo p0, "handleMcfAdapterServiceConnected mMcfAdapter null"

    .line 557
    .line 558
    .line 559
    invoke-static {v3, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .line 561
    .line 562
    goto :goto_6

    .line 563
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string/jumbo v0, "handleMcfAdapterServiceConnected Exception:"

    .line 566
    .line 567
    .line 568
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object p0

    .line 578
    invoke-static {v3, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    goto :goto_6

    .line 582
    :cond_1d
    const-string p1, "BLE_SCANNER_STATE_SCAN_RESULT"

    .line 583
    .line 584
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 585
    .line 586
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 587
    .line 588
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 589
    .line 590
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 591
    .line 592
    .line 593
    move-result-object p1

    .line 594
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 595
    .line 596
    iget-boolean v1, v0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    .line 597
    .line 598
    if-nez v1, :cond_1f

    .line 599
    .line 600
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 601
    .line 602
    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 603
    .line 604
    if-eq p1, v4, :cond_1f

    .line 605
    .line 606
    const/4 v1, 0x4

    .line 607
    if-eq p1, v1, :cond_1f

    .line 608
    .line 609
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 610
    .line 611
    if-eqz p1, :cond_1e

    .line 612
    .line 613
    const-string/jumbo p1, "handleMcfAdapterScannerScanResult bindService"

    .line 614
    .line 615
    .line 616
    invoke-static {v3, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->bindService()V

    .line 620
    .line 621
    .line 622
    :cond_1f
    const-wide/32 v0, 0xea60

    .line 623
    .line 624
    .line 625
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    .line 626
    .line 627
    .line 628
    goto :goto_6

    .line 629
    :cond_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast p1, Ljava/lang/Integer;

    .line 632
    .line 633
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 634
    .line 635
    .line 636
    move-result p1

    .line 637
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 638
    .line 639
    if-eqz p0, :cond_22

    .line 640
    .line 641
    const/4 v0, 0x2

    .line 642
    if-ne v0, p1, :cond_22

    .line 643
    .line 644
    invoke-interface {p0, v1}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    .line 645
    .line 646
    .line 647
    move-result p0

    .line 648
    if-eqz p0, :cond_21

    .line 649
    .line 650
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 651
    .line 652
    if-eqz p0, :cond_22

    .line 653
    .line 654
    const-string/jumbo p0, "handleMcfServiceStateChanged - BLE NETWORK is enabled"

    .line 655
    .line 656
    .line 657
    invoke-static {v3, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    goto :goto_6

    .line 661
    :cond_21
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 662
    .line 663
    if-eqz p0, :cond_22

    .line 664
    .line 665
    const-string/jumbo p0, "handleMcfServiceStateChanged - BLE NETWORK is not enabled. Need to check unbind"

    .line 666
    .line 667
    .line 668
    invoke-static {v3, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    :cond_22
    :goto_6
    return-void

    .line 672
    nop

    .line 673
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    :pswitch_data_1
    .packed-switch 0x2bd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
