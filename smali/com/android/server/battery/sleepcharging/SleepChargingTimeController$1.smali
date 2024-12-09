.class public final Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

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
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "[sct_handleMessage]msg:"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v2, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const-string v3, "[SS]SleepChargingTimeController"

    .line 15
    .line 16
    invoke-static {v1, v2, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v0, v0, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const/16 v1, 0x1c

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    move-object/from16 v6, p0

    .line 27
    .line 28
    iget-object v6, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 29
    .line 30
    packed-switch v0, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_14

    .line 34
    .line 35
    :pswitch_0
    iput-boolean v5, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsTodaySleepChargingFinished:Z

    .line 36
    .line 37
    invoke-virtual {v6, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateNextAlarmChangedReceiver(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 43
    .line 44
    .line 45
    goto/16 :goto_14

    .line 46
    .line 47
    :pswitch_1
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 48
    .line 49
    iput-boolean v4, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 50
    .line 51
    invoke-virtual {v6, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateNextAlarmChangedReceiver(Z)V

    .line 52
    .line 53
    .line 54
    iput-object v2, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 55
    .line 56
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    .line 57
    .line 58
    const/16 v1, 0x15

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    .line 62
    .line 63
    goto/16 :goto_14

    .line 64
    .line 65
    :pswitch_2
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 66
    .line 67
    iput-boolean v5, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 68
    .line 69
    invoke-static {v6}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 74
    .line 75
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateNextAlarmChangedReceiver(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    .line 87
    .line 88
    goto/16 :goto_14

    .line 89
    .line 90
    :pswitch_3
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmChangedReceiver:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$2;

    .line 91
    .line 92
    if-nez v0, :cond_0

    .line 93
    .line 94
    const-string v0, "alarm receiver already disabled"

    .line 95
    .line 96
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto/16 :goto_14

    .line 100
    .line 101
    :cond_0
    invoke-static {v6}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 106
    .line 107
    if-nez v1, :cond_1

    .line 108
    .line 109
    if-nez v0, :cond_1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    if-eqz v1, :cond_2

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    :goto_0
    const-string v0, "The Next Alarm Not Changed"

    .line 123
    .line 124
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto/16 :goto_14

    .line 128
    .line 129
    :cond_2
    const-string v1, "The Next Alarm Changed"

    .line 130
    .line 131
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iput-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v2, "[NextAlarmChanged]"

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const/4 v1, 0x2

    .line 151
    invoke-static {v1, v0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 160
    .line 161
    const/16 v1, 0x1d

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    .line 165
    .line 166
    goto/16 :goto_14

    .line 167
    .line 168
    :pswitch_4
    invoke-virtual {v6, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->reset(Z)V

    .line 169
    .line 170
    .line 171
    iget-boolean v0, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 172
    .line 173
    if-eqz v0, :cond_3

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v1, "[sct_handleMessage]isEndCalled:"

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-boolean v1, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 183
    .line 184
    invoke-static {v3, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_3
    const-string v1, "[SS]PersonalPatternManager"

    .line 189
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 191
    .line 192
    .line 193
    move-result-wide v7

    .line 194
    iget-object v9, v6, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mPersonalPatternManager:Lcom/android/server/battery/sleepcharging/PersonalPatternManager;

    .line 195
    .line 196
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    const-string v0, "[getSleepPatterns]cursor count:"

    .line 200
    .line 201
    new-instance v10, Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 204
    .line 205
    .line 206
    new-instance v11, Landroid/os/Bundle;

    .line 207
    .line 208
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string/jumbo v12, "keyCallerPackagerName"

    .line 212
    .line 213
    .line 214
    const-string/jumbo v13, "com.android.server.BatteryService"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v12, "android:query-arg-sql-sort-order"

    .line 221
    .line 222
    const-string/jumbo v13, "week_type"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :try_start_0
    iget-object v12, v9, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    sget-object v14, Lcom/android/server/battery/sleepcharging/SleepPatternContract$SleepPatternInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 235
    .line 236
    invoke-virtual {v12, v14, v2, v11, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 237
    .line 238
    .line 239
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    if-nez v11, :cond_4

    .line 241
    .line 242
    :try_start_1
    const-string v0, "[getSleepPatterns]Fail - cursor null"

    .line 243
    .line 244
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .line 246
    .line 247
    :goto_1
    move-object/from16 v22, v6

    .line 248
    .line 249
    goto/16 :goto_8

    .line 250
    .line 251
    :catchall_0
    move-exception v0

    .line 252
    move-object v2, v0

    .line 253
    move-object/from16 v22, v6

    .line 254
    .line 255
    goto/16 :goto_9

    .line 256
    .line 257
    :cond_4
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 258
    .line 259
    .line 260
    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 261
    if-nez v12, :cond_5

    .line 262
    .line 263
    :try_start_3
    const-string v0, "[getSleepPatterns]Fail - cursor empty"

    .line 264
    .line 265
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_5
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 289
    .line 290
    .line 291
    :goto_2
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const-string/jumbo v12, "bedtime"

    .line 300
    .line 301
    .line 302
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 307
    .line 308
    .line 309
    move-result-wide v14

    .line 310
    const-string/jumbo v12, "wakeup_time"

    .line 311
    .line 312
    .line 313
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    move-result v12

    .line 317
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v4

    .line 321
    const-string/jumbo v12, "confidence"

    .line 322
    .line 323
    .line 324
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v12

    .line 328
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getFloat(I)F

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    const-string/jumbo v2, "is_confident"

    .line 333
    .line 334
    .line 335
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-lez v2, :cond_6

    .line 344
    .line 345
    const/4 v2, 0x1

    .line 346
    goto :goto_3

    .line 347
    :cond_6
    const/4 v2, 0x0

    .line 348
    :goto_3
    if-eqz v0, :cond_9

    .line 349
    .line 350
    move-object/from16 p0, v13

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 353
    .line 354
    .line 355
    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 356
    move-object/from16 v22, v6

    .line 357
    .line 358
    const/4 v6, 0x3

    .line 359
    if-lt v13, v6, :cond_7

    .line 360
    .line 361
    const-wide/16 v16, 0x0

    .line 362
    .line 363
    cmp-long v6, v14, v16

    .line 364
    .line 365
    if-ltz v6, :cond_7

    .line 366
    .line 367
    cmp-long v6, v4, v16

    .line 368
    .line 369
    if-ltz v6, :cond_7

    .line 370
    .line 371
    cmp-long v6, v14, v4

    .line 372
    .line 373
    if-eqz v6, :cond_7

    .line 374
    .line 375
    const/4 v6, 0x0

    .line 376
    cmpg-float v6, v12, v6

    .line 377
    .line 378
    if-gez v6, :cond_8

    .line 379
    .line 380
    :cond_7
    :goto_4
    move-wide/from16 v16, v14

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_8
    :try_start_5
    new-instance v6, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;

    .line 384
    .line 385
    move-wide/from16 v16, v14

    .line 386
    .line 387
    move-object v14, v6

    .line 388
    move-object v15, v0

    .line 389
    move-wide/from16 v18, v4

    .line 390
    .line 391
    move/from16 v20, v12

    .line 392
    .line 393
    move/from16 v21, v2

    .line 394
    .line 395
    invoke-direct/range {v14 .. v21}, Lcom/android/server/battery/sleepcharging/PersonalPatternManager$SleepPattern;-><init>(Ljava/lang/String;JJFZ)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v10, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    goto :goto_7

    .line 402
    :catchall_1
    move-exception v0

    .line 403
    :goto_5
    move-object v2, v0

    .line 404
    goto :goto_9

    .line 405
    :catchall_2
    move-exception v0

    .line 406
    move-object/from16 v22, v6

    .line 407
    .line 408
    goto :goto_5

    .line 409
    :cond_9
    move-object/from16 v22, v6

    .line 410
    .line 411
    move-object/from16 p0, v13

    .line 412
    .line 413
    goto :goto_4

    .line 414
    :goto_6
    const-string v6, "[getSleepPatterns]invalid values from runestone"

    .line 415
    .line 416
    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v13, "[getSleepPatterns]weekType:"

    .line 425
    .line 426
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v0, ",bedTime:"

    .line 433
    .line 434
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    move-wide/from16 v13, v16

    .line 438
    .line 439
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v0, ",wakeupTime:"

    .line 443
    .line 444
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v0, ",confidence:"

    .line 451
    .line 452
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string v0, ",isConfident:"

    .line 459
    .line 460
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    :goto_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 474
    .line 475
    .line 476
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 477
    if-nez v0, :cond_a

    .line 478
    .line 479
    :goto_8
    if-eqz v11, :cond_c

    .line 480
    .line 481
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 482
    .line 483
    .line 484
    goto :goto_c

    .line 485
    :catch_0
    move-exception v0

    .line 486
    goto :goto_b

    .line 487
    :cond_a
    move-object/from16 v13, p0

    .line 488
    .line 489
    move-object/from16 v6, v22

    .line 490
    .line 491
    const/4 v2, 0x0

    .line 492
    const/4 v4, 0x0

    .line 493
    const/4 v5, 0x1

    .line 494
    goto/16 :goto_2

    .line 495
    .line 496
    :goto_9
    if-eqz v11, :cond_b

    .line 497
    .line 498
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 499
    .line 500
    .line 501
    goto :goto_a

    .line 502
    :catchall_3
    move-exception v0

    .line 503
    move-object v4, v0

    .line 504
    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 505
    .line 506
    .line 507
    :cond_b
    :goto_a
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 508
    :catch_1
    move-exception v0

    .line 509
    move-object/from16 v22, v6

    .line 510
    .line 511
    :goto_b
    const-string v2, "[getSleepPatterns]Exception"

    .line 512
    .line 513
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    .line 518
    .line 519
    :cond_c
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    const-string v2, "[getSleepPatterns]sleepPatterns size:"

    .line 522
    .line 523
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 541
    .line 542
    .line 543
    move-result-wide v4

    .line 544
    sub-long/2addr v4, v7

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    const-string v2, "[getSleepPatterns]elapseMillis:"

    .line 548
    .line 549
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    if-eqz v0, :cond_e

    .line 567
    .line 568
    const-string v0, "[getSleepPatterns]Fail"

    .line 569
    .line 570
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    const-string/jumbo v0, "currentRubinState:"

    .line 574
    .line 575
    .line 576
    :try_start_9
    iget-object v2, v9, Lcom/android/server/battery/sleepcharging/PersonalPatternManager;->mContext:Landroid/content/Context;

    .line 577
    .line 578
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    sget-object v4, Lcom/android/server/battery/sleepcharging/RunestoneStateContract;->CONTENT_URI:Landroid/net/Uri;

    .line 583
    .line 584
    const-string/jumbo v5, "getRubinState"

    .line 585
    .line 586
    .line 587
    const-string v6, "android_com.android.server.BatteryService"

    .line 588
    .line 589
    const/4 v7, 0x0

    .line 590
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    if-eqz v2, :cond_d

    .line 595
    .line 596
    const-string/jumbo v4, "isDeviceRubinSupported"

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    const-string/jumbo v5, "isDeviceRubinWorkable"

    .line 604
    .line 605
    .line 606
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    const-string/jumbo v6, "isEnabledInSupportedApps"

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 614
    .line 615
    .line 616
    move-result v6

    .line 617
    const-string/jumbo v7, "currentRubinState"

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    new-instance v7, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    const-string v0, " ,isDeviceRubinSupported:"

    .line 633
    .line 634
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    const-string v0, " ,isDeviceRubinWorkable:"

    .line 641
    .line 642
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    const-string v0, " ,isEnabledInSupportedApps:"

    .line 649
    .line 650
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    goto :goto_e

    .line 661
    :catch_2
    move-exception v0

    .line 662
    goto :goto_d

    .line 663
    :cond_d
    const-string/jumbo v0, "bundle null"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 664
    .line 665
    .line 666
    goto :goto_e

    .line 667
    :goto_d
    const-string v2, "[queryRunestoneStatus]Exception"

    .line 668
    .line 669
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    :goto_e
    const-string v2, "[queryRunestoneStatus]"

    .line 680
    .line 681
    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    const-string v1, "/data/log/battery_service/sleep_charging_history"

    .line 685
    .line 686
    const-string v2, "RunestoneStatus"

    .line 687
    .line 688
    invoke-static {v1, v2, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    :goto_f
    move-object/from16 v1, v22

    .line 692
    .line 693
    goto :goto_10

    .line 694
    :cond_e
    const-string v0, "[getSleepPatterns]Success"

    .line 695
    .line 696
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    goto :goto_f

    .line 700
    :goto_10
    iput-object v10, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepPatterns:Ljava/util/Map;

    .line 701
    .line 702
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    if-eqz v0, :cond_f

    .line 707
    .line 708
    const/4 v2, 0x0

    .line 709
    iput-object v2, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 710
    .line 711
    goto :goto_11

    .line 712
    :cond_f
    const/4 v2, 0x1

    .line 713
    invoke-virtual {v1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateDeviceTimeChangedReceiver(Z)V

    .line 714
    .line 715
    .line 716
    invoke-static {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetSleepChargingStatus(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    iput-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 721
    .line 722
    :goto_11
    iget-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 723
    .line 724
    if-eqz v0, :cond_12

    .line 725
    .line 726
    iget-boolean v2, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isConfident:Z

    .line 727
    .line 728
    if-eqz v2, :cond_11

    .line 729
    .line 730
    iget-boolean v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->isNowSessionTime:Z

    .line 731
    .line 732
    if-eqz v0, :cond_10

    .line 733
    .line 734
    invoke-static {v1}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->-$$Nest$mgetNextAlarmDateTimeWithinSleepTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)Ljava/time/LocalDateTime;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    iput-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mNextAlarmDateTimeWithinSleepTime:Ljava/time/LocalDateTime;

    .line 739
    .line 740
    iget-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mSleepChargingStatus:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;

    .line 741
    .line 742
    invoke-static {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;->-$$Nest$mupdateExpectedFullChargeDateTime(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$SleepChargingStatus;)V

    .line 743
    .line 744
    .line 745
    const/4 v2, 0x1

    .line 746
    invoke-virtual {v1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateNextAlarmChangedReceiver(Z)V

    .line 747
    .line 748
    .line 749
    goto :goto_12

    .line 750
    :cond_10
    const-string v0, "ACTION_EXACT_NOTI_NOW_SLEEP_CHARGING_START_TIME"

    .line 751
    .line 752
    invoke-virtual {v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    goto :goto_12

    .line 756
    :cond_11
    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    .line 757
    .line 758
    const-string v0, "[sct_handleMessage]not confident => only wait for wakeup time"

    .line 759
    .line 760
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .line 762
    .line 763
    :goto_12
    const-string v0, "ACTION_EXACT_NOTI_NOW_WAKEUP_TIME"

    .line 764
    .line 765
    invoke-virtual {v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    goto :goto_13

    .line 769
    :cond_12
    const-string v0, "ACTION_EXACT_NOTI_NOW_UPDATE_TIME"

    .line 770
    .line 771
    invoke-virtual {v1, v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->setTimeNoti(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    :goto_13
    iget-object v0, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mDeliveredHandler:Landroid/os/Handler;

    .line 775
    .line 776
    const/16 v1, 0x1b

    .line 777
    .line 778
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 779
    .line 780
    .line 781
    :goto_14
    return-void

    .line 782
    nop

    .line 783
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
