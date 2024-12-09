.class public final Lcom/android/server/power/HqmDataDispatcher;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayStats:Landroid/util/SparseArray;

.field public mGlobalBrightness:F

.field public final mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

.field public final mHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    .line 14
    .line 15
    const-string v0, "HqmDataDispatcher"

    .line 16
    .line 17
    const-string v1, "HqmDataDispatcher()"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance v0, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    .line 25
    .line 26
    invoke-direct {v0, p0, p2}, Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;-><init>(Lcom/android/server/power/HqmDataDispatcher;Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/power/HqmDataDispatcher;->mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    .line 30
    .line 31
    const-string p2, "HqmManagerService"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/os/SemHqmManager;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/server/power/HqmDataDispatcher;->mHqmManager:Landroid/os/SemHqmManager;

    .line 40
    .line 41
    const-class p2, Landroid/os/BatteryManagerInternal;

    .line 42
    .line 43
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroid/os/BatteryManagerInternal;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/server/power/HqmDataDispatcher;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 50
    .line 51
    const-string p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 52
    .line 53
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance v1, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;-><init>(Lcom/android/server/power/HqmDataDispatcher;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    invoke-virtual {p1, v1, p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-gez p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 35
    .line 36
    return-object p0
.end method

.method public final noteScreenBrightness(FI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p2

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 9
    .line 10
    if-eqz v3, :cond_9

    .line 11
    .line 12
    if-ne v1, v2, :cond_9

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget v4, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-ne v4, v5, :cond_8

    .line 29
    .line 30
    sget v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_DIM:I

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, -0x1

    .line 34
    if-gt v3, v4, :cond_1

    .line 35
    .line 36
    move v5, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v4, 0xe6

    .line 39
    .line 40
    const/16 v8, 0xff

    .line 41
    .line 42
    if-lt v3, v4, :cond_2

    .line 43
    .line 44
    if-gt v3, v8, :cond_2

    .line 45
    .line 46
    move v5, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    if-le v3, v8, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move v5, v7

    .line 52
    :goto_1
    iget v4, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 53
    .line 54
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    if-eq v5, v4, :cond_5

    .line 60
    .line 61
    if-eq v4, v7, :cond_4

    .line 62
    .line 63
    iget-object v10, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    .line 64
    .line 65
    aget-wide v11, v10, v4

    .line 66
    .line 67
    long-to-float v11, v11

    .line 68
    iget-object v12, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 69
    .line 70
    aget-object v12, v12, v4

    .line 71
    .line 72
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v13

    .line 79
    move/from16 p2, v3

    .line 80
    .line 81
    iget-wide v2, v12, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    .line 82
    .line 83
    sub-long/2addr v13, v2

    .line 84
    long-to-double v2, v13

    .line 85
    div-double/2addr v2, v8

    .line 86
    double-to-float v2, v2

    .line 87
    add-float/2addr v2, v11

    .line 88
    float-to-long v2, v2

    .line 89
    aput-wide v2, v10, v4

    .line 90
    .line 91
    iput v7, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move/from16 p2, v3

    .line 95
    .line 96
    :goto_2
    iput v5, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 97
    .line 98
    if-eq v5, v7, :cond_6

    .line 99
    .line 100
    iget-object v2, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 101
    .line 102
    aget-object v2, v2, v5

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    iput-wide v3, v2, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    move/from16 p2, v3

    .line 115
    .line 116
    :cond_6
    :goto_3
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    .line 117
    .line 118
    if-eqz v2, :cond_8

    .line 119
    .line 120
    iget-boolean v2, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 121
    .line 122
    sget v3, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->BRIGHTNESS_HIGHEST:I

    .line 123
    .line 124
    move/from16 v4, p2

    .line 125
    .line 126
    if-nez v2, :cond_7

    .line 127
    .line 128
    if-ne v4, v3, :cond_7

    .line 129
    .line 130
    iget-object v2, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    iput-wide v3, v2, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    .line 140
    .line 141
    const/4 v2, 0x1

    .line 142
    iput-boolean v2, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_7
    if-eqz v2, :cond_8

    .line 146
    .line 147
    if-eq v4, v3, :cond_8

    .line 148
    .line 149
    if-eqz v2, :cond_8

    .line 150
    .line 151
    iget-wide v2, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 152
    .line 153
    long-to-float v2, v2

    .line 154
    iget-object v3, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 160
    .line 161
    .line 162
    move-result-wide v4

    .line 163
    iget-wide v10, v3, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    .line 164
    .line 165
    sub-long/2addr v4, v10

    .line 166
    long-to-double v3, v4

    .line 167
    div-double/2addr v3, v8

    .line 168
    double-to-float v3, v3

    .line 169
    add-float/2addr v3, v2

    .line 170
    float-to-long v2, v3

    .line 171
    iput-wide v2, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 172
    .line 173
    iput-boolean v6, v1, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 174
    .line 175
    :cond_8
    :goto_4
    move/from16 v1, p1

    .line 176
    .line 177
    iput v1, v0, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    .line 178
    .line 179
    :cond_9
    return-void
.end method

.method public final sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "sendDataSetToHqm: feature="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", dataSet="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "HqmDataDispatcher"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/power/HqmDataDispatcher;->mHqmManager:Landroid/os/SemHqmManager;

    .line 30
    .line 31
    const-string v7, "0.0"

    .line 32
    .line 33
    const-string/jumbo v8, "sec"

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const-string v4, "Display"

    .line 38
    .line 39
    const-string/jumbo v6, "sm"

    .line 40
    .line 41
    .line 42
    const-string v9, ""

    .line 43
    .line 44
    const-string v11, ""

    .line 45
    .line 46
    move-object v5, p1

    .line 47
    move-object v10, p2

    .line 48
    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
