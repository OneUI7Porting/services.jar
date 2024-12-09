.class public final Lcom/android/server/battery/batteryInfo/BattInfoManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

.field public mAuthentificationResults:[Z

.field public final mBatteryCount:I

.field public final mBatteryType:I

.field public mBatteryUsageSinceLastAsocUpdate:J

.field public final mContext:Landroid/content/Context;

.field public mCurrentBatteryUsage:J

.field public mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

.field public mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

.field public mFullBatteryStartTime:J

.field public mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

.field public final mHandler:Landroid/os/Handler;

.field public mInitCheckStatusCount:I

.field public mInitFinished:Z

.field public mQrData:Lcom/android/server/battery/batteryInfo/QrData;

.field public final mSupportsAsoc:Z

.field public final mSupportsFullStatusUsage:Z

.field public mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitCheckStatusCount:I

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 12
    .line 13
    const-wide/16 v1, -0x1

    .line 14
    .line 15
    iput-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-string p1, "/sys/class/power_supply/sec_auth_2nd/qr_code"

    .line 20
    .line 21
    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v1, 0x3

    .line 26
    const/4 v2, 0x4

    .line 27
    const/4 v3, 0x2

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iput v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 32
    .line 33
    iput v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "/sys/class/power_supply/sec_auth/qr_code"

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 45
    .line 46
    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string p1, "/sys/class/power_supply/sbp-fg-2/qr_code"

    .line 50
    .line 51
    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iput v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 58
    .line 59
    iput v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string p1, "/sys/class/power_supply/sbp-fg/qr_code"

    .line 63
    .line 64
    invoke-static {p1}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    iput v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 71
    .line 72
    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iput v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 76
    .line 77
    iput v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 78
    .line 79
    :goto_0
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 80
    .line 81
    new-array p1, p1, [Z

    .line 82
    .line 83
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v5, "[BattInfoManager]mBatteryType:"

    .line 88
    .line 89
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget v5, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 93
    .line 94
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v5, " ,mBatteryCount:"

    .line 98
    .line 99
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 103
    .line 104
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v6, "[SS][BattInfo]BattInfoManager"

    .line 112
    .line 113
    invoke-static {v6, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v7, "[BattInfoManager]FEATURE_SAVE_BATTERY_CYCLE:"

    .line 119
    .line 120
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-boolean v7, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 124
    .line 125
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v7, " ,FEATURE_FULL_BATTERY_CYCLE:"

    .line 129
    .line 130
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    sget-boolean v7, Lcom/android/server/battery/BattFeatures;->FEATURE_FULL_BATTERY_CYCLE:Z

    .line 134
    .line 135
    invoke-static {v6, p1, v7}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 136
    .line 137
    .line 138
    sget-boolean p1, Lcom/android/server/battery/BattFeatures;->FEATURE_SUPPORT_ASOC:Z

    .line 139
    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 143
    .line 144
    if-eq p1, v3, :cond_4

    .line 145
    .line 146
    if-eq p1, v2, :cond_4

    .line 147
    .line 148
    move p1, v4

    .line 149
    goto :goto_1

    .line 150
    :cond_4
    move p1, v0

    .line 151
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    .line 152
    .line 153
    if-eqz v7, :cond_5

    .line 154
    .line 155
    iget v7, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 156
    .line 157
    if-eq v7, v3, :cond_5

    .line 158
    .line 159
    if-eq v7, v2, :cond_5

    .line 160
    .line 161
    move v0, v4

    .line 162
    :cond_5
    iput-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v3, "[BattInfoManager]supportsAsoc:"

    .line 167
    .line 168
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v3, " ,supportsFullStatusUsage:"

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string/jumbo v4, "mBatteryType:"

    .line 192
    .line 193
    .line 194
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 198
    .line 199
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 206
    .line 207
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v6, " ,supportsAsoc:"

    .line 211
    .line 212
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const-string v0, "/data/log/battery_service/battery_service_main_history"

    .line 229
    .line 230
    const-string v2, "BattInfoManager Created"

    .line 231
    .line 232
    invoke-static {v0, v2, p1}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    .line 249
    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {v1, p1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance p1, Landroid/os/HandlerThread;

    .line 261
    .line 262
    const-string v0, "BattInfoManagerWorkerThread"

    .line 263
    .line 264
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 270
    .line 271
    .line 272
    new-instance p1, Landroid/os/Handler;

    .line 273
    .line 274
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    .line 282
    .line 283
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 284
    .line 285
    new-instance v0, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;

    .line 286
    .line 287
    invoke-direct {v0, p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V

    .line 288
    .line 289
    .line 290
    const-wide/16 v1, 0xbb8

    .line 291
    .line 292
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    .line 294
    .line 295
    return-void
.end method


# virtual methods
.method public final getAsocValue()[J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "[SS][BattInfo]BattInfoManager"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "[getAsocValue]InitFinished False"

    .line 9
    .line 10
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string p0, "[getAsocValue]unsupported"

    .line 19
    .line 20
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, [Ljava/lang/Long;

    .line 31
    .line 32
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final getDischargeLevel()[J
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "[SS][BattInfo]BattInfoManager"

    .line 6
    .line 7
    const-string v0, "[getDischargeLevel]InitFinished False"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, [Ljava/lang/Long;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final getFullStatusUsage()[J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "[SS][BattInfo]BattInfoManager"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "[getFullStatusUsage]InitFinished False"

    .line 9
    .line 10
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string p0, "[getFullStatusUsage]unsupported"

    .line 19
    .line 20
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, [Ljava/lang/Long;

    .line 31
    .line 32
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final getIcAuthenticationResults()[Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 2
    .line 3
    const-string v1, "[SS][BattInfo]BattInfoManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "[getIcAuthenticationResults]InitFinished False"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "[getIcAuthenticationResults]IcAuthenticationResults:"

    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 22
    .line 23
    invoke-static {v2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 38
    .line 39
    return-object p0
.end method

.method public final processAsoc(JJ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 2
    .line 3
    const-string v1, "[SS][BattInfo]BattInfoManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "[processAsoc]InitFinished False"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    cmp-long v0, p3, p1

    .line 14
    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v4, p1, v2

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    if-gez v0, :cond_2

    .line 25
    .line 26
    iget-wide v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 27
    .line 28
    sub-long/2addr p1, p3

    .line 29
    add-long/2addr p1, v4

    .line 30
    iput-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p2, "[processAsoc]mBatteryUsageSinceLastAsocUpdate:"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-wide p2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 40
    .line 41
    invoke-static {p1, p2, p3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    .line 45
    .line 46
    iget-object p2, p1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p2, [Ljava/lang/Long;

    .line 49
    .line 50
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    new-instance p3, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p3, "[isValueInvalid]Invalid - mCurrentValues:"

    .line 68
    .line 69
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p3, p1, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iget-object p1, p1, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 92
    .line 93
    const-wide/16 p3, 0x64

    .line 94
    .line 95
    cmp-long p1, p1, p3

    .line 96
    .line 97
    if-ltz p1, :cond_4

    .line 98
    .line 99
    :goto_0
    iput-wide v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 102
    .line 103
    new-instance p2, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;

    .line 104
    .line 105
    invoke-direct {p2, p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_1
    return-void
.end method

.method public final processCycle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/server/battery/batteryInfo/DischargeLevelData;->setCycle(Lcom/android/server/battery/batteryInfo/FullStatusUsageData;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/battery/batteryInfo/DischargeLevelData;->setCycle(Lcom/android/server/battery/batteryInfo/FullStatusUsageData;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final processDischargingLevel(JJZ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 2
    .line 3
    const-string v1, "[SS][BattInfo]BattInfoManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "[processDischargingLevel]InitFinished False"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, p1, v2

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    cmp-long v0, p3, p1

    .line 21
    .line 22
    if-gez v0, :cond_2

    .line 23
    .line 24
    iget-wide v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 25
    .line 26
    sub-long/2addr p1, p3

    .line 27
    add-long/2addr p1, v4

    .line 28
    iput-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p2, "[processDischargingLevel]mCurrentBatteryUsage:"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-wide p2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 38
    .line 39
    invoke-static {p1, p2, p3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    if-nez p5, :cond_3

    .line 43
    .line 44
    iget-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 45
    .line 46
    const-wide/16 p3, 0xa

    .line 47
    .line 48
    cmp-long p1, p1, p3

    .line 49
    .line 50
    if-gez p1, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    iget-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 54
    .line 55
    iput-wide v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mCurrentBatteryUsage:J

    .line 56
    .line 57
    iget-object p3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    new-instance p4, Lcom/android/server/battery/batteryInfo/BattInfoManager$2;

    .line 60
    .line 61
    const/4 p5, 0x0

    .line 62
    invoke-direct {p4, p0, p1, p2, p5}, Lcom/android/server/battery/batteryInfo/BattInfoManager$2;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;JI)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final processFullStatusUsage(JZ)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 2
    .line 3
    const-string v1, "[SS][BattInfo]BattInfoManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "[processFullStatusUsage]InitFinished False"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-wide v2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 14
    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    cmp-long v0, v2, v4

    .line 18
    .line 19
    const-wide/16 v2, 0x64

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    cmp-long p1, p1, v2

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p2, "[processFullStatusUsage]FullBatteryStartTime:"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-wide p2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 41
    .line 42
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    iget-wide v8, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 58
    .line 59
    sub-long v8, v6, v8

    .line 60
    .line 61
    const-wide/32 v10, 0xea60

    .line 62
    .line 63
    .line 64
    div-long/2addr v8, v10

    .line 65
    if-nez p3, :cond_3

    .line 66
    .line 67
    cmp-long p3, p1, v2

    .line 68
    .line 69
    if-nez p3, :cond_3

    .line 70
    .line 71
    const-wide/16 v10, 0xa

    .line 72
    .line 73
    cmp-long p3, v8, v10

    .line 74
    .line 75
    if-gez p3, :cond_3

    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    cmp-long p1, p1, v2

    .line 79
    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    iput-wide v6, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 83
    .line 84
    const-string p1, "[processFullStatusUsage]time to save. maintains 100%"

    .line 85
    .line 86
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iput-wide v4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullBatteryStartTime:J

    .line 91
    .line 92
    const-string p1, "[processFullStatusUsage]time to save. end of 100%"

    .line 93
    .line 94
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :goto_0
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 98
    .line 99
    new-instance p2, Lcom/android/server/battery/batteryInfo/BattInfoManager$2;

    .line 100
    .line 101
    const/4 p3, 0x1

    .line 102
    invoke-direct {p2, p0, v8, v9, p3}, Lcom/android/server/battery/batteryInfo/BattInfoManager$2;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;JI)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method
