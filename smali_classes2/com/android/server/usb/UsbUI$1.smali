.class public final Lcom/android/server/usb/UsbUI$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbUI;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usb/UsbUI$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

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
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/server/usb/UsbUI$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v0, "mEmergencyModeReceiver ("

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ")"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "UsbUI"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string/jumbo p1, "reason"

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 p2, 0x3

    .line 40
    if-ne p1, p2, :cond_1

    .line 41
    .line 42
    const-string p1, "EmergencyMode enabled"

    .line 43
    .line 44
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 51
    .line 52
    iget-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 53
    .line 54
    if-nez p2, :cond_0

    .line 55
    .line 56
    iget-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 57
    .line 58
    if-nez p2, :cond_3

    .line 59
    .line 60
    iget-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    .line 61
    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 p2, 0x5

    .line 69
    if-ne p1, p2, :cond_3

    .line 70
    .line 71
    const-string p1, "EmergencyMode disabled"

    .line 72
    .line 73
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 79
    .line 80
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 81
    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 85
    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    :cond_2
    const/16 p1, 0x6b

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 99
    .line 100
    iget-boolean v0, p1, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 101
    .line 102
    const-string/jumbo v1, "misc_event"

    .line 103
    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    and-int/lit8 p2, p2, 0x20

    .line 111
    .line 112
    if-eqz p2, :cond_4

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    :cond_4
    iput-boolean v2, p1, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 118
    .line 119
    iget-boolean p1, p1, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 120
    .line 121
    if-eq v0, p1, :cond_6

    .line 122
    .line 123
    const-string/jumbo p1, "oldHiccupState="

    .line 124
    .line 125
    .line 126
    const-string p2, " mIsHiccupState="

    .line 127
    .line 128
    invoke-static {p1, p2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 133
    .line 134
    iget-boolean p2, p2, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string p2, "UsbUI"

    .line 144
    .line 145
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 149
    .line 150
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 151
    .line 152
    if-eqz p1, :cond_5

    .line 153
    .line 154
    const-string p1, "CD"

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    const-string p1, "CR"

    .line 158
    .line 159
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    return-void

    .line 163
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string/jumbo v0, "mPortReceiver ("

    .line 166
    .line 167
    .line 168
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v0, ")"

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string v0, "UsbUI"

    .line 184
    .line 185
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 189
    .line 190
    iget-boolean p1, p1, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 191
    .line 192
    const-string/jumbo v1, "portStatus"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Landroid/hardware/usb/UsbPortStatus;

    .line 200
    .line 201
    const/4 v1, 0x0

    .line 202
    if-nez p2, :cond_7

    .line 203
    .line 204
    const-string p2, "UsbPortStatus is null"

    .line 205
    .line 206
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 210
    .line 211
    iput-boolean v1, p2, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_7
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 215
    .line 216
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    const/4 v3, 0x1

    .line 221
    if-ne p2, v3, :cond_8

    .line 222
    .line 223
    move v1, v3

    .line 224
    :cond_8
    iput-boolean v1, v2, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 225
    .line 226
    :goto_2
    const-string/jumbo p2, "oldSourcePower="

    .line 227
    .line 228
    .line 229
    const-string v1, " mSourcePower="

    .line 230
    .line 231
    invoke-static {p2, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 236
    .line 237
    iget-boolean v1, v1, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 238
    .line 239
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 250
    .line 251
    iget-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 252
    .line 253
    if-eq p1, p2, :cond_9

    .line 254
    .line 255
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 256
    .line 257
    if-eqz p1, :cond_9

    .line 258
    .line 259
    invoke-static {p0, p2}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V

    .line 260
    .line 261
    .line 262
    :cond_9
    return-void

    .line 263
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string/jumbo v0, "mUsbWetStateReceiver ("

    .line 266
    .line 267
    .line 268
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string p2, ")"

    .line 275
    .line 276
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    const-string p2, "UsbUI"

    .line 284
    .line 285
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 289
    .line 290
    iget-object p1, p1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 291
    .line 292
    new-instance p2, Landroid/content/Intent;

    .line 293
    .line 294
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 295
    .line 296
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 300
    .line 301
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 305
    .line 306
    iget-object p1, p1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 307
    .line 308
    const p2, 0x1040fd0

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    iget-object p2, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 316
    .line 317
    iget-object p2, p2, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 318
    .line 319
    const v0, 0x1040fd8

    .line 320
    .line 321
    .line 322
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 327
    .line 328
    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z

    .line 329
    .line 330
    const v2, 0x1040fd9

    .line 331
    .line 332
    .line 333
    if-eqz v1, :cond_a

    .line 334
    .line 335
    iget-object v0, v0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_a
    iget-object v0, v0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    const v1, 0x1040fd7

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    :goto_3
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 350
    .line 351
    iget-object v0, v0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 352
    .line 353
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    const-string v1, "\\n"

    .line 358
    .line 359
    const-string v2, "\n"

    .line 360
    .line 361
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 366
    .line 367
    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 368
    .line 369
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 378
    .line 379
    and-int/lit8 v1, v1, 0x30

    .line 380
    .line 381
    const/16 v2, 0x20

    .line 382
    .line 383
    if-ne v1, v2, :cond_b

    .line 384
    .line 385
    const/4 v1, 0x4

    .line 386
    goto :goto_4

    .line 387
    :cond_b
    const/4 v1, 0x5

    .line 388
    :goto_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 389
    .line 390
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 391
    .line 392
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 393
    .line 394
    invoke-direct {v2, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 395
    .line 396
    .line 397
    const/4 p0, 0x0

    .line 398
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 405
    .line 406
    .line 407
    new-instance p0, Lcom/android/server/usb/UsbUI$2$1;

    .line 408
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    const/16 p2, 0x7d8

    .line 424
    .line 425
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 429
    .line 430
    .line 431
    return-void

    .line 432
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string/jumbo v0, "mLocalechangedReceiver ("

    .line 435
    .line 436
    .line 437
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string p2, ")"

    .line 444
    .line 445
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    const-string p2, "UsbUI"

    .line 453
    .line 454
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$1;->this$0:Lcom/android/server/usb/UsbUI;

    .line 458
    .line 459
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 460
    .line 461
    const/4 p1, 0x5

    .line 462
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    nop

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
