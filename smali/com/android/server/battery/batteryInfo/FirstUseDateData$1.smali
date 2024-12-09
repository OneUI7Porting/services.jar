.class public final Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

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
    .locals 13

    .line 1
    const-string v0, "/data/log/battery_service/battery_service_main_history"

    .line 2
    .line 3
    const-string v1, "[SS]BattUtils"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget v5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->$r8$classId:I

    .line 9
    .line 10
    packed-switch v5, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 16
    .line 17
    iget-object v5, v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 18
    .line 19
    invoke-virtual {v5}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iput-object v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 24
    .line 25
    move v6, v3

    .line 26
    :goto_0
    iget v7, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 27
    .line 28
    iget-object v8, v5, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v9, v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 31
    .line 32
    if-ge v6, v7, :cond_4

    .line 33
    .line 34
    aget-boolean v7, v9, v6

    .line 35
    .line 36
    if-nez v7, :cond_0

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    iget-object v7, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v7, [Ljava/lang/String;

    .line 43
    .line 44
    aget-object v7, v7, v6

    .line 45
    .line 46
    sget-object v10, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    sget-object v11, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 53
    .line 54
    invoke-static {v10, v11}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    .line 55
    .line 56
    .line 57
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception v10

    .line 60
    const-string v11, "[convertDateStringToLocalDate]Exception"

    .line 61
    .line 62
    invoke-static {v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    move-object v10, v2

    .line 69
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v12, "[convertDateStringToLocalDate]dateString:"

    .line 72
    .line 73
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v7, " -> date"

    .line 80
    .line 81
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    if-nez v10, :cond_1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_1
    const-wide/16 v11, 0xe

    .line 98
    .line 99
    invoke-virtual {v10, v11, v12}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v12, "[checkFaiExpired]batteryIndex:"

    .line 110
    .line 111
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v12, " ,currentDate:"

    .line 118
    .line 119
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v12, " ,thresholdDate:"

    .line 126
    .line 127
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v7}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_2

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    iget-object v7, v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Ljava/lang/String;

    .line 154
    .line 155
    const-string v10, "1"

    .line 156
    .line 157
    invoke-static {v7, v10}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-eqz v7, :cond_3

    .line 162
    .line 163
    const-string v7, "[checkFaiExpired]FaiExpired Write Success"

    .line 164
    .line 165
    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    aput-boolean v3, v9, v6

    .line 169
    .line 170
    :cond_3
    :goto_2
    add-int/2addr v6, v4

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v6, "[checkFaiExpired]shouldCheckFaiExpireds:"

    .line 176
    .line 177
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string/jumbo v6, "shouldCheckFaiExpireds:"

    .line 197
    .line 198
    .line 199
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const-string/jumbo v6, "checkFaiExpired"

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v6, v1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    array-length v0, v9

    .line 220
    invoke-static {v3, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;

    .line 225
    .line 226
    invoke-direct {v1, v5, v4}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    xor-int/2addr v0, v4

    .line 234
    if-eqz v0, :cond_5

    .line 235
    .line 236
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 239
    .line 240
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 241
    .line 242
    iget-object v1, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 243
    .line 244
    if-eqz v1, :cond_5

    .line 245
    .line 246
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 254
    .line 255
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 256
    .line 257
    iput-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 258
    .line 259
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 260
    .line 261
    const-string v0, "[DateChangedReceiver_Handler]disable dateChangedReceiver"

    .line 262
    .line 263
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    :cond_5
    return-void

    .line 267
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 270
    .line 271
    const-string v6, ""

    .line 272
    .line 273
    iget-object v7, v5, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 274
    .line 275
    const-string v8, "[updateDate]"

    .line 276
    .line 277
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    :try_start_1
    iget-object v8, v5, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    const-string/jumbo v9, "device_provisioned"

    .line 287
    .line 288
    .line 289
    invoke-static {v8, v9, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 290
    .line 291
    .line 292
    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    if-ne v8, v4, :cond_6

    .line 294
    .line 295
    move v8, v4

    .line 296
    goto :goto_3

    .line 297
    :catch_1
    move-exception v8

    .line 298
    const-string v9, "[isSetupWizardCompleted]Exception"

    .line 299
    .line 300
    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    .line 305
    .line 306
    :cond_6
    move v8, v3

    .line 307
    :goto_3
    const-string v9, "[isSetupWizardCompleted]result:"

    .line 308
    .line 309
    invoke-static {v9, v7, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 310
    .line 311
    .line 312
    if-nez v8, :cond_7

    .line 313
    .line 314
    goto/16 :goto_c

    .line 315
    .line 316
    :cond_7
    :try_start_2
    const-string/jumbo v8, "persist.sys.setupwizard.user_setup_complete"

    .line 317
    .line 318
    .line 319
    invoke-static {v8, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 320
    .line 321
    .line 322
    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 323
    goto :goto_4

    .line 324
    :catch_2
    move-exception v8

    .line 325
    const-string v9, "[isSetupWizardCompletedByUser]Exception"

    .line 326
    .line 327
    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    .line 332
    .line 333
    move v8, v3

    .line 334
    :goto_4
    const-string v9, "[isSetupWizardCompletedByUser]result:"

    .line 335
    .line 336
    invoke-static {v9, v7, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 337
    .line 338
    .line 339
    if-nez v8, :cond_8

    .line 340
    .line 341
    goto/16 :goto_c

    .line 342
    .line 343
    :cond_8
    :try_start_3
    const-string/jumbo v8, "persist.sys.setupwizard.jig_on_wifisetup"

    .line 344
    .line 345
    .line 346
    invoke-static {v8, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 347
    .line 348
    .line 349
    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 350
    if-ne v8, v4, :cond_9

    .line 351
    .line 352
    move v8, v4

    .line 353
    goto :goto_5

    .line 354
    :catch_3
    move-exception v8

    .line 355
    const-string v9, "[isSetupWizardSkipWifi]Exception"

    .line 356
    .line 357
    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    .line 362
    .line 363
    :cond_9
    move v8, v3

    .line 364
    :goto_5
    const-string v9, "[isSetupWizardSkipWifi]result:"

    .line 365
    .line 366
    invoke-static {v9, v7, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 367
    .line 368
    .line 369
    if-eqz v8, :cond_a

    .line 370
    .line 371
    goto/16 :goto_c

    .line 372
    .line 373
    :cond_a
    sget-object v8, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 374
    .line 375
    const-string v8, "[getCurrentNetworkDateStr]networkTimeMillis:"

    .line 376
    .line 377
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeMillis()J

    .line 378
    .line 379
    .line 380
    move-result-wide v9

    .line 381
    invoke-static {v9, v10}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 382
    .line 383
    .line 384
    move-result-object v11

    .line 385
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 386
    .line 387
    .line 388
    move-result-object v12

    .line 389
    invoke-virtual {v11, v12}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    invoke-virtual {v11}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    .line 394
    .line 395
    .line 396
    move-result-object v11

    .line 397
    new-instance v12, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v8, " -> dateTime"

    .line 406
    .line 407
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    invoke-static {v1, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    sget-object v8, Lcom/android/server/battery/BattUtils;->FORMATTER_yyyyMMdd:Ljava/time/format/DateTimeFormatter;

    .line 421
    .line 422
    invoke-virtual {v11, v8}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 426
    goto :goto_6

    .line 427
    :catch_4
    move-exception v8

    .line 428
    const-string v9, "[getCurrentNetworkDateStr]Exception(cannot get network time)"

    .line 429
    .line 430
    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    .line 435
    .line 436
    move-object v1, v6

    .line 437
    :goto_6
    const-string v8, "[updateDate]strCurrentDate:"

    .line 438
    .line 439
    invoke-static {v8, v1, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    if-eqz v1, :cond_14

    .line 443
    .line 444
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 445
    .line 446
    .line 447
    move-result v8

    .line 448
    const/16 v9, 0x8

    .line 449
    .line 450
    if-eq v8, v9, :cond_b

    .line 451
    .line 452
    goto/16 :goto_c

    .line 453
    .line 454
    :cond_b
    const-string/jumbo v8, "ril.rfcal_date"

    .line 455
    .line 456
    .line 457
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    if-eqz v8, :cond_c

    .line 462
    .line 463
    const-string v10, "."

    .line 464
    .line 465
    invoke-virtual {v8, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    :cond_c
    const-string/jumbo v6, "ril.manufacturedate"

    .line 470
    .line 471
    .line 472
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    const-string v10, "[updateDate]strRfCalDate:"

    .line 477
    .line 478
    const-string v11, " ,strManufactureDate:"

    .line 479
    .line 480
    invoke-static {v10, v8, v11, v6, v7}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    if-eqz v8, :cond_d

    .line 484
    .line 485
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 486
    .line 487
    .line 488
    move-result v10

    .line 489
    if-ne v10, v9, :cond_d

    .line 490
    .line 491
    goto :goto_7

    .line 492
    :cond_d
    if-eqz v6, :cond_13

    .line 493
    .line 494
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 495
    .line 496
    .line 497
    move-result v8

    .line 498
    if-ne v8, v9, :cond_13

    .line 499
    .line 500
    move-object v8, v6

    .line 501
    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    move-result v6

    .line 509
    const-string v8, "[updateDate]currentDateInt:"

    .line 510
    .line 511
    const-string v9, " ,refDate:"

    .line 512
    .line 513
    invoke-static {v1, v6, v8, v9, v7}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    if-le v6, v1, :cond_e

    .line 517
    .line 518
    goto/16 :goto_c

    .line 519
    .line 520
    :cond_e
    invoke-virtual {v5}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v6

    .line 524
    iput-object v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 525
    .line 526
    :goto_8
    iget v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 527
    .line 528
    if-ge v3, v6, :cond_12

    .line 529
    .line 530
    iget-object v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 531
    .line 532
    check-cast v6, [Ljava/lang/String;

    .line 533
    .line 534
    aget-object v6, v6, v3

    .line 535
    .line 536
    invoke-static {v6}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->isValidDate(Ljava/lang/String;)Z

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    if-eqz v6, :cond_f

    .line 541
    .line 542
    goto :goto_b

    .line 543
    :cond_f
    :try_start_5
    iget-object v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 544
    .line 545
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v6

    .line 549
    check-cast v6, Ljava/lang/String;

    .line 550
    .line 551
    int-to-long v8, v1

    .line 552
    invoke-static {v8, v9, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 553
    .line 554
    .line 555
    iget-object v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 558
    .line 559
    .line 560
    move-result v6

    .line 561
    if-nez v6, :cond_11

    .line 562
    .line 563
    iget-object v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 564
    .line 565
    aget-boolean v6, v6, v3

    .line 566
    .line 567
    if-eqz v6, :cond_10

    .line 568
    .line 569
    iget-object v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 570
    .line 571
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v6

    .line 575
    check-cast v6, Ljava/lang/String;

    .line 576
    .line 577
    invoke-static {v8, v9, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 578
    .line 579
    .line 580
    goto :goto_9

    .line 581
    :catch_5
    move-exception v6

    .line 582
    goto :goto_a

    .line 583
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .line 587
    .line 588
    const-string v8, "[updateDate]Authentification false => skip writing firstusedate_"

    .line 589
    .line 590
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v6

    .line 600
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    :cond_11
    :goto_9
    iget-object v6, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 604
    .line 605
    check-cast v6, [Ljava/lang/String;

    .line 606
    .line 607
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v8

    .line 611
    aput-object v8, v6, v3

    .line 612
    .line 613
    new-instance v6, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    const-string v8, "[updateDate]write FirstUseDate:"

    .line 619
    .line 620
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 631
    .line 632
    .line 633
    goto :goto_b

    .line 634
    :goto_a
    const-string v8, "NumberFormatException"

    .line 635
    .line 636
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .line 638
    .line 639
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 640
    .line 641
    .line 642
    :goto_b
    add-int/2addr v3, v4

    .line 643
    goto :goto_8

    .line 644
    :cond_12
    const/16 v1, 0x3e8

    .line 645
    .line 646
    invoke-virtual {v5, v1}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 647
    .line 648
    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    const-string v3, "[updateDate]mCurrentValues:"

    .line 652
    .line 653
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    iget-object v3, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 657
    .line 658
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    const-string/jumbo v3, "mCurrentValues:"

    .line 675
    .line 676
    .line 677
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    iget-object v3, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 681
    .line 682
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    const-string v3, "BatteryFirstUseDate"

    .line 694
    .line 695
    invoke-static {v0, v3, v1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    iget-object v0, v5, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 699
    .line 700
    check-cast v0, [Ljava/lang/String;

    .line 701
    .line 702
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;

    .line 707
    .line 708
    invoke-direct {v1, v5, v4}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 709
    .line 710
    .line 711
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    goto :goto_c

    .line 716
    :cond_13
    const-string v0, "[updateDate]fail - no date for compare"

    .line 717
    .line 718
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    .line 720
    .line 721
    :cond_14
    :goto_c
    if-eqz v3, :cond_16

    .line 722
    .line 723
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 726
    .line 727
    iget-object v1, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 728
    .line 729
    if-eqz v1, :cond_15

    .line 730
    .line 731
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 732
    .line 733
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 734
    .line 735
    .line 736
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 737
    .line 738
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 739
    .line 740
    iput-object v2, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 741
    .line 742
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 743
    .line 744
    const-string v1, "[updateDateRunnable]disable writeFirstUseDateReceiver"

    .line 745
    .line 746
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    .line 748
    .line 749
    :cond_15
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 750
    .line 751
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 752
    .line 753
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 754
    .line 755
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 756
    .line 757
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 758
    .line 759
    .line 760
    goto :goto_d

    .line 761
    :cond_16
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 762
    .line 763
    check-cast v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 764
    .line 765
    iget-object v1, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 766
    .line 767
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 768
    .line 769
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 770
    .line 771
    .line 772
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;->this$0:Ljava/lang/Object;

    .line 773
    .line 774
    check-cast p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 775
    .line 776
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 777
    .line 778
    const-wide/32 v1, 0xafc8

    .line 779
    .line 780
    .line 781
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 782
    .line 783
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 784
    .line 785
    .line 786
    :goto_d
    return-void

    .line 787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
