.class public final Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public volatile mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

.field public mBatteryFullChargeMah:I

.field public volatile mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field public volatile mBgCurrentDrainBgRestrictedThreshold:[F

.field public volatile mBgCurrentDrainBgRestrictedTypes:I

.field public volatile mBgCurrentDrainDecoupleThresholds:Z

.field public volatile mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field public volatile mBgCurrentDrainExemptedTypes:I

.field public volatile mBgCurrentDrainHighThresholdByBgLocation:Z

.field public volatile mBgCurrentDrainInteractionGracePeriodMs:J

.field public volatile mBgCurrentDrainLocationMinDuration:J

.field public volatile mBgCurrentDrainMediaPlaybackMinDuration:J

.field public volatile mBgCurrentDrainPowerComponents:I

.field public volatile mBgCurrentDrainRestrictedBucketThreshold:[F

.field public volatile mBgCurrentDrainRestrictedBucketTypes:I

.field public volatile mBgCurrentDrainWindowMs:J

.field public final mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field public final mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

.field public final mDefaultBgCurrentDrainBgRestrictedThreshold:F

.field public final mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field public final mDefaultBgCurrentDrainExemptedTypes:I

.field public final mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

.field public final mDefaultBgCurrentDrainInteractionGracePeriodMs:J

.field public final mDefaultBgCurrentDrainLocationMinDuration:J

.field public final mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

.field public final mDefaultBgCurrentDrainPowerComponent:I

.field public final mDefaultBgCurrentDrainRestrictedBucket:F

.field public final mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

.field public final mDefaultBgCurrentDrainTypesToBgRestricted:I

.field public final mDefaultBgCurrentDrainWindowMs:J

.field public final mDefaultCurrentDrainTypesToRestrictedBucket:I

.field public final mHighBgBatteryPackages:Landroid/util/SparseArray;

.field public final mLastInteractionTime:Landroid/util/SparseLongArray;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V
    .locals 12

    .line 1
    iget-object v0, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x111005e

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string/jumbo v1, "bg_current_drain_monitor_enabled"

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    new-array v0, p1, [F

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 24
    .line 25
    new-array p1, p1, [F

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 28
    .line 29
    new-instance p1, Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 35
    .line 36
    new-instance p1, Landroid/util/SparseLongArray;

    .line 37
    .line 38
    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 42
    .line 43
    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const p2, 0x10700a5

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x1

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    aget p2, p2, v2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    aget p2, p2, v1

    .line 76
    .line 77
    :goto_0
    iput p2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    .line 78
    .line 79
    const v0, 0x10700a4

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    aget v0, v0, v2

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    aget v0, v0, v1

    .line 100
    .line 101
    :goto_1
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    .line 102
    .line 103
    const v3, 0x10e0047

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    mul-int/lit16 v3, v3, 0x3e8

    .line 111
    .line 112
    int-to-long v3, v3

    .line 113
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    .line 114
    .line 115
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    .line 116
    .line 117
    const v5, 0x10700a3

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_2

    .line 133
    .line 134
    aget v5, v5, v2

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    aget v5, v5, v1

    .line 138
    .line 139
    :goto_2
    iput v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    .line 140
    .line 141
    const v6, 0x10700a2

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-static {v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_3

    .line 157
    .line 158
    aget v6, v6, v2

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_3
    aget v6, v6, v1

    .line 162
    .line 163
    :goto_3
    iput v6, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    .line 164
    .line 165
    const v7, 0x10e0043

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    mul-int/lit16 v7, v7, 0x3e8

    .line 173
    .line 174
    int-to-long v7, v7

    .line 175
    iput-wide v7, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    .line 176
    .line 177
    const v9, 0x10e0042

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    mul-int/lit16 v9, v9, 0x3e8

    .line 185
    .line 186
    int-to-long v9, v9

    .line 187
    iput-wide v9, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    .line 188
    .line 189
    const v11, 0x111005c

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    iput-boolean v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 197
    .line 198
    const v11, 0x111005b

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    iput-boolean v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 206
    .line 207
    const v11, 0x10e0046

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    .line 215
    .line 216
    const v11, 0x10e0045

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    .line 224
    .line 225
    const v11, 0x10e0044

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    .line 233
    .line 234
    const v11, 0x10e0041

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    .line 242
    .line 243
    const v11, 0x111005d

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    .line 251
    .line 252
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 253
    .line 254
    aput p2, p1, v1

    .line 255
    .line 256
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 257
    .line 258
    aput v5, p1, v2

    .line 259
    .line 260
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 261
    .line 262
    aput v0, p1, v1

    .line 263
    .line 264
    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 265
    .line 266
    aput v6, p1, v2

    .line 267
    .line 268
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 269
    .line 270
    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 271
    .line 272
    iput-wide v7, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 273
    .line 274
    iput-wide v9, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 275
    .line 276
    return-void
.end method

.method public static batteryUsageTypesToString(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-eqz v1, :cond_6

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x7c

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_5

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-eq v1, v3, :cond_4

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    if-eq v1, v3, :cond_3

    .line 30
    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    if-eq v1, v3, :cond_2

    .line 34
    .line 35
    const/16 v3, 0x10

    .line 36
    .line 37
    if-eq v1, v3, :cond_1

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "[UNKNOWN("

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")]"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    const-string v3, "CACHED"

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string v3, "FOREGROUND_SERVICE"

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const-string v3, "BACKGROUND"

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const-string v3, "FOREGROUND"

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const-string v3, "UNSPECIFIED"

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :goto_1
    not-int v1, v1

    .line 93
    and-int/2addr p0, v1

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    const-string p0, "]"

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method

.method public static formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1, p2, p3}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " "

    .line 30
    .line 31
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " ("

    .line 38
    .line 39
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, ")"

    .line 46
    .line 47
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_0
    const-string p0, "0"

    .line 56
    .line 57
    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 11
    .line 12
    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    aput v3, v1, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "APP BATTERY TRACKER POLICY SETTINGS:"

    .line 9
    .line 10
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "  "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v2, p2

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-super {v0, v7, v1}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v2, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 33
    .line 34
    if-eqz v2, :cond_9

    .line 35
    .line 36
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v2, "bg_current_drain_threshold_to_restricted_bucket"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/16 v2, 0x3d

    .line 46
    .line 47
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    aget v3, v3, v8

    .line 54
    .line 55
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v3, "bg_current_drain_high_threshold_to_restricted_bucket"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 71
    .line 72
    const/4 v9, 0x1

    .line 73
    aget v3, v3, v9

    .line 74
    .line 75
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string/jumbo v3, "bg_current_drain_threshold_to_bg_restricted"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 88
    .line 89
    .line 90
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 91
    .line 92
    aget v3, v3, v8

    .line 93
    .line 94
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string/jumbo v3, "bg_current_drain_high_threshold_to_bg_restricted"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 110
    .line 111
    aget v3, v3, v9

    .line 112
    .line 113
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string/jumbo v3, "bg_current_drain_window"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 126
    .line 127
    .line 128
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 129
    .line 130
    const-string/jumbo v5, "bg_current_drain_interaction_grace_period"

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v4, v7, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 137
    .line 138
    .line 139
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 140
    .line 141
    const-string/jumbo v5, "bg_current_drain_media_playback_min_duration"

    .line 142
    .line 143
    .line 144
    invoke-static {v3, v4, v7, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 148
    .line 149
    .line 150
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 151
    .line 152
    const-string/jumbo v5, "bg_current_drain_location_min_duration"

    .line 153
    .line 154
    .line 155
    invoke-static {v3, v4, v7, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 159
    .line 160
    .line 161
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 162
    .line 163
    const-string/jumbo v5, "bg_current_drain_event_duration_based_threshold_enabled"

    .line 164
    .line 165
    .line 166
    invoke-static {v3, v4, v7, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 170
    .line 171
    .line 172
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 173
    .line 174
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string/jumbo v3, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 187
    .line 188
    .line 189
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 190
    .line 191
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string/jumbo v3, "bg_current_drain_types_to_restricted_bucket"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 204
    .line 205
    .line 206
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    .line 207
    .line 208
    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string/jumbo v3, "bg_current_drain_types_to_bg_restricted"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 225
    .line 226
    .line 227
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    .line 228
    .line 229
    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string/jumbo v3, "bg_current_drain_power_components"

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 246
    .line 247
    .line 248
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 249
    .line 250
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const-string/jumbo v3, "bg_current_drain_exempted_types"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 263
    .line 264
    .line 265
    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 266
    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v5, "["

    .line 270
    .line 271
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    move v6, v8

    .line 279
    :goto_0
    if-eqz v5, :cond_6

    .line 280
    .line 281
    if-eqz v6, :cond_0

    .line 282
    .line 283
    const/16 v6, 0x7c

    .line 284
    .line 285
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    :cond_0
    if-eq v5, v9, :cond_5

    .line 289
    .line 290
    const/4 v6, 0x2

    .line 291
    if-eq v5, v6, :cond_4

    .line 292
    .line 293
    const/4 v6, 0x4

    .line 294
    if-eq v5, v6, :cond_3

    .line 295
    .line 296
    const/16 v6, 0x8

    .line 297
    .line 298
    if-eq v5, v6, :cond_2

    .line 299
    .line 300
    const/16 v6, 0x10

    .line 301
    .line 302
    if-eq v5, v6, :cond_1

    .line 303
    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v5, "[UNKNOWN("

    .line 307
    .line 308
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v3, ")]"

    .line 319
    .line 320
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    goto :goto_2

    .line 328
    :cond_1
    const-string v6, "PERMISSION"

    .line 329
    .line 330
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    goto :goto_1

    .line 334
    :cond_2
    const-string v6, "FGS_NOTIFICATION"

    .line 335
    .line 336
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    goto :goto_1

    .line 340
    :cond_3
    const-string v6, "FGS_LOCATION"

    .line 341
    .line 342
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    goto :goto_1

    .line 346
    :cond_4
    const-string v6, "FGS_MEDIA_PLAYBACK"

    .line 347
    .line 348
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    goto :goto_1

    .line 352
    :cond_5
    const-string v6, "MEDIA_SESSION"

    .line 353
    .line 354
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    :goto_1
    not-int v5, v5

    .line 358
    and-int/2addr v3, v5

    .line 359
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    move v6, v9

    .line 364
    goto :goto_0

    .line 365
    :cond_6
    const-string v3, "]"

    .line 366
    .line 367
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    :goto_2
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    const-string/jumbo v3, "bg_current_drain_high_threshold_by_bg_location"

    .line 381
    .line 382
    .line 383
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 387
    .line 388
    .line 389
    iget-boolean v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    .line 390
    .line 391
    const-string v3, "Full charge capacity="

    .line 392
    .line 393
    invoke-static {v7, v1, v3, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 394
    .line 395
    .line 396
    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    .line 397
    .line 398
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 399
    .line 400
    .line 401
    const-string v2, " mAh"

    .line 402
    .line 403
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string v2, "Excessive current drain detected:"

    .line 410
    .line 411
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-object v10, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 415
    .line 416
    monitor-enter v10

    .line 417
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 418
    .line 419
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string v3, "  "

    .line 429
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v15

    .line 440
    if-lez v11, :cond_7

    .line 441
    .line 442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 443
    .line 444
    .line 445
    move-result-wide v13

    .line 446
    move v12, v8

    .line 447
    :goto_3
    if-ge v12, v11, :cond_8

    .line 448
    .line 449
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 450
    .line 451
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 452
    .line 453
    .line 454
    move-result v16

    .line 455
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 456
    .line 457
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    check-cast v1, Landroid/util/Pair;

    .line 462
    .line 463
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 464
    .line 465
    move-object/from16 v17, v2

    .line 466
    .line 467
    check-cast v17, [J

    .line 468
    .line 469
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 470
    .line 471
    move-object/from16 v18, v1

    .line 472
    .line 473
    check-cast v18, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 474
    .line 475
    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 476
    .line 477
    move-object/from16 v1, p0

    .line 478
    .line 479
    move/from16 v2, v16

    .line 480
    .line 481
    move-wide v3, v13

    .line 482
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    const-string v2, "%s%s: (threshold=%4.2f%%/%4.2f%%) %s / %s\n"

    .line 487
    .line 488
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 493
    .line 494
    aget v4, v4, v1

    .line 495
    .line 496
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 501
    .line 502
    aget v1, v5, v1

    .line 503
    .line 504
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    aget-wide v5, v17, v8

    .line 509
    .line 510
    aget-object v9, v18, v8

    .line 511
    .line 512
    invoke-static {v5, v6, v13, v14, v9}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v16

    .line 516
    const/4 v5, 0x1

    .line 517
    aget-wide v8, v17, v5

    .line 518
    .line 519
    aget-object v6, v18, v5

    .line 520
    .line 521
    invoke-static {v8, v9, v13, v14, v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v17

    .line 525
    move v8, v12

    .line 526
    move-object v12, v15

    .line 527
    move-wide/from16 v18, v13

    .line 528
    .line 529
    move-object v13, v3

    .line 530
    move-object v14, v4

    .line 531
    move-object v3, v15

    .line 532
    move-object v15, v1

    .line 533
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-virtual {v7, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 538
    .line 539
    .line 540
    add-int/lit8 v12, v8, 0x1

    .line 541
    .line 542
    move-object v15, v3

    .line 543
    move v9, v5

    .line 544
    move-wide/from16 v13, v18

    .line 545
    .line 546
    const/4 v8, 0x0

    .line 547
    goto :goto_3

    .line 548
    :catchall_0
    move-exception v0

    .line 549
    goto :goto_4

    .line 550
    :cond_7
    move-object v3, v15

    .line 551
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    const-string v0, "(none)"

    .line 555
    .line 556
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    :cond_8
    monitor-exit v10

    .line 560
    goto :goto_5

    .line 561
    :goto_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    throw v0

    .line 563
    :cond_9
    :goto_5
    return-void
.end method

.method public final getCurrentDrainThresholdIndex(IJJ)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 3
    .line 4
    const-wide/16 v8, 0x0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 9
    .line 10
    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    .line 11
    .line 12
    iget-object v10, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 13
    .line 14
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sub-long v1, p2, p4

    .line 18
    .line 19
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v11

    .line 23
    iget-object v1, v10, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    move/from16 v2, p1

    .line 29
    .line 30
    move-wide v4, v11

    .line 31
    move-wide/from16 v6, p2

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IIJJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v13

    .line 37
    iget-object v1, v10, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-static {v2}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    move/from16 v2, p1

    .line 47
    .line 48
    move-wide v4, v11

    .line 49
    move-wide/from16 v6, p2

    .line 50
    .line 51
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IIJJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 60
    .line 61
    cmp-long v1, v1, v3

    .line 62
    .line 63
    if-ltz v1, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    .line 67
    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 72
    .line 73
    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 80
    .line 81
    const/4 v3, -0x1

    .line 82
    move/from16 v4, p1

    .line 83
    .line 84
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-boolean v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 92
    .line 93
    if-nez v1, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    sub-long v1, p2, p4

    .line 97
    .line 98
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 103
    .line 104
    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 111
    .line 112
    const/16 v2, 0x8

    .line 113
    .line 114
    invoke-static {v2}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    move/from16 v2, p1

    .line 119
    .line 120
    move-wide v4, v5

    .line 121
    move-wide/from16 v6, p2

    .line 122
    .line 123
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IIJJ)J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 128
    .line 129
    cmp-long v0, v1, v3

    .line 130
    .line 131
    if-ltz v0, :cond_4

    .line 132
    .line 133
    :goto_0
    const/4 v0, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 136
    :goto_2
    return v0
.end method

.method public final getProposedRestrictionLevel(IILjava/lang/String;)I
    .locals 10

    .line 1
    const/4 p3, 0x0

    .line 2
    const/16 v0, 0x1e

    .line 3
    .line 4
    if-gt p2, v0, :cond_0

    .line 5
    .line 6
    return p3

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/util/Pair;

    .line 17
    .line 18
    if-eqz v2, :cond_6

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    invoke-virtual {v3, p1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, [J

    .line 31
    .line 32
    aget-wide v2, p1, p3

    .line 33
    .line 34
    iget-wide v8, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 35
    .line 36
    add-long/2addr v6, v8

    .line 37
    cmp-long v2, v2, v6

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-lez v2, :cond_1

    .line 41
    .line 42
    move v2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v2, p3

    .line 45
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 46
    .line 47
    check-cast v6, Lcom/android/server/am/AppBatteryTracker;

    .line 48
    .line 49
    iget-object v6, v6, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 50
    .line 51
    iget-object v6, v6, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 52
    .line 53
    iget-boolean v6, v6, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    iget-boolean p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    move p3, v3

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 66
    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    const/16 p0, 0x28

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move p0, v0

    .line 73
    :goto_2
    const/16 p3, 0x32

    .line 74
    .line 75
    if-le p2, p3, :cond_5

    .line 76
    .line 77
    aget-wide p1, p1, v3

    .line 78
    .line 79
    cmp-long p1, p1, v4

    .line 80
    .line 81
    if-lez p1, :cond_4

    .line 82
    .line 83
    move p0, p3

    .line 84
    :cond_4
    monitor-exit v1

    .line 85
    return p0

    .line 86
    :cond_5
    if-ne p2, p3, :cond_6

    .line 87
    .line 88
    monitor-exit v1

    .line 89
    return p0

    .line 90
    :cond_6
    monitor-exit v1

    .line 91
    return v0

    .line 92
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0
.end method

.method public final handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 10
    .line 11
    invoke-virtual {v1, v7}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, v8, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 20
    .line 21
    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    move-wide v9, v4

    .line 30
    :goto_0
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    aget-wide v11, v1, v6

    .line 37
    .line 38
    add-double/2addr v9, v11

    .line 39
    not-int v3, v3

    .line 40
    and-int/2addr v2, v3

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, v8, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 47
    .line 48
    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    move-wide v11, v4

    .line 55
    :goto_1
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    aget-wide v4, v1, v4

    .line 62
    .line 63
    add-double/2addr v11, v4

    .line 64
    not-int v3, v3

    .line 65
    and-int/2addr v2, v3

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object v13, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v13

    .line 74
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 75
    .line 76
    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 81
    .line 82
    invoke-virtual {v1, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    const/16 v1, 0x32

    .line 87
    .line 88
    if-lt v14, v1, :cond_3

    .line 89
    .line 90
    monitor-exit v13

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto/16 :goto_7

    .line 94
    .line 95
    :cond_3
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 96
    .line 97
    const-wide/16 v5, 0x0

    .line 98
    .line 99
    invoke-virtual {v1, v7, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v15

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 104
    .line 105
    .line 106
    move-result-wide v17

    .line 107
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 108
    .line 109
    move-object/from16 v1, p0

    .line 110
    .line 111
    move/from16 v2, p1

    .line 112
    .line 113
    move-wide/from16 v19, v3

    .line 114
    .line 115
    move-wide/from16 v3, v17

    .line 116
    .line 117
    move-wide/from16 v21, v5

    .line 118
    .line 119
    move-wide/from16 v5, v19

    .line 120
    .line 121
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 126
    .line 127
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    .line 132
    .line 133
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 134
    .line 135
    aget v4, v4, v1

    .line 136
    .line 137
    float-to-double v4, v4

    .line 138
    iget-object v6, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 139
    .line 140
    aget v1, v6, v1

    .line 141
    .line 142
    move-wide/from16 v19, v11

    .line 143
    .line 144
    float-to-double v11, v1

    .line 145
    const/4 v6, 0x2

    .line 146
    const/16 v23, 0x0

    .line 147
    .line 148
    const/4 v1, 0x1

    .line 149
    if-gez v2, :cond_7

    .line 150
    .line 151
    cmpl-double v2, v9, v4

    .line 152
    .line 153
    if-ltz v2, :cond_5

    .line 154
    .line 155
    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 156
    .line 157
    add-long/2addr v15, v4

    .line 158
    cmp-long v2, v17, v15

    .line 159
    .line 160
    if-lez v2, :cond_4

    .line 161
    .line 162
    new-array v2, v6, [J

    .line 163
    .line 164
    aput-wide v17, v2, v23

    .line 165
    .line 166
    new-array v4, v6, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 167
    .line 168
    aput-object v8, v4, v23

    .line 169
    .line 170
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 171
    .line 172
    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {v5, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    move/from16 v23, v1

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    const/4 v2, 0x0

    .line 183
    const/4 v4, 0x0

    .line 184
    :goto_2
    move v5, v1

    .line 185
    goto :goto_3

    .line 186
    :cond_5
    move/from16 v5, v23

    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    const/4 v4, 0x0

    .line 190
    :goto_3
    if-eqz v3, :cond_f

    .line 191
    .line 192
    cmpl-double v3, v19, v11

    .line 193
    .line 194
    if-ltz v3, :cond_f

    .line 195
    .line 196
    if-nez v2, :cond_6

    .line 197
    .line 198
    new-array v2, v6, [J

    .line 199
    .line 200
    new-array v4, v6, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 201
    .line 202
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 203
    .line 204
    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v3, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_6
    aput-wide v17, v2, v1

    .line 212
    .line 213
    aput-object v8, v4, v1

    .line 214
    .line 215
    move v5, v1

    .line 216
    move/from16 v23, v5

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_7
    iget-object v6, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 220
    .line 221
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Landroid/util/Pair;

    .line 226
    .line 227
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v6, [J

    .line 230
    .line 231
    aget-wide v24, v6, v23

    .line 232
    .line 233
    cmpl-double v4, v9, v4

    .line 234
    .line 235
    if-ltz v4, :cond_a

    .line 236
    .line 237
    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 238
    .line 239
    add-long/2addr v15, v4

    .line 240
    cmp-long v4, v17, v15

    .line 241
    .line 242
    if-lez v4, :cond_9

    .line 243
    .line 244
    cmp-long v4, v24, v21

    .line 245
    .line 246
    if-nez v4, :cond_8

    .line 247
    .line 248
    aput-wide v17, v6, v23

    .line 249
    .line 250
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v4, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 253
    .line 254
    aput-object v8, v4, v23

    .line 255
    .line 256
    :cond_8
    move v4, v1

    .line 257
    goto :goto_4

    .line 258
    :cond_9
    move/from16 v4, v23

    .line 259
    .line 260
    :goto_4
    move v5, v1

    .line 261
    goto :goto_5

    .line 262
    :cond_a
    move/from16 v4, v23

    .line 263
    .line 264
    move v5, v4

    .line 265
    :goto_5
    cmpl-double v9, v19, v11

    .line 266
    .line 267
    if-ltz v9, :cond_e

    .line 268
    .line 269
    if-nez v3, :cond_b

    .line 270
    .line 271
    const/16 v3, 0x28

    .line 272
    .line 273
    if-ne v14, v3, :cond_c

    .line 274
    .line 275
    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 276
    .line 277
    add-long v24, v24, v3

    .line 278
    .line 279
    cmp-long v3, v17, v24

    .line 280
    .line 281
    if-lez v3, :cond_c

    .line 282
    .line 283
    :cond_b
    move/from16 v23, v1

    .line 284
    .line 285
    :cond_c
    if-eqz v23, :cond_d

    .line 286
    .line 287
    aput-wide v17, v6, v1

    .line 288
    .line 289
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 292
    .line 293
    aput-object v8, v2, v1

    .line 294
    .line 295
    :cond_d
    move v5, v1

    .line 296
    goto :goto_6

    .line 297
    :cond_e
    aput-wide v21, v6, v1

    .line 298
    .line 299
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 302
    .line 303
    const/4 v3, 0x0

    .line 304
    aput-object v3, v2, v1

    .line 305
    .line 306
    move/from16 v23, v4

    .line 307
    .line 308
    :cond_f
    :goto_6
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    if-eqz v5, :cond_10

    .line 310
    .line 311
    if-eqz v23, :cond_10

    .line 312
    .line 313
    iget-object v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 314
    .line 315
    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    .line 316
    .line 317
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 318
    .line 319
    const/16 v2, 0x600

    .line 320
    .line 321
    const/4 v3, 0x2

    .line 322
    invoke-virtual {v0, v7, v2, v3, v1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 323
    .line 324
    .line 325
    :cond_10
    return-void

    .line 326
    :goto_7
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    throw v0
.end method

.method public final onPropertiesChanged(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string/jumbo v0, "bg_current_drain_window"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "bg_current_drain_exempted_types"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "bg_current_drain_interaction_grace_period"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "bg_current_drain_location_min_duration"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "bg_current_drain_media_playback_min_duration"

    .line 17
    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    const-string/jumbo v7, "bg_current_drain_decouple_thresholds"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v8, "bg_current_drain_event_duration_based_threshold_enabled"

    .line 24
    .line 25
    .line 26
    const-string v9, "activity_manager"

    .line 27
    .line 28
    const/4 v10, -0x1

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    sparse-switch v11, :sswitch_data_0

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    if-nez v11, :cond_0

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_0
    const/16 v10, 0xf

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :sswitch_1
    const-string/jumbo v11, "bg_current_drain_threshold_to_restricted_bucket"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-nez v11, :cond_1

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_1
    const/16 v10, 0xe

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :sswitch_2
    const-string/jumbo v11, "bg_current_drain_threshold_to_bg_restricted"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-nez v11, :cond_2

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_2
    const/16 v10, 0xd

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :sswitch_3
    const-string/jumbo v11, "bg_current_drain_types_to_bg_restricted"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    if-nez v11, :cond_3

    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_3
    const/16 v10, 0xc

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :sswitch_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-nez v11, :cond_4

    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :cond_4
    const/16 v10, 0xb

    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :sswitch_5
    const-string/jumbo v11, "bg_current_drain_types_to_restricted_bucket"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    if-nez v11, :cond_5

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_5
    const/16 v10, 0xa

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :sswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    if-nez v11, :cond_6

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_6
    const/16 v10, 0x9

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :sswitch_7
    const-string/jumbo v11, "bg_current_drain_high_threshold_by_bg_location"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    if-nez v11, :cond_7

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_7
    const/16 v10, 0x8

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :sswitch_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-nez v11, :cond_8

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_8
    const/4 v10, 0x7

    .line 155
    goto :goto_0

    .line 156
    :sswitch_9
    const-string/jumbo v11, "bg_current_drain_high_threshold_to_bg_restricted"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-nez v11, :cond_9

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_9
    const/4 v10, 0x6

    .line 167
    goto :goto_0

    .line 168
    :sswitch_a
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-nez v11, :cond_a

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_a
    const/4 v10, 0x5

    .line 176
    goto :goto_0

    .line 177
    :sswitch_b
    const-string/jumbo v11, "bg_current_drain_high_threshold_to_restricted_bucket"

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-nez v11, :cond_b

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_b
    const/4 v10, 0x4

    .line 188
    goto :goto_0

    .line 189
    :sswitch_c
    const-string/jumbo v11, "bg_current_drain_power_components"

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-nez v11, :cond_c

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_c
    const/4 v10, 0x3

    .line 200
    goto :goto_0

    .line 201
    :sswitch_d
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-nez v11, :cond_d

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_d
    const/4 v10, 0x2

    .line 209
    goto :goto_0

    .line 210
    :sswitch_e
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    if-nez v11, :cond_e

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_e
    move v10, v6

    .line 218
    goto :goto_0

    .line 219
    :sswitch_f
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    if-nez v11, :cond_f

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_f
    const/4 v10, 0x0

    .line 227
    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_10

    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateTrackerEnabled()V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :pswitch_0
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    .line 243
    .line 244
    invoke-static {v9, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 245
    .line 246
    .line 247
    move-result-wide v0

    .line 248
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :pswitch_1
    iget p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    .line 252
    .line 253
    invoke-static {v9, v1, p1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    iput p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :pswitch_2
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    .line 261
    .line 262
    invoke-static {v9, v2, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 263
    .line 264
    .line 265
    move-result-wide v0

    .line 266
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 270
    .line 271
    invoke-static {v9, v3, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :pswitch_4
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    .line 279
    .line 280
    invoke-static {v9, v4, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v0

    .line 284
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 285
    .line 286
    goto :goto_1

    .line 287
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    .line 288
    .line 289
    .line 290
    goto :goto_1

    .line 291
    :pswitch_6
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    .line 292
    .line 293
    invoke-static {v9, v5, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 294
    .line 295
    .line 296
    move-result-wide v0

    .line 297
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :pswitch_7
    invoke-static {v9, v7, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    .line 305
    .line 306
    goto :goto_1

    .line 307
    :pswitch_8
    iget-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 308
    .line 309
    invoke-static {v9, v8, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 314
    .line 315
    :cond_10
    :goto_1
    return-void

    .line 316
    nop

    .line 317
    :sswitch_data_0
    .sparse-switch
        -0x756855de -> :sswitch_f
        -0x701eaca1 -> :sswitch_e
        -0x1fb1101d -> :sswitch_d
        -0x1f35f949 -> :sswitch_c
        -0x1d805c6c -> :sswitch_b
        0x303f164 -> :sswitch_a
        0x60568db -> :sswitch_9
        0x7be7274 -> :sswitch_8
        0x17cc3411 -> :sswitch_7
        0x1edfa25c -> :sswitch_6
        0x270cf0f7 -> :sswitch_5
        0x2ad74b9f -> :sswitch_4
        0x43bedfbe -> :sswitch_3
        0x513daa8c -> :sswitch_2
        0x6f6da4c5 -> :sswitch_1
        0x74efacd7 -> :sswitch_0
    .end sparse-switch

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public final onSystemReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryFullCharge()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    div-int/lit16 v0, v0, 0x3e8

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateTrackerEnabled()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "bg_current_drain_window"

    .line 20
    .line 21
    .line 22
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    .line 23
    .line 24
    const-string v3, "activity_manager"

    .line 25
    .line 26
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 31
    .line 32
    const-string/jumbo v0, "bg_current_drain_interaction_grace_period"

    .line 33
    .line 34
    .line 35
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    .line 36
    .line 37
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 42
    .line 43
    const-string/jumbo v0, "bg_current_drain_media_playback_min_duration"

    .line 44
    .line 45
    .line 46
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    .line 47
    .line 48
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 53
    .line 54
    const-string/jumbo v0, "bg_current_drain_location_min_duration"

    .line 55
    .line 56
    .line 57
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    .line 58
    .line 59
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 64
    .line 65
    const-string/jumbo v0, "bg_current_drain_event_duration_based_threshold_enabled"

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 69
    .line 70
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 75
    .line 76
    const-string/jumbo v0, "bg_current_drain_exempted_types"

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    .line 80
    .line 81
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 86
    .line 87
    const-string/jumbo v0, "bg_current_drain_decouple_thresholds"

    .line 88
    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    .line 96
    .line 97
    const-string/jumbo v0, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    .line 98
    .line 99
    .line 100
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 101
    .line 102
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 107
    .line 108
    return-void
.end method

.method public final onTrackerEnabled(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 62
    .line 63
    .line 64
    const-wide/16 v0, 0x0

    .line 65
    .line 66
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    .line 67
    .line 68
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 69
    .line 70
    monitor-exit p1

    .line 71
    :cond_2
    :goto_1
    return-void

    .line 72
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw p0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 12
    .line 13
    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->reset()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final updateCurrentDrainThreshold()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 2
    .line 3
    const-string/jumbo v1, "bg_current_drain_threshold_to_restricted_bucket"

    .line 4
    .line 5
    .line 6
    iget v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    .line 7
    .line 8
    const-string v3, "activity_manager"

    .line 9
    .line 10
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput v1, v0, v2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 18
    .line 19
    const-string/jumbo v1, "bg_current_drain_high_threshold_to_restricted_bucket"

    .line 20
    .line 21
    .line 22
    iget v4, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    .line 23
    .line 24
    invoke-static {v3, v1, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v4, 0x1

    .line 29
    aput v1, v0, v4

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 32
    .line 33
    const-string/jumbo v1, "bg_current_drain_threshold_to_bg_restricted"

    .line 34
    .line 35
    .line 36
    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    .line 37
    .line 38
    invoke-static {v3, v1, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    aput v1, v0, v2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 45
    .line 46
    const-string/jumbo v1, "bg_current_drain_high_threshold_to_bg_restricted"

    .line 47
    .line 48
    .line 49
    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    .line 50
    .line 51
    invoke-static {v3, v1, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    aput v1, v0, v4

    .line 56
    .line 57
    const-string/jumbo v0, "bg_current_drain_types_to_restricted_bucket"

    .line 58
    .line 59
    .line 60
    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    .line 61
    .line 62
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    .line 67
    .line 68
    const-string/jumbo v0, "bg_current_drain_types_to_bg_restricted"

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    .line 72
    .line 73
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    .line 78
    .line 79
    const-string/jumbo v0, "bg_current_drain_power_components"

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    .line 83
    .line 84
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 89
    .line 90
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 91
    .line 92
    const/4 v1, -0x1

    .line 93
    if-ne v0, v1, :cond_0

    .line 94
    .line 95
    sget-object v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    const/4 v0, 0x5

    .line 101
    new-array v1, v0, [Landroid/os/BatteryConsumer$Dimensions;

    .line 102
    .line 103
    iput-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    .line 104
    .line 105
    :goto_0
    if-ge v2, v0, :cond_1

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    .line 108
    .line 109
    new-instance v4, Landroid/os/BatteryConsumer$Dimensions;

    .line 110
    .line 111
    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 112
    .line 113
    invoke-direct {v4, v5, v2}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    .line 114
    .line 115
    .line 116
    aput-object v4, v1, v2

    .line 117
    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    :goto_1
    const-string/jumbo v0, "bg_current_drain_high_threshold_by_bg_location"

    .line 122
    .line 123
    .line 124
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    .line 125
    .line 126
    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    .line 131
    .line 132
    return-void
.end method

.method public final updateTrackerEnabled()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onTrackerEnabled(Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
