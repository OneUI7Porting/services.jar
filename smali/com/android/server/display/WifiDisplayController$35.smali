.class public final Lcom/android/server/display/WifiDisplayController$35;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/media/RemoteDisplay$NativeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onNotify(ILjava/lang/String;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "isMute"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "curVol"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "maxVol"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "minVol"

    .line 11
    .line 12
    .line 13
    const-string v4, "    onNotify received : NOTIFY_SUPPORT_UIBC = "

    .line 14
    .line 15
    const-string v5, "    onNotify received : NOTIFY_SUPPORT_INITIATE_MIRRORING = "

    .line 16
    .line 17
    const-string v6, "    onNotify received: [VolumeControl] NOTIFY_DISPLAY_VOLUME_SUPPORT = "

    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    const-string v8, "WifiDisplayController"

    .line 21
    .line 22
    if-eq p1, v7, :cond_11

    .line 23
    .line 24
    const/4 v9, 0x2

    .line 25
    if-eq p1, v9, :cond_10

    .line 26
    .line 27
    const/4 v9, 0x3

    .line 28
    if-eq p1, v9, :cond_f

    .line 29
    .line 30
    const/4 v10, 0x7

    .line 31
    if-eq p1, v10, :cond_c

    .line 32
    .line 33
    const/16 v10, 0x28

    .line 34
    .line 35
    if-eq p1, v10, :cond_b

    .line 36
    .line 37
    const/16 v5, 0x32

    .line 38
    .line 39
    if-eq p1, v5, :cond_a

    .line 40
    .line 41
    const/16 v5, 0x3c

    .line 42
    .line 43
    const/4 v10, 0x0

    .line 44
    if-eq p1, v5, :cond_9

    .line 45
    .line 46
    const/16 v5, 0x46

    .line 47
    .line 48
    if-eq p1, v5, :cond_8

    .line 49
    .line 50
    const/16 v0, 0x5a

    .line 51
    .line 52
    if-eq p1, v0, :cond_7

    .line 53
    .line 54
    const/16 v0, 0x64

    .line 55
    .line 56
    if-eq p1, v0, :cond_6

    .line 57
    .line 58
    const/16 v0, 0x9

    .line 59
    .line 60
    if-eq p1, v0, :cond_4

    .line 61
    .line 62
    const/16 v1, 0xa

    .line 63
    .line 64
    if-eq p1, v1, :cond_0

    .line 65
    .line 66
    const-string/jumbo p0, "onNotify Error,  msg : "

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p0, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    const-string p2, "    onNotify received : NOTIFY_ROTATION_CHANGED = "

    .line 79
    .line 80
    invoke-static {p1, p2, v8}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 84
    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    const/16 v0, 0x8

    .line 88
    .line 89
    :cond_1
    iget-object v2, p2, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 90
    .line 91
    new-instance v3, Lcom/android/server/display/WifiDisplayController$21;

    .line 92
    .line 93
    const/4 v4, 0x2

    .line 94
    invoke-direct {v3, p2, v0, v1, v4}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;III)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    new-instance p2, Landroid/content/Intent;

    .line 101
    .line 102
    const-string/jumbo v0, "com.samsung.intent.action.ROTATION_CHANGED"

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string/jumbo v0, "rotation"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    const-string/jumbo v0, "updateDisplayDevice"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 125
    .line 126
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 127
    .line 128
    .line 129
    if-eq p1, v7, :cond_3

    .line 130
    .line 131
    if-ne p1, v9, :cond_2

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    .line 137
    .line 138
    invoke-virtual {p0, v10}, Lcom/samsung/android/wfd/WFDUibcManager;->setPortraitMode(Z)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    .line 146
    .line 147
    invoke-virtual {p0, v7}, Lcom/samsung/android/wfd/WFDUibcManager;->setPortraitMode(Z)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :cond_4
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 153
    .line 154
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 158
    .line 159
    const-string v0, "UibcAvailable"

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput-boolean v0, p2, Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z

    .line 166
    .line 167
    const-string p2, "UibcSamsungMobile"

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 179
    .line 180
    iget-boolean v0, v0, Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z

    .line 181
    .line 182
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, ", isSamsungMobile = "

    .line 186
    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-static {v8, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 201
    .line 202
    iget-boolean v0, p2, Lcom/android/server/display/WifiDisplayController;->mIsUibcAvailable:Z

    .line 203
    .line 204
    if-eqz v0, :cond_5

    .line 205
    .line 206
    iget-object p2, p2, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    .line 207
    .line 208
    invoke-virtual {p2, v10}, Lcom/samsung/android/wfd/WFDUibcManager;->start(Z)Z

    .line 209
    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 212
    .line 213
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Lcom/samsung/android/wfd/WFDUibcManager;->setSinkDevice(Z)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_4

    .line 219
    .line 220
    :catch_0
    move-exception p0

    .line 221
    goto :goto_1

    .line 222
    :cond_5
    iget-object p0, p2, Lcom/android/server/display/WifiDisplayController;->mWfdUibcManager:Lcom/samsung/android/wfd/WFDUibcManager;

    .line 223
    .line 224
    invoke-virtual {p0, v10}, Lcom/samsung/android/wfd/WFDUibcManager;->stop(Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    goto/16 :goto_4

    .line 228
    .line 229
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-static {v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    goto/16 :goto_4

    .line 237
    .line 238
    :cond_6
    const-string p1, "    onNotify received : NOTIFY_NOT_DEFINED : "

    .line 239
    .line 240
    invoke-static {p1, p2, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 244
    .line 245
    iget-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    .line 246
    .line 247
    if-eqz p1, :cond_12

    .line 248
    .line 249
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 250
    .line 251
    invoke-static {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$mparseParametersFromEngine(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p0, p1}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$msendWifiDisplayParameterEvent(Lcom/android/server/display/WifiDisplayController;Ljava/util/List;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_4

    .line 259
    .line 260
    :cond_7
    const-string p1, "    onNotify received : NOTIFY_SWTICH_TCP_FOR_DEMO"

    .line 261
    .line 262
    invoke-static {v8, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 266
    .line 267
    iget p1, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    .line 268
    .line 269
    if-eq p1, v7, :cond_12

    .line 270
    .line 271
    iput v7, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    .line 272
    .line 273
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 274
    .line 275
    const-string/jumbo p2, "tcp"

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_4

    .line 282
    .line 283
    :cond_8
    new-instance p1, Landroid/os/Bundle;

    .line 284
    .line 285
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 286
    .line 287
    .line 288
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    .line 289
    .line 290
    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result p2

    .line 297
    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :catch_1
    move-exception p2

    .line 323
    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p2

    .line 327
    invoke-static {v8, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    :goto_2
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 331
    .line 332
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 333
    .line 334
    new-instance v0, Lcom/android/server/display/WifiDisplayController$26;

    .line 335
    .line 336
    invoke-direct {v0, p0, p1}, Lcom/android/server/display/WifiDisplayController$26;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Bundle;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    .line 341
    .line 342
    const-string p0, "    onNotify received :  NOTIFY_DISPLAY_VOLUME_STATUS"

    .line 343
    .line 344
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    goto/16 :goto_4

    .line 348
    .line 349
    :cond_9
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    .line 350
    .line 351
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 355
    .line 356
    const-string/jumbo v0, "isSupportDisplayVolumeControl"

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    iput-boolean p1, p2, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    .line 364
    .line 365
    new-instance p1, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 371
    .line 372
    iget-boolean p2, p2, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    .line 373
    .line 374
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 385
    .line 386
    invoke-virtual {p1}, Lcom/android/server/display/WifiDisplayController;->sendWifiDisplayVolumeSupportChangedBroadcast()V

    .line 387
    .line 388
    .line 389
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 390
    .line 391
    iget-boolean p2, p1, Lcom/android/server/display/WifiDisplayController;->mIsDisplayVolumeControlSupported:Z

    .line 392
    .line 393
    if-eqz p2, :cond_12

    .line 394
    .line 395
    iget-object p1, p1, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 396
    .line 397
    if-eqz p1, :cond_12

    .line 398
    .line 399
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getState()I

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    if-ne p1, v7, :cond_12

    .line 404
    .line 405
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 406
    .line 407
    iget-object p2, p1, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 408
    .line 409
    const/16 v0, 0x19

    .line 410
    .line 411
    invoke-virtual {p2, v9, v0}, Landroid/media/AudioManager;->semGetStreamVolume(II)I

    .line 412
    .line 413
    .line 414
    move-result p2

    .line 415
    iput p2, p1, Lcom/android/server/display/WifiDisplayController;->mPrevMusicStreamVolume:I

    .line 416
    .line 417
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 418
    .line 419
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mAudioManager:Landroid/media/AudioManager;

    .line 420
    .line 421
    const/16 p1, 0xf

    .line 422
    .line 423
    invoke-virtual {p0, v9, p1, v10, v0}, Landroid/media/AudioManager;->semSetStreamVolume(IIII)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 424
    .line 425
    .line 426
    goto/16 :goto_4

    .line 427
    .line 428
    :catch_2
    move-exception p0

    .line 429
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-static {v8, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    goto/16 :goto_4

    .line 437
    .line 438
    :cond_a
    const-string p1, "    onNotify received : NOTIFY_SCREEN_WAKE_UP"

    .line 439
    .line 440
    invoke-static {v8, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 444
    .line 445
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 446
    .line 447
    new-instance p2, Lcom/android/server/display/WifiDisplayController$6;

    .line 448
    .line 449
    const/4 v0, 0x5

    .line 450
    invoke-direct {p2, p0, v0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    .line 455
    .line 456
    goto/16 :goto_4

    .line 457
    .line 458
    :cond_b
    :try_start_3
    new-instance p1, Lorg/json/JSONObject;

    .line 459
    .line 460
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 464
    .line 465
    const-string/jumbo v0, "isSupportInitiatedMirroring"

    .line 466
    .line 467
    .line 468
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    iput-boolean p1, p2, Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z

    .line 473
    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 480
    .line 481
    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayController;->mIsSupportInitiateMirroring:Z

    .line 482
    .line 483
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p0

    .line 490
    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 491
    .line 492
    .line 493
    goto/16 :goto_4

    .line 494
    .line 495
    :catch_3
    move-exception p0

    .line 496
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p0

    .line 500
    invoke-static {v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    goto/16 :goto_4

    .line 504
    .line 505
    :cond_c
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    move-result p1

    .line 509
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 510
    .line 511
    rem-int/lit8 v0, p1, 0x2

    .line 512
    .line 513
    iput v0, p2, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    .line 514
    .line 515
    const-string p2, "UDP"

    .line 516
    .line 517
    const-string v1, "TCP"

    .line 518
    .line 519
    if-ne v0, v7, :cond_d

    .line 520
    .line 521
    move-object v0, v1

    .line 522
    goto :goto_3

    .line 523
    :cond_d
    move-object v0, p2

    .line 524
    :goto_3
    const-string v2, "    onNotify received : NOTIFY_TRANSPORT_MODE,  mTransportMode = "

    .line 525
    .line 526
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    if-gt p1, v7, :cond_12

    .line 534
    .line 535
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 536
    .line 537
    iget p1, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    .line 538
    .line 539
    if-ne p1, v7, :cond_e

    .line 540
    .line 541
    move-object p2, v1

    .line 542
    :cond_e
    const-string/jumbo p1, "sendBroadcastTransportMode mode : "

    .line 543
    .line 544
    .line 545
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    invoke-static {v8, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    new-instance p1, Landroid/content/Intent;

    .line 553
    .line 554
    const-string/jumbo p2, "com.samsung.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    .line 555
    .line 556
    .line 557
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    const/high16 p2, 0x4000000

    .line 561
    .line 562
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 563
    .line 564
    .line 565
    const-string p2, "CONNECTION_MODE"

    .line 566
    .line 567
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mTransportMode:I

    .line 568
    .line 569
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 570
    .line 571
    .line 572
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 573
    .line 574
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 575
    .line 576
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 577
    .line 578
    .line 579
    goto :goto_4

    .line 580
    :cond_f
    const-string p1, "    onNotify received : NOTIFY_WFD_ENGINE_PAUSE"

    .line 581
    .line 582
    invoke-static {v8, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 586
    .line 587
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 588
    .line 589
    new-instance p1, Landroid/content/Intent;

    .line 590
    .line 591
    const-string/jumbo p2, "com.sec.android.smartview.WFD_ENGINE_PAUSE"

    .line 592
    .line 593
    .line 594
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 598
    .line 599
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 600
    .line 601
    .line 602
    goto :goto_4

    .line 603
    :cond_10
    const-string p1, "    onNotify received : NOTIFY_WFD_ENGINE_RESUME"

    .line 604
    .line 605
    invoke-static {v8, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 609
    .line 610
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 611
    .line 612
    new-instance p1, Landroid/content/Intent;

    .line 613
    .line 614
    const-string/jumbo p2, "com.sec.android.smartview.WFD_ENGINE_RESUME"

    .line 615
    .line 616
    .line 617
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 621
    .line 622
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 623
    .line 624
    .line 625
    goto :goto_4

    .line 626
    :cond_11
    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    .line 627
    .line 628
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$35;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 632
    .line 633
    const-string/jumbo p2, "renameAvailable"

    .line 634
    .line 635
    .line 636
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 637
    .line 638
    .line 639
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 640
    .line 641
    .line 642
    goto :goto_4

    .line 643
    :catch_4
    move-exception p0

    .line 644
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object p0

    .line 648
    invoke-static {v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    :cond_12
    :goto_4
    return-void
.end method
