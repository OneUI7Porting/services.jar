.class public final Lcom/android/server/power/PowerGroup;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public final mGroupId:I

.field public mIsSandmanSummoned:Z

.field public mLastGoToSleepReason:I

.field public mLastPowerOnTime:J

.field public mLastSleepTime:J

.field public mLastUserActivityEvent:I

.field public mLastUserActivityTime:J

.field public mLastUserActivityTimeNoChangeLights:J

.field public mLastWakeTime:J

.field public final mNotifier:Lcom/android/server/power/Notifier;

.field public mPoweringOn:Z

.field public mReady:Z

.field public final mSupportsSandman:Z

.field public final mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

.field public mUserActivitySummary:I

.field public mWakeLockSummary:I

.field public mWakefulness:I

.field public final mWakefulnessListener:Lcom/android/server/power/PowerManagerService$1;


# direct methods
.method public constructor <init>(ILcom/android/server/power/PowerManagerService$1;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;ZJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 3
    new-instance v0, Lcom/android/server/power/SuspendBlockerMonitor;

    .line 4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    .line 6
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 7
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerManagerService$1;

    .line 8
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 9
    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 12
    iput-boolean p5, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 13
    iput-wide p6, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 14
    iput-wide p6, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerService$1;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;J)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 17
    new-instance v0, Lcom/android/server/power/SuspendBlockerMonitor;

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 21
    iput-object p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerManagerService$1;

    .line 22
    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    .line 23
    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 25
    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    .line 26
    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    .line 27
    iput-wide p4, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 28
    iput-wide p4, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    return-void
.end method


# virtual methods
.method public getDesiredScreenPolicyLocked(ZZZZZ)I
    .locals 8

    const-wide/16 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 7
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerGroup;->getDesiredScreenPolicyLocked(ZZZZZJ)I

    move-result p0

    return p0
.end method

.method public getDesiredScreenPolicyLocked(ZZZZZJ)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 2
    iget v1, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 3
    iget v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_2

    return p1

    :cond_2
    if-eqz p2, :cond_3

    return v2

    :cond_3
    if-eqz p5, :cond_4

    return v4

    :cond_4
    and-int/lit8 p2, v1, 0x2

    if-nez p2, :cond_7

    if-eqz p3, :cond_7

    .line 4
    iget p2, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    and-int/2addr p1, p2

    if-nez p1, :cond_7

    if-eqz p4, :cond_5

    goto :goto_0

    :cond_5
    const-wide/16 p1, 0x0

    cmp-long p1, p6, p1

    if-nez p1, :cond_6

    and-int/lit8 p1, v1, 0x4

    if-nez p1, :cond_6

    .line 5
    iget-object p1, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    iget-object p0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    return p0

    :cond_6
    return v3

    :cond_7
    :goto_0
    return v4

    :cond_8
    :goto_1
    return v2
.end method

.method public final getSuspendBlockerMonitorInfo()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xf0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "    [Group] Id = "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/power/SuspendBlockerMonitor;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    const-string p0, ""

    .line 38
    .line 39
    return-object p0
.end method

