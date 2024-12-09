.class public final Lcom/android/server/display/exynos/ExynosDisplayATC;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static TUNE_MODE:Z = false


# instance fields
.field public final ATC_BL_FILE_PATH:Ljava/lang/String;

.field public final ATC_CAL_FILE_PATH:Ljava/lang/String;

.field public final ATC_DIM_STATUS_SYSFS_PATH:Ljava/lang/String;

.field public final ATC_LUX_SYSFS_PATH:Ljava/lang/String;

.field public final ATC_ONOFF_SYSFS_PATH:Ljava/lang/String;

.field public final ATC_SFR_SYSFS_PATH:Ljava/lang/String;

.field public final ATC_XML_FILE_PATH:Ljava/lang/String;

.field public final DEBUG:Z

.field public final HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

.field public final HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

.field public final HSC_SYSFS_PATH:Ljava/lang/String;

.field public mAmbientLight:[I

.field public mApsDelayedOffRequired:Z

.field public mApsDelayedOffTable:[I

.field public final mApsInit:Ljava/lang/String;

.field public mApsTable:[Ljava/lang/String;

.field public final mBrightnessInit:[I

.field public mBrightnessLux:[I

.field public mBrightnessSetting:[I

.field public final mContext:Landroid/content/Context;

.field public mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

.field public final mDataCollectionLock:Ljava/lang/Object;

.field public mDimOperating:I

.field public mEventCount:I

.field public final mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

.field public mHsvLcgTable:[[Ljava/lang/String;

.field public mHsvTable:[Ljava/lang/String;

.field public mIntervalMs:I

.field public mItem:[Ljava/lang/String;

.field public mLastAps:Ljava/lang/String;

.field public mLastApsDelayedOff:I

.field public mLastHsv:Ljava/lang/String;

.field public mLastHsvLcg:[Ljava/lang/String;

.field public mLastLuminance:I

.field public final mLastSensorReadings:Ljava/util/Deque;

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public mLightSensorEnabled:Z

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mPreOnOff:Z

.field public mPrevAps:Ljava/lang/String;

.field public mPrevHsv:Ljava/lang/String;

.field public mPrevHsvLcg:[Ljava/lang/String;

.field public mPrevLuminance:I

.field public mPrevPos:I

.field public mQalcoeff:Ljava/lang/String;

.field public mQcoeff:Ljava/lang/String;

.field public mQdelay:Ljava/lang/String;

.field public mQsize:Ljava/lang/String;

.field public mQueAlCoeffTable:[Ljava/lang/String;

.field public mQueCoeffTable:[Ljava/lang/String;

.field public mQueDelayTable:[Ljava/lang/String;

.field public mQueSizeTable:[Ljava/lang/String;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTimeoutMs:I

.field public final sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "eng"

    .line 5
    .line 6
    .line 7
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 22
    .line 23
    const-string v2, "/sys/class/dqe/dqe/dim_status"

    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_DIM_STATUS_SYSFS_PATH:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "/sys/class/dqe/dqe/aps"

    .line 28
    .line 29
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_SFR_SYSFS_PATH:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "/sys/class/dqe/dqe/aps_lux"

    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_LUX_SYSFS_PATH:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "/sys/class/dqe/dqe/aps_onoff"

    .line 36
    .line 37
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_ONOFF_SYSFS_PATH:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "/sys/class/dqe/dqe/hsc48_idx"

    .line 40
    .line 41
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "/sys/class/dqe/dqe/hsc48_lcg"

    .line 44
    .line 45
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "/sys/class/dqe/dqe/hsc"

    .line 48
    .line 49
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "8"

    .line 54
    .line 55
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    .line 56
    .line 57
    const-string v2, "10,5,4,3,2,1,1,1"

    .line 58
    .line 59
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    .line 60
    .line 61
    const-string v2, "4"

    .line 62
    .line 63
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    .line 64
    .line 65
    const-string v2, "0"

    .line 66
    .line 67
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 70
    .line 71
    const-string v2, "/data/dqe/calib_data_atc.xml"

    .line 72
    .line 73
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_CAL_FILE_PATH:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "/data/dqe/calib_data_atc_bl.xml"

    .line 76
    .line 77
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    .line 78
    .line 79
    const-string v2, "/vendor/etc/dqe/calib_data_atc.xml"

    .line 80
    .line 81
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_XML_FILE_PATH:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v2, Ljava/lang/Object;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDataCollectionLock:Ljava/lang/Object;

    .line 89
    .line 90
    new-instance v2, Ljava/util/ArrayDeque;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 96
    .line 97
    const/16 v2, 0xd

    .line 98
    .line 99
    new-array v2, v2, [I

    .line 100
    .line 101
    fill-array-data v2, :array_0

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 105
    .line 106
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 119
    .line 120
    filled-new-array {v1}, [I

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 125
    .line 126
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 127
    .line 128
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevLuminance:I

    .line 129
    .line 130
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    .line 137
    .line 138
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 141
    .line 142
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z

    .line 143
    .line 144
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    .line 145
    .line 146
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffRequired:Z

    .line 147
    .line 148
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    .line 149
    .line 150
    const/4 v2, -0x1

    .line 151
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 152
    .line 153
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    .line 154
    .line 155
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 156
    .line 157
    const/16 v0, 0x5dc

    .line 158
    .line 159
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 160
    .line 161
    const/16 v0, 0x1f4

    .line 162
    .line 163
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 164
    .line 165
    filled-new-array {v1}, [I

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessInit:[I

    .line 170
    .line 171
    filled-new-array {v1}, [I

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 176
    .line 177
    filled-new-array {v1}, [I

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 182
    .line 183
    new-instance v0, Ljava/lang/Object;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    .line 189
    .line 190
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 191
    .line 192
    invoke-direct {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 193
    .line 194
    .line 195
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 196
    .line 197
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$3;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 200
    .line 201
    .line 202
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    .line 203
    .line 204
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    .line 205
    .line 206
    const-class v0, Landroid/hardware/SensorManager;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Landroid/hardware/SensorManager;

    .line 213
    .line 214
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    .line 215
    .line 216
    const/4 v2, 0x5

    .line 217
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    .line 222
    .line 223
    new-instance v0, Landroid/os/Handler;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 230
    .line 231
    .line 232
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLocalHandler:Landroid/os/Handler;

    .line 233
    .line 234
    const-string/jumbo p1, "aps"

    .line 235
    .line 236
    .line 237
    const-string v0, "/vendor/etc/dqe/calib_data_bypass.xml"

    .line 238
    .line 239
    invoke-static {v1, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLALText(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    if-eqz p1, :cond_1

    .line 244
    .line 245
    array-length v0, p1

    .line 246
    if-gtz v0, :cond_0

    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_0
    aget-object p1, p1, v1

    .line 250
    .line 251
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_1
    :goto_0
    const-string p1, "ExynosDisplayATC"

    .line 255
    .line 256
    const-string/jumbo v0, "xml aps not found"

    .line 257
    .line 258
    .line 259
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    const-string p1, "0,0,128,128,128,0,10,14,2,0,25,230,140,250,0,3,3,2,3,128,1"

    .line 263
    .line 264
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 265
    .line 266
    :goto_1
    new-instance p1, Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 267
    .line 268
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 269
    .line 270
    int-to-long v2, v0

    .line 271
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 272
    .line 273
    int-to-long v4, v0

    .line 274
    move-object v0, p1

    .line 275
    move-object v1, p0

    .line 276
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/exynos/ExynosDisplayATC$2;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;JJ)V

    .line 277
    .line 278
    .line 279
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 280
    .line 281
    return-void

    .line 282
    nop

    .line 283
    :array_0
    .array-data 4
        0x0
        0xbb8
        0xfa0
        0x1388
        0x1770
        0x1f40
        0x2710
        0x3a98
        0x4e20
        0x61a8
        0x7530
        0x9c40
        0xc350
    .end array-data
.end method

.method public static enableATCTuneMode(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "enableATCTuneMode: TUNE_MODE="

    .line 6
    .line 7
    .line 8
    const-string v1, "ExynosDisplayATC"

    .line 9
    .line 10
    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sput-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final caculateLuminance()V
    .locals 12

    .line 1
    const-string v0, "\\s*,\\s*"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v2, v1, [F

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 14
    .line 15
    check-cast v3, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 34
    .line 35
    add-int/lit8 v7, v5, 0x1

    .line 36
    .line 37
    iget v6, v6, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    .line 38
    .line 39
    aput v6, v2, v5

    .line 40
    .line 41
    move v5, v7

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 53
    .line 54
    aget-object v3, v3, v4

    .line 55
    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    new-array v5, v3, [I

    .line 61
    .line 62
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 69
    .line 70
    move v6, v4

    .line 71
    :goto_1
    if-ge v6, v3, :cond_1

    .line 72
    .line 73
    aput v4, v5, v6

    .line 74
    .line 75
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move v6, v4

    .line 79
    :goto_2
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 80
    .line 81
    array-length v8, v7

    .line 82
    if-ge v6, v8, :cond_2

    .line 83
    .line 84
    aget-object v7, v7, v6

    .line 85
    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    aput v7, v5, v6

    .line 91
    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 102
    .line 103
    aget-object v0, v0, v4

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    sget-boolean v6, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 110
    .line 111
    if-eqz v6, :cond_4

    .line 112
    .line 113
    const-string/jumbo v6, "qcoef: "

    .line 114
    .line 115
    .line 116
    move v7, v4

    .line 117
    :goto_3
    if-ge v7, v3, :cond_3

    .line 118
    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    aget v6, v5, v7

    .line 128
    .line 129
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v6, ","

    .line 137
    .line 138
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    add-int/lit8 v7, v7, 0x1

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_3
    const-string v7, "ExynosDisplayATC"

    .line 149
    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v6, " qalcoeff: "

    .line 159
    .line 160
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    :cond_4
    add-int/lit8 v6, v1, -0x1

    .line 174
    .line 175
    move v7, v4

    .line 176
    move v8, v6

    .line 177
    move v6, v7

    .line 178
    :goto_4
    if-ltz v8, :cond_6

    .line 179
    .line 180
    if-ge v1, v3, :cond_5

    .line 181
    .line 182
    aget v9, v2, v8

    .line 183
    .line 184
    float-to-int v9, v9

    .line 185
    aget v10, v5, v7

    .line 186
    .line 187
    mul-int/2addr v9, v10

    .line 188
    add-int/2addr v9, v4

    .line 189
    add-int/2addr v6, v10

    .line 190
    add-int/lit8 v7, v7, 0x1

    .line 191
    .line 192
    move v4, v9

    .line 193
    goto :goto_5

    .line 194
    :cond_5
    aget v9, v2, v8

    .line 195
    .line 196
    float-to-int v9, v9

    .line 197
    aget v10, v5, v7

    .line 198
    .line 199
    mul-int/2addr v9, v10

    .line 200
    iget v11, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 201
    .line 202
    mul-int/2addr v11, v0

    .line 203
    add-int/2addr v11, v9

    .line 204
    add-int/2addr v11, v4

    .line 205
    add-int/2addr v6, v10

    .line 206
    add-int/2addr v6, v0

    .line 207
    add-int/lit8 v7, v7, 0x1

    .line 208
    .line 209
    move v4, v11

    .line 210
    :goto_5
    add-int/lit8 v8, v8, -0x1

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_6
    div-int/2addr v4, v6

    .line 214
    iput v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    .line 219
    .line 220
    :goto_7
    return-void
.end method

.method public final enableATC(Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->resetATC()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p1, :cond_10

    .line 7
    .line 8
    sget-boolean p1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_XML_FILE_PATH:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_CAL_FILE_PATH:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    if-eqz p1, :cond_f

    .line 26
    .line 27
    const-string/jumbo v2, "tune"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v3, "array_length: "

    .line 31
    .line 32
    .line 33
    const-string/jumbo v4, "xml array size wrong: "

    .line 34
    .line 35
    .line 36
    :try_start_0
    const-string/jumbo v5, "atc"

    .line 37
    .line 38
    .line 39
    const-string v6, "al"

    .line 40
    .line 41
    invoke-static {p1, v2, v5, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    goto/16 :goto_a

    .line 48
    .line 49
    :cond_1
    array-length v5, v2

    .line 50
    if-gtz v5, :cond_2

    .line 51
    .line 52
    const-string p1, "ExynosDisplayATC"

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    array-length v2, v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto/16 :goto_a

    .line 71
    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto/16 :goto_9

    .line 74
    .line 75
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    .line 76
    .line 77
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    const-string v5, "ExynosDisplayATC"

    .line 79
    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    array-length v3, v2

    .line 86
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    array-length v3, v2

    .line 97
    new-array v3, v3, [I

    .line 98
    .line 99
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 100
    .line 101
    move v3, v0

    .line 102
    :goto_1
    array-length v5, v2

    .line 103
    if-ge v3, v5, :cond_3

    .line 104
    .line 105
    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 106
    .line 107
    aget-object v6, v2, v3

    .line 108
    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    aput v6, v5, v3

    .line 114
    .line 115
    const-string v5, "ExynosDisplayATC"

    .line 116
    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v7, "al: "

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 128
    .line 129
    aget v7, v7, v3

    .line 130
    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catchall_0
    move-exception p1

    .line 145
    goto/16 :goto_8

    .line 146
    .line 147
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 148
    .line 149
    array-length v3, v2

    .line 150
    new-array v3, v3, [Ljava/lang/String;

    .line 151
    .line 152
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 153
    .line 154
    array-length v3, v2

    .line 155
    new-array v3, v3, [I

    .line 156
    .line 157
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 158
    .line 159
    array-length v3, v2

    .line 160
    new-array v3, v3, [Ljava/lang/String;

    .line 161
    .line 162
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 163
    .line 164
    array-length v3, v2

    .line 165
    new-array v3, v3, [Ljava/lang/String;

    .line 166
    .line 167
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 168
    .line 169
    array-length v3, v2

    .line 170
    new-array v3, v3, [Ljava/lang/String;

    .line 171
    .line 172
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 173
    .line 174
    array-length v3, v2

    .line 175
    new-array v3, v3, [Ljava/lang/String;

    .line 176
    .line 177
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 178
    .line 179
    array-length v3, v2

    .line 180
    new-array v3, v3, [Ljava/lang/String;

    .line 181
    .line 182
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 183
    .line 184
    array-length v2, v2

    .line 185
    const/4 v3, 0x2

    .line 186
    new-array v3, v3, [I

    .line 187
    .line 188
    const/4 v5, 0x3

    .line 189
    aput v5, v3, v1

    .line 190
    .line 191
    aput v2, v3, v0

    .line 192
    .line 193
    const-class v2, Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, [[Ljava/lang/String;

    .line 200
    .line 201
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 202
    .line 203
    move v2, v0

    .line 204
    :goto_2
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 205
    .line 206
    array-length v6, v3

    .line 207
    if-ge v2, v6, :cond_d

    .line 208
    .line 209
    aget v3, v3, v2

    .line 210
    .line 211
    const-string/jumbo v6, "aps"

    .line 212
    .line 213
    .line 214
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-eqz v3, :cond_4

    .line 219
    .line 220
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 221
    .line 222
    aget-object v3, v3, v0

    .line 223
    .line 224
    aput-object v3, v6, v2

    .line 225
    .line 226
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 227
    .line 228
    aget v3, v3, v2

    .line 229
    .line 230
    const-string/jumbo v6, "apsdoff"

    .line 231
    .line 232
    .line 233
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    if-eqz v3, :cond_5

    .line 238
    .line 239
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 240
    .line 241
    aget-object v3, v3, v0

    .line 242
    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    aput v3, v6, v2

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_5
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 251
    .line 252
    aput v0, v3, v2

    .line 253
    .line 254
    :goto_3
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 255
    .line 256
    aget v3, v3, v2

    .line 257
    .line 258
    const-string/jumbo v6, "qsize"

    .line 259
    .line 260
    .line 261
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    if-eqz v3, :cond_6

    .line 266
    .line 267
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 268
    .line 269
    aget-object v3, v3, v0

    .line 270
    .line 271
    aput-object v3, v6, v2

    .line 272
    .line 273
    :cond_6
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 274
    .line 275
    aget v3, v3, v2

    .line 276
    .line 277
    const-string/jumbo v6, "qcoeff"

    .line 278
    .line 279
    .line 280
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    if-eqz v3, :cond_7

    .line 285
    .line 286
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 287
    .line 288
    aget-object v3, v3, v0

    .line 289
    .line 290
    aput-object v3, v6, v2

    .line 291
    .line 292
    :cond_7
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 293
    .line 294
    aget v3, v3, v2

    .line 295
    .line 296
    const-string/jumbo v6, "qdelay"

    .line 297
    .line 298
    .line 299
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    if-eqz v3, :cond_8

    .line 304
    .line 305
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 306
    .line 307
    aget-object v3, v3, v0

    .line 308
    .line 309
    aput-object v3, v6, v2

    .line 310
    .line 311
    :cond_8
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 312
    .line 313
    aget v3, v3, v2

    .line 314
    .line 315
    const-string/jumbo v6, "qalcoeff"

    .line 316
    .line 317
    .line 318
    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    if-eqz v3, :cond_9

    .line 323
    .line 324
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 325
    .line 326
    aget-object v3, v3, v0

    .line 327
    .line 328
    aput-object v3, v6, v2

    .line 329
    .line 330
    :cond_9
    move v3, v0

    .line 331
    :goto_4
    const/4 v6, 0x0

    .line 332
    if-ge v3, v5, :cond_b

    .line 333
    .line 334
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 335
    .line 336
    aget v7, v7, v2

    .line 337
    .line 338
    const-string/jumbo v8, "hsc48_lcg"

    .line 339
    .line 340
    .line 341
    invoke-static {v7, v3, p1, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    if-eqz v7, :cond_a

    .line 346
    .line 347
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 348
    .line 349
    aget-object v6, v6, v2

    .line 350
    .line 351
    aget-object v7, v7, v0

    .line 352
    .line 353
    aput-object v7, v6, v3

    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_a
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 357
    .line 358
    aget-object v7, v7, v2

    .line 359
    .line 360
    aput-object v6, v7, v3

    .line 361
    .line 362
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_b
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 366
    .line 367
    aget v3, v3, v2

    .line 368
    .line 369
    const-string/jumbo v7, "hsc"

    .line 370
    .line 371
    .line 372
    invoke-static {v3, v0, p1, v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    if-eqz v3, :cond_c

    .line 377
    .line 378
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 379
    .line 380
    aget-object v3, v3, v0

    .line 381
    .line 382
    aput-object v3, v6, v2

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_c
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 386
    .line 387
    aput-object v6, v3, v2

    .line 388
    .line 389
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 390
    .line 391
    goto/16 :goto_2

    .line 392
    .line 393
    :cond_d
    :goto_7
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 394
    .line 395
    array-length p1, p1

    .line 396
    if-ge v0, p1, :cond_e

    .line 397
    .line 398
    const-string p1, "ExynosDisplayATC"

    .line 399
    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    const-string v3, "<aps>"

    .line 406
    .line 407
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 411
    .line 412
    aget-object v3, v3, v0

    .line 413
    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    const-string p1, "ExynosDisplayATC"

    .line 425
    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    const-string v3, "<apsdoff>"

    .line 432
    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 437
    .line 438
    aget v3, v3, v0

    .line 439
    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    const-string p1, "ExynosDisplayATC"

    .line 451
    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    const-string v3, "<qsize>"

    .line 458
    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 463
    .line 464
    aget-object v3, v3, v0

    .line 465
    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    const-string p1, "ExynosDisplayATC"

    .line 477
    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .line 482
    .line 483
    const-string v3, "<qcoeff>"

    .line 484
    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 489
    .line 490
    aget-object v3, v3, v0

    .line 491
    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    const-string p1, "ExynosDisplayATC"

    .line 503
    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    const-string v3, "<qdelay>"

    .line 510
    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 515
    .line 516
    aget-object v3, v3, v0

    .line 517
    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    const-string p1, "ExynosDisplayATC"

    .line 529
    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    const-string v3, "<qalcoeff>"

    .line 536
    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 541
    .line 542
    aget-object v3, v3, v0

    .line 543
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    const-string p1, "ExynosDisplayATC"

    .line 555
    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .line 560
    .line 561
    const-string v3, "<hsc>"

    .line 562
    .line 563
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 567
    .line 568
    aget-object v3, v3, v0

    .line 569
    .line 570
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    add-int/lit8 v0, v0, 0x1

    .line 581
    .line 582
    goto/16 :goto_7

    .line 583
    .line 584
    :cond_e
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 586
    .line 587
    .line 588
    goto :goto_a

    .line 589
    :goto_8
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 590
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 591
    :goto_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    .line 593
    .line 594
    :cond_f
    :goto_a
    sget-boolean p1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 595
    .line 596
    if-eqz p1, :cond_11

    .line 597
    .line 598
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    .line 599
    .line 600
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 601
    .line 602
    .line 603
    move-result p1

    .line 604
    if-eqz p1, :cond_11

    .line 605
    .line 606
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->parserTuneATCBLXML()V

    .line 607
    .line 608
    .line 609
    goto :goto_b

    .line 610
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteOnOff(Z)V

    .line 611
    .line 612
    .line 613
    :cond_11
    :goto_b
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 614
    .line 615
    if-eqz p0, :cond_12

    .line 616
    .line 617
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 618
    .line 619
    .line 620
    :cond_12
    return-void
.end method

.method public final enableLightSensor(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x10e006b

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_5

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string/jumbo v0, "enableLightSensor: enable="

    .line 22
    .line 23
    .line 24
    const-string v2, "ExynosDisplayATC"

    .line 25
    .line 26
    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    .line 46
    .line 47
    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 66
    .line 67
    :cond_5
    :goto_1
    return-void
.end method

.method public final findBestATCTable()I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 9
    .line 10
    aget v2, v2, v1

    .line 11
    .line 12
    if-ge v3, v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    sub-int/2addr v1, v0

    .line 19
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    move v2, v1

    .line 27
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    if-ltz v2, :cond_3

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 32
    .line 33
    aget-object v3, v3, v2

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    :goto_3
    add-int/2addr v1, v0

    .line 39
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 40
    .line 41
    array-length v4, v3

    .line 42
    if-ge v1, v4, :cond_4

    .line 43
    .line 44
    aget-object v4, v3, v1

    .line 45
    .line 46
    if-nez v4, :cond_4

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_4
    const-string v0, "ExynosDisplayATC"

    .line 50
    .line 51
    if-ltz v2, :cond_a

    .line 52
    .line 53
    array-length v4, v3

    .line 54
    if-lt v1, v4, :cond_5

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    iget v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 58
    .line 59
    if-eq v4, v2, :cond_7

    .line 60
    .line 61
    if-ne v4, v1, :cond_6

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_6
    move v4, v2

    .line 65
    :cond_7
    :goto_4
    aget-object v3, v3, v4

    .line 66
    .line 67
    if-nez v3, :cond_8

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string/jumbo v2, "unable to find proper ATC table, return prev pos: "

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 90
    .line 91
    return p0

    .line 92
    :cond_8
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 93
    .line 94
    if-eqz p0, :cond_9

    .line 95
    .line 96
    const-string p0, "adjusted pos: "

    .line 97
    .line 98
    const-string v3, " at ("

    .line 99
    .line 100
    const-string/jumbo v5, "~"

    .line 101
    .line 102
    .line 103
    invoke-static {v4, v2, p0, v3, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v2, ")"

    .line 108
    .line 109
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_9
    return v4

    .line 113
    :cond_a
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string/jumbo v2, "invalid ATC table, return prev pos: "

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 134
    .line 135
    return p0
.end method

.method public final loadLuminanceATCTable()V
    .locals 5

    .line 1
    const-string/jumbo v0, "mLastLuminance: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    monitor-exit v1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 35
    .line 36
    if-nez v2, :cond_4

    .line 37
    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 40
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 46
    :cond_5
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 47
    .line 48
    if-nez v2, :cond_6

    .line 49
    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->findBestATCTable()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/4 v3, -0x1

    .line 57
    if-ne v2, v3, :cond_7

    .line 58
    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :cond_7
    sget-boolean v3, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 62
    .line 63
    if-nez v3, :cond_8

    .line 64
    .line 65
    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 66
    .line 67
    if-eq v3, v2, :cond_9

    .line 68
    .line 69
    :cond_8
    const-string v3, "ExynosDisplayATC"

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 77
    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ", mAmbientLight: "

    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    .line 87
    .line 88
    aget v0, v0, v2

    .line 89
    .line 90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    .line 101
    .line 102
    aget-object v0, v0, v2

    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    .line 107
    .line 108
    aget v0, v0, v2

    .line 109
    .line 110
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    .line 113
    .line 114
    aget-object v0, v0, v2

    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    .line 119
    .line 120
    aget-object v0, v0, v2

    .line 121
    .line 122
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    .line 125
    .line 126
    aget-object v0, v0, v2

    .line 127
    .line 128
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    .line 131
    .line 132
    aget-object v0, v0, v2

    .line 133
    .line 134
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    .line 137
    .line 138
    aget-object v0, v0, v2

    .line 139
    .line 140
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    :goto_0
    const/4 v3, 0x3

    .line 144
    if-ge v0, v3, :cond_a

    .line 145
    .line 146
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 147
    .line 148
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    .line 149
    .line 150
    aget-object v4, v4, v2

    .line 151
    .line 152
    aget-object v4, v4, v0

    .line 153
    .line 154
    aput-object v4, v3, v0

    .line 155
    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_a
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 160
    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 163
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw p0
.end method

.method public final parserTuneATCBLXML()V
    .locals 7

    .line 1
    const-string/jumbo v0, "atc"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    .line 5
    .line 6
    const-string/jumbo v2, "array_length: "

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "xml array size wrong: "

    .line 10
    .line 11
    .line 12
    :try_start_0
    const-string v4, "al"

    .line 13
    .line 14
    invoke-static {v1, v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const-string v5, "ExynosDisplayATC"

    .line 23
    .line 24
    if-gtz v4, :cond_1

    .line 25
    .line 26
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    array-length v0, v0

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    array-length v2, v0

    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    array-length v2, v0

    .line 63
    new-array v2, v2, [I

    .line 64
    .line 65
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 66
    .line 67
    array-length v2, v0

    .line 68
    new-array v2, v2, [I

    .line 69
    .line 70
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    move v3, v2

    .line 74
    :goto_0
    array-length v4, v0

    .line 75
    if-ge v3, v4, :cond_2

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 78
    .line 79
    aget-object v6, v0, v3

    .line 80
    .line 81
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    aput v6, v4, v3

    .line 86
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v6, "al: "

    .line 93
    .line 94
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 98
    .line 99
    aget v6, v6, v3

    .line 100
    .line 101
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    move v0, v2

    .line 115
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 116
    .line 117
    array-length v4, v3

    .line 118
    if-ge v0, v4, :cond_3

    .line 119
    .line 120
    aget v3, v3, v0

    .line 121
    .line 122
    const-string/jumbo v4, "bl"

    .line 123
    .line 124
    .line 125
    invoke-static {v3, v1, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLALText(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 130
    .line 131
    aget-object v3, v3, v2

    .line 132
    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    aput v3, v4, v0

    .line 138
    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 143
    .line 144
    array-length v0, v0

    .line 145
    if-ge v2, v0, :cond_4

    .line 146
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v1, "<bl>"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 158
    .line 159
    aget v1, v1, v2

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    .line 170
    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    :cond_4
    return-void
.end method

.method public final printSensorDeque()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-array v1, v0, [F

    .line 13
    .line 14
    new-array v0, v0, [J

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 23
    .line 24
    check-cast p0, Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    .line 49
    .line 50
    float-to-int v1, v1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", "

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    move-object v0, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 77
    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    const-string/jumbo p0, "que: "

    .line 81
    .line 82
    .line 83
    const-string v1, "ExynosDisplayATC"

    .line 84
    .line 85
    invoke-static {p0, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public final resetATC()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessInit:[I

    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-array v1, v2, [Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    move v3, v1

    .line 27
    :goto_0
    if-ge v3, v2, :cond_1

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 30
    .line 31
    aput-object v0, v4, v3

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    new-array v3, v2, [Ljava/lang/String;

    .line 41
    .line 42
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 43
    .line 44
    :cond_2
    move v3, v1

    .line 45
    :goto_1
    if-ge v3, v2, :cond_3

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    .line 48
    .line 49
    aput-object v0, v4, v3

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    .line 56
    .line 57
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    .line 58
    .line 59
    return-void
.end method

.method public final sendMessage()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    .line 11
    .line 12
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 27
    .line 28
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v2, v1, :cond_1

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 41
    .line 42
    aget-object v3, v3, v2

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    .line 54
    .line 55
    aget-object v4, v4, v2

    .line 56
    .line 57
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    .line 61
    .line 62
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    const/4 v1, 0x4

    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    .line 75
    .line 76
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final setBrightnessAdjustment(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-le v1, v2, :cond_4

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 8
    .line 9
    array-length v3, v1

    .line 10
    if-gt v3, v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    array-length v0, v0

    .line 14
    array-length v1, v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    move v0, v2

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 20
    .line 21
    array-length v3, v1

    .line 22
    if-ge v0, v3, :cond_3

    .line 23
    .line 24
    aget v1, v1, v0

    .line 25
    .line 26
    if-ge p1, v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    :goto_1
    sub-int/2addr v0, v2

    .line 33
    const-string/jumbo v1, "lux: "

    .line 34
    .line 35
    .line 36
    const-string v2, ", mBrightnessLux: "

    .line 37
    .line 38
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 43
    .line 44
    aget v1, v1, v0

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", mBrightnessSetting: "

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 55
    .line 56
    aget v1, v1, v0

    .line 57
    .line 58
    const-string v2, "ExynosDisplayATC"

    .line 59
    .line 60
    invoke-static {p1, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 64
    .line 65
    aget p1, p1, v0

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string/jumbo v0, "screen_brightness"

    .line 74
    .line 75
    .line 76
    const/4 v1, -0x2

    .line 77
    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_2
    return-void
.end method

.method public final setCountDownTimer(II)V
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-lt p1, v0, :cond_2

    .line 4
    .line 5
    if-gez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    mul-int/2addr p2, p1

    .line 9
    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo p2, "mTimeoutMs: "

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, ", mIntervalMs: "

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    .line 32
    .line 33
    const-string v0, "ExynosDisplayATC"

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLocalHandler:Landroid/os/Handler;

    .line 46
    .line 47
    new-instance p2, Lcom/android/server/display/exynos/ExynosDisplayATC$4;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$4;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v0, 0x0

    .line 53
    .line 54
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public final setLastLuminance(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "\\s*,\\s*"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aget-object v0, v0, v1

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 28
    .line 29
    check-cast v1, Ljava/util/ArrayDeque;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 38
    .line 39
    check-cast v1, Ljava/util/ArrayDeque;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-lt v1, v0, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 48
    .line 49
    check-cast v1, Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    const-wide/16 v3, 0x3e8

    .line 68
    .line 69
    div-long/2addr v1, v3

    .line 70
    iput-wide v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->timestamp:J

    .line 71
    .line 72
    int-to-float v1, p1

    .line 73
    iput v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    .line 76
    .line 77
    check-cast v1, Ljava/util/ArrayDeque;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->printSensorDeque()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->caculateLuminance()V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sendMessage()V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    .line 95
    .line 96
    array-length v1, v1

    .line 97
    if-le v1, v0, :cond_1

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    .line 100
    .line 101
    array-length v1, v1

    .line 102
    if-gt v1, v0, :cond_2

    .line 103
    .line 104
    :cond_1
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->parserTuneATCBLXML()V

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setBrightnessAdjustment(I)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final startCountDownTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final sysfsWriteOnOff(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_ONOFF_SYSFS_PATH:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "onoff : "

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z

    .line 7
    .line 8
    if-ne v2, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const-string v2, "ExynosDisplayATC"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " aps: "

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const-string v2, "0"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWrite(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_SFR_SYSFS_PATH:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sendEmptyUpdate()V

    .line 72
    .line 73
    .line 74
    const-wide/16 v0, 0x64

    .line 75
    .line 76
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    .line 80
    .line 81
    .line 82
    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :goto_2
    return-void
.end method
