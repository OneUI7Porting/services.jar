.class public final Lcom/android/server/usb/UsbHostRestrictor$4;
.super Landroid/os/UEventObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    const-string v1, "ACTION"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "PRODUCT"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v2, "add"

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    const-string v1, "UsbHostRestrictor"

    .line 34
    .line 35
    const-string/jumbo v2, "uevent add"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    sput-boolean v4, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    .line 42
    .line 43
    sget v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 44
    .line 45
    if-ne v1, v4, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    if-eqz v1, :cond_2

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    if-ne v1, v2, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string p0, "UsbHostRestrictor"

    .line 73
    .line 74
    const-string/jumbo p1, "skip update vid:pid reason - SCREEN LOCK"

    .line 75
    .line 76
    .line 77
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 82
    .line 83
    const-string v1, "/"

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    const-string v1, "/"

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    aget-object v1, p1, v3

    .line 98
    .line 99
    aget-object p1, p1, v4

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 102
    .line 103
    invoke-static {v2, v1, p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mupdateVidPidList(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 107
    .line 108
    sget-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbConHist:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mwriteVpidHistorytoFile(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const-string/jumbo p1, "remove"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    .line 124
    .line 125
    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 126
    .line 127
    if-ne p1, v4, :cond_4

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_1
    monitor-exit v0

    .line 138
    return-void

    .line 139
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p0

    .line 141
    :pswitch_0
    const-string/jumbo v0, "unknown state "

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 147
    .line 148
    monitor-enter v1

    .line 149
    :try_start_1
    const-string v2, "USB_STATE"

    .line 150
    .line 151
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v2, "DISCONNECTED"

    .line 156
    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    const/4 v3, 0x1

    .line 162
    if-eqz v2, :cond_5

    .line 163
    .line 164
    const/4 p1, 0x0

    .line 165
    sput-boolean p1, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    .line 166
    .line 167
    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 168
    .line 169
    if-ne p1, v3, :cond_7

    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catchall_1
    move-exception p0

    .line 181
    goto :goto_5

    .line 182
    :cond_5
    const-string v2, "CONNECTED"

    .line 183
    .line 184
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_6

    .line 189
    .line 190
    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    .line 191
    .line 192
    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 193
    .line 194
    if-ne p1, v3, :cond_7

    .line 195
    .line 196
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_7

    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 205
    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    const-string p0, "CONFIGURED"

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-eqz p0, :cond_8

    .line 220
    .line 221
    :cond_7
    :goto_3
    monitor-exit v1

    .line 222
    goto :goto_4

    .line 223
    :cond_8
    const-string p0, "UsbHostRestrictor"

    .line 224
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    monitor-exit v1

    .line 241
    :goto_4
    return-void

    .line 242
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 243
    throw p0

    .line 244
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v1, "USB HOST UEVENT : event="

    .line 247
    .line 248
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    const-string v1, "UsbHostRestrictor"

    .line 263
    .line 264
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    const-string v0, "ACTION"

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v2, "DEVPATH"

    .line 274
    .line 275
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    const-string v3, "STATE"

    .line 280
    .line 281
    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    const-string v4, "change"

    .line 286
    .line 287
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_e

    .line 292
    .line 293
    if-eqz v3, :cond_e

    .line 294
    .line 295
    const-string v0, "/devices/virtual/host_notify"

    .line 296
    .line 297
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_e

    .line 302
    .line 303
    :try_start_2
    const-string v0, "BLOCK"

    .line 304
    .line 305
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_e

    .line 310
    .line 311
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 312
    .line 313
    iget-object v0, v0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 314
    .line 315
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    const-string/jumbo v2, "user_setup_complete"

    .line 320
    .line 321
    .line 322
    const/4 v3, 0x1

    .line 323
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eq v0, v3, :cond_9

    .line 328
    .line 329
    const-string p0, "UEventObserver SETUP WIZARD SCREEN. So skip about showing USB BLOCK Popup"

    .line 330
    .line 331
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    goto/16 :goto_8

    .line 335
    .line 336
    :cond_9
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    const/4 v4, 0x3

    .line 343
    const/4 v5, 0x2

    .line 344
    sparse-switch v2, :sswitch_data_0

    .line 345
    .line 346
    .line 347
    goto :goto_6

    .line 348
    :sswitch_0
    const-string v2, "ON_ALL_SCREEN"

    .line 349
    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    if-eqz v0, :cond_a

    .line 355
    .line 356
    move v0, v3

    .line 357
    goto :goto_7

    .line 358
    :sswitch_1
    const-string v2, "ON_ALL_SIM"

    .line 359
    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_a

    .line 365
    .line 366
    move v0, v5

    .line 367
    goto :goto_7

    .line 368
    :sswitch_2
    const-string v2, "ON_ALL_BOTH"

    .line 369
    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_a

    .line 375
    .line 376
    const/4 v0, 0x0

    .line 377
    goto :goto_7

    .line 378
    :sswitch_3
    const-string v2, "ON_HOST_MDM"

    .line 379
    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-eqz v0, :cond_a

    .line 385
    .line 386
    move v0, v4

    .line 387
    goto :goto_7

    .line 388
    :cond_a
    :goto_6
    const/4 v0, -0x1

    .line 389
    :goto_7
    if-eqz v0, :cond_d

    .line 390
    .line 391
    if-eq v0, v3, :cond_e

    .line 392
    .line 393
    if-eq v0, v5, :cond_c

    .line 394
    .line 395
    if-eq v0, v4, :cond_b

    .line 396
    .line 397
    const-string p0, "USB HOST is BLOCKED by UNKNOWN. Do Nothing!"

    .line 398
    .line 399
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_b
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 404
    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    const-string/jumbo v0, "showMDMToast"

    .line 409
    .line 410
    .line 411
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 415
    .line 416
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    if-eqz p0, :cond_e

    .line 421
    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    if-eqz p0, :cond_e

    .line 427
    .line 428
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    .line 429
    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_c
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 433
    .line 434
    invoke-static {p0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mshowAlertDialog(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 435
    .line 436
    .line 437
    goto :goto_8

    .line 438
    :cond_d
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 439
    .line 440
    invoke-static {p0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mshowAlertDialog(Lcom/android/server/usb/UsbHostRestrictor;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 441
    .line 442
    .line 443
    goto :goto_8

    .line 444
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    const-string v0, "Could not parse state or devPath from event "

    .line 447
    .line 448
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p0

    .line 458
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    :cond_e
    :goto_8
    return-void

    .line 462
    nop

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :sswitch_data_0
    .sparse-switch
        -0x7cd7fb21 -> :sswitch_3
        0x1e909df -> :sswitch_2
        0x10942699 -> :sswitch_1
        0x48266b4a -> :sswitch_0
    .end sparse-switch
.end method