.method public final setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v6, p1

    .line 4
    .line 5
    move-wide/from16 v14, p2

    .line 6
    .line 7
    move/from16 v4, p5

    .line 8
    .line 9
    iget v1, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 10
    .line 11
    if-eq v1, v6, :cond_b

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-ne v6, v5, :cond_0

    .line 15
    .line 16
    iput-wide v14, v0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    .line 17
    .line 18
    iput-boolean v5, v0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    .line 19
    .line 20
    iput-wide v14, v0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iput-wide v14, v0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    .line 36
    .line 37
    :cond_1
    :goto_0
    iput v6, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 38
    .line 39
    iget-object v3, v0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerManagerService$1;

    .line 40
    .line 41
    iget-object v7, v3, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 42
    .line 43
    iput-boolean v5, v7, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    .line 44
    .line 45
    iget v1, v7, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    or-int/2addr v1, v2

    .line 49
    iput v1, v7, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iget v0, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    .line 53
    .line 54
    if-ne v6, v5, :cond_3

    .line 55
    .line 56
    const/16 v8, 0xd

    .line 57
    .line 58
    if-ne v4, v8, :cond_2

    .line 59
    .line 60
    move v12, v5

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v12, v1

    .line 63
    :goto_1
    iget-object v8, v7, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    check-cast v8, Lcom/android/server/power/PowerGroup;

    .line 70
    .line 71
    const/4 v11, 0x0

    .line 72
    move-wide/from16 v9, p2

    .line 73
    .line 74
    move/from16 v13, p4

    .line 75
    .line 76
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v10, v3, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 80
    .line 81
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    .line 82
    .line 83
    if-eqz v7, :cond_4

    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    iget v8, v10, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 88
    .line 89
    and-int/lit16 v8, v8, 0x100

    .line 90
    .line 91
    if-eqz v8, :cond_4

    .line 92
    .line 93
    if-eq v6, v5, :cond_4

    .line 94
    .line 95
    invoke-virtual {v7, v5}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget v7, v10, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 99
    .line 100
    const/high16 v8, 0x10000

    .line 101
    .line 102
    or-int/2addr v7, v8

    .line 103
    iput v7, v10, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 104
    .line 105
    const/4 v11, 0x4

    .line 106
    if-nez v0, :cond_8

    .line 107
    .line 108
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 109
    .line 110
    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    iget-object v7, v7, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 115
    .line 116
    iget-object v7, v7, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 117
    .line 118
    iget-object v7, v7, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 119
    .line 120
    invoke-interface {v7, v8}, Lcom/android/server/input/NativeInputManagerService;->setInteractiveForInternalDisplay(Z)V

    .line 121
    .line 122
    .line 123
    iget-boolean v7, v10, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 124
    .line 125
    if-eqz v7, :cond_5

    .line 126
    .line 127
    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-nez v7, :cond_5

    .line 132
    .line 133
    if-ne v4, v11, :cond_5

    .line 134
    .line 135
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    .line 136
    .line 137
    new-instance v8, Lcom/android/server/power/PowerManagerService$LocalService$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    const/4 v9, 0x2

    .line 140
    invoke-direct {v8, v9, v3}, Lcom/android/server/power/PowerManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object v9, v10, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 144
    .line 145
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide v12

    .line 152
    invoke-virtual {v7, v8, v12, v13}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 153
    .line 154
    .line 155
    :cond_5
    iget-boolean v7, v10, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    .line 156
    .line 157
    if-eqz v7, :cond_6

    .line 158
    .line 159
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mSmartStayController:Lcom/android/server/power/SmartStayController;

    .line 160
    .line 161
    iput v6, v7, Lcom/android/server/power/SmartStayController;->mWakefulness:I

    .line 162
    .line 163
    if-eq v6, v5, :cond_6

    .line 164
    .line 165
    iget-object v8, v7, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    .line 167
    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    .line 169
    .line 170
    iput-boolean v1, v7, Lcom/android/server/power/SmartStayController;->mFaceDetected:Z

    .line 171
    .line 172
    :cond_6
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    .line 173
    .line 174
    if-eqz v7, :cond_7

    .line 175
    .line 176
    iput v6, v7, Lcom/android/server/power/ScreenCurtainController;->mWakefulness:I

    .line 177
    .line 178
    :cond_7
    iget-object v7, v10, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    .line 179
    .line 180
    if-eqz v7, :cond_8

    .line 181
    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string/jumbo v9, "onWakefulnessChangedLocked: wakefulness="

    .line 185
    .line 186
    .line 187
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    const-string v9, "ScreenOnKeeper"

    .line 202
    .line 203
    invoke-static {v9, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    iput v6, v7, Lcom/android/server/power/ScreenOnKeeper;->mWakefulness:I

    .line 207
    .line 208
    iget-boolean v8, v7, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    .line 209
    .line 210
    if-eqz v8, :cond_8

    .line 211
    .line 212
    invoke-static/range {p1 .. p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-nez v8, :cond_8

    .line 217
    .line 218
    invoke-virtual {v7}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v1}, Lcom/android/server/power/ScreenOnKeeper;->notifyScreenOnKeeperDisabledLocked(I)V

    .line 222
    .line 223
    .line 224
    :cond_8
    iget-object v1, v10, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 225
    .line 226
    move v12, v0

    .line 227
    move-object v0, v1

    .line 228
    move v1, v12

    .line 229
    move v13, v2

    .line 230
    move/from16 v2, p1

    .line 231
    .line 232
    move-object v9, v3

    .line 233
    move/from16 v3, p5

    .line 234
    .line 235
    move v7, v5

    .line 236
    move-wide/from16 v4, p2

    .line 237
    .line 238
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->onGroupWakefulnessChangeStarted(IIIJ)V

    .line 239
    .line 240
    .line 241
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    .line 242
    .line 243
    if-eqz v0, :cond_9

    .line 244
    .line 245
    if-nez v12, :cond_9

    .line 246
    .line 247
    if-ne v6, v7, :cond_9

    .line 248
    .line 249
    iget-boolean v0, v10, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 250
    .line 251
    if-eqz v0, :cond_9

    .line 252
    .line 253
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 254
    .line 255
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->contains(I)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_9

    .line 260
    .line 261
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 262
    .line 263
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    move-object v1, v0

    .line 268
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 269
    .line 270
    const/16 v16, 0x0

    .line 271
    .line 272
    const/16 v4, 0xb

    .line 273
    .line 274
    move-object v0, v10

    .line 275
    move-wide/from16 v2, p2

    .line 276
    .line 277
    move-object/from16 v5, p8

    .line 278
    .line 279
    move/from16 v6, p4

    .line 280
    .line 281
    move-object/from16 v7, p7

    .line 282
    .line 283
    move/from16 v8, p6

    .line 284
    .line 285
    move-object/from16 v17, v9

    .line 286
    .line 287
    move/from16 v9, v16

    .line 288
    .line 289
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    .line 290
    .line 291
    .line 292
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 293
    .line 294
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    move-object v1, v0

    .line 299
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 300
    .line 301
    const/4 v4, 0x0

    .line 302
    const/4 v5, 0x0

    .line 303
    move-object v0, v10

    .line 304
    move-wide/from16 v2, p2

    .line 305
    .line 306
    move/from16 v6, p4

    .line 307
    .line 308
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 309
    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_9
    move-object/from16 v17, v9

    .line 313
    .line 314
    :goto_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    .line 315
    .line 316
    if-eqz v0, :cond_a

    .line 317
    .line 318
    if-nez v12, :cond_a

    .line 319
    .line 320
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 321
    .line 322
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->contains(I)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_a

    .line 327
    .line 328
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 329
    .line 330
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    move-object v1, v0

    .line 335
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 336
    .line 337
    const/4 v9, 0x0

    .line 338
    const/16 v4, 0xb

    .line 339
    .line 340
    move-object v0, v10

    .line 341
    move-wide/from16 v2, p2

    .line 342
    .line 343
    move-object/from16 v5, p8

    .line 344
    .line 345
    move/from16 v6, p4

    .line 346
    .line 347
    move-object/from16 v7, p7

    .line 348
    .line 349
    move/from16 v8, p6

    .line 350
    .line 351
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    .line 352
    .line 353
    .line 354
    iget-object v0, v10, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 355
    .line 356
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    move-object v1, v0

    .line 361
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 362
    .line 363
    const/4 v4, 0x0

    .line 364
    const/4 v5, 0x0

    .line 365
    move-object v0, v10

    .line 366
    move-wide/from16 v2, p2

    .line 367
    .line 368
    move/from16 v6, p4

    .line 369
    .line 370
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    .line 371
    .line 372
    .line 373
    :cond_a
    move-object/from16 v0, v17

    .line 374
    .line 375
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 376
    .line 377
    move/from16 v1, p5

    .line 378
    .line 379
    move/from16 v2, p4

    .line 380
    .line 381
    move-object/from16 v3, p7

    .line 382
    .line 383
    move-object/from16 v4, p8

    .line 384
    .line 385
    move/from16 v5, p6

    .line 386
    .line 387
    move-wide/from16 v6, p2

    .line 388
    .line 389
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerManagerService;->updateGlobalWakefulnessLocked(IILjava/lang/String;Ljava/lang/String;IJ)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v10}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 393
    .line 394
    .line 395
    :cond_b
    return-void
.end method
