.class public final Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->updateAudioServiceNotificationChannel()V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_15

    .line 23
    .line 24
    :cond_0
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/16 v4, 0x3ec

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, -0x1

    .line 34
    if-eqz v3, :cond_f

    .line 35
    .line 36
    const-string v3, "android.intent.extra.REPLACING"

    .line 37
    .line 38
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_f

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v2, "android.intent.extra.UID"

    .line 53
    .line 54
    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 59
    .line 60
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const-string v3, "AS.AudioService"

    .line 65
    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v7, "("

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v7, ") is removed"

    .line 83
    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v1, p2}, Lcom/samsung/android/server/audio/utils/BtUtils;->checkAndUpdateAuracastApp(IILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo p2, "com.samsung.android.oneconnect"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 107
    .line 108
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance v3, Ljava/util/ArrayList;

    .line 114
    .line 115
    iget-object v5, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_2

    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 139
    .line 140
    iget v6, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 141
    .line 142
    if-nez v6, :cond_1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iget v5, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 146
    .line 147
    invoke-virtual {p2, v5, v1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppDevice(IIZ)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    iget-boolean v0, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 152
    .line 153
    if-nez v0, :cond_3

    .line 154
    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :cond_3
    const-string v0, "AS.MultiSoundManager"

    .line 158
    .line 159
    const-string/jumbo v3, "disable"

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    iput-boolean v1, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 168
    .line 169
    .line 170
    iget-object p2, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 171
    .line 172
    iget-object p2, p2, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 173
    .line 174
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 175
    .line 176
    iget-object p2, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 177
    .line 178
    invoke-virtual {p2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_5

    .line 182
    .line 183
    :cond_4
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 184
    .line 185
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 186
    .line 187
    invoke-virtual {p2, v2, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(IZ)I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_a

    .line 192
    .line 193
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 194
    .line 195
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 196
    .line 197
    const-string/jumbo v3, "removeItem, "

    .line 198
    .line 199
    .line 200
    iget-object v4, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 201
    .line 202
    monitor-enter v4

    .line 203
    :try_start_0
    iget-object v6, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    if-eqz v6, :cond_9

    .line 214
    .line 215
    const-string v6, "AS.MultiSoundManager"

    .line 216
    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    iget-object v3, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 233
    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(II)V

    .line 242
    .line 243
    .line 244
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 246
    .line 247
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 248
    .line 249
    const-string/jumbo v3, "multisound_app"

    .line 250
    .line 251
    .line 252
    invoke-static {p2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    const-string v3, "AS.AudioService"

    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v6, "SEC_AUDIO_MULTI_SOUND::ACTION_PACKAGE_REMOVED ( current Packagelist = "

    .line 261
    .line 262
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-nez v3, :cond_7

    .line 280
    .line 281
    const-string v3, ":"

    .line 282
    .line 283
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    array-length v3, p2

    .line 288
    move v4, v1

    .line 289
    :goto_1
    if-ge v4, v3, :cond_7

    .line 290
    .line 291
    aget-object v6, p2, v4

    .line 292
    .line 293
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    if-nez v7, :cond_6

    .line 298
    .line 299
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-nez v7, :cond_6

    .line 304
    .line 305
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-eqz v7, :cond_5

    .line 310
    .line 311
    move-object v5, v6

    .line 312
    goto :goto_2

    .line 313
    :cond_5
    const-string v7, ":"

    .line 314
    .line 315
    invoke-static {v5, v7, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    :cond_6
    :goto_2
    add-int/2addr v4, v0

    .line 320
    goto :goto_1

    .line 321
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    if-eqz p2, :cond_8

    .line 326
    .line 327
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 328
    .line 329
    iget-object v6, p2, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 330
    .line 331
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 332
    .line 333
    const/4 v10, 0x0

    .line 334
    const/4 v12, 0x0

    .line 335
    const/16 v7, 0xacb

    .line 336
    .line 337
    const/4 v8, 0x2

    .line 338
    const/4 v9, 0x0

    .line 339
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 340
    .line 341
    .line 342
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 343
    .line 344
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 345
    .line 346
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 350
    .line 351
    iget-object v3, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 352
    .line 353
    const v4, 0x103012b

    .line 354
    .line 355
    .line 356
    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 357
    .line 358
    .line 359
    iget-object p2, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 360
    .line 361
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    const v4, 0x10408c9

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    const v4, 0x10408b7

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 388
    .line 389
    .line 390
    :cond_8
    const-string p2, "AS.AudioService"

    .line 391
    .line 392
    const-string v0, "SEC_AUDIO_MULTI_SOUND::ACTION_PACKAGE_REMOVED ( new Packagelist = "

    .line 393
    .line 394
    invoke-static {v0, v5, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 398
    .line 399
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 400
    .line 401
    const-string/jumbo v0, "multisound_app"

    .line 402
    .line 403
    .line 404
    invoke-static {p2, v0, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 405
    .line 406
    .line 407
    goto :goto_4

    .line 408
    :catchall_0
    move-exception p0

    .line 409
    goto :goto_3

    .line 410
    :cond_9
    :try_start_1
    monitor-exit v4

    .line 411
    goto :goto_4

    .line 412
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    throw p0

    .line 414
    :cond_a
    :goto_4
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 415
    .line 416
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 417
    .line 418
    iget v0, p2, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    .line 419
    .line 420
    if-ne v0, v2, :cond_b

    .line 421
    .line 422
    invoke-virtual {p2, v2, v1}, Lcom/android/server/audio/MediaFocusControl;->setIgnoreAudioFocus(IZ)V

    .line 423
    .line 424
    .line 425
    :cond_b
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 426
    .line 427
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 428
    .line 429
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-static {p2, p1}, Lcom/samsung/android/server/audio/PackageListHelper;->removePackageForName(Landroid/content/Context;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 438
    .line 439
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 440
    .line 441
    const/16 v0, 0x64

    .line 442
    .line 443
    invoke-virtual {p2, v2, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolume(II)V

    .line 444
    .line 445
    .line 446
    :goto_5
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 447
    .line 448
    if-eqz p2, :cond_c

    .line 449
    .line 450
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 451
    .line 452
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 453
    .line 454
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 455
    .line 456
    invoke-static {v0, p2, p1, v1}, Lcom/samsung/android/server/audio/utils/KaraokeUtils;->checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V

    .line 457
    .line 458
    .line 459
    :cond_c
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 460
    .line 461
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    .line 462
    .line 463
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 464
    .line 465
    .line 466
    const-string/jumbo p2, "com.samsung.android.soundassistant"

    .line 467
    .line 468
    .line 469
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result p2

    .line 473
    if-eqz p2, :cond_d

    .line 474
    .line 475
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 476
    .line 477
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mclearSoundAssistantSettings(Lcom/android/server/audio/AudioService;)V

    .line 478
    .line 479
    .line 480
    :cond_d
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 481
    .line 482
    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$munSetSoundSettingEventBroadcastIntent(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 486
    .line 487
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 488
    .line 489
    if-eqz p2, :cond_3f

    .line 490
    .line 491
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result p1

    .line 495
    if-eqz p1, :cond_3f

    .line 496
    .line 497
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 498
    .line 499
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 500
    .line 501
    iget-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 502
    .line 503
    monitor-enter p1

    .line 504
    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result p2

    .line 514
    if-eqz p2, :cond_e

    .line 515
    .line 516
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    .line 518
    .line 519
    move-result-object p2

    .line 520
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V

    .line 526
    .line 527
    .line 528
    goto :goto_6

    .line 529
    :catchall_1
    move-exception p0

    .line 530
    goto :goto_7

    .line 531
    :cond_e
    :goto_6
    monitor-exit p1

    .line 532
    goto/16 :goto_15

    .line 533
    .line 534
    :goto_7
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 535
    throw p0

    .line 536
    :cond_f
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 537
    .line 538
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    if-eqz v3, :cond_10

    .line 543
    .line 544
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    const-string v0, "android.intent.extra.UID"

    .line 553
    .line 554
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 555
    .line 556
    .line 557
    move-result p2

    .line 558
    const-string v0, "AS.AudioService"

    .line 559
    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const-string v3, "("

    .line 569
    .line 570
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    const-string p2, ") is data cleared"

    .line 577
    .line 578
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object p2

    .line 585
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    const-string/jumbo p2, "com.samsung.android.soundassistant"

    .line 589
    .line 590
    .line 591
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result p2

    .line 595
    if-eqz p2, :cond_3f

    .line 596
    .line 597
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 598
    .line 599
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 600
    .line 601
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    new-instance v0, Landroid/content/Intent;

    .line 605
    .line 606
    const-string v2, "android.intent.action.VOLUMESTAR_SETTING_CHANGED"

    .line 607
    .line 608
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    const-string/jumbo v2, "changed_setting"

    .line 612
    .line 613
    .line 614
    const-string/jumbo v3, "volumestar_enabled"

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    .line 619
    .line 620
    const-string/jumbo v2, "com.android.systemui"

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    .line 625
    .line 626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 627
    .line 628
    .line 629
    move-result-wide v2

    .line 630
    :try_start_3
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 631
    .line 632
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 633
    .line 634
    const-string/jumbo v5, "com.samsung.systemui.permission.SPLUGIN"

    .line 635
    .line 636
    .line 637
    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 638
    .line 639
    .line 640
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 641
    .line 642
    .line 643
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 644
    .line 645
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mclearSoundAssistantSettings(Lcom/android/server/audio/AudioService;)V

    .line 646
    .line 647
    .line 648
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 649
    .line 650
    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$munSetSoundSettingEventBroadcastIntent(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 654
    .line 655
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 656
    .line 657
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    new-instance p1, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;

    .line 661
    .line 662
    invoke-direct {p1, v1, p0}, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_15

    .line 669
    .line 670
    :catchall_2
    move-exception p0

    .line 671
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    .line 673
    .line 674
    throw p0

    .line 675
    :cond_10
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 676
    .line 677
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    if-eqz v3, :cond_14

    .line 682
    .line 683
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object p1

    .line 691
    const-string v1, "android.intent.extra.UID"

    .line 692
    .line 693
    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 694
    .line 695
    .line 696
    move-result p2

    .line 697
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 698
    .line 699
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isInAllowedList(Ljava/lang/String;)Z

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    if-eqz v1, :cond_11

    .line 704
    .line 705
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 706
    .line 707
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 708
    .line 709
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 710
    .line 711
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    .line 713
    .line 714
    invoke-static {v1, p1}, Lcom/samsung/android/server/audio/PackageListHelper;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    :cond_11
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 718
    .line 719
    if-eqz v1, :cond_12

    .line 720
    .line 721
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 722
    .line 723
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 724
    .line 725
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 726
    .line 727
    invoke-static {v2, v1, p1, v0}, Lcom/samsung/android/server/audio/utils/KaraokeUtils;->checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V

    .line 728
    .line 729
    .line 730
    :cond_12
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 731
    .line 732
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 733
    .line 734
    if-eqz v1, :cond_13

    .line 735
    .line 736
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    if-eqz v1, :cond_13

    .line 741
    .line 742
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 743
    .line 744
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 745
    .line 746
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/audio/AudioGameManager;->addGameUid(IZ)V

    .line 747
    .line 748
    .line 749
    :cond_13
    invoke-static {p2, v0, p1}, Lcom/samsung/android/server/audio/utils/BtUtils;->checkAndUpdateAuracastApp(IILjava/lang/String;)V

    .line 750
    .line 751
    .line 752
    goto/16 :goto_15

    .line 753
    .line 754
    :cond_14
    const-string v3, "android.intent.action.TurnOff_MultiSound"

    .line 755
    .line 756
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    if-eqz v3, :cond_15

    .line 761
    .line 762
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 763
    .line 764
    iget-object v6, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 765
    .line 766
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 767
    .line 768
    const/4 v10, 0x0

    .line 769
    const/4 v12, 0x0

    .line 770
    const/16 v7, 0xacb

    .line 771
    .line 772
    const/4 v8, 0x2

    .line 773
    const/4 v9, 0x0

    .line 774
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 775
    .line 776
    .line 777
    new-instance p1, Landroid/content/Intent;

    .line 778
    .line 779
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 780
    .line 781
    .line 782
    const-string/jumbo p2, "com.samsung.android.setting.multisound"

    .line 783
    .line 784
    .line 785
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    .line 787
    .line 788
    const-string/jumbo p2, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    .line 789
    .line 790
    .line 791
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    .line 793
    .line 794
    const-string/jumbo p2, "enabled"

    .line 795
    .line 796
    .line 797
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 798
    .line 799
    .line 800
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 801
    .line 802
    invoke-virtual {p0, p1, v5}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_15

    .line 806
    .line 807
    :cond_15
    const-string v3, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    .line 808
    .line 809
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v3

    .line 813
    if-eqz v3, :cond_16

    .line 814
    .line 815
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 816
    .line 817
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 818
    .line 819
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 820
    .line 821
    invoke-virtual {p0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 822
    .line 823
    .line 824
    goto/16 :goto_15

    .line 825
    .line 826
    :cond_16
    const-string/jumbo v3, "com.samsung.android.audio.headup.changedevice"

    .line 827
    .line 828
    .line 829
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v3

    .line 833
    if-eqz v3, :cond_17

    .line 834
    .line 835
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 836
    .line 837
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 838
    .line 839
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    .line 840
    .line 841
    .line 842
    move-result p1

    .line 843
    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    .line 844
    .line 845
    .line 846
    move-result p1

    .line 847
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 848
    .line 849
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 850
    .line 851
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getAddressForDevice(I)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/audio/AudioService;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    .line 856
    .line 857
    .line 858
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 859
    .line 860
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 861
    .line 862
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 863
    .line 864
    const/16 p1, 0x3ed

    .line 865
    .line 866
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 867
    .line 868
    .line 869
    goto/16 :goto_15

    .line 870
    .line 871
    :cond_17
    const-string/jumbo v3, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    .line 872
    .line 873
    .line 874
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    if-eqz v3, :cond_19

    .line 879
    .line 880
    const-string/jumbo p1, "status"

    .line 881
    .line 882
    .line 883
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 884
    .line 885
    .line 886
    move-result p1

    .line 887
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 888
    .line 889
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 890
    .line 891
    if-ne p1, v0, :cond_18

    .line 892
    .line 893
    move v1, v0

    .line 894
    :cond_18
    iput-boolean v1, p2, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 895
    .line 896
    xor-int/lit8 p1, v1, 0x1

    .line 897
    .line 898
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroringPolicyParameter(Z)V

    .line 899
    .line 900
    .line 901
    const-string p1, "AS.AudioService"

    .line 902
    .line 903
    new-instance p2, Ljava/lang/StringBuilder;

    .line 904
    .line 905
    const-string/jumbo v0, "mIsDLNAEnabled:"

    .line 906
    .line 907
    .line 908
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 912
    .line 913
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 914
    .line 915
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 916
    .line 917
    invoke-static {p1, p2, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 918
    .line 919
    .line 920
    goto/16 :goto_15

    .line 921
    .line 922
    :cond_19
    const-string/jumbo v3, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 923
    .line 924
    .line 925
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 926
    .line 927
    .line 928
    move-result v3

    .line 929
    const/4 v4, 0x3

    .line 930
    const v7, 0x8000

    .line 931
    .line 932
    .line 933
    if-eqz v3, :cond_25

    .line 934
    .line 935
    const-string/jumbo p1, "state"

    .line 936
    .line 937
    .line 938
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 939
    .line 940
    .line 941
    move-result p1

    .line 942
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 943
    .line 944
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 945
    .line 946
    .line 947
    move-result v2

    .line 948
    sget-boolean v3, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sIsWifiDisplayConnected:Z

    .line 949
    .line 950
    const-string v6, "AS.AudioService"

    .line 951
    .line 952
    new-instance v8, Ljava/lang/StringBuilder;

    .line 953
    .line 954
    const-string v9, "WifiDisplay device state:"

    .line 955
    .line 956
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    const-string v9, " isConnected:"

    .line 963
    .line 964
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v8

    .line 974
    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .line 976
    .line 977
    iget-object v6, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 978
    .line 979
    iget-object v6, v6, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 980
    .line 981
    iget-object v6, v6, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 982
    .line 983
    iget-object v8, v6, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 984
    .line 985
    monitor-enter v8

    .line 986
    :try_start_4
    invoke-virtual {v6, v7, p1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 987
    .line 988
    .line 989
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 990
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 991
    .line 992
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 993
    .line 994
    if-ne p1, v0, :cond_1a

    .line 995
    .line 996
    move v6, v0

    .line 997
    goto :goto_8

    .line 998
    :cond_1a
    move v6, v1

    .line 999
    :goto_8
    const-string v8, "0"

    .line 1000
    .line 1001
    const-string/jumbo v9, "remote_submix"

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v2, v7, v8, v9, v6}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1005
    .line 1006
    .line 1007
    const/16 v2, 0x8

    .line 1008
    .line 1009
    if-ne p1, v0, :cond_20

    .line 1010
    .line 1011
    if-nez v3, :cond_20

    .line 1012
    .line 1013
    const-string v3, "AS.AudioService"

    .line 1014
    .line 1015
    const-string v6, "WifiDisplay is connected."

    .line 1016
    .line 1017
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    .line 1019
    .line 1020
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1021
    .line 1022
    iget-object v6, v3, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1023
    .line 1024
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1025
    .line 1026
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v3

    .line 1033
    const-string/jumbo v6, "odi_captions_enabled"

    .line 1034
    .line 1035
    .line 1036
    invoke-static {v3, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1037
    .line 1038
    .line 1039
    move-result v3

    .line 1040
    if-ne v3, v0, :cond_1b

    .line 1041
    .line 1042
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1043
    .line 1044
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    .line 1045
    .line 1046
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v6

    .line 1050
    check-cast v3, Ljava/util/HashSet;

    .line 1051
    .line 1052
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1053
    .line 1054
    .line 1055
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1056
    .line 1057
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    .line 1058
    .line 1059
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v6

    .line 1063
    check-cast v3, Ljava/util/HashSet;

    .line 1064
    .line 1065
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1069
    .line 1070
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1071
    .line 1072
    aget-object v3, v3, v4

    .line 1073
    .line 1074
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1075
    .line 1076
    .line 1077
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1078
    .line 1079
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1080
    .line 1081
    aget-object v3, v3, v4

    .line 1082
    .line 1083
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1084
    .line 1085
    .line 1086
    :cond_1b
    sput-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sIsWifiDisplayConnected:Z

    .line 1087
    .line 1088
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1089
    .line 1090
    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1091
    .line 1092
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1093
    .line 1094
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1095
    .line 1096
    .line 1097
    sget-boolean v6, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_VIA_SMART_VIEW:Z

    .line 1098
    .line 1099
    if-eqz v6, :cond_1e

    .line 1100
    .line 1101
    iget-object v6, v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1102
    .line 1103
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v6

    .line 1107
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v6

    .line 1111
    if-eqz v6, :cond_1e

    .line 1112
    .line 1113
    iget-object v6, v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1114
    .line 1115
    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v6

    .line 1119
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    .line 1120
    .line 1121
    .line 1122
    move-result v6

    .line 1123
    if-nez v6, :cond_1c

    .line 1124
    .line 1125
    move v6, v0

    .line 1126
    goto :goto_9

    .line 1127
    :cond_1c
    move v6, v1

    .line 1128
    :goto_9
    if-eqz v6, :cond_1d

    .line 1129
    .line 1130
    const-string/jumbo v7, "true"

    .line 1131
    .line 1132
    .line 1133
    goto :goto_a

    .line 1134
    :cond_1d
    const-string/jumbo v7, "false"

    .line 1135
    .line 1136
    .line 1137
    :goto_a
    const-string/jumbo v8, "l_smart_view_enable=true;support_voip="

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v7

    .line 1144
    sget-boolean v8, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    .line 1145
    .line 1146
    if-eqz v8, :cond_1f

    .line 1147
    .line 1148
    if-eqz v6, :cond_1f

    .line 1149
    .line 1150
    iget-object v6, v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mContext:Landroid/content/Context;

    .line 1151
    .line 1152
    invoke-static {v6}, Lcom/samsung/android/server/audio/MicModeManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/MicModeManager;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v6

    .line 1156
    invoke-virtual {v6, v2, v0}, Lcom/samsung/android/server/audio/MicModeManager;->updateState(IZ)V

    .line 1157
    .line 1158
    .line 1159
    goto :goto_b

    .line 1160
    :cond_1e
    const-string/jumbo v7, "l_smart_view_enable=true"

    .line 1161
    .line 1162
    .line 1163
    :cond_1f
    :goto_b
    invoke-static {v7}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 1164
    .line 1165
    .line 1166
    iget-object v2, v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1167
    .line 1168
    iget-object v6, v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mSemDeviceStatusListener:Lcom/samsung/android/server/audio/ScreenSharingHelper$2;

    .line 1169
    .line 1170
    invoke-virtual {v2, v6, v5}, Landroid/hardware/display/DisplayManager;->semRegisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    .line 1171
    .line 1172
    .line 1173
    new-instance v2, Landroid/content/IntentFilter;

    .line 1174
    .line 1175
    const-string/jumbo v5, "com.samsung.intent.action.SEC_PRESENTATION_START_SMARTVIEW"

    .line 1176
    .line 1177
    .line 1178
    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    const-string/jumbo v5, "com.samsung.intent.action.SEC_PRESENTATION_STOP_SMARTVIEW"

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    iget-object v4, v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mPresentationModeReceiver:Lcom/samsung/android/server/audio/ScreenSharingHelper$3;

    .line 1188
    .line 1189
    const/4 v5, 0x4

    .line 1190
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1191
    .line 1192
    .line 1193
    goto/16 :goto_c

    .line 1194
    .line 1195
    :cond_20
    if-nez p1, :cond_23

    .line 1196
    .line 1197
    if-eqz v3, :cond_23

    .line 1198
    .line 1199
    const-string v3, "AS.AudioService"

    .line 1200
    .line 1201
    const-string v5, "WifiDisplay is disconnected."

    .line 1202
    .line 1203
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    .line 1205
    .line 1206
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1207
    .line 1208
    iget-object v5, v3, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1209
    .line 1210
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1211
    .line 1212
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v3

    .line 1219
    const-string/jumbo v5, "odi_captions_enabled"

    .line 1220
    .line 1221
    .line 1222
    invoke-static {v3, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1223
    .line 1224
    .line 1225
    move-result v3

    .line 1226
    if-ne v3, v0, :cond_21

    .line 1227
    .line 1228
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1229
    .line 1230
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    .line 1231
    .line 1232
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v5

    .line 1236
    check-cast v3, Ljava/util/HashSet;

    .line 1237
    .line 1238
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1239
    .line 1240
    .line 1241
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1242
    .line 1243
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    .line 1244
    .line 1245
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v5

    .line 1249
    check-cast v3, Ljava/util/HashSet;

    .line 1250
    .line 1251
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1252
    .line 1253
    .line 1254
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1255
    .line 1256
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1257
    .line 1258
    aget-object v3, v3, v4

    .line 1259
    .line 1260
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1261
    .line 1262
    .line 1263
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1264
    .line 1265
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1266
    .line 1267
    aget-object v3, v3, v4

    .line 1268
    .line 1269
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1270
    .line 1271
    .line 1272
    :cond_21
    sput-boolean v1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sIsWifiDisplayConnected:Z

    .line 1273
    .line 1274
    sget-boolean v3, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 1275
    .line 1276
    if-eqz v3, :cond_22

    .line 1277
    .line 1278
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1279
    .line 1280
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    .line 1281
    .line 1282
    .line 1283
    move-result v3

    .line 1284
    if-eqz v3, :cond_22

    .line 1285
    .line 1286
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1287
    .line 1288
    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1289
    .line 1290
    const/4 v7, 0x0

    .line 1291
    const/4 v8, 0x0

    .line 1292
    const/16 v5, 0xc

    .line 1293
    .line 1294
    const/4 v6, 0x0

    .line 1295
    const/4 v9, 0x0

    .line 1296
    const/4 v10, 0x0

    .line 1297
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1298
    .line 1299
    .line 1300
    :cond_22
    sput-boolean v1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 1301
    .line 1302
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1303
    .line 1304
    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1305
    .line 1306
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1307
    .line 1308
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1309
    .line 1310
    .line 1311
    const-string/jumbo v5, "l_smart_view_enable=false"

    .line 1312
    .line 1313
    .line 1314
    invoke-static {v5}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 1315
    .line 1316
    .line 1317
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    const-string/jumbo v6, "l_smart_view_split_sound_enable="

    .line 1320
    .line 1321
    .line 1322
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    sget-boolean v6, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 1326
    .line 1327
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v5

    .line 1334
    invoke-static {v5}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 1335
    .line 1336
    .line 1337
    iget-object v5, v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1338
    .line 1339
    iget-object v6, v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mSemDeviceStatusListener:Lcom/samsung/android/server/audio/ScreenSharingHelper$2;

    .line 1340
    .line 1341
    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->semUnregisterDeviceStatusListener(Landroid/hardware/display/SemDeviceStatusListener;)V

    .line 1342
    .line 1343
    .line 1344
    iget-object v5, v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mPresentationModeReceiver:Lcom/samsung/android/server/audio/ScreenSharingHelper$3;

    .line 1345
    .line 1346
    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1347
    .line 1348
    .line 1349
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    .line 1350
    .line 1351
    if-eqz v3, :cond_23

    .line 1352
    .line 1353
    iget-object v3, v4, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mContext:Landroid/content/Context;

    .line 1354
    .line 1355
    invoke-static {v3}, Lcom/samsung/android/server/audio/MicModeManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/MicModeManager;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v3

    .line 1359
    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/server/audio/MicModeManager;->updateState(IZ)V

    .line 1360
    .line 1361
    .line 1362
    :cond_23
    :goto_c
    if-ne p1, v0, :cond_24

    .line 1363
    .line 1364
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1365
    .line 1366
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1367
    .line 1368
    const-string/jumbo v0, "isSupportDisplayVolumeControl"

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1372
    .line 1373
    .line 1374
    move-result p2

    .line 1375
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    .line 1376
    .line 1377
    .line 1378
    goto :goto_d

    .line 1379
    :cond_24
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1380
    .line 1381
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1382
    .line 1383
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    .line 1384
    .line 1385
    .line 1386
    :goto_d
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1387
    .line 1388
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1389
    .line 1390
    iget-boolean p2, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 1391
    .line 1392
    iput-boolean p2, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    .line 1393
    .line 1394
    const-string p1, "AS.AudioService"

    .line 1395
    .line 1396
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    const-string/jumbo v0, "isSupportDisplayVolumeControl:"

    .line 1399
    .line 1400
    .line 1401
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1402
    .line 1403
    .line 1404
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1405
    .line 1406
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1407
    .line 1408
    iget-boolean v0, v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 1409
    .line 1410
    invoke-static {p1, p2, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1411
    .line 1412
    .line 1413
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1414
    .line 1415
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 1416
    .line 1417
    .line 1418
    move-result p1

    .line 1419
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setMultiSoundOn(Z)V

    .line 1420
    .line 1421
    .line 1422
    goto/16 :goto_15

    .line 1423
    .line 1424
    :catchall_3
    move-exception p0

    .line 1425
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1426
    throw p0

    .line 1427
    :cond_25
    const-string/jumbo v3, "com.samsung.intent.action.WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED"

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1431
    .line 1432
    .line 1433
    move-result v3

    .line 1434
    if-eqz v3, :cond_27

    .line 1435
    .line 1436
    const-string/jumbo p1, "state"

    .line 1437
    .line 1438
    .line 1439
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1440
    .line 1441
    .line 1442
    move-result p1

    .line 1443
    if-ne p1, v0, :cond_26

    .line 1444
    .line 1445
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1446
    .line 1447
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1448
    .line 1449
    const-string/jumbo v0, "isSupportDisplayVolumeControl"

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1453
    .line 1454
    .line 1455
    move-result p2

    .line 1456
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    .line 1457
    .line 1458
    .line 1459
    goto :goto_e

    .line 1460
    :cond_26
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1461
    .line 1462
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1463
    .line 1464
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSupportDisplayVolumeControl(Z)V

    .line 1465
    .line 1466
    .line 1467
    :goto_e
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1468
    .line 1469
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1470
    .line 1471
    iget-boolean p2, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 1472
    .line 1473
    iput-boolean p2, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    .line 1474
    .line 1475
    const-string p1, "AS.AudioService"

    .line 1476
    .line 1477
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1478
    .line 1479
    const-string/jumbo v0, "onReceive SEM_WIFI_DISPLAY_VOLUME_SUPPORT_CHANGED isSupportDisplayVolumeControl:"

    .line 1480
    .line 1481
    .line 1482
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1486
    .line 1487
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1488
    .line 1489
    iget-boolean v0, v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 1490
    .line 1491
    invoke-static {p1, p2, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1492
    .line 1493
    .line 1494
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1495
    .line 1496
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 1497
    .line 1498
    .line 1499
    move-result p1

    .line 1500
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setMultiSoundOn(Z)V

    .line 1501
    .line 1502
    .line 1503
    goto/16 :goto_15

    .line 1504
    .line 1505
    :cond_27
    const-string/jumbo v3, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1509
    .line 1510
    .line 1511
    move-result v3

    .line 1512
    if-eqz v3, :cond_29

    .line 1513
    .line 1514
    const-string p0, "CONNECTION_MODE"

    .line 1515
    .line 1516
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1517
    .line 1518
    .line 1519
    move-result p0

    .line 1520
    if-ne p0, v0, :cond_28

    .line 1521
    .line 1522
    const-string/jumbo p0, "true"

    .line 1523
    .line 1524
    .line 1525
    goto :goto_f

    .line 1526
    :cond_28
    const-string/jumbo p0, "false"

    .line 1527
    .line 1528
    .line 1529
    :goto_f
    const-string/jumbo p1, "l_smart_view_fixed_volume_enable="

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1533
    .line 1534
    .line 1535
    move-result-object p0

    .line 1536
    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 1537
    .line 1538
    .line 1539
    goto/16 :goto_15

    .line 1540
    .line 1541
    :cond_29
    const-string/jumbo v3, "com.samsung.android.scpm.policy.UPDATE.Audio"

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1545
    .line 1546
    .line 1547
    move-result v3

    .line 1548
    if-eqz v3, :cond_2a

    .line 1549
    .line 1550
    sget-object p1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 1551
    .line 1552
    new-instance p2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 1553
    .line 1554
    const-string v0, "Receive SCPM update intent : Audio"

    .line 1555
    .line 1556
    invoke-direct {p2, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {p1, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1560
    .line 1561
    .line 1562
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1563
    .line 1564
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1565
    .line 1566
    if-eqz p1, :cond_3f

    .line 1567
    .line 1568
    new-instance p1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 1569
    .line 1570
    invoke-direct {p1, p0, v1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;I)V

    .line 1571
    .line 1572
    .line 1573
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1574
    .line 1575
    .line 1576
    goto/16 :goto_15

    .line 1577
    .line 1578
    :cond_2a
    const-string/jumbo v3, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1582
    .line 1583
    .line 1584
    move-result v3

    .line 1585
    if-eqz v3, :cond_2c

    .line 1586
    .line 1587
    sget-object p2, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 1588
    .line 1589
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 1590
    .line 1591
    const-string v1, "Receive SCPM clear intent"

    .line 1592
    .line 1593
    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    invoke-virtual {p2, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1597
    .line 1598
    .line 1599
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1600
    .line 1601
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1602
    .line 1603
    if-eqz v0, :cond_3f

    .line 1604
    .line 1605
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 1606
    .line 1607
    const-string v0, "APP_LIST_VERSION"

    .line 1608
    .line 1609
    invoke-virtual {p2, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 1610
    .line 1611
    .line 1612
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 1613
    .line 1614
    if-eqz p2, :cond_2b

    .line 1615
    .line 1616
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1617
    .line 1618
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 1619
    .line 1620
    const-string v0, "LIVE_TRANSLATE_ALLOW_LIST_VERSION"

    .line 1621
    .line 1622
    invoke-virtual {p2, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 1623
    .line 1624
    .line 1625
    :cond_2b
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1626
    .line 1627
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1628
    .line 1629
    iput-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 1630
    .line 1631
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 1632
    .line 1633
    .line 1634
    move-result-object p2

    .line 1635
    new-instance v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;

    .line 1636
    .line 1637
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SoundAppPolicyManager;Landroid/content/Context;)V

    .line 1638
    .line 1639
    .line 1640
    const-wide/16 p0, 0x3c

    .line 1641
    .line 1642
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1643
    .line 1644
    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1645
    .line 1646
    .line 1647
    goto/16 :goto_15

    .line 1648
    .line 1649
    :cond_2c
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 1650
    .line 1651
    if-eqz p1, :cond_2d

    .line 1652
    .line 1653
    const-string/jumbo p1, "com.samsung.android.scpm.policy.UPDATE.voip-live-translate-allow-list-a7f6"

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1657
    .line 1658
    .line 1659
    move-result p1

    .line 1660
    if-eqz p1, :cond_2d

    .line 1661
    .line 1662
    sget-object p1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 1663
    .line 1664
    new-instance p2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 1665
    .line 1666
    const-string v1, "Receive SCPM update intent : voip-live-translate-allow-list"

    .line 1667
    .line 1668
    invoke-direct {p2, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {p1, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1672
    .line 1673
    .line 1674
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1675
    .line 1676
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1677
    .line 1678
    if-eqz p1, :cond_3f

    .line 1679
    .line 1680
    new-instance p1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 1681
    .line 1682
    invoke-direct {p1, p0, v0}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;I)V

    .line 1683
    .line 1684
    .line 1685
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1686
    .line 1687
    .line 1688
    goto/16 :goto_15

    .line 1689
    .line 1690
    :cond_2d
    const-string p1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 1691
    .line 1692
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result p1

    .line 1696
    const/4 v3, 0x2

    .line 1697
    if-eqz p1, :cond_2e

    .line 1698
    .line 1699
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1700
    .line 1701
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1702
    .line 1703
    const/16 p1, 0x37

    .line 1704
    .line 1705
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1706
    .line 1707
    .line 1708
    goto/16 :goto_15

    .line 1709
    .line 1710
    :cond_2e
    const-string/jumbo p1, "com.sec.media.action.mute_interval"

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1714
    .line 1715
    .line 1716
    move-result p1

    .line 1717
    if-eqz p1, :cond_2f

    .line 1718
    .line 1719
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1720
    .line 1721
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1722
    .line 1723
    const-string/jumbo p2, "mode_ringer_time_on"

    .line 1724
    .line 1725
    .line 1726
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1727
    .line 1728
    .line 1729
    move-result p1

    .line 1730
    if-ne p1, v0, :cond_3f

    .line 1731
    .line 1732
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    .line 1733
    .line 1734
    iget p1, p0, Lcom/android/server/audio/AudioService;->mPrevRingerMode:I

    .line 1735
    .line 1736
    const-string/jumbo v0, "checkMuteInterval"

    .line 1737
    .line 1738
    .line 1739
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1740
    .line 1741
    .line 1742
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1743
    .line 1744
    invoke-static {p0, p2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1745
    .line 1746
    .line 1747
    goto/16 :goto_15

    .line 1748
    .line 1749
    :cond_2f
    const-string/jumbo p1, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1753
    .line 1754
    .line 1755
    move-result p1

    .line 1756
    if-eqz p1, :cond_30

    .line 1757
    .line 1758
    const-string/jumbo p1, "enable"

    .line 1759
    .line 1760
    .line 1761
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1762
    .line 1763
    .line 1764
    move-result p1

    .line 1765
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1766
    .line 1767
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1768
    .line 1769
    invoke-virtual {p0, v5, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setDualA2dpMode(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1770
    .line 1771
    .line 1772
    goto/16 :goto_15

    .line 1773
    .line 1774
    :cond_30
    const-string p1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 1775
    .line 1776
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1777
    .line 1778
    .line 1779
    move-result p1

    .line 1780
    if-eqz p1, :cond_31

    .line 1781
    .line 1782
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 1783
    .line 1784
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1785
    .line 1786
    .line 1787
    move-result-object p1

    .line 1788
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1789
    .line 1790
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1791
    .line 1792
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1793
    .line 1794
    const/16 p2, 0xac9

    .line 1795
    .line 1796
    invoke-virtual {p0, p2, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1797
    .line 1798
    .line 1799
    goto/16 :goto_15

    .line 1800
    .line 1801
    :cond_31
    const-string/jumbo p1, "com.sec.android.intent.action.SPLIT_SOUND"

    .line 1802
    .line 1803
    .line 1804
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1805
    .line 1806
    .line 1807
    move-result p1

    .line 1808
    if-eqz p1, :cond_32

    .line 1809
    .line 1810
    const-string/jumbo p0, "enabled"

    .line 1811
    .line 1812
    .line 1813
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1814
    .line 1815
    .line 1816
    move-result p0

    .line 1817
    sput-boolean p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 1818
    .line 1819
    goto/16 :goto_15

    .line 1820
    .line 1821
    :cond_32
    const-string/jumbo p1, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 1822
    .line 1823
    .line 1824
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1825
    .line 1826
    .line 1827
    move-result p1

    .line 1828
    if-eqz p1, :cond_36

    .line 1829
    .line 1830
    const-string/jumbo p1, "com.samsung.android.bluetooth.cast.extra.STATE"

    .line 1831
    .line 1832
    .line 1833
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1834
    .line 1835
    .line 1836
    move-result p1

    .line 1837
    const-string/jumbo v2, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    .line 1838
    .line 1839
    .line 1840
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1841
    .line 1842
    .line 1843
    move-result p2

    .line 1844
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1845
    .line 1846
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 1847
    .line 1848
    .line 1849
    move-result v2

    .line 1850
    const-string v4, "AS.AudioService"

    .line 1851
    .line 1852
    const-string v5, "BT cast device state:"

    .line 1853
    .line 1854
    const-string v6, " role : "

    .line 1855
    .line 1856
    invoke-static {p1, p2, v5, v6, v4}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    .line 1858
    .line 1859
    if-eq p1, v3, :cond_33

    .line 1860
    .line 1861
    if-nez p1, :cond_3f

    .line 1862
    .line 1863
    :cond_33
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1864
    .line 1865
    if-ne p1, v3, :cond_34

    .line 1866
    .line 1867
    move v5, v0

    .line 1868
    goto :goto_10

    .line 1869
    :cond_34
    move v5, v1

    .line 1870
    :goto_10
    iput-boolean v5, v4, Lcom/android/server/audio/AudioService;->mIsBluetoothCastState:Z

    .line 1871
    .line 1872
    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1873
    .line 1874
    iget-object v4, v4, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 1875
    .line 1876
    iget-object v5, v4, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    .line 1877
    .line 1878
    monitor-enter v5

    .line 1879
    :try_start_6
    invoke-virtual {v4, v7, p1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    .line 1880
    .line 1881
    .line 1882
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1883
    if-ne p2, v3, :cond_3f

    .line 1884
    .line 1885
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1886
    .line 1887
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1888
    .line 1889
    if-ne p1, v3, :cond_35

    .line 1890
    .line 1891
    goto :goto_11

    .line 1892
    :cond_35
    move v0, v1

    .line 1893
    :goto_11
    const-string p1, "0"

    .line 1894
    .line 1895
    const-string/jumbo p2, "remote_submix"

    .line 1896
    .line 1897
    .line 1898
    invoke-virtual {p0, v7, p1, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1899
    .line 1900
    .line 1901
    goto/16 :goto_15

    .line 1902
    .line 1903
    :catchall_4
    move-exception p0

    .line 1904
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1905
    throw p0

    .line 1906
    :cond_36
    const-string/jumbo p1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 1907
    .line 1908
    .line 1909
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1910
    .line 1911
    .line 1912
    move-result p1

    .line 1913
    if-eqz p1, :cond_37

    .line 1914
    .line 1915
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1916
    .line 1917
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 1918
    .line 1919
    if-nez p1, :cond_3f

    .line 1920
    .line 1921
    new-instance p1, Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 1922
    .line 1923
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1924
    .line 1925
    const-string v0, "AudioService"

    .line 1926
    .line 1927
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1928
    .line 1929
    .line 1930
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 1931
    .line 1932
    goto/16 :goto_15

    .line 1933
    .line 1934
    :cond_37
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 1935
    .line 1936
    if-eqz p1, :cond_39

    .line 1937
    .line 1938
    const-string/jumbo p1, "com.samsung.bluetooth.device.action.AUDIO_TYPE_CHANGED"

    .line 1939
    .line 1940
    .line 1941
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1942
    .line 1943
    .line 1944
    move-result p1

    .line 1945
    if-eqz p1, :cond_39

    .line 1946
    .line 1947
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 1948
    .line 1949
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1950
    .line 1951
    .line 1952
    move-result-object p1

    .line 1953
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1954
    .line 1955
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1956
    .line 1957
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1958
    .line 1959
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    .line 1960
    .line 1961
    .line 1962
    move-result-object p0

    .line 1963
    if-eqz p1, :cond_3f

    .line 1964
    .line 1965
    if-eqz p0, :cond_3f

    .line 1966
    .line 1967
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 1968
    .line 1969
    .line 1970
    move-result-object p0

    .line 1971
    const-string/jumbo v2, "com.samsung.bluetooth.device.extra.AUDIO_TYPE"

    .line 1972
    .line 1973
    .line 1974
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1975
    .line 1976
    .line 1977
    move-result p2

    .line 1978
    if-ne p2, v3, :cond_38

    .line 1979
    .line 1980
    if-eqz p0, :cond_3f

    .line 1981
    .line 1982
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1983
    .line 1984
    .line 1985
    move-result-object p1

    .line 1986
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1987
    .line 1988
    .line 1989
    move-result-object p0

    .line 1990
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1991
    .line 1992
    .line 1993
    move-result p0

    .line 1994
    if-eqz p0, :cond_3f

    .line 1995
    .line 1996
    invoke-static {v0}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    .line 1997
    .line 1998
    .line 1999
    goto/16 :goto_15

    .line 2000
    .line 2001
    :cond_38
    if-eqz p0, :cond_3f

    .line 2002
    .line 2003
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 2004
    .line 2005
    .line 2006
    move-result-object p1

    .line 2007
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 2008
    .line 2009
    .line 2010
    move-result-object p0

    .line 2011
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2012
    .line 2013
    .line 2014
    move-result p0

    .line 2015
    if-eqz p0, :cond_3f

    .line 2016
    .line 2017
    invoke-static {v1}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    .line 2018
    .line 2019
    .line 2020
    goto/16 :goto_15

    .line 2021
    .line 2022
    :cond_39
    const-string p1, "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

    .line 2023
    .line 2024
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2025
    .line 2026
    .line 2027
    move-result p1

    .line 2028
    if-eqz p1, :cond_3f

    .line 2029
    .line 2030
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 2031
    .line 2032
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2033
    .line 2034
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2035
    .line 2036
    .line 2037
    move-result-object v2

    .line 2038
    iget-object v3, p1, Lcom/android/server/audio/AudioService;->PROJECTION_HOST_URI:Landroid/net/Uri;

    .line 2039
    .line 2040
    const-string p1, "CarConnectionState"

    .line 2041
    .line 2042
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v4

    .line 2046
    const/4 v5, 0x0

    .line 2047
    const/4 v6, 0x0

    .line 2048
    const/4 v7, 0x0

    .line 2049
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 2050
    .line 2051
    .line 2052
    move-result-object p2

    .line 2053
    const-string v2, "AS.AudioService"

    .line 2054
    .line 2055
    if-nez p2, :cond_3a

    .line 2056
    .line 2057
    const-string p1, "[Android Auto] Null response from content provider when checking connection to the car, treating as disconnected"

    .line 2058
    .line 2059
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    .line 2061
    .line 2062
    :goto_12
    move v0, v1

    .line 2063
    goto :goto_14

    .line 2064
    :cond_3a
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    .line 2065
    .line 2066
    .line 2067
    move-result v3

    .line 2068
    if-lez v3, :cond_3e

    .line 2069
    .line 2070
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2071
    .line 2072
    .line 2073
    move-result v3

    .line 2074
    if-eqz v3, :cond_3d

    .line 2075
    .line 2076
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2077
    .line 2078
    .line 2079
    move-result p1

    .line 2080
    if-gez p1, :cond_3b

    .line 2081
    .line 2082
    const-string p1, "[Android Auto] Connection to car response is missing the connection type, treating as disconnected"

    .line 2083
    .line 2084
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    .line 2086
    .line 2087
    goto :goto_13

    .line 2088
    :cond_3b
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 2089
    .line 2090
    .line 2091
    move-result p1

    .line 2092
    if-nez p1, :cond_3c

    .line 2093
    .line 2094
    const-string p1, "[Android Auto] disconnected"

    .line 2095
    .line 2096
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    .line 2098
    .line 2099
    goto :goto_13

    .line 2100
    :cond_3c
    const-string p1, "[Android Auto] connected"

    .line 2101
    .line 2102
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    .line 2104
    .line 2105
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 2106
    .line 2107
    .line 2108
    goto :goto_14

    .line 2109
    :cond_3d
    const-string p1, "[Android Auto] Connection to car response is empty, treating as disconnected"

    .line 2110
    .line 2111
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    .line 2113
    .line 2114
    goto :goto_13

    .line 2115
    :cond_3e
    const-string p1, "[Android Auto] Connection Count is 0, treating as disconnected"

    .line 2116
    .line 2117
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    .line 2119
    .line 2120
    :goto_13
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 2121
    .line 2122
    .line 2123
    goto :goto_12

    .line 2124
    :goto_14
    const-string p1, "AS.AudioService"

    .line 2125
    .line 2126
    const-string/jumbo p2, "received ACTION_CAR_CONNECTION_UPDATED : state = "

    .line 2127
    .line 2128
    .line 2129
    invoke-static {p2, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2130
    .line 2131
    .line 2132
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 2133
    .line 2134
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mConnectedAndroidAuto:Z

    .line 2135
    .line 2136
    if-eqz v0, :cond_3f

    .line 2137
    .line 2138
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 2139
    .line 2140
    if-eqz p0, :cond_3f

    .line 2141
    .line 2142
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->clearMultiAudiofocusfromAndroidAuto()V

    .line 2143
    .line 2144
    .line 2145
    :cond_3f
    :goto_15
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "android.intent.action.DOCK_EVENT"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x0

    .line 24
    if-eqz v3, :cond_a

    .line 25
    .line 26
    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 27
    .line 28
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eq v1, v6, :cond_3

    .line 33
    .line 34
    if-eq v1, v4, :cond_2

    .line 35
    .line 36
    if-eq v1, v5, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    if-eq v1, v2, :cond_0

    .line 40
    .line 41
    move v2, v7

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v2, 0x9

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/16 v2, 0x8

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v2, 0x6

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v2, 0x7

    .line 52
    :goto_0
    if-eq v1, v5, :cond_5

    .line 53
    .line 54
    if-nez v1, :cond_4

    .line 55
    .line 56
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 57
    .line 58
    iget v3, v3, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 59
    .line 60
    if-eq v3, v5, :cond_5

    .line 61
    .line 62
    :cond_4
    iget-object v3, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 65
    .line 66
    const-string v4, "ACTION_DOCK_EVENT intent"

    .line 67
    .line 68
    invoke-virtual {v3, v5, v2, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 72
    .line 73
    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mDesktopModeHelper:Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 74
    .line 75
    iget v2, v2, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string/jumbo v4, "pad"

    .line 81
    .line 82
    .line 83
    const/16 v5, 0x72

    .line 84
    .line 85
    if-nez v2, :cond_6

    .line 86
    .line 87
    if-ne v1, v5, :cond_6

    .line 88
    .line 89
    iput-boolean v6, v3, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    .line 90
    .line 91
    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexParameter(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    if-ne v2, v5, :cond_7

    .line 96
    .line 97
    if-nez v1, :cond_7

    .line 98
    .line 99
    iput-boolean v7, v3, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexPadConnectedState:Z

    .line 100
    .line 101
    invoke-virtual {v3, v4, v7}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexParameter(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_7
    const-string/jumbo v4, "station"

    .line 106
    .line 107
    .line 108
    const/16 v5, 0x6e

    .line 109
    .line 110
    if-nez v2, :cond_8

    .line 111
    .line 112
    if-ne v1, v5, :cond_8

    .line 113
    .line 114
    iput-boolean v6, v3, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    .line 115
    .line 116
    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexParameter(Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_8
    if-ne v2, v5, :cond_9

    .line 121
    .line 122
    if-nez v1, :cond_9

    .line 123
    .line 124
    iput-boolean v7, v3, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexConnectedState:Z

    .line 125
    .line 126
    invoke-virtual {v3, v4, v7}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexParameter(Ljava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    :cond_9
    :goto_1
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 130
    .line 131
    iput v1, v0, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 132
    .line 133
    goto/16 :goto_15

    .line 134
    .line 135
    :cond_a
    const-string v3, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_2f

    .line 142
    .line 143
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_b

    .line 150
    .line 151
    goto/16 :goto_14

    .line 152
    .line 153
    :cond_b
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_d

    .line 160
    .line 161
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 162
    .line 163
    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 164
    .line 165
    if-eqz v0, :cond_c

    .line 166
    .line 167
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 168
    .line 169
    .line 170
    :cond_c
    const-string/jumbo v0, "screen_state=on"

    .line 171
    .line 172
    .line 173
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto/16 :goto_15

    .line 177
    .line 178
    :cond_d
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 179
    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_f

    .line 185
    .line 186
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 187
    .line 188
    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 189
    .line 190
    if-eqz v0, :cond_e

    .line 191
    .line 192
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 193
    .line 194
    .line 195
    :cond_e
    const-string/jumbo v0, "screen_state=off"

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    goto/16 :goto_15

    .line 202
    .line 203
    :cond_f
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    .line 204
    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_10

    .line 210
    .line 211
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 212
    .line 213
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 214
    .line 215
    const/4 v6, 0x0

    .line 216
    const/4 v7, 0x0

    .line 217
    const/16 v2, 0x36

    .line 218
    .line 219
    const/4 v3, 0x0

    .line 220
    const/4 v4, 0x0

    .line 221
    const/4 v5, 0x0

    .line 222
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_15

    .line 226
    .line 227
    :cond_10
    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 228
    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    const/4 v8, -0x1

    .line 234
    const/4 v9, 0x0

    .line 235
    if-eqz v3, :cond_15

    .line 236
    .line 237
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 238
    .line 239
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 245
    .line 246
    monitor-enter v3

    .line 247
    :try_start_0
    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-nez v2, :cond_12

    .line 254
    .line 255
    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    .line 267
    .line 268
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 273
    .line 274
    iget v10, v2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 275
    .line 276
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 277
    .line 278
    .line 279
    move-result v10

    .line 280
    invoke-virtual {v4, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    if-eqz v4, :cond_11

    .line 285
    .line 286
    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-eqz v4, :cond_11

    .line 291
    .line 292
    monitor-exit v3

    .line 293
    goto :goto_3

    .line 294
    :catchall_0
    move-exception v0

    .line 295
    goto :goto_4

    .line 296
    :cond_11
    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v8, v9, v7}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 305
    .line 306
    .line 307
    monitor-exit v3

    .line 308
    goto :goto_2

    .line 309
    :cond_12
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :goto_2
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 311
    .line 312
    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    .line 313
    .line 314
    if-eqz v2, :cond_13

    .line 315
    .line 316
    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 317
    .line 318
    const/4 v10, 0x0

    .line 319
    const/4 v11, 0x0

    .line 320
    const/16 v8, 0xc

    .line 321
    .line 322
    const/4 v9, 0x0

    .line 323
    const/4 v12, 0x0

    .line 324
    const/4 v13, 0x0

    .line 325
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 326
    .line 327
    .line 328
    :cond_13
    :goto_3
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 329
    .line 330
    iput-boolean v6, v1, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    .line 331
    .line 332
    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mSupportsMicPrivacyToggle:Z

    .line 333
    .line 334
    if-eqz v2, :cond_14

    .line 335
    .line 336
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 337
    .line 338
    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    invoke-virtual {v2, v3, v6}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mMicMuteFromPrivacyToggle:Z

    .line 347
    .line 348
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    .line 358
    .line 359
    .line 360
    :cond_14
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 361
    .line 362
    invoke-virtual {v1, v6}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 363
    .line 364
    .line 365
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 366
    .line 367
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 368
    .line 369
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 370
    .line 371
    aget-object v11, v0, v5

    .line 372
    .line 373
    const/4 v10, 0x0

    .line 374
    const/4 v12, 0x0

    .line 375
    const/16 v7, 0xa

    .line 376
    .line 377
    const/4 v8, 0x2

    .line 378
    const/4 v9, 0x0

    .line 379
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_15

    .line 383
    .line 384
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    throw v0

    .line 386
    :cond_15
    const-string v3, "android.intent.action.USER_BACKGROUND"

    .line 387
    .line 388
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    const-wide/16 v10, 0x0

    .line 393
    .line 394
    if-eqz v3, :cond_1d

    .line 395
    .line 396
    const-string v2, "android.intent.extra.user_handle"

    .line 397
    .line 398
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-ltz v1, :cond_1c

    .line 403
    .line 404
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 413
    .line 414
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 415
    .line 416
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-nez v0, :cond_18

    .line 425
    .line 426
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 427
    .line 428
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 433
    .line 434
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 435
    .line 436
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 437
    .line 438
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 439
    .line 440
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 441
    .line 442
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 443
    .line 444
    .line 445
    monitor-enter v5

    .line 446
    :try_start_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 447
    .line 448
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 449
    .line 450
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 457
    .line 458
    if-nez v0, :cond_16

    .line 459
    .line 460
    move-object v0, v9

    .line 461
    goto :goto_5

    .line 462
    :cond_16
    new-instance v7, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    .line 463
    .line 464
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 465
    .line 466
    .line 467
    const-class v8, Lcom/android/server/wm/ActivityRecord;

    .line 468
    .line 469
    invoke-static {v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    invoke-static {v7, v8, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 486
    .line 487
    .line 488
    :goto_5
    if-nez v0, :cond_17

    .line 489
    .line 490
    goto :goto_6

    .line 491
    :cond_17
    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 492
    .line 493
    :goto_6
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 494
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 495
    .line 496
    .line 497
    goto :goto_7

    .line 498
    :catchall_1
    move-exception v0

    .line 499
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 500
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 501
    .line 502
    .line 503
    throw v0

    .line 504
    :cond_18
    :goto_7
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 505
    .line 506
    filled-new-array {v0}, [Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 515
    .line 516
    invoke-interface {v4, v0, v10, v11, v2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 521
    .line 522
    .line 523
    move-result-object v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 524
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    sub-int/2addr v0, v6

    .line 529
    move v4, v0

    .line 530
    :goto_8
    if-ltz v4, :cond_1c

    .line 531
    .line 532
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 537
    .line 538
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 539
    .line 540
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 541
    .line 542
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    const/16 v7, 0x2710

    .line 547
    .line 548
    if-ge v5, v7, :cond_19

    .line 549
    .line 550
    goto :goto_9

    .line 551
    :cond_19
    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    .line 552
    .line 553
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 554
    .line 555
    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    if-nez v5, :cond_1a

    .line 560
    .line 561
    goto :goto_9

    .line 562
    :cond_1a
    if-eqz v9, :cond_1b

    .line 563
    .line 564
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 565
    .line 566
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v7

    .line 570
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v5

    .line 574
    if-eqz v5, :cond_1b

    .line 575
    .line 576
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 577
    .line 578
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 579
    .line 580
    .line 581
    move-result v5

    .line 582
    if-eqz v5, :cond_1b

    .line 583
    .line 584
    goto :goto_9

    .line 585
    :cond_1b
    :try_start_5
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 586
    .line 587
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 588
    .line 589
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 594
    .line 595
    .line 596
    move-result v7

    .line 597
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    const-string/jumbo v8, "killBackgroundUserProcessesWithAudioRecordPermission"

    .line 602
    .line 603
    .line 604
    invoke-interface {v5, v7, v0, v8}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 605
    .line 606
    .line 607
    goto :goto_9

    .line 608
    :catch_0
    move-exception v0

    .line 609
    const-string v5, "AS.AudioService"

    .line 610
    .line 611
    const-string v7, "Error calling killUid"

    .line 612
    .line 613
    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    .line 615
    .line 616
    :goto_9
    add-int/lit8 v4, v4, -0x1

    .line 617
    .line 618
    goto :goto_8

    .line 619
    :catch_1
    move-exception v0

    .line 620
    new-instance v1, Landroid/util/AndroidRuntimeException;

    .line 621
    .line 622
    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    .line 623
    .line 624
    .line 625
    throw v1

    .line 626
    :cond_1c
    :try_start_6
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    const-string/jumbo v2, "no_record_audio"

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0, v2, v6, v1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    .line 634
    .line 635
    .line 636
    goto/16 :goto_15

    .line 637
    .line 638
    :catch_2
    move-exception v0

    .line 639
    const-string v1, "AS.AudioService"

    .line 640
    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    const-string v3, "Failed to apply DISALLOW_RECORD_AUDIO restriction: "

    .line 644
    .line 645
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .line 657
    .line 658
    goto/16 :goto_15

    .line 659
    .line 660
    :cond_1d
    const-string v3, "android.intent.action.USER_FOREGROUND"

    .line 661
    .line 662
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    if-eqz v3, :cond_1e

    .line 667
    .line 668
    const-string v0, "android.intent.extra.user_handle"

    .line 669
    .line 670
    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    :try_start_7
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    const-string/jumbo v2, "no_record_audio"

    .line 679
    .line 680
    .line 681
    invoke-virtual {v1, v2, v7, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    .line 682
    .line 683
    .line 684
    goto/16 :goto_15

    .line 685
    .line 686
    :catch_3
    move-exception v0

    .line 687
    const-string v1, "AS.AudioService"

    .line 688
    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    .line 690
    .line 691
    const-string v3, "Failed to apply DISALLOW_RECORD_AUDIO restriction: "

    .line 692
    .line 693
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    goto/16 :goto_15

    .line 707
    .line 708
    :cond_1e
    const-string v3, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 709
    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    if-nez v3, :cond_2b

    .line 715
    .line 716
    const-string v3, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 717
    .line 718
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    if-eqz v3, :cond_1f

    .line 723
    .line 724
    goto/16 :goto_13

    .line 725
    .line 726
    :cond_1f
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    .line 727
    .line 728
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v3

    .line 732
    if-eqz v3, :cond_25

    .line 733
    .line 734
    const-string v2, "android.intent.extra.changed_uid_list"

    .line 735
    .line 736
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    const-string v3, "android.intent.extra.changed_package_list"

    .line 741
    .line 742
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    if-eqz v1, :cond_30

    .line 747
    .line 748
    if-eqz v2, :cond_30

    .line 749
    .line 750
    array-length v3, v1

    .line 751
    array-length v4, v2

    .line 752
    if-eq v3, v4, :cond_20

    .line 753
    .line 754
    goto/16 :goto_15

    .line 755
    .line 756
    :cond_20
    move v3, v7

    .line 757
    :goto_a
    array-length v4, v2

    .line 758
    if-ge v3, v4, :cond_30

    .line 759
    .line 760
    aget-object v4, v1, v3

    .line 761
    .line 762
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 763
    .line 764
    .line 765
    move-result v4

    .line 766
    if-nez v4, :cond_24

    .line 767
    .line 768
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 769
    .line 770
    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 771
    .line 772
    aget-object v5, v1, v3

    .line 773
    .line 774
    aget v9, v2, v3

    .line 775
    .line 776
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    sget-object v10, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 780
    .line 781
    monitor-enter v10

    .line 782
    :try_start_8
    iget-object v11, v4, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 783
    .line 784
    invoke-virtual {v11}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 785
    .line 786
    .line 787
    move-result-object v11

    .line 788
    new-instance v12, Ljava/util/ArrayList;

    .line 789
    .line 790
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .line 792
    .line 793
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 794
    .line 795
    .line 796
    move-result v13

    .line 797
    if-eqz v13, :cond_22

    .line 798
    .line 799
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v13

    .line 803
    check-cast v13, Lcom/android/server/audio/FocusRequester;

    .line 804
    .line 805
    invoke-virtual {v13, v9}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    .line 806
    .line 807
    .line 808
    move-result v14

    .line 809
    if-eqz v14, :cond_21

    .line 810
    .line 811
    iget-object v14, v13, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {v14, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 814
    .line 815
    .line 816
    move-result v14

    .line 817
    if-nez v14, :cond_21

    .line 818
    .line 819
    iget-object v14, v13, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 820
    .line 821
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    sget-object v14, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 825
    .line 826
    new-instance v15, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 827
    .line 828
    new-instance v6, Ljava/lang/StringBuilder;

    .line 829
    .line 830
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .line 832
    .line 833
    const-string/jumbo v8, "focus owner:"

    .line 834
    .line 835
    .line 836
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    iget-object v8, v13, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 840
    .line 841
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    const-string v8, " in uid:"

    .line 845
    .line 846
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    const-string v8, " pack: "

    .line 853
    .line 854
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    const-string v8, " getting AUDIOFOCUS_LOSS due to app suspension"

    .line 861
    .line 862
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v6

    .line 869
    invoke-direct {v15, v6}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    const-string v6, "MediaFocusControl"

    .line 873
    .line 874
    invoke-virtual {v15, v7, v6}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v14, v15}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 878
    .line 879
    .line 880
    const/4 v6, -0x1

    .line 881
    invoke-virtual {v13, v6}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    .line 882
    .line 883
    .line 884
    goto :goto_c

    .line 885
    :catchall_2
    move-exception v0

    .line 886
    goto :goto_e

    .line 887
    :cond_21
    move v6, v8

    .line 888
    :goto_c
    move v8, v6

    .line 889
    const/4 v6, 0x1

    .line 890
    goto :goto_b

    .line 891
    :cond_22
    move v6, v8

    .line 892
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 893
    .line 894
    .line 895
    move-result-object v5

    .line 896
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 897
    .line 898
    .line 899
    move-result v8

    .line 900
    if-eqz v8, :cond_23

    .line 901
    .line 902
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v8

    .line 906
    check-cast v8, Ljava/lang/String;

    .line 907
    .line 908
    const/4 v9, 0x1

    .line 909
    invoke-virtual {v4, v8, v7, v9}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 910
    .line 911
    .line 912
    goto :goto_d

    .line 913
    :cond_23
    monitor-exit v10

    .line 914
    goto :goto_f

    .line 915
    :goto_e
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 916
    throw v0

    .line 917
    :cond_24
    move v6, v8

    .line 918
    :goto_f
    add-int/lit8 v3, v3, 0x1

    .line 919
    .line 920
    move v8, v6

    .line 921
    const/4 v6, 0x1

    .line 922
    goto/16 :goto_a

    .line 923
    .line 924
    :cond_25
    const-string/jumbo v1, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    .line 925
    .line 926
    .line 927
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    if-eqz v1, :cond_30

    .line 932
    .line 933
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 934
    .line 935
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 936
    .line 937
    const-string/jumbo v2, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    .line 938
    .line 939
    .line 940
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 941
    .line 942
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    invoke-static {v5, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 946
    .line 947
    .line 948
    move-result v0

    .line 949
    const-string/jumbo v3, "onCheckMusicActive() mMusicActiveMs: "

    .line 950
    .line 951
    .line 952
    iget-object v6, v1, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 953
    .line 954
    monitor-enter v6

    .line 955
    :try_start_9
    iget v8, v1, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 956
    .line 957
    if-ne v8, v4, :cond_2a

    .line 958
    .line 959
    iget-object v4, v1, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 960
    .line 961
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 962
    .line 963
    .line 964
    move-result v4

    .line 965
    invoke-virtual {v1, v4}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    .line 966
    .line 967
    .line 968
    move-result v8

    .line 969
    if-eqz v8, :cond_28

    .line 970
    .line 971
    if-eqz v0, :cond_28

    .line 972
    .line 973
    invoke-virtual {v1}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    .line 974
    .line 975
    .line 976
    iget-object v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 977
    .line 978
    invoke-virtual {v0, v5, v4}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    .line 979
    .line 980
    .line 981
    move-result v0

    .line 982
    invoke-virtual {v1, v4}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    .line 983
    .line 984
    .line 985
    move-result v4

    .line 986
    if-le v0, v4, :cond_2a

    .line 987
    .line 988
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 989
    .line 990
    .line 991
    move-result-wide v4

    .line 992
    iget-wide v8, v1, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 993
    .line 994
    cmp-long v0, v8, v10

    .line 995
    .line 996
    if-eqz v0, :cond_26

    .line 997
    .line 998
    iget v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 999
    .line 1000
    sub-long v8, v4, v8

    .line 1001
    .line 1002
    long-to-int v8, v8

    .line 1003
    add-int/2addr v0, v8

    .line 1004
    iput v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 1005
    .line 1006
    goto :goto_10

    .line 1007
    :catchall_3
    move-exception v0

    .line 1008
    goto :goto_12

    .line 1009
    :cond_26
    :goto_10
    iput-wide v4, v1, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 1010
    .line 1011
    const-string v0, "AS.SoundDoseHelper"

    .line 1012
    .line 1013
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    iget v3, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 1019
    .line 1020
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v3

    .line 1027
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .line 1029
    .line 1030
    iget v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 1031
    .line 1032
    const v3, 0x44aa200

    .line 1033
    .line 1034
    .line 1035
    if-le v0, v3, :cond_27

    .line 1036
    .line 1037
    const/4 v3, 0x1

    .line 1038
    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumeEnabled(Ljava/lang/String;Z)V

    .line 1039
    .line 1040
    .line 1041
    iput v7, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 1042
    .line 1043
    :cond_27
    iget v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 1044
    .line 1045
    iget-object v1, v1, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 1046
    .line 1047
    const/16 v2, 0x3ec

    .line 1048
    .line 1049
    invoke-virtual {v1, v2, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_11

    .line 1057
    :cond_28
    iget-object v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 1058
    .line 1059
    if-eqz v0, :cond_29

    .line 1060
    .line 1061
    iget-object v2, v1, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1062
    .line 1063
    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1064
    .line 1065
    .line 1066
    iput-object v9, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 1067
    .line 1068
    :cond_29
    iput-wide v10, v1, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 1069
    .line 1070
    :cond_2a
    :goto_11
    monitor-exit v6

    .line 1071
    goto/16 :goto_15

    .line 1072
    .line 1073
    :goto_12
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1074
    throw v0

    .line 1075
    :cond_2b
    :goto_13
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1076
    .line 1077
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMusicFxHelper:Lcom/android/server/audio/MusicFxHelper;

    .line 1078
    .line 1079
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v2

    .line 1086
    const-string v3, "AS.MusicFxHelper"

    .line 1087
    .line 1088
    if-eqz v2, :cond_2c

    .line 1089
    .line 1090
    const-string/jumbo v0, "effect broadcast already targeted to "

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v0

    .line 1097
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    .line 1099
    .line 1100
    goto/16 :goto_15

    .line 1101
    .line 1102
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v2

    .line 1106
    invoke-virtual {v2, v1, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v4

    .line 1110
    if-eqz v4, :cond_2e

    .line 1111
    .line 1112
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1113
    .line 1114
    .line 1115
    move-result v5

    .line 1116
    if-eqz v5, :cond_2e

    .line 1117
    .line 1118
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v4

    .line 1122
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1123
    .line 1124
    const-string v5, "android.media.extra.PACKAGE_NAME"

    .line 1125
    .line 1126
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v5

    .line 1130
    if-nez v5, :cond_2d

    .line 1131
    .line 1132
    const-string v0, "Intent package name must not be null"

    .line 1133
    .line 1134
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    .line 1136
    .line 1137
    goto :goto_15

    .line 1138
    :cond_2d
    if-eqz v4, :cond_2e

    .line 1139
    .line 1140
    :try_start_a
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1141
    .line 1142
    if-eqz v6, :cond_2e

    .line 1143
    .line 1144
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1145
    .line 1146
    if-eqz v6, :cond_2e

    .line 1147
    .line 1148
    const-wide/32 v6, 0x400000

    .line 1149
    .line 1150
    .line 1151
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v6

    .line 1155
    invoke-static {}, Lcom/android/server/audio/MusicFxHelper;->getCurrentUserId()I

    .line 1156
    .line 1157
    .line 1158
    move-result v7

    .line 1159
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    .line 1160
    .line 1161
    .line 1162
    move-result v2

    .line 1163
    const/16 v6, 0x20

    .line 1164
    .line 1165
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1166
    .line 1167
    .line 1168
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1169
    .line 1170
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1171
    .line 1172
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/audio/MusicFxHelper;->setMusicFxServiceWithObserver(Landroid/content/Intent;Ljava/lang/String;I)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v0

    .line 1179
    if-eqz v0, :cond_30

    .line 1180
    .line 1181
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1182
    .line 1183
    move-object/from16 v2, p1

    .line 1184
    .line 1185
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    .line 1186
    .line 1187
    .line 1188
    goto :goto_15

    .line 1189
    :catch_4
    move-exception v0

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    const-string v2, "Not able to find UID from package: "

    .line 1193
    .line 1194
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    const-string v2, " error: "

    .line 1201
    .line 1202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    .line 1214
    .line 1215
    :cond_2e
    const-string/jumbo v0, "couldn\'t find receiver package for effect intent"

    .line 1216
    .line 1217
    .line 1218
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    .line 1220
    .line 1221
    goto :goto_15

    .line 1222
    :cond_2f
    :goto_14
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1223
    .line 1224
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1225
    .line 1226
    const/16 v2, 0x37

    .line 1227
    .line 1228
    invoke-virtual {v0, v2, v4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1229
    .line 1230
    .line 1231
    :cond_30
    :goto_15
    return-void

    .line 1232
    :pswitch_0
    move-object/from16 v2, p1

    .line 1233
    .line 1234
    :try_start_b
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1235
    .line 1236
    .line 1237
    goto :goto_16

    .line 1238
    :catch_5
    move-exception v0

    .line 1239
    move-object v1, v0

    .line 1240
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1241
    .line 1242
    .line 1243
    :goto_16
    return-void

    .line 1244
    nop

    .line 1245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
