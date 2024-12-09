.class public final Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, v1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    if-eqz v3, :cond_42

    .line 9
    .line 10
    if-eq v3, v2, :cond_41

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq v3, v4, :cond_40

    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    if-eq v3, v5, :cond_3f

    .line 17
    .line 18
    const/4 v6, 0x4

    .line 19
    if-eq v3, v6, :cond_3e

    .line 20
    .line 21
    const/4 v6, 0x5

    .line 22
    if-eq v3, v6, :cond_3d

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x7

    .line 26
    if-eq v3, v8, :cond_3b

    .line 27
    .line 28
    const/16 v9, 0x8

    .line 29
    .line 30
    if-eq v3, v9, :cond_3a

    .line 31
    .line 32
    const/16 v10, 0xa

    .line 33
    .line 34
    if-eq v3, v10, :cond_39

    .line 35
    .line 36
    const/16 v10, 0x44d

    .line 37
    .line 38
    if-eq v3, v10, :cond_35

    .line 39
    .line 40
    const/16 v10, 0xf

    .line 41
    .line 42
    if-eq v3, v10, :cond_34

    .line 43
    .line 44
    const/16 v11, 0x10

    .line 45
    .line 46
    if-eq v3, v11, :cond_33

    .line 47
    .line 48
    const/16 v11, 0x36

    .line 49
    .line 50
    if-eq v3, v11, :cond_32

    .line 51
    .line 52
    const/16 v11, 0x37

    .line 53
    .line 54
    if-eq v3, v11, :cond_30

    .line 55
    .line 56
    const/4 v11, -0x1

    .line 57
    const/4 v12, 0x0

    .line 58
    packed-switch v3, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    packed-switch v3, :pswitch_data_1

    .line 62
    .line 63
    .line 64
    packed-switch v3, :pswitch_data_2

    .line 65
    .line 66
    .line 67
    packed-switch v3, :pswitch_data_3

    .line 68
    .line 69
    .line 70
    packed-switch v3, :pswitch_data_4

    .line 71
    .line 72
    .line 73
    const/16 v13, 0xac6

    .line 74
    .line 75
    if-le v3, v13, :cond_43

    .line 76
    .line 77
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 78
    .line 79
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget v0, v1, Landroid/os/Message;->what:I

    .line 85
    .line 86
    packed-switch v0, :pswitch_data_5

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1c

    .line 90
    .line 91
    :pswitch_0
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService;->setMultiSoundOn(Z)V

    .line 96
    .line 97
    .line 98
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 99
    .line 100
    if-ne v0, v2, :cond_0

    .line 101
    .line 102
    move v0, v2

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    move v0, v7

    .line 105
    :goto_0
    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 106
    .line 107
    monitor-enter v4

    .line 108
    :try_start_0
    iget-object v5, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 109
    .line 110
    aget-object v5, v5, v2

    .line 111
    .line 112
    const-string/jumbo v8, "setLeBroadcasting"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v8, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Ljava/lang/String;Z)Z

    .line 116
    .line 117
    .line 118
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 120
    .line 121
    if-ne v0, v2, :cond_1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    move v2, v7

    .line 125
    :goto_1
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter v1

    .line 128
    :try_start_1
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 129
    .line 130
    aget-object v0, v0, v6

    .line 131
    .line 132
    const-string/jumbo v3, "setLeBroadcasting"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Ljava/lang/String;Z)Z

    .line 136
    .line 137
    .line 138
    monitor-exit v1

    .line 139
    goto/16 :goto_1c

    .line 140
    .line 141
    :catchall_0
    move-exception v0

    .line 142
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    throw v0

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    throw v0

    .line 147
    :pswitch_1
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Ljava/lang/String;

    .line 150
    .line 151
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 152
    .line 153
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 154
    .line 155
    invoke-virtual {v3, v0, v1, v7}, Lcom/android/server/audio/AudioService;->onSetAppDevice(IIZ)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_1c

    .line 159
    .line 160
    :pswitch_2
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Ljava/lang/String;

    .line 163
    .line 164
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 165
    .line 166
    if-ne v1, v2, :cond_2

    .line 167
    .line 168
    const-string/jumbo v1, "true"

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_2
    const-string/jumbo v1, "false"

    .line 173
    .line 174
    .line 175
    :goto_2
    new-instance v2, Lcom/samsung/android/media/AudioParameter$Builder;

    .line 176
    .line 177
    invoke-direct {v2}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string/jumbo v4, "l_support_absolute_volume"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const-string v2, "address"

    .line 188
    .line 189
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_1c

    .line 207
    .line 208
    :pswitch_3
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_RECORDING_POPUP:Z

    .line 209
    .line 210
    if-eqz v0, :cond_43

    .line 211
    .line 212
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 213
    .line 214
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 215
    .line 216
    const-string v2, "AS.AudioService"

    .line 217
    .line 218
    const-string v4, "[RECORDING POPUP] showRecordingPopup uid="

    .line 219
    .line 220
    const-string v6, ", type="

    .line 221
    .line 222
    invoke-static {v0, v1, v4, v6, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v2, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    :try_start_3
    invoke-virtual {v3, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 247
    goto :goto_3

    .line 248
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v6, "[RECORDING POPUP] getAppName can\'t find the name of "

    .line 251
    .line 252
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    const-string v4, "AS.RecordingPopupHelper"

    .line 263
    .line 264
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    const/16 v4, 0x3e8

    .line 272
    .line 273
    if-ne v0, v4, :cond_3

    .line 274
    .line 275
    const v0, 0x10401be

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    goto :goto_3

    .line 283
    :cond_3
    const v0, 0x104000e

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    :goto_3
    const/16 v3, 0x16

    .line 291
    .line 292
    const v4, 0x1040c64

    .line 293
    .line 294
    .line 295
    if-eq v1, v3, :cond_7

    .line 296
    .line 297
    if-ne v1, v5, :cond_4

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_4
    if-ne v1, v8, :cond_5

    .line 301
    .line 302
    const v1, 0x1040c63

    .line 303
    .line 304
    .line 305
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    goto :goto_5

    .line 314
    :cond_5
    if-ne v1, v10, :cond_6

    .line 315
    .line 316
    const v1, 0x1040c62

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    goto :goto_5

    .line 332
    :cond_6
    const v1, 0x1040c61

    .line 333
    .line 334
    .line 335
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    goto :goto_5

    .line 344
    :cond_7
    :goto_4
    const v1, 0x104061f

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    :goto_5
    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_1c

    .line 367
    .line 368
    :pswitch_4
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 369
    .line 370
    const-string/jumbo v1, "com.samsung.android.soundassistant"

    .line 371
    .line 372
    .line 373
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    const/16 v2, 0x2710

    .line 378
    .line 379
    if-ge v0, v2, :cond_8

    .line 380
    .line 381
    goto/16 :goto_1c

    .line 382
    .line 383
    :cond_8
    new-instance v0, Landroid/content/Intent;

    .line 384
    .line 385
    const-string/jumbo v2, "com.sec.android.soundassistant.SOUNDASSIST_INTENT_SERVICE"

    .line 386
    .line 387
    .line 388
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    const-string/jumbo v2, "com.sec.android.soundassistant.services.SoundAssistIntentService"

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    .line 396
    .line 397
    const-string/jumbo v1, "type"

    .line 398
    .line 399
    .line 400
    const/16 v2, 0x3eb

    .line 401
    .line 402
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    .line 404
    .line 405
    :try_start_4
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 406
    .line 407
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 408
    .line 409
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 410
    .line 411
    .line 412
    goto/16 :goto_1c

    .line 413
    .line 414
    :pswitch_5
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 415
    .line 416
    if-ne v0, v2, :cond_43

    .line 417
    .line 418
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mSensorThread:Lcom/samsung/android/server/audio/SensorHandleThread;

    .line 419
    .line 420
    iget-boolean v0, v0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    .line 421
    .line 422
    if-eqz v0, :cond_43

    .line 423
    .line 424
    const-string/jumbo v0, "l_hw_proximity_sensor_state=1"

    .line 425
    .line 426
    .line 427
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    goto/16 :goto_1c

    .line 431
    .line 432
    :pswitch_6
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 433
    .line 434
    if-nez v0, :cond_9

    .line 435
    .line 436
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mSensorThread:Lcom/samsung/android/server/audio/SensorHandleThread;

    .line 437
    .line 438
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/SensorHandleThread;->stopSensor()V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_1c

    .line 442
    .line 443
    :cond_9
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mSensorThread:Lcom/samsung/android/server/audio/SensorHandleThread;

    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/SensorHandleThread;->startSensor()V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_1c

    .line 449
    .line 450
    :pswitch_7
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v0, Landroid/content/Intent;

    .line 453
    .line 454
    invoke-virtual {v3, v0, v12}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_1c

    .line 458
    .line 459
    :pswitch_8
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 460
    .line 461
    if-eqz v0, :cond_43

    .line 462
    .line 463
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 464
    .line 465
    const-string/jumbo v6, "move from default to "

    .line 466
    .line 467
    .line 468
    const-string/jumbo v8, "setDevice, "

    .line 469
    .line 470
    .line 471
    const-string v9, " to 2"

    .line 472
    .line 473
    const-string/jumbo v10, "force change device "

    .line 474
    .line 475
    .line 476
    if-nez v5, :cond_a

    .line 477
    .line 478
    const-string v0, "MediaFocusControl"

    .line 479
    .line 480
    const-string/jumbo v2, "incorrect parameter"

    .line 481
    .line 482
    .line 483
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    goto/16 :goto_a

    .line 487
    .line 488
    :cond_a
    sget-object v11, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 489
    .line 490
    monitor-enter v11

    .line 491
    const v13, 0x400400d

    .line 492
    .line 493
    .line 494
    and-int/2addr v13, v5

    .line 495
    if-eqz v13, :cond_b

    .line 496
    .line 497
    :try_start_5
    const-string v13, "MediaFocusControl"

    .line 498
    .line 499
    new-instance v14, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    move v5, v4

    .line 518
    goto :goto_6

    .line 519
    :catchall_2
    move-exception v0

    .line 520
    goto/16 :goto_b

    .line 521
    .line 522
    :cond_b
    sget-object v9, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 523
    .line 524
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 525
    .line 526
    .line 527
    move-result-object v10

    .line 528
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-nez v9, :cond_c

    .line 533
    .line 534
    sget-object v9, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 535
    .line 536
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 537
    .line 538
    .line 539
    move-result-object v10

    .line 540
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v9

    .line 544
    if-eqz v9, :cond_d

    .line 545
    .line 546
    :cond_c
    const/16 v5, 0x80

    .line 547
    .line 548
    :cond_d
    :goto_6
    iget v9, v0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 549
    .line 550
    if-ne v9, v5, :cond_e

    .line 551
    .line 552
    const-string v0, "MediaFocusControl"

    .line 553
    .line 554
    const-string/jumbo v2, "setDevice, device doesn\'t change"

    .line 555
    .line 556
    .line 557
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    monitor-exit v11

    .line 561
    goto/16 :goto_a

    .line 562
    .line 563
    :cond_e
    const-string v10, "MediaFocusControl"

    .line 564
    .line 565
    new-instance v13, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v8

    .line 574
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v8

    .line 581
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .line 583
    .line 584
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 585
    .line 586
    invoke-virtual {v8, v7}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 587
    .line 588
    .line 589
    move-result-object v8

    .line 590
    iput-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 591
    .line 592
    const-string v8, "MediaFocusControl"

    .line 593
    .line 594
    new-instance v10, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v6

    .line 603
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    .line 612
    .line 613
    iget-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 614
    .line 615
    invoke-virtual {v6, v9}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 620
    .line 621
    invoke-virtual {v8}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 622
    .line 623
    .line 624
    move-result-object v8

    .line 625
    :cond_f
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 626
    .line 627
    .line 628
    move-result v10

    .line 629
    if-eqz v10, :cond_10

    .line 630
    .line 631
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v10

    .line 635
    check-cast v10, Lcom/android/server/audio/FocusRequester;

    .line 636
    .line 637
    iget v13, v10, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 638
    .line 639
    invoke-virtual {v0, v13}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    .line 640
    .line 641
    .line 642
    move-result v13

    .line 643
    iput v13, v10, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 644
    .line 645
    if-ne v13, v9, :cond_f

    .line 646
    .line 647
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v6, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    goto :goto_7

    .line 654
    :cond_10
    const-string v6, "MediaFocusControl"

    .line 655
    .line 656
    new-instance v8, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .line 660
    .line 661
    const-string/jumbo v9, "move from "

    .line 662
    .line 663
    .line 664
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v9

    .line 671
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    const-string v9, " to default"

    .line 675
    .line 676
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v8

    .line 683
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    .line 685
    .line 686
    iget-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 687
    .line 688
    invoke-virtual {v6, v5}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 689
    .line 690
    .line 691
    move-result-object v6

    .line 692
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 693
    .line 694
    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    if-nez v8, :cond_11

    .line 699
    .line 700
    iget-object v7, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 701
    .line 702
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 703
    .line 704
    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v8

    .line 708
    check-cast v8, Lcom/android/server/audio/FocusRequester;

    .line 709
    .line 710
    iget v8, v8, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 711
    .line 712
    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    .line 713
    .line 714
    .line 715
    move-result v7

    .line 716
    :cond_11
    if-eqz v7, :cond_12

    .line 717
    .line 718
    iget-object v7, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 719
    .line 720
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v7

    .line 724
    move-object v12, v7

    .line 725
    check-cast v12, Lcom/android/server/audio/FocusRequester;

    .line 726
    .line 727
    goto :goto_8

    .line 728
    :cond_12
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    .line 729
    .line 730
    .line 731
    move-result v7

    .line 732
    if-nez v7, :cond_13

    .line 733
    .line 734
    invoke-virtual {v0, v2, v12, v2}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 735
    .line 736
    .line 737
    :cond_13
    :goto_8
    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 738
    .line 739
    .line 740
    move-result-object v6

    .line 741
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 742
    .line 743
    .line 744
    move-result v7

    .line 745
    if-eqz v7, :cond_14

    .line 746
    .line 747
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v7

    .line 751
    check-cast v7, Lcom/android/server/audio/FocusRequester;

    .line 752
    .line 753
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 754
    .line 755
    .line 756
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 757
    .line 758
    invoke-virtual {v8, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    goto :goto_9

    .line 762
    :cond_14
    if-eqz v12, :cond_16

    .line 763
    .line 764
    iget v6, v12, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 765
    .line 766
    if-eq v6, v4, :cond_15

    .line 767
    .line 768
    invoke-virtual {v0, v6, v12, v2}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 769
    .line 770
    .line 771
    :cond_15
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 772
    .line 773
    invoke-virtual {v2, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    :cond_16
    iput v5, v0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 777
    .line 778
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 779
    :goto_a
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMediaSessionServiceInternal:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    .line 780
    .line 781
    if-eqz v0, :cond_43

    .line 782
    .line 783
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 784
    .line 785
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->updateMultiSoundInfo(IZ)V

    .line 790
    .line 791
    .line 792
    goto/16 :goto_1c

    .line 793
    .line 794
    :goto_b
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 795
    throw v0

    .line 796
    :pswitch_9
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 797
    .line 798
    if-nez v0, :cond_17

    .line 799
    .line 800
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 801
    .line 802
    const-string/jumbo v1, "mode_ringer_time_on"

    .line 803
    .line 804
    .line 805
    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 806
    .line 807
    .line 808
    goto/16 :goto_1c

    .line 809
    .line 810
    :cond_17
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 811
    .line 812
    const-string/jumbo v2, "mode_ringer_time"

    .line 813
    .line 814
    .line 815
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 816
    .line 817
    .line 818
    const v1, 0xea60

    .line 819
    .line 820
    .line 821
    mul-int/2addr v0, v1

    .line 822
    iput v0, v3, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    .line 823
    .line 824
    if-eqz v0, :cond_43

    .line 825
    .line 826
    new-instance v0, Landroid/content/Intent;

    .line 827
    .line 828
    const-string/jumbo v1, "com.sec.media.action.mute_interval"

    .line 829
    .line 830
    .line 831
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 835
    .line 836
    const/high16 v2, 0xc000000

    .line 837
    .line 838
    invoke-static {v1, v7, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 843
    .line 844
    .line 845
    move-result-wide v1

    .line 846
    iget v4, v3, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    .line 847
    .line 848
    int-to-long v4, v4

    .line 849
    add-long/2addr v1, v4

    .line 850
    iput-wide v1, v3, Lcom/android/server/audio/AudioService;->mMuteTime:J

    .line 851
    .line 852
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 853
    .line 854
    invoke-virtual {v3, v7, v1, v2, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 855
    .line 856
    .line 857
    goto/16 :goto_1c

    .line 858
    .line 859
    :pswitch_a
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 860
    .line 861
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 862
    .line 863
    .line 864
    move-result v1

    .line 865
    if-eqz v1, :cond_18

    .line 866
    .line 867
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    if-eq v0, v1, :cond_18

    .line 872
    .line 873
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 874
    .line 875
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 876
    .line 877
    const/16 v1, 0x3ed

    .line 878
    .line 879
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 880
    .line 881
    .line 882
    goto/16 :goto_1c

    .line 883
    .line 884
    :cond_18
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 885
    .line 886
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showNotification()V

    .line 887
    .line 888
    .line 889
    goto/16 :goto_1c

    .line 890
    .line 891
    :pswitch_b
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 892
    .line 893
    check-cast v0, Ljava/lang/String;

    .line 894
    .line 895
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 896
    .line 897
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 898
    .line 899
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/audio/AudioService;->onSetAppDevice(IIZ)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_1c

    .line 903
    .line 904
    :pswitch_c
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v0, Ljava/lang/Boolean;

    .line 907
    .line 908
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 913
    .line 914
    if-ne v4, v2, :cond_19

    .line 915
    .line 916
    move v4, v2

    .line 917
    goto :goto_c

    .line 918
    :cond_19
    move v4, v7

    .line 919
    :goto_c
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 920
    .line 921
    if-ne v1, v2, :cond_1a

    .line 922
    .line 923
    move v1, v2

    .line 924
    goto :goto_d

    .line 925
    :cond_1a
    move v1, v7

    .line 926
    :goto_d
    new-instance v6, Landroid/content/Intent;

    .line 927
    .line 928
    const-string v8, "android.intent.action.MULTISOUND_STATE_CHANGE"

    .line 929
    .line 930
    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    const-string v8, "AS.AudioService"

    .line 934
    .line 935
    const-string v9, "MSG_SET_MULTI_DEVICE_SOUND_ON "

    .line 936
    .line 937
    invoke-static {v9, v8, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 938
    .line 939
    .line 940
    iget-object v8, v3, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 941
    .line 942
    const-string/jumbo v9, "multisound_state"

    .line 943
    .line 944
    .line 945
    invoke-static {v8, v9, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 946
    .line 947
    .line 948
    if-eqz v0, :cond_1e

    .line 949
    .line 950
    if-eqz v1, :cond_1b

    .line 951
    .line 952
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 953
    .line 954
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 955
    .line 956
    .line 957
    const-string v1, "AS.MultiSoundManager"

    .line 958
    .line 959
    const-string/jumbo v4, "shouldEnable"

    .line 960
    .line 961
    .line 962
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    .line 964
    .line 965
    iput-boolean v2, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 966
    .line 967
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 968
    .line 969
    .line 970
    goto :goto_f

    .line 971
    :cond_1b
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 972
    .line 973
    iget-boolean v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 974
    .line 975
    if-eqz v1, :cond_1c

    .line 976
    .line 977
    goto :goto_e

    .line 978
    :cond_1c
    const-string v1, "AS.MultiSoundManager"

    .line 979
    .line 980
    const-string/jumbo v7, "enable"

    .line 981
    .line 982
    .line 983
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    .line 985
    .line 986
    iput-boolean v2, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 987
    .line 988
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 989
    .line 990
    .line 991
    if-eqz v4, :cond_1d

    .line 992
    .line 993
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 994
    .line 995
    iget-object v0, v0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 996
    .line 997
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 998
    .line 999
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showNotification()V

    .line 1000
    .line 1001
    .line 1002
    :cond_1d
    :goto_e
    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    .line 1003
    .line 1004
    .line 1005
    move-result v0

    .line 1006
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    .line 1007
    .line 1008
    .line 1009
    move-result v1

    .line 1010
    if-ne v1, v0, :cond_20

    .line 1011
    .line 1012
    if-eqz v4, :cond_20

    .line 1013
    .line 1014
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 1015
    .line 1016
    iget-object v2, v3, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1017
    .line 1018
    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    .line 1019
    .line 1020
    .line 1021
    move-result v2

    .line 1022
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->showHeadUpNotification(II)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_f

    .line 1026
    :cond_1e
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 1027
    .line 1028
    iget-boolean v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 1029
    .line 1030
    if-nez v1, :cond_1f

    .line 1031
    .line 1032
    goto :goto_f

    .line 1033
    :cond_1f
    const-string v1, "AS.MultiSoundManager"

    .line 1034
    .line 1035
    const-string/jumbo v2, "disable"

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .line 1040
    .line 1041
    iput-boolean v7, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 1042
    .line 1043
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 1044
    .line 1045
    .line 1046
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 1047
    .line 1048
    iget-object v0, v0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 1049
    .line 1050
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 1051
    .line 1052
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 1053
    .line 1054
    const/16 v1, 0x3ec

    .line 1055
    .line 1056
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1057
    .line 1058
    .line 1059
    :cond_20
    :goto_f
    iget-boolean v0, v3, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    .line 1060
    .line 1061
    if-nez v0, :cond_23

    .line 1062
    .line 1063
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1064
    .line 1065
    iget-boolean v1, v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    .line 1066
    .line 1067
    if-nez v1, :cond_21

    .line 1068
    .line 1069
    iget-boolean v1, v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 1070
    .line 1071
    if-eqz v1, :cond_22

    .line 1072
    .line 1073
    :cond_21
    iget-boolean v0, v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    .line 1074
    .line 1075
    if-eqz v0, :cond_23

    .line 1076
    .line 1077
    :cond_22
    invoke-virtual {v3, v6, v12}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1078
    .line 1079
    .line 1080
    :cond_23
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMediaSessionServiceInternal:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    .line 1081
    .line 1082
    if-eqz v0, :cond_43

    .line 1083
    .line 1084
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 1085
    .line 1086
    .line 1087
    move-result v1

    .line 1088
    invoke-virtual {v0, v11, v1}, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->updateMultiSoundInfo(IZ)V

    .line 1089
    .line 1090
    .line 1091
    goto/16 :goto_1c

    .line 1092
    .line 1093
    :pswitch_d
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 1094
    .line 1095
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 1096
    .line 1097
    iget-object v2, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1098
    .line 1099
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1100
    .line 1101
    .line 1102
    new-instance v3, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;

    .line 1103
    .line 1104
    invoke-direct {v3, v1, v2, v0}, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Context;I)V

    .line 1105
    .line 1106
    .line 1107
    invoke-static {v3}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1108
    .line 1109
    .line 1110
    goto/16 :goto_1c

    .line 1111
    .line 1112
    :pswitch_e
    iput-boolean v7, v3, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    .line 1113
    .line 1114
    goto/16 :goto_1c

    .line 1115
    .line 1116
    :pswitch_f
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1117
    .line 1118
    move-object v4, v0

    .line 1119
    check-cast v4, Ljava/lang/String;

    .line 1120
    .line 1121
    iget v15, v1, Landroid/os/Message;->arg1:I

    .line 1122
    .line 1123
    iget-boolean v0, v3, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    .line 1124
    .line 1125
    if-nez v0, :cond_43

    .line 1126
    .line 1127
    const-string v0, "Notification ("

    .line 1128
    .line 1129
    :try_start_7
    iget-boolean v1, v3, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 1130
    .line 1131
    if-eqz v1, :cond_25

    .line 1132
    .line 1133
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 1134
    .line 1135
    if-eqz v1, :cond_25

    .line 1136
    .line 1137
    invoke-static {v9}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 1138
    .line 1139
    .line 1140
    move-result v1

    .line 1141
    invoke-static {v1, v11}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v8

    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    .line 1152
    .line 1153
    const-string v0, ")"

    .line 1154
    .line 1155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    if-ne v15, v2, :cond_24

    .line 1159
    .line 1160
    const-string v0, " (RingerMode)"

    .line 1161
    .line 1162
    goto :goto_10

    .line 1163
    :catch_1
    move-exception v0

    .line 1164
    goto :goto_11

    .line 1165
    :cond_24
    const-string v0, " (SafetyDialog)"

    .line 1166
    .line 1167
    :goto_10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v9

    .line 1174
    iget-object v5, v3, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 1175
    .line 1176
    const-string v7, "android"

    .line 1177
    .line 1178
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    .line 1179
    .line 1180
    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 1181
    .line 1182
    .line 1183
    const-string v1, "VIBRATE_CALL"

    .line 1184
    .line 1185
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    const/16 v1, 0x21

    .line 1190
    .line 1191
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v10

    .line 1199
    const/16 v6, 0x3e8

    .line 1200
    .line 1201
    invoke-virtual/range {v5 .. v10}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1202
    .line 1203
    .line 1204
    goto :goto_12

    .line 1205
    :goto_11
    const-string v1, "AS.AudioService"

    .line 1206
    .line 1207
    const-string/jumbo v5, "vibrateCall error"

    .line 1208
    .line 1209
    .line 1210
    invoke-static {v1, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1211
    .line 1212
    .line 1213
    :cond_25
    :goto_12
    iput-boolean v2, v3, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    .line 1214
    .line 1215
    iget-object v12, v3, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 1216
    .line 1217
    const/16 v13, 0xac9

    .line 1218
    .line 1219
    const/4 v14, 0x1

    .line 1220
    const/16 v16, 0x0

    .line 1221
    .line 1222
    const/16 v18, 0x258

    .line 1223
    .line 1224
    move-object/from16 v17, v4

    .line 1225
    .line 1226
    invoke-static/range {v12 .. v18}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1227
    .line 1228
    .line 1229
    goto/16 :goto_1c

    .line 1230
    .line 1231
    :pswitch_10
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1232
    .line 1233
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1234
    .line 1235
    .line 1236
    move-result v0

    .line 1237
    const-string v1, "AS.AudioService"

    .line 1238
    .line 1239
    if-ne v0, v5, :cond_26

    .line 1240
    .line 1241
    const-string/jumbo v0, "playSilentModeSound: skipping playSilentModeSound"

    .line 1242
    .line 1243
    .line 1244
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    .line 1246
    .line 1247
    goto/16 :goto_1c

    .line 1248
    .line 1249
    :cond_26
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1250
    .line 1251
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1252
    .line 1253
    .line 1254
    move-result v0

    .line 1255
    if-ne v0, v2, :cond_27

    .line 1256
    .line 1257
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    .line 1258
    .line 1259
    .line 1260
    move-result v0

    .line 1261
    if-eqz v0, :cond_27

    .line 1262
    .line 1263
    const-string/jumbo v0, "playSilentModeSound: skipping while inband ringtone is playing"

    .line 1264
    .line 1265
    .line 1266
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    .line 1268
    .line 1269
    goto/16 :goto_1c

    .line 1270
    .line 1271
    :cond_27
    const/16 v0, 0x65

    .line 1272
    .line 1273
    invoke-static {v0}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    .line 1274
    .line 1275
    .line 1276
    move-result v0

    .line 1277
    const/high16 v1, -0x40800000    # -1.0f

    .line 1278
    .line 1279
    invoke-virtual {v3, v0, v1}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 1280
    .line 1281
    .line 1282
    goto/16 :goto_1c

    .line 1283
    .line 1284
    :pswitch_11
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1285
    .line 1286
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 1287
    .line 1288
    invoke-virtual {v0, v1}, Lcom/android/server/audio/SoundDoseHelper;->handleMessage(Landroid/os/Message;)V

    .line 1289
    .line 1290
    .line 1291
    goto/16 :goto_1c

    .line 1292
    .line 1293
    :pswitch_12
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1294
    .line 1295
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->onInitAdiDeviceStates()V

    .line 1296
    .line 1297
    .line 1298
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1299
    .line 1300
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1301
    .line 1302
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1303
    .line 1304
    .line 1305
    goto/16 :goto_1c

    .line 1306
    .line 1307
    :pswitch_13
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1308
    .line 1309
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 1310
    .line 1311
    iget-boolean v3, v1, Lcom/android/server/audio/AudioService;->mHasSpatializerEffect:Z

    .line 1312
    .line 1313
    invoke-virtual {v2, v3}, Lcom/android/server/audio/SpatializerHelper;->init(Z)V

    .line 1314
    .line 1315
    .line 1316
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 1317
    .line 1318
    iget-boolean v1, v1, Lcom/android/server/audio/AudioService;->mHasSpatializerEffect:Z

    .line 1319
    .line 1320
    invoke-virtual {v2, v1}, Lcom/android/server/audio/SpatializerHelper;->setFeatureEnabled(Z)V

    .line 1321
    .line 1322
    .line 1323
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1324
    .line 1325
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1326
    .line 1327
    const/16 v2, 0x3a

    .line 1328
    .line 1329
    invoke-virtual {v1, v2, v4, v12}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1330
    .line 1331
    .line 1332
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1333
    .line 1334
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1335
    .line 1336
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1337
    .line 1338
    .line 1339
    goto/16 :goto_1c

    .line 1340
    .line 1341
    :pswitch_14
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1342
    .line 1343
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monInitStreamsAndVolumes(Lcom/android/server/audio/AudioService;)V

    .line 1344
    .line 1345
    .line 1346
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1347
    .line 1348
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1349
    .line 1350
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1351
    .line 1352
    .line 1353
    goto/16 :goto_1c

    .line 1354
    .line 1355
    :pswitch_15
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1356
    .line 1357
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 1358
    .line 1359
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1360
    .line 1361
    if-ne v4, v2, :cond_28

    .line 1362
    .line 1363
    goto :goto_13

    .line 1364
    :cond_28
    move v2, v7

    .line 1365
    :goto_13
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 1366
    .line 1367
    invoke-virtual {v3, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(IZ)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1371
    .line 1372
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1373
    .line 1374
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1375
    .line 1376
    .line 1377
    goto/16 :goto_1c

    .line 1378
    .line 1379
    :pswitch_16
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1380
    .line 1381
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v0

    .line 1385
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1386
    .line 1387
    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    .line 1388
    .line 1389
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1390
    .line 1391
    .line 1392
    move-result v4

    .line 1393
    const-string/jumbo v5, "audio_attributes"

    .line 1394
    .line 1395
    .line 1396
    const-class v6, Landroid/media/AudioAttributes;

    .line 1397
    .line 1398
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v5

    .line 1402
    check-cast v5, Landroid/media/AudioAttributes;

    .line 1403
    .line 1404
    const-string/jumbo v6, "audio_mixer_attributes"

    .line 1405
    .line 1406
    .line 1407
    const-class v8, Landroid/media/AudioMixerAttributes;

    .line 1408
    .line 1409
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v0

    .line 1413
    move-object v6, v0

    .line 1414
    check-cast v6, Landroid/media/AudioMixerAttributes;

    .line 1415
    .line 1416
    :goto_14
    if-ge v7, v4, :cond_29

    .line 1417
    .line 1418
    :try_start_8
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    .line 1419
    .line 1420
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    check-cast v0, Landroid/media/IPreferredMixerAttributesDispatcher;

    .line 1425
    .line 1426
    invoke-interface {v0, v5, v1, v6}, Landroid/media/IPreferredMixerAttributesDispatcher;->dispatchPrefMixerAttributesChanged(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1427
    .line 1428
    .line 1429
    goto :goto_15

    .line 1430
    :catch_2
    move-exception v0

    .line 1431
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    const-string v9, "Can\'t call dispatchPrefMixerAttributesChanged() IPreferredMixerAttributesDispatcher "

    .line 1434
    .line 1435
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    iget-object v9, v3, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    .line 1439
    .line 1440
    invoke-virtual {v9, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v9

    .line 1444
    check-cast v9, Landroid/media/IPreferredMixerAttributesDispatcher;

    .line 1445
    .line 1446
    invoke-interface {v9}, Landroid/media/IPreferredMixerAttributesDispatcher;->asBinder()Landroid/os/IBinder;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v9

    .line 1450
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v8

    .line 1457
    const-string v9, "AS.AudioService"

    .line 1458
    .line 1459
    invoke-static {v9, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    .line 1461
    .line 1462
    :goto_15
    add-int/2addr v7, v2

    .line 1463
    goto :goto_14

    .line 1464
    :cond_29
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    .line 1465
    .line 1466
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1467
    .line 1468
    .line 1469
    goto/16 :goto_1c

    .line 1470
    .line 1471
    :pswitch_17
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1472
    .line 1473
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 1474
    .line 1475
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1476
    .line 1477
    invoke-virtual {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->ignorePlayerIId(I)V

    .line 1478
    .line 1479
    .line 1480
    goto/16 :goto_1c

    .line 1481
    .line 1482
    :pswitch_18
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1483
    .line 1484
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 1485
    .line 1486
    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mHasSpatializerEffect:Z

    .line 1487
    .line 1488
    invoke-virtual {v1, v0}, Lcom/android/server/audio/SpatializerHelper;->reset(Z)V

    .line 1489
    .line 1490
    .line 1491
    goto/16 :goto_1c

    .line 1492
    .line 1493
    :pswitch_19
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1494
    .line 1495
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 1496
    .line 1497
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1498
    .line 1499
    check-cast v1, Ljava/lang/String;

    .line 1500
    .line 1501
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 1502
    .line 1503
    .line 1504
    goto/16 :goto_1c

    .line 1505
    .line 1506
    :pswitch_1a
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1507
    .line 1508
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 1509
    .line 1510
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1511
    .line 1512
    check-cast v1, Ljava/lang/String;

    .line 1513
    .line 1514
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 1515
    .line 1516
    .line 1517
    goto/16 :goto_1c

    .line 1518
    .line 1519
    :pswitch_1b
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1520
    .line 1521
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1522
    .line 1523
    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 1524
    .line 1525
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1526
    .line 1527
    sget v3, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 1528
    .line 1529
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->dispatchDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    .line 1530
    .line 1531
    .line 1532
    goto/16 :goto_1c

    .line 1533
    .line 1534
    :pswitch_1c
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1535
    .line 1536
    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 1537
    .line 1538
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->updateActiveAssistantServiceUids()V

    .line 1539
    .line 1540
    .line 1541
    goto/16 :goto_1c

    .line 1542
    .line 1543
    :pswitch_1d
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1544
    .line 1545
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1546
    .line 1547
    filled-new-array {v1}, [I

    .line 1548
    .line 1549
    .line 1550
    move-result-object v1

    .line 1551
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monRemoveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 1552
    .line 1553
    .line 1554
    goto/16 :goto_1c

    .line 1555
    .line 1556
    :pswitch_1e
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1557
    .line 1558
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1559
    .line 1560
    filled-new-array {v1}, [I

    .line 1561
    .line 1562
    .line 1563
    move-result-object v1

    .line 1564
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monAddAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 1565
    .line 1566
    .line 1567
    goto/16 :goto_1c

    .line 1568
    .line 1569
    :pswitch_1f
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1570
    .line 1571
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 1572
    .line 1573
    invoke-virtual {v0}, Lcom/android/server/audio/SpatializerHelper;->onInitSensors()V

    .line 1574
    .line 1575
    .line 1576
    goto/16 :goto_1c

    .line 1577
    .line 1578
    :pswitch_20
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1579
    .line 1580
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onRoutingUpdatedFromAudioThread()V

    .line 1581
    .line 1582
    .line 1583
    goto/16 :goto_1c

    .line 1584
    .line 1585
    :pswitch_21
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1586
    .line 1587
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1588
    .line 1589
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    .line 1590
    .line 1591
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1592
    .line 1593
    .line 1594
    move-result v3

    .line 1595
    :goto_16
    if-ge v7, v3, :cond_2a

    .line 1596
    .line 1597
    :try_start_9
    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    .line 1598
    .line 1599
    invoke-virtual {v4, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v4

    .line 1603
    check-cast v4, Landroid/media/IAudioModeDispatcher;

    .line 1604
    .line 1605
    invoke-interface {v4, v1}, Landroid/media/IAudioModeDispatcher;->dispatchAudioModeChanged(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1606
    .line 1607
    .line 1608
    :catch_3
    add-int/2addr v7, v2

    .line 1609
    goto :goto_16

    .line 1610
    :cond_2a
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    .line 1611
    .line 1612
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1613
    .line 1614
    .line 1615
    goto/16 :goto_1c

    .line 1616
    .line 1617
    :pswitch_22
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1618
    .line 1619
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1620
    .line 1621
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1622
    .line 1623
    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    .line 1624
    .line 1625
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 1626
    .line 1627
    .line 1628
    goto/16 :goto_1c

    .line 1629
    .line 1630
    :pswitch_23
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1631
    .line 1632
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1633
    .line 1634
    check-cast v1, Ljava/util/List;

    .line 1635
    .line 1636
    sget v2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 1637
    .line 1638
    invoke-virtual {v0, v12, v1}, Lcom/android/server/audio/AudioService;->updateAudioModeHandlers(Ljava/util/List;Ljava/util/List;)V

    .line 1639
    .line 1640
    .line 1641
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1642
    .line 1643
    invoke-virtual {v0, v12, v1}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientsActivity(Ljava/util/List;Ljava/util/List;)V

    .line 1644
    .line 1645
    .line 1646
    goto/16 :goto_1c

    .line 1647
    .line 1648
    :pswitch_24
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1649
    .line 1650
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1651
    .line 1652
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1653
    .line 1654
    monitor-enter v2

    .line 1655
    :try_start_a
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1656
    .line 1657
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 1658
    .line 1659
    iget v4, v1, Landroid/os/Message;->arg2:I

    .line 1660
    .line 1661
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1662
    .line 1663
    check-cast v1, Ljava/lang/String;

    .line 1664
    .line 1665
    invoke-virtual {v0, v3, v4, v1, v7}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    .line 1666
    .line 1667
    .line 1668
    monitor-exit v2

    .line 1669
    goto/16 :goto_1c

    .line 1670
    .line 1671
    :catchall_3
    move-exception v0

    .line 1672
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1673
    throw v0

    .line 1674
    :pswitch_25
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1675
    .line 1676
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)V

    .line 1677
    .line 1678
    .line 1679
    goto/16 :goto_1c

    .line 1680
    .line 1681
    :pswitch_26
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1682
    .line 1683
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1684
    .line 1685
    check-cast v1, Ljava/lang/String;

    .line 1686
    .line 1687
    sget v2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 1688
    .line 1689
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->onReinitVolumes(Ljava/lang/String;)V

    .line 1690
    .line 1691
    .line 1692
    goto/16 :goto_1c

    .line 1693
    .line 1694
    :pswitch_27
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1695
    .line 1696
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1697
    .line 1698
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1699
    .line 1700
    check-cast v1, Ljava/lang/String;

    .line 1701
    .line 1702
    invoke-static {v2, v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateVolumeStatesForAudioDevice(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 1703
    .line 1704
    .line 1705
    goto/16 :goto_1c

    .line 1706
    .line 1707
    :pswitch_28
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1708
    .line 1709
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1710
    .line 1711
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1712
    .line 1713
    check-cast v3, Landroid/content/Intent;

    .line 1714
    .line 1715
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1716
    .line 1717
    check-cast v4, Landroid/os/Bundle;

    .line 1718
    .line 1719
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1720
    .line 1721
    .line 1722
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1723
    .line 1724
    const-string v5, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 1725
    .line 1726
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1727
    .line 1728
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v5

    .line 1732
    const-string v6, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 1733
    .line 1734
    iget v8, v1, Landroid/os/Message;->arg2:I

    .line 1735
    .line 1736
    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v5

    .line 1740
    invoke-virtual {v2, v5, v4}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1741
    .line 1742
    .line 1743
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    .line 1744
    .line 1745
    if-eqz v2, :cond_43

    .line 1746
    .line 1747
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1748
    .line 1749
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    .line 1750
    .line 1751
    if-eqz v0, :cond_43

    .line 1752
    .line 1753
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 1754
    .line 1755
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1756
    .line 1757
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v2

    .line 1761
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 1762
    .line 1763
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 1764
    .line 1765
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v1

    .line 1769
    sget-object v2, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_STREAM_TYPES:Ljava/util/List;

    .line 1770
    .line 1771
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v2

    .line 1775
    new-instance v3, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda0;

    .line 1776
    .line 1777
    invoke-direct {v3, v1}, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    .line 1778
    .line 1779
    .line 1780
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 1781
    .line 1782
    .line 1783
    move-result v2

    .line 1784
    if-eqz v2, :cond_2b

    .line 1785
    .line 1786
    goto/16 :goto_1c

    .line 1787
    .line 1788
    :cond_2b
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 1789
    .line 1790
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1791
    .line 1792
    .line 1793
    move-result v2

    .line 1794
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 1795
    .line 1796
    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1797
    .line 1798
    .line 1799
    move-result v1

    .line 1800
    iput v1, v0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    .line 1801
    .line 1802
    const-string/jumbo v3, "streamDevicesChanged() prevDevice="

    .line 1803
    .line 1804
    .line 1805
    const-string v4, ", curDevice="

    .line 1806
    .line 1807
    const-string v5, "MicModeManager"

    .line 1808
    .line 1809
    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MicModeManager;->updateAudioDevice()V

    .line 1813
    .line 1814
    .line 1815
    goto/16 :goto_1c

    .line 1816
    .line 1817
    :pswitch_29
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1818
    .line 1819
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1820
    .line 1821
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1822
    .line 1823
    monitor-enter v2

    .line 1824
    :try_start_b
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1825
    .line 1826
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1827
    .line 1828
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->checkAndResetBtSco()V

    .line 1829
    .line 1830
    .line 1831
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1832
    .line 1833
    if-nez v1, :cond_2c

    .line 1834
    .line 1835
    monitor-exit v2

    .line 1836
    goto/16 :goto_1c

    .line 1837
    .line 1838
    :catchall_4
    move-exception v0

    .line 1839
    goto :goto_17

    .line 1840
    :cond_2c
    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 1841
    .line 1842
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1843
    .line 1844
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 1845
    .line 1846
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1847
    .line 1848
    .line 1849
    move-result v3

    .line 1850
    if-gez v3, :cond_2d

    .line 1851
    .line 1852
    monitor-exit v2

    .line 1853
    goto/16 :goto_1c

    .line 1854
    .line 1855
    :cond_2d
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    .line 1856
    .line 1857
    .line 1858
    move-result v3

    .line 1859
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1860
    .line 1861
    iget v5, v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    .line 1862
    .line 1863
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    .line 1864
    .line 1865
    .line 1866
    move-result v4

    .line 1867
    iput-boolean v4, v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPlaybackActive:Z

    .line 1868
    .line 1869
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1870
    .line 1871
    iget v5, v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    .line 1872
    .line 1873
    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 1874
    .line 1875
    invoke-virtual {v4, v5}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    .line 1876
    .line 1877
    .line 1878
    move-result v4

    .line 1879
    iput-boolean v4, v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mRecordingActive:Z

    .line 1880
    .line 1881
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    .line 1882
    .line 1883
    .line 1884
    move-result v1

    .line 1885
    if-eq v3, v1, :cond_2e

    .line 1886
    .line 1887
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1888
    .line 1889
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1890
    .line 1891
    .line 1892
    move-result v3

    .line 1893
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1894
    .line 1895
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1896
    .line 1897
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v0

    .line 1901
    invoke-virtual {v1, v11, v3, v0, v7}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    .line 1902
    .line 1903
    .line 1904
    :cond_2e
    monitor-exit v2

    .line 1905
    goto/16 :goto_1c

    .line 1906
    .line 1907
    :goto_17
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1908
    throw v0

    .line 1909
    :pswitch_2a
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1910
    .line 1911
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 1912
    .line 1913
    iget-object v0, v0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    .line 1914
    .line 1915
    new-instance v1, Landroid/content/Intent;

    .line 1916
    .line 1917
    const-string v2, "android.media.action.MICROPHONE_MUTE_CHANGED"

    .line 1918
    .line 1919
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1920
    .line 1921
    .line 1922
    const/high16 v2, 0x40000000    # 2.0f

    .line 1923
    .line 1924
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v1

    .line 1928
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1929
    .line 1930
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1931
    .line 1932
    .line 1933
    goto/16 :goto_1c

    .line 1934
    .line 1935
    :pswitch_2b
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1936
    .line 1937
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1938
    .line 1939
    check-cast v1, Ljava/util/List;

    .line 1940
    .line 1941
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monPlaybackConfigChange(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    .line 1942
    .line 1943
    .line 1944
    goto/16 :goto_1c

    .line 1945
    .line 1946
    :pswitch_2c
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1947
    .line 1948
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1949
    .line 1950
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1951
    .line 1952
    check-cast v1, Ljava/lang/String;

    .line 1953
    .line 1954
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monCheckVolumeCecOnHdmiConnection(Lcom/android/server/audio/AudioService;I)V

    .line 1955
    .line 1956
    .line 1957
    goto/16 :goto_1c

    .line 1958
    .line 1959
    :pswitch_2d
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1960
    .line 1961
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1962
    .line 1963
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monObserveDevicesForAllStreams(Lcom/android/server/audio/AudioService;I)V

    .line 1964
    .line 1965
    .line 1966
    goto/16 :goto_1c

    .line 1967
    .line 1968
    :pswitch_2e
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1969
    .line 1970
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1971
    .line 1972
    check-cast v3, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    .line 1973
    .line 1974
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$monSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    .line 1975
    .line 1976
    .line 1977
    const-string/jumbo v2, "muteMediaStreamOfSpeaker"

    .line 1978
    .line 1979
    .line 1980
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1981
    .line 1982
    check-cast v3, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    .line 1983
    .line 1984
    iget-object v3, v3, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    .line 1985
    .line 1986
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1987
    .line 1988
    .line 1989
    move-result v2

    .line 1990
    if-eqz v2, :cond_43

    .line 1991
    .line 1992
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1993
    .line 1994
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 1995
    .line 1996
    iget v6, v1, Landroid/os/Message;->arg2:I

    .line 1997
    .line 1998
    const/4 v8, 0x2

    .line 1999
    const/4 v4, 0x3

    .line 2000
    const/4 v7, 0x0

    .line 2001
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 2002
    .line 2003
    .line 2004
    goto/16 :goto_1c

    .line 2005
    .line 2006
    :pswitch_2f
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2007
    .line 2008
    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 2009
    .line 2010
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    .line 2011
    .line 2012
    .line 2013
    move-result v1

    .line 2014
    invoke-virtual {v0, v1, v7}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 2015
    .line 2016
    .line 2017
    goto/16 :goto_1c

    .line 2018
    .line 2019
    :pswitch_30
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2020
    .line 2021
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2022
    .line 2023
    check-cast v1, Ljava/util/ArrayList;

    .line 2024
    .line 2025
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monEnableSurroundFormats(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    .line 2026
    .line 2027
    .line 2028
    goto/16 :goto_1c

    .line 2029
    .line 2030
    :pswitch_31
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2031
    .line 2032
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2033
    .line 2034
    if-ne v1, v2, :cond_2f

    .line 2035
    .line 2036
    goto :goto_18

    .line 2037
    :cond_2f
    move v2, v7

    .line 2038
    :goto_18
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monDispatchAudioServerStateChange(Lcom/android/server/audio/AudioService;Z)V

    .line 2039
    .line 2040
    .line 2041
    goto/16 :goto_1c

    .line 2042
    .line 2043
    :pswitch_32
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2044
    .line 2045
    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 2046
    .line 2047
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2048
    .line 2049
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onNotifyVolumeEvent(Landroid/media/audiopolicy/IAudioPolicyCallback;I)V

    .line 2050
    .line 2051
    .line 2052
    goto/16 :goto_1c

    .line 2053
    .line 2054
    :pswitch_33
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2055
    .line 2056
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2057
    .line 2058
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monAccessoryPlugMediaUnmute(Lcom/android/server/audio/AudioService;I)V

    .line 2059
    .line 2060
    .line 2061
    goto/16 :goto_1c

    .line 2062
    .line 2063
    :pswitch_34
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2064
    .line 2065
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 2066
    .line 2067
    .line 2068
    goto/16 :goto_1c

    .line 2069
    .line 2070
    :pswitch_35
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2071
    .line 2072
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2073
    .line 2074
    check-cast v2, Ljava/lang/String;

    .line 2075
    .line 2076
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2077
    .line 2078
    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monDynPolicyMixStateUpdate(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 2079
    .line 2080
    .line 2081
    goto/16 :goto_1c

    .line 2082
    .line 2083
    :pswitch_36
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2084
    .line 2085
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 2086
    .line 2087
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 2088
    .line 2089
    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monUnmuteStreamOnSingleVolDevice(Lcom/android/server/audio/AudioService;II)V

    .line 2090
    .line 2091
    .line 2092
    goto/16 :goto_1c

    .line 2093
    .line 2094
    :cond_30
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2095
    .line 2096
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 2097
    .line 2098
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2099
    .line 2100
    if-ne v1, v2, :cond_31

    .line 2101
    .line 2102
    goto :goto_19

    .line 2103
    :cond_31
    move v2, v7

    .line 2104
    :goto_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2105
    .line 2106
    .line 2107
    new-instance v1, Landroid/content/Intent;

    .line 2108
    .line 2109
    const-string v3, "android.media.MASTER_MUTE_CHANGED_ACTION"

    .line 2110
    .line 2111
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2112
    .line 2113
    .line 2114
    const-string v3, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    .line 2115
    .line 2116
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2117
    .line 2118
    .line 2119
    const/high16 v2, 0x34000000

    .line 2120
    .line 2121
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2122
    .line 2123
    .line 2124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2125
    .line 2126
    .line 2127
    move-result-wide v2

    .line 2128
    :try_start_c
    iget-object v0, v0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    .line 2129
    .line 2130
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2131
    .line 2132
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 2133
    .line 2134
    .line 2135
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2136
    .line 2137
    .line 2138
    goto/16 :goto_1c

    .line 2139
    .line 2140
    :catchall_5
    move-exception v0

    .line 2141
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2142
    .line 2143
    .line 2144
    throw v0

    .line 2145
    :cond_32
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2146
    .line 2147
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monConfigurationChanged(Lcom/android/server/audio/AudioService;)V

    .line 2148
    .line 2149
    .line 2150
    goto/16 :goto_1c

    .line 2151
    .line 2152
    :cond_33
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2153
    .line 2154
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    .line 2155
    .line 2156
    .line 2157
    goto/16 :goto_1c

    .line 2158
    .line 2159
    :cond_34
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2160
    .line 2161
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    .line 2162
    .line 2163
    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper;->unloadSoundEffects()V

    .line 2164
    .line 2165
    .line 2166
    goto/16 :goto_1c

    .line 2167
    .line 2168
    :cond_35
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2169
    .line 2170
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMusicFxHelper:Lcom/android/server/audio/MusicFxHelper;

    .line 2171
    .line 2172
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2173
    .line 2174
    .line 2175
    iget v2, v1, Landroid/os/Message;->what:I

    .line 2176
    .line 2177
    if-eq v2, v10, :cond_36

    .line 2178
    .line 2179
    const-string v0, "AS.MusicFxHelper"

    .line 2180
    .line 2181
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2182
    .line 2183
    const-string v3, "Unexpected msg to handle in MusicFxHelper: "

    .line 2184
    .line 2185
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2186
    .line 2187
    .line 2188
    iget v1, v1, Landroid/os/Message;->what:I

    .line 2189
    .line 2190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2191
    .line 2192
    .line 2193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2194
    .line 2195
    .line 2196
    move-result-object v1

    .line 2197
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    .line 2199
    .line 2200
    goto/16 :goto_1c

    .line 2201
    .line 2202
    :cond_36
    const-string v2, "AS.MusicFxHelper"

    .line 2203
    .line 2204
    const-string v3, " handle MSG_EFFECT_CLIENT_GONE"

    .line 2205
    .line 2206
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    .line 2208
    .line 2209
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2210
    .line 2211
    const-string v2, "UID "

    .line 2212
    .line 2213
    const-string/jumbo v3, "handle MSG_EFFECT_CLIENT_GONE uid: "

    .line 2214
    .line 2215
    .line 2216
    iget-object v4, v0, Lcom/android/server/audio/MusicFxHelper;->mClientUidMapLock:Ljava/lang/Object;

    .line 2217
    .line 2218
    monitor-enter v4

    .line 2219
    :try_start_d
    const-string v5, "AS.MusicFxHelper"

    .line 2220
    .line 2221
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2222
    .line 2223
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2224
    .line 2225
    .line 2226
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2227
    .line 2228
    .line 2229
    const-string v3, " mapSize: "

    .line 2230
    .line 2231
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    .line 2233
    .line 2234
    iget-object v3, v0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 2235
    .line 2236
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 2237
    .line 2238
    .line 2239
    move-result v3

    .line 2240
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2241
    .line 2242
    .line 2243
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v3

    .line 2247
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    .line 2249
    .line 2250
    iget-object v3, v0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 2251
    .line 2252
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v3

    .line 2256
    check-cast v3, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    .line 2257
    .line 2258
    if-eqz v3, :cond_38

    .line 2259
    .line 2260
    const-string v5, "AS.MusicFxHelper"

    .line 2261
    .line 2262
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2263
    .line 2264
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2265
    .line 2266
    .line 2267
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2268
    .line 2269
    .line 2270
    const-string v2, " gone, closing all sessions"

    .line 2271
    .line 2272
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    .line 2274
    .line 2275
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v2

    .line 2279
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    .line 2281
    .line 2282
    iget-object v2, v3, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    .line 2283
    .line 2284
    check-cast v2, Ljava/util/ArrayList;

    .line 2285
    .line 2286
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2287
    .line 2288
    .line 2289
    move-result-object v2

    .line 2290
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2291
    .line 2292
    .line 2293
    move-result v5

    .line 2294
    if-eqz v5, :cond_37

    .line 2295
    .line 2296
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2297
    .line 2298
    .line 2299
    move-result-object v5

    .line 2300
    check-cast v5, Ljava/lang/Integer;

    .line 2301
    .line 2302
    new-instance v6, Landroid/content/Intent;

    .line 2303
    .line 2304
    const-string v7, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 2305
    .line 2306
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2307
    .line 2308
    .line 2309
    const-string v7, "android.media.extra.PACKAGE_NAME"

    .line 2310
    .line 2311
    iget-object v8, v3, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    .line 2312
    .line 2313
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2314
    .line 2315
    .line 2316
    const-string v7, "android.media.extra.AUDIO_SESSION"

    .line 2317
    .line 2318
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2319
    .line 2320
    .line 2321
    const/16 v5, 0x20

    .line 2322
    .line 2323
    invoke-virtual {v6, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2324
    .line 2325
    .line 2326
    const-string/jumbo v5, "com.android.musicfx"

    .line 2327
    .line 2328
    .line 2329
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2330
    .line 2331
    .line 2332
    iget-object v5, v0, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    .line 2333
    .line 2334
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2335
    .line 2336
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2337
    .line 2338
    .line 2339
    goto :goto_1a

    .line 2340
    :catchall_6
    move-exception v0

    .line 2341
    goto :goto_1b

    .line 2342
    :cond_37
    iget-object v0, v0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 2343
    .line 2344
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->remove(I)V

    .line 2345
    .line 2346
    .line 2347
    :cond_38
    monitor-exit v4

    .line 2348
    goto/16 :goto_1c

    .line 2349
    .line 2350
    :goto_1b
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 2351
    throw v0

    .line 2352
    :cond_39
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2353
    .line 2354
    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 2355
    .line 2356
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 2357
    .line 2358
    .line 2359
    goto/16 :goto_1c

    .line 2360
    .line 2361
    :cond_3a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2362
    .line 2363
    check-cast v2, Ljava/lang/String;

    .line 2364
    .line 2365
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 2366
    .line 2367
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 2368
    .line 2369
    new-instance v4, Landroid/media/MediaMetrics$Item;

    .line 2370
    .line 2371
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2372
    .line 2373
    const-string/jumbo v6, "audio.forceUse."

    .line 2374
    .line 2375
    .line 2376
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2377
    .line 2378
    .line 2379
    invoke-static {v3}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v6

    .line 2383
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    .line 2385
    .line 2386
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2387
    .line 2388
    .line 2389
    move-result-object v5

    .line 2390
    invoke-direct {v4, v5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 2391
    .line 2392
    .line 2393
    sget-object v5, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 2394
    .line 2395
    const-string/jumbo v6, "setForceUse"

    .line 2396
    .line 2397
    .line 2398
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v4

    .line 2402
    sget-object v5, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 2403
    .line 2404
    invoke-virtual {v4, v5, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 2405
    .line 2406
    .line 2407
    move-result-object v4

    .line 2408
    sget-object v5, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 2409
    .line 2410
    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v6

    .line 2414
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 2415
    .line 2416
    .line 2417
    move-result-object v4

    .line 2418
    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2419
    .line 2420
    .line 2421
    sget-object v4, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/utils/EventLogger;

    .line 2422
    .line 2423
    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    .line 2424
    .line 2425
    invoke-direct {v5, v3, v1, v2}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    .line 2426
    .line 2427
    .line 2428
    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2429
    .line 2430
    .line 2431
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2432
    .line 2433
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 2434
    .line 2435
    invoke-virtual {v0, v3, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)V

    .line 2436
    .line 2437
    .line 2438
    goto :goto_1c

    .line 2439
    :cond_3b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2440
    .line 2441
    check-cast v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 2442
    .line 2443
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2444
    .line 2445
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSystemReady(Lcom/android/server/audio/AudioService;)Z

    .line 2446
    .line 2447
    .line 2448
    move-result v2

    .line 2449
    if-eqz v2, :cond_3c

    .line 2450
    .line 2451
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2452
    .line 2453
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    .line 2454
    .line 2455
    invoke-virtual {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundEffects(Lcom/android/server/audio/AudioService$LoadSoundEffectReply;)V

    .line 2456
    .line 2457
    .line 2458
    goto :goto_1c

    .line 2459
    :cond_3c
    const-string v0, "AS.AudioService"

    .line 2460
    .line 2461
    const-string v2, "[schedule]loadSoundEffects() called before boot complete"

    .line 2462
    .line 2463
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    .line 2465
    .line 2466
    if-eqz v1, :cond_43

    .line 2467
    .line 2468
    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->run(Z)V

    .line 2469
    .line 2470
    .line 2471
    goto :goto_1c

    .line 2472
    :cond_3d
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2473
    .line 2474
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    .line 2475
    .line 2476
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 2477
    .line 2478
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 2479
    .line 2480
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/SoundEffectsHelper;->playSoundEffect(II)V

    .line 2481
    .line 2482
    .line 2483
    goto :goto_1c

    .line 2484
    :cond_3e
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2485
    .line 2486
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    .line 2487
    .line 2488
    .line 2489
    goto :goto_1c

    .line 2490
    :cond_3f
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2491
    .line 2492
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    .line 2493
    .line 2494
    .line 2495
    move-result v1

    .line 2496
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 2497
    .line 2498
    .line 2499
    goto :goto_1c

    .line 2500
    :cond_40
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2501
    .line 2502
    check-cast v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 2503
    .line 2504
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2505
    .line 2506
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->-$$Nest$mpersistVolumeGroup(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V

    .line 2507
    .line 2508
    .line 2509
    goto :goto_1c

    .line 2510
    :cond_41
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2511
    .line 2512
    check-cast v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 2513
    .line 2514
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2515
    .line 2516
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 2517
    .line 2518
    .line 2519
    goto :goto_1c

    .line 2520
    :cond_42
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2521
    .line 2522
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2523
    .line 2524
    check-cast v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 2525
    .line 2526
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2527
    .line 2528
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 2529
    .line 2530
    .line 2531
    :catch_4
    :cond_43
    :goto_1c
    return-void

    .line 2532
    nop

    .line 2533
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    .line 2534
    .line 2535
    .line 2536
    .line 2537
    .line 2538
    .line 2539
    .line 2540
    .line 2541
    .line 2542
    .line 2543
    .line 2544
    .line 2545
    .line 2546
    .line 2547
    .line 2548
    .line 2549
    .line 2550
    .line 2551
    .line 2552
    .line 2553
    .line 2554
    .line 2555
    .line 2556
    .line 2557
    .line 2558
    .line 2559
    .line 2560
    .line 2561
    .line 2562
    .line 2563
    .line 2564
    .line 2565
    .line 2566
    .line 2567
    .line 2568
    .line 2569
    .line 2570
    .line 2571
    .line 2572
    .line 2573
    .line 2574
    .line 2575
    .line 2576
    .line 2577
    .line 2578
    .line 2579
    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    .line 2580
    .line 2581
    .line 2582
    .line 2583
    .line 2584
    .line 2585
    .line 2586
    .line 2587
    .line 2588
    .line 2589
    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 2590
    .line 2591
    .line 2592
    .line 2593
    .line 2594
    .line 2595
    .line 2596
    .line 2597
    .line 2598
    .line 2599
    .line 2600
    .line 2601
    .line 2602
    .line 2603
    .line 2604
    .line 2605
    .line 2606
    .line 2607
    .line 2608
    .line 2609
    .line 2610
    .line 2611
    :pswitch_data_3
    .packed-switch 0x64
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 2612
    .line 2613
    .line 2614
    .line 2615
    .line 2616
    .line 2617
    .line 2618
    .line 2619
    .line 2620
    .line 2621
    .line 2622
    .line 2623
    :pswitch_data_4
    .packed-switch 0x3e9
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 2624
    .line 2625
    .line 2626
    .line 2627
    .line 2628
    .line 2629
    .line 2630
    .line 2631
    .line 2632
    .line 2633
    .line 2634
    .line 2635
    .line 2636
    .line 2637
    .line 2638
    .line 2639
    .line 2640
    .line 2641
    :pswitch_data_5
    .packed-switch 0xac7
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final persistRingerMode(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "mode_ringer"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 19
    .line 20
    const/4 v2, 0x7

    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget-object v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_6

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    iget v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 40
    .line 41
    if-ne v3, v2, :cond_5

    .line 42
    .line 43
    sget-object v2, Lcom/samsung/android/server/audio/utils/AudioUtils;->DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x2

    .line 50
    if-ne p2, v2, :cond_3

    .line 51
    .line 52
    const-string/jumbo v2, "persist.audio.sysvolume"

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    const/4 v2, 0x4

    .line 66
    if-ne p2, v2, :cond_4

    .line 67
    .line 68
    const-string/jumbo v2, "persist.audio.headsetsysvolume"

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/16 v2, 0x8

    .line 76
    .line 77
    if-ne p2, v2, :cond_5

    .line 78
    .line 79
    const-string/jumbo v2, "persist.audio.hphonesysvolume"

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_0
    new-instance v1, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p2, v3, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mapplyDeviceAlias(Lcom/android/server/audio/AudioService;IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V

    .line 91
    .line 92
    .line 93
    iget-object p0, v0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const/4 p0, -0x2

    .line 109
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 110
    .line 111
    .line 112
    :cond_6
    return-void
.end method

.method public final setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 17
    .line 18
    aget v2, v2, v0

    .line 19
    .line 20
    if-ne v2, v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 25
    .line 26
    aget-object v1, v1, v0

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method
