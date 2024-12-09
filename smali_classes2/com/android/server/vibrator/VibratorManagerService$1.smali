.class public final Lcom/android/server/vibrator/VibratorManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

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
    .locals 13

    .line 1
    iget p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->$r8$classId:I

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
    const-string v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 21
    .line 22
    if-nez p1, :cond_d

    .line 23
    .line 24
    new-instance p1, Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v0, "VibratorService"

    .line 29
    .line 30
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const-string v1, "com.sec.media.action.VIBRTOR_LOGGING"

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 49
    .line 50
    iget-object p2, p1, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    new-instance v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "HqmManagerService"

    .line 62
    .line 63
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/os/SemHqmManager;

    .line 68
    .line 69
    iput-object v3, v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 70
    .line 71
    const-string v3, "alarm"

    .line 72
    .line 73
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Landroid/app/AlarmManager;

    .line 78
    .line 79
    iput-object p2, v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 80
    .line 81
    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 82
    .line 83
    :cond_1
    sget-object p2, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 84
    .line 85
    iput-object p2, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance p2, Landroid/content/Intent;

    .line 97
    .line 98
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/high16 v0, 0x4000000

    .line 102
    .line 103
    invoke-static {p0, v2, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    iget-object v3, p1, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 108
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 110
    .line 111
    .line 112
    move-result-wide p0

    .line 113
    const-wide/32 v0, 0x5265c00

    .line 114
    .line 115
    .line 116
    add-long v5, p0, v0

    .line 117
    .line 118
    const-wide/32 v7, 0x5265c00

    .line 119
    .line 120
    .line 121
    const/4 v4, 0x3

    .line 122
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_6

    .line 126
    .line 127
    :cond_2
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_7

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_3
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/4 v1, 0x2

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 153
    .line 154
    const/4 v0, -0x1

    .line 155
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 160
    .line 161
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    const/4 v0, 0x3

    .line 166
    if-ne p1, v0, :cond_d

    .line 167
    .line 168
    and-int/lit8 p1, p2, 0x2

    .line 169
    .line 170
    if-nez p1, :cond_d

    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 175
    .line 176
    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;

    .line 177
    .line 178
    const-string v0, "Detected device changed"

    .line 179
    .line 180
    invoke-direct {p2, p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VibratorManagerService$1;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_4
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 189
    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_5

    .line 195
    .line 196
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 197
    .line 198
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 199
    .line 200
    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;

    .line 201
    .line 202
    const-string v0, "headset plug"

    .line 203
    .line 204
    invoke-direct {p2, p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VibratorManagerService$1;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    .line 209
    .line 210
    goto/16 :goto_6

    .line 211
    .line 212
    :cond_5
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 213
    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_6

    .line 219
    .line 220
    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 221
    .line 222
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-ne p1, v1, :cond_d

    .line 227
    .line 228
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 229
    .line 230
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 231
    .line 232
    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;

    .line 233
    .line 234
    const-string v0, "a2dp device connected"

    .line 235
    .line 236
    invoke-direct {p2, p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VibratorManagerService$1;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    .line 241
    .line 242
    goto/16 :goto_6

    .line 243
    .line 244
    :cond_6
    const-string p2, "com.android.launcher3.quickstep.closeall"

    .line 245
    .line 246
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eqz p1, :cond_d

    .line 251
    .line 252
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 253
    .line 254
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 255
    .line 256
    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 257
    .line 258
    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService$1;)V

    .line 259
    .line 260
    .line 261
    const-wide/16 v0, 0x1f4

    .line 262
    .line 263
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    .line 265
    .line 266
    goto/16 :goto_6

    .line 267
    .line 268
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 269
    .line 270
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 271
    .line 272
    if-eqz p1, :cond_d

    .line 273
    .line 274
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    .line 275
    .line 276
    new-instance v0, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .line 280
    .line 281
    new-instance v1, Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .line 285
    .line 286
    move v3, v2

    .line 287
    :goto_1
    const/4 v4, 0x5

    .line 288
    if-ge v3, v4, :cond_9

    .line 289
    .line 290
    sget-object v4, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    .line 291
    .line 292
    aget-object v5, v4, v3

    .line 293
    .line 294
    iget-object v6, p2, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    .line 295
    .line 296
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    check-cast v5, Ljava/lang/Integer;

    .line 305
    .line 306
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    if-eqz v5, :cond_8

    .line 315
    .line 316
    aget-object v4, v4, v3

    .line 317
    .line 318
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 325
    .line 326
    goto :goto_1

    .line 327
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 328
    .line 329
    .line 330
    move-result p2

    .line 331
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 332
    .line 333
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 334
    .line 335
    .line 336
    move v4, v2

    .line 337
    :goto_2
    if-ge v4, p2, :cond_a

    .line 338
    .line 339
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    check-cast v5, Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .line 351
    .line 352
    add-int/lit8 v4, v4, 0x1

    .line 353
    .line 354
    goto :goto_2

    .line 355
    :catch_0
    move-exception p2

    .line 356
    goto :goto_3

    .line 357
    :cond_a
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    goto :goto_4

    .line 362
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 363
    .line 364
    .line 365
    const/4 p2, 0x0

    .line 366
    :goto_4
    if-nez p2, :cond_b

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_b
    const-string v0, "\\{"

    .line 370
    .line 371
    const-string v1, ""

    .line 372
    .line 373
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p2

    .line 377
    const-string v0, "\\}"

    .line 378
    .line 379
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v11

    .line 383
    iget-object p2, p1, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 384
    .line 385
    if-eqz p2, :cond_c

    .line 386
    .line 387
    const-string p2, "VibratorHqmHelper"

    .line 388
    .line 389
    const-string/jumbo v0, "sendLoggingDataToHQM() Server update !!!"

    .line 390
    .line 391
    .line 392
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    iget-object v3, p1, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 396
    .line 397
    const-string v8, "0.0"

    .line 398
    .line 399
    const-string/jumbo v9, "sec"

    .line 400
    .line 401
    .line 402
    const/4 v4, 0x0

    .line 403
    const-string v5, "Audio"

    .line 404
    .line 405
    const-string v6, "VIBE"

    .line 406
    .line 407
    const-string/jumbo v7, "sm"

    .line 408
    .line 409
    .line 410
    const-string v10, ""

    .line 411
    .line 412
    const-string v12, ""

    .line 413
    .line 414
    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    .line 416
    .line 417
    :cond_c
    :goto_5
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    .line 418
    .line 419
    iput v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    .line 420
    .line 421
    iput v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    .line 422
    .line 423
    iput v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    .line 424
    .line 425
    iput v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    .line 426
    .line 427
    iput v2, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    .line 428
    .line 429
    :cond_d
    :goto_6
    return-void

    .line 430
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 435
    .line 436
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    if-eqz p1, :cond_14

    .line 441
    .line 442
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 443
    .line 444
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 445
    .line 446
    monitor-enter p1

    .line 447
    :try_start_1
    const-string/jumbo v0, "reason"

    .line 448
    .line 449
    .line 450
    const/4 v1, -0x1

    .line 451
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 452
    .line 453
    .line 454
    move-result p2

    .line 455
    const/16 v0, 0x13

    .line 456
    .line 457
    if-ne p2, v0, :cond_e

    .line 458
    .line 459
    const-string p0, "VibratorManagerService"

    .line 460
    .line 461
    const-string p2, "Keep screen turned off"

    .line 462
    .line 463
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    monitor-exit p1

    .line 467
    goto/16 :goto_9

    .line 468
    .line 469
    :catchall_0
    move-exception p0

    .line 470
    goto/16 :goto_8

    .line 471
    .line 472
    :cond_e
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 473
    .line 474
    iget-object p2, p2, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 475
    .line 476
    const/4 v0, 0x0

    .line 477
    if-eqz p2, :cond_10

    .line 478
    .line 479
    iget-object p2, p2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 480
    .line 481
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 482
    .line 483
    iget-object v1, p2, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 484
    .line 485
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 486
    .line 487
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 488
    .line 489
    .line 490
    move-result p2

    .line 491
    const/16 v2, 0x21

    .line 492
    .line 493
    const/4 v3, 0x1

    .line 494
    if-ne p2, v2, :cond_f

    .line 495
    .line 496
    move p2, v3

    .line 497
    goto :goto_7

    .line 498
    :cond_f
    move p2, v0

    .line 499
    :goto_7
    const-string v2, "com.android.server.telecom"

    .line 500
    .line 501
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-eqz v2, :cond_10

    .line 506
    .line 507
    if-eqz p2, :cond_10

    .line 508
    .line 509
    const-string p2, "ignore cancelling current vibration: "

    .line 510
    .line 511
    const-string v0, "VibratorManagerService"

    .line 512
    .line 513
    invoke-static {p2, v1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    move v0, v3

    .line 517
    :cond_10
    if-eqz v0, :cond_11

    .line 518
    .line 519
    monitor-exit p1

    .line 520
    goto :goto_9

    .line 521
    :cond_11
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 522
    .line 523
    iget-object v0, p2, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 524
    .line 525
    invoke-static {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Z

    .line 526
    .line 527
    .line 528
    move-result p2

    .line 529
    const/4 v0, 0x0

    .line 530
    if-eqz p2, :cond_12

    .line 531
    .line 532
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 533
    .line 534
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 535
    .line 536
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

    .line 537
    .line 538
    invoke-direct {v1, v2, v0}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 542
    .line 543
    .line 544
    :cond_12
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 545
    .line 546
    iget-object v1, p2, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 547
    .line 548
    invoke-static {p2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Z

    .line 549
    .line 550
    .line 551
    move-result p2

    .line 552
    if-eqz p2, :cond_13

    .line 553
    .line 554
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 555
    .line 556
    iget-object p2, p2, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 557
    .line 558
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 559
    .line 560
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

    .line 561
    .line 562
    invoke-direct {v1, v2, v0}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 563
    .line 564
    .line 565
    const/4 v0, 0x0

    .line 566
    invoke-virtual {p2, v1, v0}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 567
    .line 568
    .line 569
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 570
    .line 571
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    .line 572
    .line 573
    if-eqz p0, :cond_13

    .line 574
    .line 575
    const-string p2, "cancel"

    .line 576
    .line 577
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    :cond_13
    monitor-exit p1

    .line 581
    goto :goto_9

    .line 582
    :goto_8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    throw p0

    .line 584
    :cond_14
    :goto_9
    return-void

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
