.class public final Lcom/android/server/input/InputManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/input/InputManagerService$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

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
    .locals 12

    .line 1
    const-string/jumbo p1, "null"

    .line 2
    .line 3
    .line 4
    const-string v0, "InputManager"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    iget v3, p0, Lcom/android/server/input/InputManagerService$3;->$r8$classId:I

    .line 9
    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string/jumbo v3, "com.samsung.android.action.SHOWING_TOUCH_SENSITIVITY_NOTI"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v3, -0x2

    .line 36
    const-string/jumbo v4, "auto_adjust_touch"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v4, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 40
    .line 41
    .line 42
    const-string/jumbo p1, "channelId"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    const-string/jumbo p0, "channel id was wrong. id="

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 67
    .line 68
    sget-boolean p1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string/jumbo v2, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    const-string/jumbo p1, "kids_home_mode"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "KidsMode : "

    .line 97
    .line 98
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 102
    .line 103
    iget-boolean v1, v1, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 104
    .line 105
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, " -> "

    .line 109
    .line 110
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 124
    .line 125
    iget-boolean v0, p2, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 126
    .line 127
    if-eq v0, p1, :cond_2

    .line 128
    .line 129
    iget-object p2, p2, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 130
    .line 131
    const/16 v0, 0x10

    .line 132
    .line 133
    invoke-interface {p2, v0, p1}, Lcom/android/server/input/NativeInputManagerService;->updateInputMetaState(IZ)V

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 137
    .line 138
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 139
    .line 140
    :cond_2
    return-void

    .line 141
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 146
    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_9

    .line 152
    .line 153
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 154
    .line 155
    iput-boolean v2, p2, Lcom/android/server/input/InputManagerService;->mBootCompleted:Z

    .line 156
    .line 157
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->IFW_KEY_COUNTER:Z

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    iget-object v0, p2, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    .line 162
    .line 163
    iget-object p2, p2, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    const-string v0, ""

    .line 169
    .line 170
    sget-boolean v3, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 171
    .line 172
    const-string v4, "InputKeyCounter"

    .line 173
    .line 174
    if-eqz v3, :cond_3

    .line 175
    .line 176
    const-string/jumbo v5, "read old data!"

    .line 177
    .line 178
    .line 179
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    :cond_3
    const-string/jumbo v5, "persist.service.bgkeycount"

    .line 183
    .line 184
    .line 185
    invoke-static {v5, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    const-string v6, "/"

    .line 190
    .line 191
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    new-instance v6, Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 196
    .line 197
    invoke-direct {v6}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>()V

    .line 198
    .line 199
    .line 200
    :try_start_0
    array-length v7, p1

    .line 201
    move v8, v1

    .line 202
    :goto_1
    if-ge v8, v7, :cond_6

    .line 203
    .line 204
    aget-object v9, p1, v8

    .line 205
    .line 206
    if-eqz v3, :cond_4

    .line 207
    .line 208
    new-instance v10, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string/jumbo v11, "read old saved keycount strings = "

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    :cond_4
    const-string v10, ","

    .line 230
    .line 231
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    array-length v10, v9

    .line 236
    const/4 v11, 0x2

    .line 237
    if-eq v10, v11, :cond_5

    .line 238
    .line 239
    const-string/jumbo p1, "throw up the data!"

    .line 240
    .line 241
    .line 242
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_5
    aget-object v10, v9, v1

    .line 247
    .line 248
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    aget-object v9, v9, v2

    .line 253
    .line 254
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    invoke-virtual {v6, v10, v9}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->add(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .line 260
    .line 261
    add-int/2addr v8, v2

    .line 262
    goto :goto_1

    .line 263
    :catch_0
    const-string p1, "NumberFormatException, throw up the data!"

    .line 264
    .line 265
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_6
    invoke-virtual {v6}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {p2, p1}, Lcom/android/server/input/InputKeyCounter;->sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 282
    .line 283
    iget-object p1, p1, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 284
    .line 285
    new-instance p2, Lcom/android/server/input/InputManagerService$16$$ExternalSyntheticLambda0;

    .line 286
    .line 287
    invoke-direct {p2, p0, v1}, Lcom/android/server/input/InputManagerService$16$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputManagerService$3;I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    .line 292
    .line 293
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 294
    .line 295
    iget-boolean p2, p1, Lcom/android/server/input/InputManagerService;->mNotifyPogoKeyboardNotMatchPending:Z

    .line 296
    .line 297
    if-eqz p2, :cond_8

    .line 298
    .line 299
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->notifyPogoKeyboardNotMatch()V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 303
    .line 304
    iput-boolean v1, p1, Lcom/android/server/input/InputManagerService;->mNotifyPogoKeyboardNotMatchPending:Z

    .line 305
    .line 306
    :cond_8
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 307
    .line 308
    iget-boolean p2, p1, Lcom/android/server/input/InputManagerService;->mPaperCoverNotificationPending:Z

    .line 309
    .line 310
    if-eqz p2, :cond_9

    .line 311
    .line 312
    iput-boolean v1, p1, Lcom/android/server/input/InputManagerService;->mPaperCoverNotificationPending:Z

    .line 313
    .line 314
    iget-object p1, p1, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 315
    .line 316
    new-instance p2, Lcom/android/server/input/InputManagerService$16$$ExternalSyntheticLambda0;

    .line 317
    .line 318
    invoke-direct {p2, p0, v2}, Lcom/android/server/input/InputManagerService$16$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputManagerService$3;I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    .line 323
    .line 324
    :cond_9
    return-void

    .line 325
    :pswitch_3
    const-string/jumbo v2, "received:"

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    const-string/jumbo v4, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-eqz v4, :cond_b

    .line 340
    .line 341
    :try_start_1
    const-string/jumbo v4, "set"

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    const-string/jumbo v5, "force"

    .line 349
    .line 350
    .line 351
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    const-string/jumbo v5, "package"

    .line 356
    .line 357
    .line 358
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    const-string/jumbo v6, "type"

    .line 363
    .line 364
    .line 365
    const/4 v7, 0x3

    .line 366
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 367
    .line 368
    .line 369
    move-result p2

    .line 370
    new-instance v6, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v2, " packageName:"

    .line 379
    .line 380
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    if-eqz v5, :cond_a

    .line 384
    .line 385
    move-object p1, v5

    .line 386
    :cond_a
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    if-nez p1, :cond_b

    .line 401
    .line 402
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 403
    .line 404
    invoke-virtual {p0, v4, p2, v1, v5}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    .line 406
    .line 407
    goto :goto_3

    .line 408
    :catch_1
    move-exception p0

    .line 409
    const-string p1, "Could not set device block"

    .line 410
    .line 411
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .line 413
    .line 414
    :cond_b
    :goto_3
    return-void

    .line 415
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 416
    .line 417
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateFlowPointerSettings()V

    .line 418
    .line 419
    .line 420
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 421
    .line 422
    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateFlowPointerDirectionSettings()V

    .line 423
    .line 424
    .line 425
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 426
    .line 427
    const/4 p2, 0x4

    .line 428
    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    .line 429
    .line 430
    .line 431
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 432
    .line 433
    invoke-virtual {p1, v2}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    .line 434
    .line 435
    .line 436
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$3;->this$0:Lcom/android/server/input/InputManagerService;

    .line 437
    .line 438
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateSetPenModeOnDex()V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    nop

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
