.class public final Lcom/android/server/battery/batteryInfo/FirstUseDateData;
.super Lcom/android/server/battery/batteryInfo/BaseData;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final authFaiExpiredPaths:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

.field public mHandler:Landroid/os/Handler;

.field public final mShouldCheckFaiExpireds:[Z

.field public final mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

.field public mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;


# direct methods
.method public constructor <init>(II[ZLandroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2, p0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 18
    .line 19
    iput p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 20
    .line 21
    iput p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 24
    .line 25
    iput-object p4, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    new-instance p1, Landroid/os/Handler;

    .line 28
    .line 29
    invoke-direct {p1, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 35
    .line 36
    new-array p1, p1, [Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 39
    .line 40
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 41
    .line 42
    const/4 p2, 0x3

    .line 43
    const-string p3, "/efs/FactoryApp/batt_beginning_date_2nd"

    .line 44
    .line 45
    const/4 p4, 0x1

    .line 46
    const-string p5, "/efs/FactoryApp/batt_beginning_date"

    .line 47
    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v1, "/sys/class/power_supply/sec_auth/fai_expired"

    .line 62
    .line 63
    const-string v2, "/sys/class/power_supply/sec_auth/first_use_date"

    .line 64
    .line 65
    if-ne p1, p4, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 81
    .line 82
    new-array p1, p1, [Z

    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    if-ne p1, p2, :cond_2

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 105
    .line 106
    const-string p3, "/sys/class/power_supply/sec_auth_2nd/first_use_date"

    .line 107
    .line 108
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    const-string p1, "/sys/class/power_supply/sec_auth_2nd/fai_expired"

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 120
    .line 121
    new-array p1, p1, [Z

    .line 122
    .line 123
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x2

    .line 127
    const-string v1, "/sys/class/power_supply/sbp-fg/first_use_date"

    .line 128
    .line 129
    if-ne p1, v0, :cond_3

    .line 130
    .line 131
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    const/4 v0, 0x4

    .line 143
    if-ne p1, v0, :cond_4

    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 161
    .line 162
    const-string p3, "/sys/class/power_supply/sbp-fg-2/first_use_date"

    .line 163
    .line 164
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 168
    .line 169
    const/4 p3, 0x0

    .line 170
    if-eqz p1, :cond_6

    .line 171
    .line 172
    move p1, p3

    .line 173
    :goto_1
    iget p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 174
    .line 175
    if-ge p1, p5, :cond_6

    .line 176
    .line 177
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 178
    .line 179
    aget-boolean p5, p5, p1

    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 182
    .line 183
    if-nez p5, :cond_5

    .line 184
    .line 185
    const-string p5, "[syncAuthAndEfs]Authentification false => skip_"

    .line 186
    .line 187
    invoke-static {p1, p5, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_5
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p5

    .line 197
    check-cast p5, Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {p5, p3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p5

    .line 203
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v1, p5}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v3, "[syncAuthAndEfs]sync efs FirstUseDate with auth:"

    .line 218
    .line 219
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string p5, " ,result:"

    .line 226
    .line 227
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p5

    .line 237
    invoke-static {v0, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_6
    const/16 p1, 0x3e8

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p1, [Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    new-instance p5, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;

    .line 261
    .line 262
    const/4 v0, 0x0

    .line 263
    invoke-direct {p5, p0, v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 264
    .line 265
    .line 266
    invoke-interface {p1, p5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 271
    .line 272
    if-eqz p1, :cond_7

    .line 273
    .line 274
    const-string p1, "[activateFirstUseDateCheckIfRequired]Already all of FirstUseDate Exist"

    .line 275
    .line 276
    invoke-static {p5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_7
    const-string p1, "android.intent.action.TIME_SET"

    .line 281
    .line 282
    const-string/jumbo v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 283
    .line 284
    .line 285
    const-string/jumbo v1, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    .line 286
    .line 287
    .line 288
    invoke-static {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    new-instance v3, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 293
    .line 294
    const/4 p1, 0x1

    .line 295
    invoke-direct {v3, p0, p1}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 296
    .line 297
    .line 298
    iput-object v3, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 299
    .line 300
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 301
    .line 302
    const/4 v5, 0x0

    .line 303
    const/4 v6, 0x0

    .line 304
    const/4 v7, 0x2

    .line 305
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 306
    .line 307
    .line 308
    const-string p1, "[activateFirstUseDateCheckIfRequired]writeFirstUseDateReceiver Registered For FirstUseDate"

    .line 309
    .line 310
    invoke-static {p5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 314
    .line 315
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 316
    .line 317
    const-wide/32 v0, 0xafc8

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, p5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    .line 322
    .line 323
    :goto_3
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 324
    .line 325
    if-eq p1, p4, :cond_8

    .line 326
    .line 327
    if-ne p1, p2, :cond_c

    .line 328
    .line 329
    :cond_8
    move p1, p3

    .line 330
    :goto_4
    iget p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 331
    .line 332
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    .line 333
    .line 334
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 335
    .line 336
    if-ge p1, p2, :cond_b

    .line 337
    .line 338
    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 339
    .line 340
    aget-boolean p2, p2, p1

    .line 341
    .line 342
    if-nez p2, :cond_9

    .line 343
    .line 344
    const-string p2, "[activateFaiExpiredCheckIfRequired]Authentification false => skip_"

    .line 345
    .line 346
    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_9
    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    check-cast p2, Ljava/lang/String;

    .line 357
    .line 358
    invoke-static {p2, p4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    const-string v1, "[activateFaiExpiredCheckIfRequired]faiExpiredStr:"

    .line 363
    .line 364
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    const-string v0, "1"

    .line 372
    .line 373
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-nez v0, :cond_a

    .line 378
    .line 379
    aput-boolean p4, p5, p1

    .line 380
    .line 381
    const-string p5, "0"

    .line 382
    .line 383
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result p2

    .line 387
    if-nez p2, :cond_a

    .line 388
    .line 389
    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object p2

    .line 395
    check-cast p2, Ljava/lang/String;

    .line 396
    .line 397
    invoke-static {p2, p5}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    :cond_a
    :goto_5
    add-int/lit8 p1, p1, 0x1

    .line 401
    .line 402
    goto :goto_4

    .line 403
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string/jumbo p2, "shouldCheckFaiExpireds:"

    .line 406
    .line 407
    .line 408
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-static {p5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p2

    .line 415
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    const-string p2, "/data/log/battery_service/battery_service_main_history"

    .line 423
    .line 424
    const-string p4, "FaiExpiredCheck"

    .line 425
    .line 426
    invoke-static {p2, p4, p1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    array-length p1, p5

    .line 430
    invoke-static {p3, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    new-instance p2, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;

    .line 435
    .line 436
    const/4 p3, 0x0

    .line 437
    invoke-direct {p2, p0, p3}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 438
    .line 439
    .line 440
    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    if-eqz p1, :cond_c

    .line 445
    .line 446
    const-string p1, "android.intent.action.DATE_CHANGED"

    .line 447
    .line 448
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    new-instance v2, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 453
    .line 454
    const/4 p1, 0x0

    .line 455
    invoke-direct {v2, p0, p1}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    .line 456
    .line 457
    .line 458
    iput-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 459
    .line 460
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 461
    .line 462
    const/4 v4, 0x0

    .line 463
    const/4 v5, 0x0

    .line 464
    const/4 v6, 0x2

    .line 465
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 466
    .line 467
    .line 468
    const-string p1, "[activateFaiExpiredCheckIfRequired]DateChangedReceiver Registered For FAI Expired"

    .line 469
    .line 470
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 474
    .line 475
    .line 476
    return-void
.end method

.method public static isValidDate(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "20"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method
