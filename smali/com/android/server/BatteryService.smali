.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final ACTION_ENTER_DESK_MODE:Ljava/lang/String;

.field public static final ACTION_EXIT_DESK_MODE:Ljava/lang/String;

.field public static final ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

.field public static final DUMPSYS_ARGS:[Ljava/lang/String;

.field public static final FEATURE_HICCUP_CONTROL:Z

.field public static final FEATURE_SUPPORTED_DAILY_BOARD:Z

.field public static final FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

.field public static final PACKAGE_DEVICE_CARE:Ljava/lang/String;

.field public static final TAG_SS:Ljava/lang/String;


# instance fields
.field public isVideoCall:Z

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityManagerReady:Z

.field public final mAdaptiveFastChargingOffset:I

.field public mAdaptiveFastChargingSettingsEnable:Z

.field public final mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mAfcDisableSysFs:Ljava/lang/String;

.field public final mAudioModeChangeReceiver:Lcom/android/server/BatteryService$2;

.field public mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

.field public final mBattSlateModeControlReceiver:Lcom/android/server/BatteryService$5;

.field public final mBatteryChangedConditionCounts:[I

.field public final mBatteryChangedOptions:Landroid/os/Bundle;

.field public mBatteryInputSuspended:Z

.field public mBatteryLevelCritical:Z

.field public mBatteryLevelLow:Z

.field public final mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

.field public mBatteryMaxCurrent:J

.field public mBatteryMaxTemp:J

.field public final mBatteryOptions:Landroid/os/Bundle;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBinderService:Lcom/android/server/BatteryService$BinderService;

.field public mBootCompleted:Z

.field public final mBootCompletedReceiver:Lcom/android/server/BatteryService$2;

.field public final mCallHandler:Lcom/android/server/BatteryService$1;

.field public final mCallHandlerThread:Landroid/os/HandlerThread;

.field public mChargeStartLevel:I

.field public mChargeStartTime:J

.field public final mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mContext:Landroid/content/Context;

.field public final mCriticalBatteryLevel:I

.field public mCurrentCalendar:Ljava/util/Calendar;

.field public final mDexReceiver:Lcom/android/server/BatteryService$2;

.field public mDischargeStartLevel:I

.field public mDischargeStartTime:J

.field public final mEnableIqi:Z

.field public final mFastWirelessAutoModeReceiver:Lcom/android/server/BatteryService$2;

.field public mFullCapacityEnable:Z

.field public final mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

.field public mHealthInfo:Landroid/hardware/health/HealthInfo;

.field public mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

.field public final mHiccupControlReceiver:Lcom/android/server/BatteryService$2;

.field public final mIntentReceiver:Lcom/android/server/BatteryService$2;

.field public mInvalidCharger:I

.field public mIsFirstIntentSended:Z

.field public mIsHiccupPopupShowing:Z

.field public mIsSkipActionBatteryChanged:Z

.field public mIsUnlockedBootCompleted:Z

.field public mIsWirelessTxSupported:Z

.field public mLastBatteryChargeType:I

.field public mLastBatteryCurrentEvent:I

.field public mLastBatteryCurrentNow:I

.field public mLastBatteryCycleCount:I

.field public mLastBatteryEvent:I

.field public mLastBatteryEventWaterInConnector:Z

.field public mLastBatteryHealth:I

.field public mLastBatteryHighVoltageCharger:I

.field public mLastBatteryLevel:I

.field public mLastBatteryLevelChangedSentMs:J

.field public mLastBatteryLevelCritical:Z

.field public mLastBatteryOnline:I

.field public mLastBatteryPowerSharingOnline:Z

.field public mLastBatteryPresent:Z

.field public mLastBatteryStatus:I

.field public mLastBatteryTemperature:I

.field public mLastBatteryVoltage:I

.field public mLastChargingPolicy:I

.field public mLastCharingState:I

.field public mLastDeterioration:I

.field public mLastInvalidCharger:I

.field public mLastLowBatteryWarningLevel:I

.field public mLastMaxChargingCurrent:I

.field public mLastMaxChargingVoltage:I

.field public mLastPlugType:I

.field public mLastSecPlugTypeSummary:I

.field public final mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

.field public mLastTxEventRxConnected:Z

.field public mLastTxEventTxEnabled:Z

.field public mLastWcTxId:I

.field public mLastWirelessBackPackChargingStatus:Z

.field public mLastWirelessChargingStatus:Z

.field public mLastWirelessPinDetected:Z

.field public mLastWirelessPowerSharingExternelEvent:I

.field public mLastWirelessPowerSharingTxEvent:I

.field public mLastchargerPogoOnline:Z

.field public mLatestWirelessChargingMode:I

.field public final mLed:Lcom/android/server/BatteryService$Led;

.field public mLedChargingSettingsEnable:Z

.field public mLedLowBatterySettingsEnable:Z

.field public final mLedSettingsObserver:Lcom/android/server/BatteryService$15;

.field public mLifeExtender:Z

.field public final mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mLock:Ljava/lang/Object;

.field public final mLockBatteryInfoBackUp:Ljava/lang/Object;

.field public mLongBatteryRetryCnt:I

.field public mLowBatteryCloseWarningLevel:I

.field public mLowBatteryWarningLevel:I

.field public mLtcHighSocDuration:I

.field public mLtcHighThreshold:I

.field public mLtcReleaseThreshold:I

.field public mManufactureDate:Ljava/lang/String;

.field public mMaximumProtectionThreshold:I

.field public mMaximumProtectionThresholdObserver:Lcom/android/server/BatteryService$15;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mNotifyWirelessEnabled:Z

.field public mPassThroughSettingsEnable:Z

.field public final mPassThroughSettingsObserver:Lcom/android/server/BatteryService$15;

.field public mPlugType:I

.field public mPogoCondition:I

.field public mPogoDockState:I

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mPowerOptions:Landroid/os/Bundle;

.field public mProtectBatteryMode:I

.field public mProtectionThreshold:I

.field public mRefreshRateModeSetting:I

.field public final mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mRequestOtgChargeBlockReceiver:Lcom/android/server/BatteryService$2;

.field public mRfCalDate:Ljava/lang/String;

.field public final mSaveBatteryMaxCurrentRunnable:Lcom/android/server/BatteryService$16;

.field public final mSaveBatteryMaxTempRunnable:Lcom/android/server/BatteryService$16;

.field public mSavedBatteryMaxCurrent:J

.field public mSavedBatteryMaxTemp:J

.field public mSavedDiffWeek:I

.field public mScreenOn:Z

.field public mSecPlugTypeSummary:I

.field public mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

.field public mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mSentLowBatteryBroadcast:Z

.field public mSequence:I

.field public final mShutdownIfNoPower:Z

.field public final mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

.field public mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

.field public mSleepChargingHandler:Lcom/android/server/BatteryService$1;

.field public mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

.field public final mSuperFastChargingOffset:I

.field public mSuperFastChargingSettingsEnable:Z

.field public final mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mToken:Landroid/os/IBinder;

.field public mTxBatteryLimit:I

.field public final mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

.field public final mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

.field public mUpdatesStopped:Z

.field public mWasUsedWirelessFastChargerPreviously:Z

.field public final mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mWcParamOffset:I

.field public mWcTxId:I

.field public final mWirelessFastChargingOffset:I

.field public mWirelessFastChargingSettingsEnable:Z

.field public final mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mWirelessPowerSharingReceiver:Lcom/android/server/BatteryService$2;

.field public final tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public static -$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "[activateSleepChargingManager]activate:"

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v3, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v0, "[activateSleepChargingManager]activated multiple times => ignored"

    .line 34
    .line 35
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_0
    const-string v1, "[createSleepChargingHandler]"

    .line 41
    .line 42
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/android/server/BatteryService$1;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-direct {v1, v0, v2, v4}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V

    .line 53
    .line 54
    .line 55
    iput-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Lcom/android/server/BatteryService$1;

    .line 56
    .line 57
    new-instance v6, Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget v4, v0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 62
    .line 63
    invoke-direct {v6, v2, v1, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService$1;I)V

    .line 64
    .line 65
    .line 66
    iput-object v6, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget v7, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 73
    .line 74
    iget v8, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 75
    .line 76
    iget-wide v9, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 77
    .line 78
    iget-object v1, v6, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 79
    .line 80
    new-instance v2, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;

    .line 81
    .line 82
    move-object v5, v2

    .line 83
    invoke-direct/range {v5 .. v10}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;IIJ)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    new-instance v13, Landroid/content/IntentFilter;

    .line 90
    .line 91
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v1, "[createSleepChargingDismissReceiver]"

    .line 101
    .line 102
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    new-instance v12, Lcom/android/server/BatteryService$2;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-direct {v12, v0, v1}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 109
    .line 110
    .line 111
    iput-object v12, v0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

    .line 112
    .line 113
    iget-object v11, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    const-string/jumbo v14, "com.samsung.permission.WRITE_SM_DATA"

    .line 116
    .line 117
    .line 118
    const/4 v15, 0x0

    .line 119
    const/16 v16, 0x2

    .line 120
    .line 121
    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    iget-object v3, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    .line 134
    .line 135
    iput-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

    .line 136
    .line 137
    :cond_3
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 138
    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    const-string v3, "[SS]SleepChargingManager"

    .line 142
    .line 143
    const-string v4, "[end]"

    .line 144
    .line 145
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    const-string v3, "SleepChargingManager end"

    .line 149
    .line 150
    const-string v5, ""

    .line 151
    .line 152
    const-string v6, "/data/log/battery_service/sleep_charging_history"

    .line 153
    .line 154
    invoke-static {v6, v3, v5}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/4 v3, 0x2

    .line 158
    const-string v5, "[Deactivated]"

    .line 159
    .line 160
    invoke-static {v3, v5}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v3, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    const-string v5, "[SS]SleepChargingTimeController"

    .line 169
    .line 170
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    const/4 v4, 0x1

    .line 174
    iput-boolean v4, v3, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    .line 175
    .line 176
    const/4 v5, 0x0

    .line 177
    invoke-virtual {v3, v5}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateTimeReachedReceiver(Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v4}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->reset(Z)V

    .line 181
    .line 182
    .line 183
    iget-object v3, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 184
    .line 185
    if-eqz v3, :cond_4

    .line 186
    .line 187
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    iget-object v3, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 191
    .line 192
    if-eqz v3, :cond_5

    .line 193
    .line 194
    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 195
    .line 196
    .line 197
    iput-object v2, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 198
    .line 199
    :cond_5
    iput-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 200
    .line 201
    :cond_6
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Lcom/android/server/BatteryService$1;

    .line 202
    .line 203
    if-eqz v1, :cond_7

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iput-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Lcom/android/server/BatteryService$1;

    .line 209
    .line 210
    :cond_7
    :goto_0
    return-void
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 64

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    const-string v11, "  mSavedBatteryBsoh: "

    .line 8
    .line 9
    const-string v12, "  mSavedBatteryMaxCurrent: "

    .line 10
    .line 11
    const-string v13, "  mSavedBatteryMaxTemp: "

    .line 12
    .line 13
    const-string/jumbo v2, "mBatteryChangedConditionCounts:"

    .line 14
    .line 15
    .line 16
    const-string v3, "  mSavedFullStatusDuration: "

    .line 17
    .line 18
    const-string v4, "  mSavedBatteryUsage: "

    .line 19
    .line 20
    const-string v5, "  BATTERY_HISTORY: "

    .line 21
    .line 22
    const-string v6, "  mSavedBatteryAsoc: "

    .line 23
    .line 24
    const-string v7, "  battery FirstUseDate: "

    .line 25
    .line 26
    const-string v8, "  battery IcAuthenticationResults: "

    .line 27
    .line 28
    const-string v9, "  FEATURE_FULL_BATTERY_CYCLE: "

    .line 29
    .line 30
    const-string v14, "  FEATURE_SAVE_BATTERY_CYCLE: "

    .line 31
    .line 32
    const-string v15, " mLtcReleaseThreshold: "

    .line 33
    .line 34
    move-object/from16 v16, v11

    .line 35
    .line 36
    const-string v11, " mLtcHighSocDuration: "

    .line 37
    .line 38
    move-object/from16 v17, v12

    .line 39
    .line 40
    const-string v12, " mLtcHighThreshold: "

    .line 41
    .line 42
    move-object/from16 v18, v13

    .line 43
    .line 44
    const-string v13, " mMaximumProtectionThreshold: "

    .line 45
    .line 46
    move-object/from16 v19, v2

    .line 47
    .line 48
    const-string v2, " mProtectionThreshold: "

    .line 49
    .line 50
    move-object/from16 v20, v3

    .line 51
    .line 52
    const-string v3, " mProtectBatteryMode: "

    .line 53
    .line 54
    move-object/from16 v21, v4

    .line 55
    .line 56
    const-string v4, "SEC_FEATURE_USE_WIRELESS_POWER_SHARING: "

    .line 57
    .line 58
    move-object/from16 v22, v5

    .line 59
    .line 60
    const-string v5, "SEC_FEATURE_BATTERY_LIFE_EXTENDER: "

    .line 61
    .line 62
    move-object/from16 v23, v6

    .line 63
    .line 64
    const-string v6, "FEATURE_SUPPORTED_DAILY_BOARD: "

    .line 65
    .line 66
    move-object/from16 v24, v7

    .line 67
    .line 68
    const-string v7, "FEATURE_HICCUP_CONTROL: "

    .line 69
    .line 70
    move-object/from16 v25, v8

    .line 71
    .line 72
    const-string v8, "  mFullCapacityEnable: "

    .line 73
    .line 74
    move-object/from16 v26, v9

    .line 75
    .line 76
    const-string v9, "SEC_FEATURE_BATTERY_FULL_CAPACITY: "

    .line 77
    .line 78
    move-object/from16 v27, v14

    .line 79
    .line 80
    const-string v14, "LLB DIFF: "

    .line 81
    .line 82
    move-object/from16 v28, v15

    .line 83
    .line 84
    const-string v15, "LLB CURRENT: YEAR"

    .line 85
    .line 86
    move-object/from16 v29, v11

    .line 87
    .line 88
    const-string v11, "LLB MAN: "

    .line 89
    .line 90
    move-object/from16 v30, v12

    .line 91
    .line 92
    const-string v12, "LLB CAL: "

    .line 93
    .line 94
    move-object/from16 v31, v13

    .line 95
    .line 96
    const-string v13, "  mWirelessFastChargingSettingsEnable: "

    .line 97
    .line 98
    move-object/from16 v32, v2

    .line 99
    .line 100
    const-string v2, "  mWasUsedWirelessFastChargerPreviously: "

    .line 101
    .line 102
    move-object/from16 v33, v3

    .line 103
    .line 104
    const-string v3, "FEATURE_WIRELESS_FAST_CHARGER_CONTROL: "

    .line 105
    .line 106
    move-object/from16 v34, v4

    .line 107
    .line 108
    const-string v4, "  Super Fast Charging Settings: "

    .line 109
    .line 110
    move-object/from16 v35, v5

    .line 111
    .line 112
    const-string v5, "  Adaptive Fast Charging Settings: "

    .line 113
    .line 114
    move-object/from16 v36, v6

    .line 115
    .line 116
    const-string v6, "  charge counter: "

    .line 117
    .line 118
    move-object/from16 v37, v7

    .line 119
    .line 120
    const-string v7, "  current now: "

    .line 121
    .line 122
    move-object/from16 v38, v8

    .line 123
    .line 124
    const-string v8, "  LED Low Battery: "

    .line 125
    .line 126
    move-object/from16 v39, v9

    .line 127
    .line 128
    const-string v9, "  LED Charging: "

    .line 129
    .line 130
    move-object/from16 v40, v14

    .line 131
    .line 132
    const-string v14, "  mSecPlugTypeSummary: "

    .line 133
    .line 134
    move-object/from16 v41, v15

    .line 135
    .line 136
    const-string v15, "  batteryCurrentEvent: "

    .line 137
    .line 138
    move-object/from16 v42, v11

    .line 139
    .line 140
    const-string v11, "  batteryMiscEvent: "

    .line 141
    .line 142
    move-object/from16 v43, v12

    .line 143
    .line 144
    const-string v12, "  Charging policy: "

    .line 145
    .line 146
    move-object/from16 v44, v13

    .line 147
    .line 148
    const-string v13, "  Charging state: "

    .line 149
    .line 150
    move-object/from16 v45, v2

    .line 151
    .line 152
    const-string v2, "  technology: "

    .line 153
    .line 154
    move-object/from16 v46, v3

    .line 155
    .line 156
    const-string v3, "  temperature: "

    .line 157
    .line 158
    move-object/from16 v47, v4

    .line 159
    .line 160
    const-string v4, "  voltage: "

    .line 161
    .line 162
    move-object/from16 v48, v5

    .line 163
    .line 164
    const-string v5, "  level: "

    .line 165
    .line 166
    move-object/from16 v49, v6

    .line 167
    .line 168
    const-string v6, "  present: "

    .line 169
    .line 170
    move-object/from16 v50, v7

    .line 171
    .line 172
    const-string v7, "  health: "

    .line 173
    .line 174
    move-object/from16 v51, v8

    .line 175
    .line 176
    const-string v8, "  status: "

    .line 177
    .line 178
    move-object/from16 v52, v9

    .line 179
    .line 180
    const-string v9, "  Charge counter: "

    .line 181
    .line 182
    move-object/from16 v53, v14

    .line 183
    .line 184
    const-string v14, "  Max charging voltage: "

    .line 185
    .line 186
    move-object/from16 v54, v15

    .line 187
    .line 188
    const-string v15, "  Max charging current: "

    .line 189
    .line 190
    move-object/from16 v55, v11

    .line 191
    .line 192
    const-string v11, "  Dock powered: "

    .line 193
    .line 194
    move-object/from16 v56, v12

    .line 195
    .line 196
    const-string v12, "  Wireless powered: "

    .line 197
    .line 198
    move-object/from16 v57, v13

    .line 199
    .line 200
    const-string v13, "  USB powered: "

    .line 201
    .line 202
    move-object/from16 v58, v2

    .line 203
    .line 204
    const-string v2, "  AC powered: "

    .line 205
    .line 206
    move-object/from16 v59, v8

    .line 207
    .line 208
    iget-object v8, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 209
    .line 210
    monitor-enter v8

    .line 211
    move-object/from16 v60, v3

    .line 212
    .line 213
    move-object/from16 v61, v8

    .line 214
    .line 215
    const/16 v62, 0x0

    .line 216
    .line 217
    if-eqz v10, :cond_1

    .line 218
    .line 219
    :try_start_0
    array-length v8, v10

    .line 220
    if-eqz v8, :cond_1

    .line 221
    .line 222
    const-string v8, "-a"

    .line 223
    .line 224
    aget-object v3, v10, v62

    .line 225
    .line 226
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_0

    .line 231
    .line 232
    const/4 v3, 0x1

    .line 233
    goto :goto_0

    .line 234
    :cond_0
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    .line 235
    .line 236
    invoke-direct {v2, v0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 237
    .line 238
    .line 239
    iget-object v3, v0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 240
    .line 241
    new-instance v9, Landroid/os/ResultReceiver;

    .line 242
    .line 243
    const/4 v8, 0x0

    .line 244
    invoke-direct {v9, v8}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 245
    .line 246
    .line 247
    const/4 v8, 0x0

    .line 248
    const/4 v4, 0x0

    .line 249
    const/4 v6, 0x0

    .line 250
    move-object/from16 v5, p1

    .line 251
    .line 252
    move-object/from16 v7, p3

    .line 253
    .line 254
    const/4 v11, 0x1

    .line 255
    invoke-virtual/range {v2 .. v9}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 256
    .line 257
    .line 258
    move v3, v11

    .line 259
    goto/16 :goto_5

    .line 260
    .line 261
    :catchall_0
    move-exception v0

    .line 262
    goto/16 :goto_8

    .line 263
    .line 264
    :cond_1
    const/4 v3, 0x1

    .line 265
    const/4 v8, 0x0

    .line 266
    :goto_0
    const-string v8, "Current Battery Service state:"

    .line 267
    .line 268
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-boolean v8, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 272
    .line 273
    if-eqz v8, :cond_2

    .line 274
    .line 275
    const-string v8, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    .line 276
    .line 277
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 286
    .line 287
    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 288
    .line 289
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 305
    .line 306
    iget-boolean v8, v8, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 307
    .line 308
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 324
    .line 325
    iget-boolean v8, v8, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 326
    .line 327
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 343
    .line 344
    iget-boolean v8, v8, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 345
    .line 346
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 362
    .line 363
    iget v8, v8, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 364
    .line 365
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 381
    .line 382
    iget v8, v8, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 383
    .line 384
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 400
    .line 401
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 402
    .line 403
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    move-object/from16 v8, v59

    .line 416
    .line 417
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 421
    .line 422
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 423
    .line 424
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    iget-object v7, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 440
    .line 441
    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 442
    .line 443
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 459
    .line 460
    iget-boolean v6, v6, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 461
    .line 462
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 478
    .line 479
    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 480
    .line 481
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    const-string v2, "  scale: 100"

    .line 492
    .line 493
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 502
    .line 503
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 504
    .line 505
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    move-object/from16 v4, v60

    .line 518
    .line 519
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 523
    .line 524
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 525
    .line 526
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    move-object/from16 v4, v58

    .line 539
    .line 540
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 544
    .line 545
    iget-object v4, v4, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 546
    .line 547
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    move-object/from16 v4, v57

    .line 560
    .line 561
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 565
    .line 566
    iget v4, v4, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 567
    .line 568
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    move-object/from16 v4, v56

    .line 581
    .line 582
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 586
    .line 587
    iget v4, v4, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    .line 588
    .line 589
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    move-object/from16 v4, v55

    .line 602
    .line 603
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget-object v4, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 607
    .line 608
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 609
    .line 610
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    move-object/from16 v4, v54

    .line 623
    .line 624
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    iget-object v4, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 628
    .line 629
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 630
    .line 631
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    move-object/from16 v4, v53

    .line 644
    .line 645
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    iget v4, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 649
    .line 650
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    .line 661
    .line 662
    move-object/from16 v4, v52

    .line 663
    .line 664
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 668
    .line 669
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    move-object/from16 v4, v51

    .line 682
    .line 683
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 687
    .line 688
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    iget-object v2, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 699
    .line 700
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 701
    .line 702
    const/high16 v4, -0x80000000

    .line 703
    .line 704
    if-eq v2, v4, :cond_3

    .line 705
    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    move-object/from16 v5, v50

    .line 709
    .line 710
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 714
    .line 715
    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 716
    .line 717
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    :cond_3
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 728
    .line 729
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 730
    .line 731
    if-eq v2, v4, :cond_4

    .line 732
    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    move-object/from16 v4, v49

    .line 736
    .line 737
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 741
    .line 742
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 743
    .line 744
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 755
    .line 756
    move-object/from16 v4, v48

    .line 757
    .line 758
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 762
    .line 763
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    .line 774
    .line 775
    move-object/from16 v4, v47

    .line 776
    .line 777
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    .line 781
    .line 782
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    .line 793
    .line 794
    move-object/from16 v4, v46

    .line 795
    .line 796
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    sget-boolean v4, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    .line 800
    .line 801
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v2

    .line 808
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    move-object/from16 v4, v45

    .line 814
    .line 815
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 819
    .line 820
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v2

    .line 827
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    move-object/from16 v4, v44

    .line 833
    .line 834
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 838
    .line 839
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v2

    .line 846
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    .line 850
    .line 851
    move-object/from16 v4, v43

    .line 852
    .line 853
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    iget-object v4, v0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    .line 857
    .line 858
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v2

    .line 865
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    .line 869
    .line 870
    move-object/from16 v4, v42

    .line 871
    .line 872
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    iget-object v4, v0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    .line 876
    .line 877
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    iget-object v2, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 888
    .line 889
    if-eqz v2, :cond_5

    .line 890
    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    .line 892
    .line 893
    move-object/from16 v4, v41

    .line 894
    .line 895
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    iget-object v4, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 899
    .line 900
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    .line 901
    .line 902
    .line 903
    move-result v4

    .line 904
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    const-string v4, "M"

    .line 908
    .line 909
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    iget-object v4, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 913
    .line 914
    const/4 v5, 0x2

    .line 915
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 916
    .line 917
    .line 918
    move-result v4

    .line 919
    add-int/2addr v4, v3

    .line 920
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    const-string v4, "D"

    .line 924
    .line 925
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    iget-object v4, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    .line 929
    .line 930
    const/4 v5, 0x5

    .line 931
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 932
    .line 933
    .line 934
    move-result v4

    .line 935
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v2

    .line 942
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    .line 946
    .line 947
    move-object/from16 v4, v40

    .line 948
    .line 949
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    iget v4, v0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 953
    .line 954
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 965
    .line 966
    move-object/from16 v4, v39

    .line 967
    .line 968
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    .line 972
    .line 973
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    .line 984
    .line 985
    move-object/from16 v4, v38

    .line 986
    .line 987
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 991
    .line 992
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    move-object/from16 v4, v37

    .line 1005
    .line 1006
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    sget-boolean v4, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 1010
    .line 1011
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v2

    .line 1018
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    move-object/from16 v4, v36

    .line 1024
    .line 1025
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    sget-boolean v4, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    .line 1029
    .line 1030
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v2

    .line 1037
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    move-object/from16 v4, v35

    .line 1043
    .line 1044
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    .line 1048
    .line 1049
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v2

    .line 1056
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    move-object/from16 v4, v34

    .line 1062
    .line 1063
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 1067
    .line 1068
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v2

    .line 1075
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    sget-boolean v2, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 1079
    .line 1080
    if-eqz v2, :cond_7

    .line 1081
    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    move-object/from16 v4, v33

    .line 1085
    .line 1086
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    iget v4, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 1090
    .line 1091
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    move-object/from16 v4, v32

    .line 1104
    .line 1105
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    iget v4, v0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 1109
    .line 1110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v2

    .line 1117
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    move-object/from16 v4, v31

    .line 1123
    .line 1124
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    iget v4, v0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 1128
    .line 1129
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v2

    .line 1136
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    move-object/from16 v4, v30

    .line 1142
    .line 1143
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    iget v4, v0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    .line 1147
    .line 1148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v2

    .line 1155
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    move-object/from16 v4, v29

    .line 1161
    .line 1162
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    iget v4, v0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    .line 1166
    .line 1167
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v2

    .line 1174
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    move-object/from16 v4, v28

    .line 1180
    .line 1181
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    iget v4, v0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    .line 1185
    .line 1186
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v2

    .line 1193
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    iget-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 1197
    .line 1198
    if-eqz v2, :cond_6

    .line 1199
    .line 1200
    const-string v2, "[Battery Adaptive Protect Mode]"

    .line 1201
    .line 1202
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    iget-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 1206
    .line 1207
    invoke-virtual {v2, v3}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v2

    .line 1211
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    goto :goto_1

    .line 1215
    :cond_6
    const-string v2, "[Not Battery Adaptive Protect Mode]"

    .line 1216
    .line 1217
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    :cond_7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    move-object/from16 v4, v27

    .line 1223
    .line 1224
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    sget-boolean v4, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 1228
    .line 1229
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v2

    .line 1236
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    .line 1238
    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    move-object/from16 v4, v26

    .line 1242
    .line 1243
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1244
    .line 1245
    .line 1246
    sget-boolean v4, Lcom/android/server/battery/BattFeatures;->FEATURE_FULL_BATTERY_CYCLE:Z

    .line 1247
    .line 1248
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v2

    .line 1255
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1259
    .line 1260
    move-object/from16 v4, v25

    .line 1261
    .line 1262
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1266
    .line 1267
    invoke-virtual {v4}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getIcAuthenticationResults()[Z

    .line 1268
    .line 1269
    .line 1270
    move-result-object v4

    .line 1271
    invoke-static {v4}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v4

    .line 1275
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v2

    .line 1282
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    move-object/from16 v4, v24

    .line 1288
    .line 1289
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1290
    .line 1291
    .line 1292
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1293
    .line 1294
    iget-boolean v5, v4, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    .line 1295
    .line 1296
    if-nez v5, :cond_8

    .line 1297
    .line 1298
    const-string v4, "[SS][BattInfo]BattInfoManager"

    .line 1299
    .line 1300
    const-string v5, "[getFirstUseDate]InitFinished False"

    .line 1301
    .line 1302
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    .line 1304
    .line 1305
    const/16 v63, 0x0

    .line 1306
    .line 1307
    goto :goto_2

    .line 1308
    :cond_8
    iget-object v4, v4, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 1309
    .line 1310
    invoke-virtual {v4}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v4

    .line 1314
    check-cast v4, [Ljava/lang/String;

    .line 1315
    .line 1316
    move-object/from16 v63, v4

    .line 1317
    .line 1318
    :goto_2
    invoke-static/range {v63 .. v63}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v4

    .line 1322
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v2

    .line 1329
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    iget-object v2, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1333
    .line 1334
    iget-boolean v2, v2, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    .line 1335
    .line 1336
    if-eqz v2, :cond_9

    .line 1337
    .line 1338
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    move-object/from16 v4, v23

    .line 1341
    .line 1342
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1343
    .line 1344
    .line 1345
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1346
    .line 1347
    invoke-virtual {v4}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getAsocValue()[J

    .line 1348
    .line 1349
    .line 1350
    move-result-object v4

    .line 1351
    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v4

    .line 1355
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v2

    .line 1362
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    const-string v2, "/efs/FactoryApp/batt_hist"

    .line 1366
    .line 1367
    invoke-static {v2}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 1368
    .line 1369
    .line 1370
    move-result v2

    .line 1371
    if-eqz v2, :cond_a

    .line 1372
    .line 1373
    const-string v2, "/efs/FactoryApp/batt_hist"

    .line 1374
    .line 1375
    invoke-static {v2, v3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v2

    .line 1379
    move-object/from16 v4, v22

    .line 1380
    .line 1381
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v2

    .line 1385
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    goto :goto_3

    .line 1389
    :cond_9
    const-string v2, "  mSavedBatteryAsoc: unsupported"

    .line 1390
    .line 1391
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    .line 1393
    .line 1394
    :cond_a
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1395
    .line 1396
    move-object/from16 v4, v21

    .line 1397
    .line 1398
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1399
    .line 1400
    .line 1401
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1402
    .line 1403
    invoke-virtual {v4}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getDischargeLevel()[J

    .line 1404
    .line 1405
    .line 1406
    move-result-object v4

    .line 1407
    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v4

    .line 1411
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v2

    .line 1418
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    iget-object v2, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1422
    .line 1423
    iget-boolean v2, v2, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 1424
    .line 1425
    if-eqz v2, :cond_b

    .line 1426
    .line 1427
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    move-object/from16 v4, v20

    .line 1430
    .line 1431
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1432
    .line 1433
    .line 1434
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 1435
    .line 1436
    invoke-virtual {v4}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getFullStatusUsage()[J

    .line 1437
    .line 1438
    .line 1439
    move-result-object v4

    .line 1440
    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v4

    .line 1444
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v2

    .line 1451
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    .line 1453
    .line 1454
    goto :goto_4

    .line 1455
    :cond_b
    const-string v2, "  mSavedFullStatusDuration: unsupported"

    .line 1456
    .line 1457
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    .line 1459
    .line 1460
    :goto_4
    const-string v2, ""

    .line 1461
    .line 1462
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    invoke-static {}, Lcom/android/server/battery/BattLogBuffer;->getAllLogs()Ljava/lang/String;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v2

    .line 1469
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    .line 1471
    .line 1472
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    move-object/from16 v4, v19

    .line 1475
    .line 1476
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    iget-object v4, v0, Lcom/android/server/BatteryService;->mBatteryChangedConditionCounts:[I

    .line 1480
    .line 1481
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v4

    .line 1485
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v2

    .line 1492
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    .line 1494
    .line 1495
    :goto_5
    monitor-exit v61
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    iget-object v2, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 1497
    .line 1498
    monitor-enter v2

    .line 1499
    if-eqz v10, :cond_c

    .line 1500
    .line 1501
    :try_start_1
    array-length v4, v10

    .line 1502
    if-eqz v4, :cond_c

    .line 1503
    .line 1504
    const-string v4, "-a"

    .line 1505
    .line 1506
    aget-object v5, v10, v62

    .line 1507
    .line 1508
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1509
    .line 1510
    .line 1511
    move-result v4

    .line 1512
    if-eqz v4, :cond_d

    .line 1513
    .line 1514
    goto :goto_6

    .line 1515
    :catchall_1
    move-exception v0

    .line 1516
    goto :goto_7

    .line 1517
    :cond_c
    :goto_6
    const-string v4, "BatteryInfoBackUp"

    .line 1518
    .line 1519
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1523
    .line 1524
    move-object/from16 v5, v18

    .line 1525
    .line 1526
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    iget-wide v5, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 1530
    .line 1531
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v4

    .line 1538
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    .line 1540
    .line 1541
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    move-object/from16 v5, v17

    .line 1544
    .line 1545
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1546
    .line 1547
    .line 1548
    iget-wide v5, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 1549
    .line 1550
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v0

    .line 1557
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    const-string v0, "/efs/FactoryApp/bsoh"

    .line 1561
    .line 1562
    invoke-static {v0, v3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v0

    .line 1566
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1567
    .line 1568
    .line 1569
    move-result v3

    .line 1570
    if-nez v3, :cond_d

    .line 1571
    .line 1572
    move-object/from16 v3, v16

    .line 1573
    .line 1574
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v0

    .line 1578
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    .line 1580
    .line 1581
    :cond_d
    monitor-exit v2

    .line 1582
    return-void

    .line 1583
    :goto_7
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1584
    throw v0

    .line 1585
    :goto_8
    :try_start_2
    monitor-exit v61
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1586
    throw v0
.end method

.method public static -$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "BatteryService"

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v3, "isVideoCall: "

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo v3, "call start, isVideoCall: "

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, v1, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string/jumbo v3, "call end, isVideoCall: "

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0, v1, v2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method public static -$$Nest$msetSleepCharging(Lcom/android/server/BatteryService;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "[setSleepCharging]on:"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const-string v0, "/sys/class/power_supply/battery/batt_full_capacity"

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " SLEEP"

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-wide/16 p0, 0x64

    .line 51
    .line 52
    invoke-static {p0, p1, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public static -$$Nest$smsendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "sendBroadcastToExplicitPackage: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " -> "

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
    const-string v1, "BatteryService"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "[SS]"

    .line 2
    .line 3
    const-string v1, "BatteryService"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "--checkin"

    .line 12
    .line 13
    const-string v1, "--unplugged"

    .line 14
    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "/sys/class/sec/switch/afc_disable"

    .line 22
    .line 23
    const-string/jumbo v1, "sys/class/sec/afc/afc_disable"

    .line 24
    .line 25
    .line 26
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "/sys/class/sec/switch/hiccup"

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 39
    .line 40
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 51
    .line 52
    const-string/jumbo v0, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 56
    .line 57
    const-string/jumbo v0, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DAILYBOARD"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    const-string v2, ","

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    array-length v2, v0

    .line 86
    move v3, v1

    .line 87
    :goto_0
    if-ge v3, v2, :cond_3

    .line 88
    .line 89
    aget-object v4, v0, v3

    .line 90
    .line 91
    const-string v5, "TA"

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    const/4 v1, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    :goto_1
    sput-boolean v1, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    .line 105
    .line 106
    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    .line 107
    .line 108
    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    .line 113
    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 10
    .line 11
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->isVideoCall:Z

    .line 12
    .line 13
    new-instance v1, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v1, Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 28
    .line 29
    invoke-direct {v1}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 33
    .line 34
    const/4 v10, 0x1

    .line 35
    iput v10, v0, Lcom/android/server/BatteryService;->mSequence:I

    .line 36
    .line 37
    const/4 v11, -0x1

    .line 38
    iput v11, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 39
    .line 40
    iput v11, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 41
    .line 42
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 43
    .line 44
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 50
    .line 51
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v10}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v12, 0x2

    .line 60
    invoke-virtual {v1, v12}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryChangedOptions:Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v10}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "android"

    .line 79
    .line 80
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 81
    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1, v12}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iput-object v1, v0, Lcom/android/server/BatteryService;->mPowerOptions:Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, v10}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v3, "android.intent.action.BATTERY_OKAY"

    .line 105
    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v12}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryOptions:Landroid/os/Bundle;

    .line 119
    .line 120
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 121
    .line 122
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    .line 123
    .line 124
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mScreenOn:Z

    .line 125
    .line 126
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 127
    .line 128
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 129
    .line 130
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 131
    .line 132
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 133
    .line 134
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 135
    .line 136
    iput v9, v0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 137
    .line 138
    iput v9, v0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 139
    .line 140
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 141
    .line 142
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 143
    .line 144
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 145
    .line 146
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    .line 147
    .line 148
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 149
    .line 150
    const-wide/16 v1, -0x1

    .line 151
    .line 152
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 153
    .line 154
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 155
    .line 156
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 157
    .line 158
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 159
    .line 160
    iput v9, v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    .line 161
    .line 162
    iput v11, v0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 163
    .line 164
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 165
    .line 166
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 167
    .line 168
    iput v9, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 169
    .line 170
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 171
    .line 172
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 173
    .line 174
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 175
    .line 176
    const/4 v3, 0x0

    .line 177
    iput-object v3, v0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 178
    .line 179
    iput v9, v0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 180
    .line 181
    iput v9, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 182
    .line 183
    iput v11, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 184
    .line 185
    sget v3, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    .line 186
    .line 187
    iput v3, v0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 188
    .line 189
    iput v3, v0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 190
    .line 191
    const/16 v3, 0x16

    .line 192
    .line 193
    new-array v3, v3, [I

    .line 194
    .line 195
    iput-object v3, v0, Lcom/android/server/BatteryService;->mBatteryChangedConditionCounts:[I

    .line 196
    .line 197
    new-instance v3, Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 198
    .line 199
    invoke-direct {v3, v0}, Lcom/android/server/BatteryService$BattCallbackImpl;-><init>(Lcom/android/server/BatteryService;)V

    .line 200
    .line 201
    .line 202
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 203
    .line 204
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 205
    .line 206
    new-instance v4, Lcom/android/server/BatteryService$2;

    .line 207
    .line 208
    const/4 v5, 0x3

    .line 209
    invoke-direct {v4, v0, v5}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 210
    .line 211
    .line 212
    new-instance v5, Lcom/android/server/BatteryService$2;

    .line 213
    .line 214
    const/4 v6, 0x4

    .line 215
    invoke-direct {v5, v0, v6}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 216
    .line 217
    .line 218
    new-instance v7, Lcom/android/server/BatteryService$5;

    .line 219
    .line 220
    invoke-direct {v7}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 221
    .line 222
    .line 223
    new-instance v6, Lcom/android/server/BatteryService$2;

    .line 224
    .line 225
    const/4 v13, 0x5

    .line 226
    invoke-direct {v6, v0, v13}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 227
    .line 228
    .line 229
    new-instance v13, Lcom/android/server/BatteryService$2;

    .line 230
    .line 231
    const/4 v14, 0x6

    .line 232
    invoke-direct {v13, v0, v14}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 233
    .line 234
    .line 235
    new-instance v14, Lcom/android/server/BatteryService$2;

    .line 236
    .line 237
    const/4 v15, 0x7

    .line 238
    invoke-direct {v14, v0, v15}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 239
    .line 240
    .line 241
    new-instance v15, Lcom/android/server/BatteryService$2;

    .line 242
    .line 243
    const/16 v11, 0x8

    .line 244
    .line 245
    invoke-direct {v15, v0, v11}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 246
    .line 247
    .line 248
    new-instance v11, Lcom/android/server/BatteryService$2;

    .line 249
    .line 250
    const/4 v1, 0x1

    .line 251
    invoke-direct {v11, v0, v1}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 252
    .line 253
    .line 254
    new-instance v2, Lcom/android/server/BatteryService$2;

    .line 255
    .line 256
    const/4 v1, 0x2

    .line 257
    invoke-direct {v2, v0, v1}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    .line 258
    .line 259
    .line 260
    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 261
    .line 262
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 263
    .line 264
    iput v9, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 265
    .line 266
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 267
    .line 268
    const/4 v9, 0x4

    .line 269
    invoke-direct {v1, v0, v9}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 270
    .line 271
    .line 272
    iput-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Lcom/android/server/BatteryService$16;

    .line 273
    .line 274
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 275
    .line 276
    const/4 v9, 0x5

    .line 277
    invoke-direct {v1, v0, v9}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 278
    .line 279
    .line 280
    iput-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Lcom/android/server/BatteryService$16;

    .line 281
    .line 282
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 283
    .line 284
    const/4 v9, 0x6

    .line 285
    invoke-direct {v1, v0, v9}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 286
    .line 287
    .line 288
    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    .line 289
    .line 290
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 291
    .line 292
    const/4 v9, 0x7

    .line 293
    invoke-direct {v1, v0, v9}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 294
    .line 295
    .line 296
    iput-object v1, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

    .line 297
    .line 298
    iput-object v8, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 299
    .line 300
    new-instance v1, Landroid/os/Handler;

    .line 301
    .line 302
    invoke-direct {v1, v10}, Landroid/os/Handler;-><init>(Z)V

    .line 303
    .line 304
    .line 305
    iput-object v1, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 306
    .line 307
    new-instance v1, Landroid/os/Handler;

    .line 308
    .line 309
    invoke-direct {v1, v10}, Landroid/os/Handler;-><init>(Z)V

    .line 310
    .line 311
    .line 312
    iput-object v1, v0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 313
    .line 314
    new-instance v1, Lcom/android/server/BatteryService$Led;

    .line 315
    .line 316
    const-class v9, Lcom/android/server/lights/LightsManager;

    .line 317
    .line 318
    invoke-virtual {v0, v9}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    check-cast v9, Lcom/android/server/lights/LightsManager;

    .line 323
    .line 324
    invoke-direct {v1, v0, v8, v9}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    .line 325
    .line 326
    .line 327
    iput-object v1, v0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 328
    .line 329
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 334
    .line 335
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 336
    .line 337
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 342
    .line 343
    iput-object v1, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 344
    .line 345
    const-class v1, Landroid/os/PowerManagerInternal;

    .line 346
    .line 347
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    check-cast v1, Landroid/os/PowerManagerInternal;

    .line 352
    .line 353
    iput-object v1, v0, Lcom/android/server/BatteryService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 354
    .line 355
    new-instance v1, Landroid/os/Binder;

    .line 356
    .line 357
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 358
    .line 359
    .line 360
    iput-object v1, v0, Lcom/android/server/BatteryService;->mToken:Landroid/os/IBinder;

    .line 361
    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    const v9, 0x10e005d

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    iput v1, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 374
    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    const v9, 0x10e00d4

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    iput v1, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 387
    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    const v10, 0x10e00d3

    .line 393
    .line 394
    .line 395
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    .line 396
    .line 397
    .line 398
    move-result v9

    .line 399
    add-int/2addr v9, v1

    .line 400
    iput v9, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 401
    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    const v9, 0x10e014d

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 410
    .line 411
    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    const v9, 0x111022a

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mShutdownIfNoPower:Z

    .line 424
    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    const v9, 0x104003a

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    new-instance v1, Ljava/util/ArrayDeque;

    .line 436
    .line 437
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 438
    .line 439
    .line 440
    iput-object v1, v0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 441
    .line 442
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    .line 443
    .line 444
    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 445
    .line 446
    .line 447
    iput-object v1, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 448
    .line 449
    const-string v9, "/data/log/battery_service/sleep_charging_history"

    .line 450
    .line 451
    invoke-static {v9}, Lcom/android/server/battery/BatteryLogger;->renameForBackupIfExeedsSize(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    const-string v1, "/data/log/battery_service/battery_service_main_history"

    .line 455
    .line 456
    invoke-static {v1}, Lcom/android/server/battery/BatteryLogger;->renameForBackupIfExeedsSize(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 460
    .line 461
    const/4 v10, 0x3

    .line 462
    invoke-direct {v1, v0, v10}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 463
    .line 464
    .line 465
    iput-object v1, v0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 466
    .line 467
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 468
    .line 469
    const/4 v10, 0x1

    .line 470
    invoke-direct {v1, v0, v10}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 471
    .line 472
    .line 473
    iput-object v1, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 474
    .line 475
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    .line 476
    .line 477
    if-eqz v1, :cond_0

    .line 478
    .line 479
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 480
    .line 481
    const/16 v10, 0x8

    .line 482
    .line 483
    invoke-direct {v1, v0, v10}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 484
    .line 485
    .line 486
    iput-object v1, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 487
    .line 488
    :cond_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    .line 489
    .line 490
    if-eqz v1, :cond_1

    .line 491
    .line 492
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 493
    .line 494
    const/4 v10, 0x6

    .line 495
    invoke-direct {v1, v0, v10}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 496
    .line 497
    .line 498
    iput-object v1, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 499
    .line 500
    :cond_1
    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    .line 501
    .line 502
    if-eqz v10, :cond_2

    .line 503
    .line 504
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 505
    .line 506
    const/16 v12, 0xb

    .line 507
    .line 508
    invoke-direct {v1, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 509
    .line 510
    .line 511
    iput-object v1, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 512
    .line 513
    sget-boolean v1, Lcom/android/server/battery/BattFeatures;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    .line 514
    .line 515
    if-eqz v1, :cond_2

    .line 516
    .line 517
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 518
    .line 519
    const/4 v12, 0x7

    .line 520
    invoke-direct {v1, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 521
    .line 522
    .line 523
    iput-object v1, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 524
    .line 525
    :cond_2
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    .line 526
    .line 527
    if-eqz v1, :cond_3

    .line 528
    .line 529
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 530
    .line 531
    const/4 v12, 0x4

    .line 532
    invoke-direct {v1, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 533
    .line 534
    .line 535
    iput-object v1, v0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 536
    .line 537
    :cond_3
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    .line 538
    .line 539
    if-nez v1, :cond_4

    .line 540
    .line 541
    sget-boolean v1, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 542
    .line 543
    if-eqz v1, :cond_5

    .line 544
    .line 545
    :cond_4
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 546
    .line 547
    const/4 v12, 0x2

    .line 548
    invoke-direct {v1, v0, v12}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 549
    .line 550
    .line 551
    iput-object v1, v0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 552
    .line 553
    :cond_5
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 554
    .line 555
    if-eqz v12, :cond_6

    .line 556
    .line 557
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 558
    .line 559
    move-object/from16 v18, v2

    .line 560
    .line 561
    const/16 v2, 0x9

    .line 562
    .line 563
    invoke-direct {v1, v0, v2}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 564
    .line 565
    .line 566
    iput-object v1, v0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 567
    .line 568
    goto :goto_0

    .line 569
    :cond_6
    move-object/from16 v18, v2

    .line 570
    .line 571
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    .line 572
    .line 573
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 574
    .line 575
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    const/4 v2, 0x2

    .line 579
    invoke-virtual {v8, v4, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 580
    .line 581
    .line 582
    new-instance v1, Landroid/content/IntentFilter;

    .line 583
    .line 584
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 585
    .line 586
    .line 587
    const-string v4, "android.intent.action.SCREEN_ON"

    .line 588
    .line 589
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 593
    .line 594
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    const-string v4, "android.intent.action.USER_SWITCHED"

    .line 598
    .line 599
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    .line 603
    .line 604
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v8, v5, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 608
    .line 609
    .line 610
    new-instance v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 611
    .line 612
    invoke-direct {v1, v8}, Lcom/android/server/battery/batteryInfo/BattInfoManager;-><init>(Landroid/content/Context;)V

    .line 613
    .line 614
    .line 615
    iput-object v1, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 616
    .line 617
    const-string v1, "/efs/FactoryApp/max_current"

    .line 618
    .line 619
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 620
    .line 621
    .line 622
    move-result-wide v4

    .line 623
    const-wide/16 v19, 0x0

    .line 624
    .line 625
    cmp-long v2, v4, v19

    .line 626
    .line 627
    if-gez v2, :cond_7

    .line 628
    .line 629
    const-wide/16 v4, -0x1

    .line 630
    .line 631
    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 632
    .line 633
    .line 634
    move-wide v1, v4

    .line 635
    goto :goto_1

    .line 636
    :cond_7
    move-wide/from16 v21, v4

    .line 637
    .line 638
    const-wide/16 v4, -0x1

    .line 639
    .line 640
    move-wide/from16 v1, v21

    .line 641
    .line 642
    :goto_1
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    .line 643
    .line 644
    const-string v1, "/efs/FactoryApp/max_temp"

    .line 645
    .line 646
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    .line 647
    .line 648
    .line 649
    move-result-wide v16

    .line 650
    cmp-long v2, v16, v19

    .line 651
    .line 652
    if-gez v2, :cond_8

    .line 653
    .line 654
    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 655
    .line 656
    .line 657
    move-wide v1, v4

    .line 658
    goto :goto_2

    .line 659
    :cond_8
    move-wide/from16 v1, v16

    .line 660
    .line 661
    :goto_2
    iput-wide v1, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    .line 662
    .line 663
    sget-object v1, Lcom/android/server/battery/BattHqmManager;->mHqmEventReceiver:Lcom/android/server/battery/BattHqmManager$1;

    .line 664
    .line 665
    if-eqz v1, :cond_9

    .line 666
    .line 667
    const-string v1, "[SS]BattHqmManager"

    .line 668
    .line 669
    const-string v2, "[hqmEventReceiver_onReceive]warn - mHqmEventReceiver already registered"

    .line 670
    .line 671
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .line 673
    .line 674
    goto :goto_3

    .line 675
    :cond_9
    new-instance v1, Lcom/android/server/battery/BattHqmManager$1;

    .line 676
    .line 677
    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 678
    .line 679
    .line 680
    sput-object v1, Lcom/android/server/battery/BattHqmManager;->mHqmEventReceiver:Lcom/android/server/battery/BattHqmManager$1;

    .line 681
    .line 682
    new-instance v2, Landroid/content/IntentFilter;

    .line 683
    .line 684
    const-string/jumbo v4, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 685
    .line 686
    .line 687
    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    const/4 v4, 0x2

    .line 691
    invoke-virtual {v8, v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 692
    .line 693
    .line 694
    :goto_3
    sput-object v3, Lcom/android/server/battery/BattHqmManager;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 695
    .line 696
    const-string v1, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    .line 697
    .line 698
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    const/16 v16, 0x2

    .line 703
    .line 704
    const-string/jumbo v4, "com.sec.permission.OTG_CHARGE_BLOCK"

    .line 705
    .line 706
    .line 707
    const/4 v5, 0x0

    .line 708
    move-object/from16 v1, p1

    .line 709
    .line 710
    move-object/from16 v17, v18

    .line 711
    .line 712
    move-object v2, v6

    .line 713
    move/from16 v6, v16

    .line 714
    .line 715
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 716
    .line 717
    .line 718
    const-string/jumbo v1, "com.sec.intent.action.BATT_SLATE_MODE_CHANGE"

    .line 719
    .line 720
    .line 721
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 722
    .line 723
    .line 724
    move-result-object v4

    .line 725
    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 726
    .line 727
    const/16 v18, 0x2

    .line 728
    .line 729
    const-string/jumbo v5, "com.sec.permission.OTG_CHARGE_BLOCK"

    .line 730
    .line 731
    .line 732
    const/4 v6, 0x0

    .line 733
    move-object/from16 v1, p1

    .line 734
    .line 735
    move-object v2, v7

    .line 736
    move-object/from16 v3, v16

    .line 737
    .line 738
    move/from16 v7, v18

    .line 739
    .line 740
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 741
    .line 742
    .line 743
    sget-boolean v1, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 744
    .line 745
    if-eqz v1, :cond_a

    .line 746
    .line 747
    new-instance v1, Landroid/content/IntentFilter;

    .line 748
    .line 749
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 750
    .line 751
    .line 752
    const-string/jumbo v2, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    const-string/jumbo v2, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    .line 759
    .line 760
    .line 761
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    const/4 v2, 0x2

    .line 765
    invoke-virtual {v8, v13, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 766
    .line 767
    .line 768
    :cond_a
    if-eqz v12, :cond_b

    .line 769
    .line 770
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    .line 771
    .line 772
    .line 773
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    const/4 v7, 0x2

    .line 778
    const-string/jumbo v5, "com.samsung.android.permission.wirelesspowersharing"

    .line 779
    .line 780
    .line 781
    const/4 v6, 0x0

    .line 782
    move-object/from16 v1, p1

    .line 783
    .line 784
    move-object v2, v14

    .line 785
    move-object/from16 v3, v16

    .line 786
    .line 787
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 788
    .line 789
    .line 790
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    .line 791
    .line 792
    if-eqz v1, :cond_b

    .line 793
    .line 794
    new-instance v4, Landroid/content/IntentFilter;

    .line 795
    .line 796
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 797
    .line 798
    .line 799
    sget-object v1, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 800
    .line 801
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    sget-object v1, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    .line 805
    .line 806
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    const/4 v7, 0x2

    .line 810
    const/4 v5, 0x0

    .line 811
    const/4 v6, 0x0

    .line 812
    move-object/from16 v1, p1

    .line 813
    .line 814
    move-object v2, v15

    .line 815
    move-object/from16 v3, v16

    .line 816
    .line 817
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 818
    .line 819
    .line 820
    :cond_b
    if-eqz v10, :cond_c

    .line 821
    .line 822
    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    .line 823
    .line 824
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 825
    .line 826
    .line 827
    move-result-object v4

    .line 828
    const/4 v7, 0x2

    .line 829
    const/4 v5, 0x0

    .line 830
    const/4 v6, 0x0

    .line 831
    move-object/from16 v1, p1

    .line 832
    .line 833
    move-object v2, v11

    .line 834
    move-object/from16 v3, v16

    .line 835
    .line 836
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 837
    .line 838
    .line 839
    const-string/jumbo v1, "phone"

    .line 840
    .line 841
    .line 842
    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 847
    .line 848
    iput-object v1, v0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    .line 849
    .line 850
    new-instance v1, Landroid/os/HandlerThread;

    .line 851
    .line 852
    const-string v2, "CallThread"

    .line 853
    .line 854
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    iput-object v1, v0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    .line 858
    .line 859
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 860
    .line 861
    .line 862
    new-instance v1, Lcom/android/server/BatteryService$1;

    .line 863
    .line 864
    iget-object v2, v0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    .line 865
    .line 866
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    const/4 v3, 0x1

    .line 871
    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V

    .line 872
    .line 873
    .line 874
    iput-object v1, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    .line 875
    .line 876
    :cond_c
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

    .line 877
    .line 878
    if-eqz v1, :cond_d

    .line 879
    .line 880
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL"

    .line 881
    .line 882
    .line 883
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 884
    .line 885
    .line 886
    move-result-object v4

    .line 887
    const/4 v7, 0x2

    .line 888
    const-string/jumbo v5, "com.samsung.android.permission.FAST_WIRELESS_CHARGING_CONTROL"

    .line 889
    .line 890
    .line 891
    const/4 v6, 0x0

    .line 892
    move-object/from16 v1, p1

    .line 893
    .line 894
    move-object/from16 v2, v17

    .line 895
    .line 896
    move-object/from16 v3, v16

    .line 897
    .line 898
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 899
    .line 900
    .line 901
    :cond_d
    const-string v1, "/sys/devices/virtual/switch/invalid_charger/state"

    .line 902
    .line 903
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    if-eqz v1, :cond_e

    .line 908
    .line 909
    new-instance v1, Lcom/android/server/BatteryService$13;

    .line 910
    .line 911
    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;)V

    .line 912
    .line 913
    .line 914
    const-string v2, "DEVPATH=/devices/virtual/switch/invalid_charger"

    .line 915
    .line 916
    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    if-eqz v1, :cond_f

    .line 924
    .line 925
    const-string/jumbo v2, "att.devicehealth.support"

    .line 926
    .line 927
    .line 928
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 929
    .line 930
    .line 931
    move-result v1

    .line 932
    if-eqz v1, :cond_f

    .line 933
    .line 934
    const/4 v1, 0x1

    .line 935
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 936
    .line 937
    :cond_f
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    .line 938
    .line 939
    if-eqz v1, :cond_11

    .line 940
    .line 941
    sget-object v1, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    .line 942
    .line 943
    const/4 v2, 0x0

    .line 944
    aget-object v3, v1, v2

    .line 945
    .line 946
    invoke-static {v3}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    .line 947
    .line 948
    .line 949
    move-result v3

    .line 950
    if-eqz v3, :cond_10

    .line 951
    .line 952
    aget-object v1, v1, v2

    .line 953
    .line 954
    goto :goto_4

    .line 955
    :cond_10
    const/4 v2, 0x1

    .line 956
    aget-object v1, v1, v2

    .line 957
    .line 958
    :goto_4
    iput-object v1, v0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    .line 959
    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    .line 961
    .line 962
    const-string v3, "!@ mAfcDisableSysFs : "

    .line 963
    .line 964
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object v1

    .line 974
    const-string v2, "BatteryService"

    .line 975
    .line 976
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .line 978
    .line 979
    :cond_11
    const-string/jumbo v1, "ro.boot.cm.param.offset"

    .line 980
    .line 981
    .line 982
    const/4 v2, -0x1

    .line 983
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 984
    .line 985
    .line 986
    move-result v1

    .line 987
    iput v1, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    .line 988
    .line 989
    if-eq v1, v2, :cond_12

    .line 990
    .line 991
    const/4 v3, 0x1

    .line 992
    add-int/2addr v1, v3

    .line 993
    goto :goto_5

    .line 994
    :cond_12
    move v1, v2

    .line 995
    :goto_5
    iput v1, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    .line 996
    .line 997
    const-string/jumbo v1, "ro.boot.pd.param.offset"

    .line 998
    .line 999
    .line 1000
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1001
    .line 1002
    .line 1003
    move-result v1

    .line 1004
    iput v1, v0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    .line 1005
    .line 1006
    const-string/jumbo v1, "ro.boot.wc.param.offset"

    .line 1007
    .line 1008
    .line 1009
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1010
    .line 1011
    .line 1012
    move-result v1

    .line 1013
    iput v1, v0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    .line 1014
    .line 1015
    const-string v3, "/sys/class/power_supply/battery/wc_param_info"

    .line 1016
    .line 1017
    const/4 v4, 0x1

    .line 1018
    invoke-static {v3, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v3

    .line 1022
    if-eq v1, v2, :cond_13

    .line 1023
    .line 1024
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 1025
    .line 1026
    .line 1027
    move-result v1

    .line 1028
    if-nez v1, :cond_13

    .line 1029
    .line 1030
    new-instance v1, Lcom/android/server/BatteryService$15;

    .line 1031
    .line 1032
    const/16 v2, 0xa

    .line 1033
    .line 1034
    invoke-direct {v1, v0, v2}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 1035
    .line 1036
    .line 1037
    iput-object v1, v0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 1038
    .line 1039
    :cond_13
    invoke-static {}, Landroid/sysprop/PowerProperties;->battery_input_suspended()Ljava/util/Optional;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v1

    .line 1043
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1044
    .line 1045
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    check-cast v1, Ljava/lang/Boolean;

    .line 1050
    .line 1051
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1052
    .line 1053
    .line 1054
    move-result v1

    .line 1055
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 1056
    .line 1057
    const-string v1, "BatteryService Created"

    .line 1058
    .line 1059
    const-string v2, ""

    .line 1060
    .line 1061
    invoke-static {v9, v1, v2}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    new-instance v1, Lcom/android/server/BatteryService$1;

    .line 1065
    .line 1066
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v2

    .line 1070
    const/4 v3, 0x2

    .line 1071
    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V

    .line 1072
    .line 1073
    .line 1074
    iput-object v1, v0, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

    .line 1075
    .line 1076
    return-void
.end method

.method public static isFileSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, " is not found"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "BatteryService"

    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    :goto_0
    return p0
.end method

.method public static parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const-string v2, "-f"

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return v0
.end method

.method public static plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x4

    .line 14
    return p0

    .line 15
    :cond_1
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const/4 p0, 0x2

    .line 20
    return p0

    .line 21
    :cond_2
    iget-boolean p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 22
    .line 23
    if-eqz p0, :cond_3

    .line 24
    .line 25
    return v2

    .line 26
    :cond_3
    iget-boolean p0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 27
    .line 28
    if-eqz p0, :cond_4

    .line 29
    .line 30
    const/16 p0, 0x8

    .line 31
    .line 32
    return p0

    .line 33
    :cond_4
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public static setPassThrough(Z)V
    .locals 3

    .line 1
    const-string v0, "/sys/class/power_supply/battery/pass_through"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "BatteryService"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v2, "success to set PassThrough sysfs as "

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo p0, "fail to set PassThrough sysfs"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method public final isPoweredLocked(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2
    .line 3
    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    and-int/lit8 v1, p1, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    and-int/lit8 v3, p1, 0x2

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    return v2

    .line 27
    :cond_2
    and-int/lit8 v3, p1, 0x4

    .line 28
    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 32
    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    return v2

    .line 36
    :cond_3
    and-int/lit8 p1, p1, 0x8

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iget-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    return v2

    .line 45
    :cond_4
    if-eqz v1, :cond_5

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 48
    .line 49
    iget-boolean p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 50
    .line 51
    if-eqz p0, :cond_5

    .line 52
    .line 53
    return v2

    .line 54
    :cond_5
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public final logBatteryStatsLocked()V
    .locals 9

    .line 1
    const-string/jumbo v0, "failed to delete temporary dumpsys file: "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "failed to close dumpsys output stream"

    .line 5
    .line 6
    .line 7
    const-string v2, "BatteryService"

    .line 8
    .line 9
    const-string/jumbo v3, "batterystats"

    .line 10
    .line 11
    .line 12
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string/jumbo v4, "dropbox"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/os/DropBoxManager;

    .line 29
    .line 30
    if-eqz p0, :cond_7

    .line 31
    .line 32
    const-string v4, "BATTERY_DISCHARGE_INFO"

    .line 33
    .line 34
    invoke-virtual {p0, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    goto/16 :goto_9

    .line 41
    .line 42
    :cond_1
    const/4 v5, 0x0

    .line 43
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 44
    .line 45
    const-string v7, "/data/system/batterystats.dump"

    .line 46
    .line 47
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 48
    .line 49
    .line 50
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    .line 51
    .line 52
    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v3, v5, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x2

    .line 68
    invoke-virtual {p0, v4, v6, v3}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_4

    .line 83
    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_6

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    move-object v5, v7

    .line 106
    goto :goto_7

    .line 107
    :catch_1
    move-exception p0

    .line 108
    move-object v5, v7

    .line 109
    goto :goto_2

    .line 110
    :catch_2
    move-exception p0

    .line 111
    move-object v5, v7

    .line 112
    goto :goto_4

    .line 113
    :catchall_1
    move-exception p0

    .line 114
    goto :goto_7

    .line 115
    :catch_3
    move-exception p0

    .line 116
    goto :goto_2

    .line 117
    :catch_4
    move-exception p0

    .line 118
    goto :goto_4

    .line 119
    :catchall_2
    move-exception p0

    .line 120
    move-object v6, v5

    .line 121
    goto :goto_7

    .line 122
    :catch_5
    move-exception p0

    .line 123
    move-object v6, v5

    .line 124
    goto :goto_2

    .line 125
    :catch_6
    move-exception p0

    .line 126
    move-object v6, v5

    .line 127
    goto :goto_4

    .line 128
    :goto_2
    :try_start_4
    const-string/jumbo v3, "failed to write dumpsys file"

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    .line 133
    .line 134
    if-eqz v5, :cond_2

    .line 135
    .line 136
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catch_7
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    :goto_3
    if-eqz v6, :cond_4

    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_4

    .line 150
    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :goto_4
    :try_start_6
    const-string/jumbo v3, "failed to dump battery service"

    .line 158
    .line 159
    .line 160
    invoke-static {v2, v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 161
    .line 162
    .line 163
    if-eqz v5, :cond_3

    .line 164
    .line 165
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :catch_8
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    :goto_5
    if-eqz v6, :cond_4

    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-nez p0, :cond_4

    .line 179
    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    :goto_6
    return-void

    .line 187
    :goto_7
    if-eqz v5, :cond_5

    .line 188
    .line 189
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 190
    .line 191
    .line 192
    goto :goto_8

    .line 193
    :catch_9
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_5
    :goto_8
    if-eqz v6, :cond_6

    .line 197
    .line 198
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_6

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_6
    throw p0

    .line 224
    :cond_7
    :goto_9
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 7

    .line 1
    const-string/jumbo v0, "setWirelessChargingMode(All): "

    .line 2
    .line 3
    .line 4
    const-string v1, "BatteryService"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v3, "[onBootPhase]phase:"

    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x226

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    if-ne p1, v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 34
    .line 35
    new-instance p1, Lcom/android/server/BatteryService$15;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-direct {p1, p0, v5}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 40
    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string/jumbo v6, "low_power_trigger_level"

    .line 49
    .line 50
    .line 51
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v5, v6, v3, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v5}, Lcom/android/server/BatteryService;->registerContentObserver(Landroid/content/ContentResolver;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const-string v2, "SemInputDeviceManagerService"

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    iget v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 79
    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    const/16 v3, 0xb

    .line 83
    .line 84
    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 88
    .line 89
    iget v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 90
    .line 91
    invoke-virtual {p1, v4, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 92
    .line 93
    .line 94
    const-string p1, "BatteryService"

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget p0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 102
    .line 103
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto :goto_1

    .line 116
    :cond_0
    :goto_0
    monitor-exit v1

    .line 117
    goto/16 :goto_4

    .line 118
    .line 119
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0

    .line 121
    :cond_1
    const/16 v0, 0x3e8

    .line 122
    .line 123
    if-ne p1, v0, :cond_8

    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 132
    .line 133
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    invoke-direct {v1, p0, v5}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v0

    .line 145
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    .line 146
    .line 147
    .line 148
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    .line 150
    .line 151
    if-eqz v0, :cond_2

    .line 152
    .line 153
    const-string/jumbo v0, "persist.sys.shutdown_received"

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    const-string/jumbo v1, "persist.sys.shutdown_received"

    .line 161
    .line 162
    .line 163
    const-string/jumbo v5, "false"

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    if-nez v0, :cond_2

    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 172
    .line 173
    new-instance v1, Lcom/android/server/BatteryService$17;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    const-wide/32 v5, 0xc350

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    .line 183
    .line 184
    :cond_2
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 185
    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 189
    .line 190
    if-eqz v0, :cond_4

    .line 191
    .line 192
    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 193
    .line 194
    and-int/lit8 v1, v0, 0x20

    .line 195
    .line 196
    if-nez v1, :cond_3

    .line 197
    .line 198
    and-int/lit16 v0, v0, 0x2000

    .line 199
    .line 200
    if-eqz v0, :cond_4

    .line 201
    .line 202
    :cond_3
    const-string v0, "BatteryService"

    .line 203
    .line 204
    const-string/jumbo v1, "bootCompleted and HiccupPopup"

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    const-string v0, "/sys/class/power_supply/battery/batt_misc_event"

    .line 211
    .line 212
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 213
    .line 214
    int-to-long v5, v1

    .line 215
    invoke-static {v5, v6, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_4
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 219
    .line 220
    if-eqz v0, :cond_6

    .line 221
    .line 222
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-eqz v0, :cond_5

    .line 227
    .line 228
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    and-int/lit8 v0, v0, 0x10

    .line 233
    .line 234
    if-eqz v0, :cond_5

    .line 235
    .line 236
    move v0, v4

    .line 237
    goto :goto_2

    .line 238
    :cond_5
    move v0, v3

    .line 239
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    .line 240
    .line 241
    :cond_6
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    .line 242
    .line 243
    if-eqz v0, :cond_8

    .line 244
    .line 245
    const-string/jumbo v0, "protect_battery"

    .line 246
    .line 247
    .line 248
    const/4 v1, -0x2

    .line 249
    invoke-static {p1, v0, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-ne v0, v4, :cond_7

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_7
    move v4, v3

    .line 257
    :goto_3
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 258
    .line 259
    const-string v0, "BatteryService"

    .line 260
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v4, "!@mLifeExtender Settings = "

    .line 264
    .line 265
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 269
    .line 270
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v4, " mLifeExtenderSettingsObserver register"

    .line 274
    .line 275
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    const-string/jumbo v0, "protect_battery"

    .line 286
    .line 287
    .line 288
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 293
    .line 294
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 298
    .line 299
    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    .line 300
    .line 301
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :catchall_1
    move-exception p0

    .line 306
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    throw p0

    .line 308
    :cond_8
    :goto_4
    return-void
.end method

.method public final onStart()V
    .locals 10

    .line 1
    const-string v0, "HealthInitWrapper"

    .line 2
    .line 3
    const-wide/32 v1, 0x80000

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/BatteryService;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;)Lcom/android/server/health/HealthServiceWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 21
    .line 22
    .line 23
    const-string v0, "HealthInitWaitUpdate"

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 36
    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    const-string v5, "BatteryService"

    .line 40
    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v7, "health: Waited "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    sub-long/2addr v7, v3

    .line 57
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v7, "ms for callbacks. Waiting another "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-wide/16 v7, 0x3e8

    .line 67
    .line 68
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v9, " ms..."

    .line 72
    .line 73
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :try_start_2
    iget-object v5, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto/16 :goto_4

    .line 91
    .line 92
    :catch_0
    :try_start_3
    const-string v5, "BatteryService"

    .line 93
    .line 94
    const-string/jumbo v6, "health: InterruptedException when waiting for update.  Continuing..."

    .line 95
    .line 96
    .line 97
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    const-string v0, "BatteryService"

    .line 103
    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string/jumbo v6, "health: Waited "

    .line 107
    .line 108
    .line 109
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v6

    .line 116
    sub-long/2addr v6, v3

    .line 117
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string/jumbo v3, "ms and received the update."

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    .line 137
    .line 138
    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;)V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 142
    .line 143
    const-string/jumbo v1, "battery"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 150
    .line 151
    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;)V

    .line 152
    .line 153
    .line 154
    const-string/jumbo v1, "batteryproperties"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 158
    .line 159
    .line 160
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 161
    .line 162
    new-instance v1, Lcom/android/server/BatteryService$LocalService;

    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    const-string v0, "BatteryService"

    .line 171
    .line 172
    const-string v1, "!@[LLB] Write weeklyDiff EFS ->  Sys : "

    .line 173
    .line 174
    const-string v2, "/efs/FactoryApp/batt_after_manufactured"

    .line 175
    .line 176
    invoke-static {v2}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    const-string v4, "/sys/class/power_supply/battery/batt_after_manufactured"

    .line 181
    .line 182
    if-nez v3, :cond_1

    .line 183
    .line 184
    const-wide/16 v0, 0x0

    .line 185
    .line 186
    invoke-static {v0, v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    iput v0, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_1
    const/4 v3, 0x1

    .line 197
    invoke-static {v2, v3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-nez v3, :cond_2

    .line 206
    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-ltz v3, :cond_2

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    int-to-long v5, v1

    .line 225
    invoke-static {v5, v6, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    iput v1, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :catch_1
    move-exception p0

    .line 236
    goto :goto_2

    .line 237
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 238
    .line 239
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 240
    .line 241
    const/4 v2, 0x1

    .line 242
    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v3, "!@[LLB] can not change. value: "

    .line 252
    .line 253
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v2, ", e: "

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    :goto_3
    return-void

    .line 275
    :goto_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 276
    throw p0

    .line 277
    :catchall_1
    move-exception p0

    .line 278
    goto :goto_7

    .line 279
    :catch_2
    move-exception p0

    .line 280
    goto :goto_5

    .line 281
    :catch_3
    move-exception p0

    .line 282
    goto :goto_6

    .line 283
    :goto_5
    :try_start_6
    const-string v0, "BatteryService"

    .line 284
    .line 285
    const-string/jumbo v3, "health: cannot register callback. (no supported health HAL service)"

    .line 286
    .line 287
    .line 288
    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw p0

    .line 292
    :goto_6
    const-string v0, "BatteryService"

    .line 293
    .line 294
    const-string/jumbo v3, "health: cannot register callback. (RemoteException)"

    .line 295
    .line 296
    .line 297
    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 305
    :goto_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 306
    .line 307
    .line 308
    throw p0
.end method

.method public final processValuesLocked(Z)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "seq"

    .line 4
    .line 5
    .line 6
    const-string v12, "BatteryService"

    .line 7
    .line 8
    const/4 v13, 0x4

    .line 9
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 13
    .line 14
    iget v5, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 15
    .line 16
    const/4 v14, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eq v5, v6, :cond_0

    .line 19
    .line 20
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 21
    .line 22
    iget v5, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 23
    .line 24
    if-gt v4, v5, :cond_0

    .line 25
    .line 26
    move v4, v6

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v14

    .line 29
    :goto_0
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 30
    .line 31
    iget-object v4, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 32
    .line 33
    invoke-static {v4}, Lcom/android/server/BatteryService;->plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iput v4, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 42
    .line 43
    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iput v14, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    iput v14, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 52
    .line 53
    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 54
    .line 55
    iget-boolean v7, v5, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 56
    .line 57
    if-eqz v7, :cond_3

    .line 58
    .line 59
    iput v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 60
    .line 61
    :cond_3
    iget-boolean v7, v5, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 62
    .line 63
    if-eqz v7, :cond_4

    .line 64
    .line 65
    iget v7, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 66
    .line 67
    or-int/2addr v7, v3

    .line 68
    iput v7, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 69
    .line 70
    :cond_4
    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 71
    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    iget v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 75
    .line 76
    or-int/2addr v5, v13

    .line 77
    iput v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 78
    .line 79
    :cond_5
    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 80
    .line 81
    iget-boolean v7, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 82
    .line 83
    if-eqz v7, :cond_6

    .line 84
    .line 85
    iget v7, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 86
    .line 87
    const/high16 v16, 0x10000

    .line 88
    .line 89
    or-int v7, v7, v16

    .line 90
    .line 91
    iput v7, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 92
    .line 93
    :cond_6
    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 94
    .line 95
    if-eqz v5, :cond_7

    .line 96
    .line 97
    iget v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 98
    .line 99
    or-int/2addr v5, v6

    .line 100
    iput v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 101
    .line 102
    :cond_7
    :goto_2
    :try_start_0
    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 103
    .line 104
    iget-object v7, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 105
    .line 106
    iget v8, v7, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 107
    .line 108
    iget v10, v7, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 109
    .line 110
    iget v9, v7, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 111
    .line 112
    iget v15, v7, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 113
    .line 114
    iget v13, v7, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 115
    .line 116
    iget v14, v7, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 117
    .line 118
    iget v3, v7, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 119
    .line 120
    move-object/from16 v32, v12

    .line 121
    .line 122
    :try_start_1
    iget-wide v11, v7, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 123
    .line 124
    iget-object v7, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 125
    .line 126
    iget v6, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 127
    .line 128
    move-object/from16 v33, v1

    .line 129
    .line 130
    :try_start_2
    iget v1, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    .line 132
    move-object/from16 v34, v2

    .line 133
    .line 134
    :try_start_3
    iget v2, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 135
    .line 136
    iget v0, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 137
    .line 138
    iget-boolean v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 139
    .line 140
    move-object/from16 v16, v5

    .line 141
    .line 142
    move/from16 v17, v8

    .line 143
    .line 144
    move/from16 v18, v10

    .line 145
    .line 146
    move/from16 v19, v4

    .line 147
    .line 148
    move/from16 v20, v9

    .line 149
    .line 150
    move/from16 v21, v15

    .line 151
    .line 152
    move/from16 v22, v13

    .line 153
    .line 154
    move/from16 v23, v14

    .line 155
    .line 156
    move/from16 v24, v3

    .line 157
    .line 158
    move-wide/from16 v25, v11

    .line 159
    .line 160
    move/from16 v27, v6

    .line 161
    .line 162
    move/from16 v28, v1

    .line 163
    .line 164
    move/from16 v29, v2

    .line 165
    .line 166
    move/from16 v30, v0

    .line 167
    .line 168
    move/from16 v31, v7

    .line 169
    .line 170
    invoke-interface/range {v16 .. v31}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIJIIIIZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 171
    .line 172
    .line 173
    :catch_0
    :goto_3
    move-object/from16 v0, p0

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :catch_1
    :goto_4
    move-object/from16 v34, v2

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :catch_2
    move-object/from16 v33, v1

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :catch_3
    move-object/from16 v33, v1

    .line 183
    .line 184
    move-object/from16 v34, v2

    .line 185
    .line 186
    move-object/from16 v32, v12

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :goto_5
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 190
    .line 191
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 192
    .line 193
    const/4 v3, -0x1

    .line 194
    const-string v4, ", so doesn\'t shutdown"

    .line 195
    .line 196
    if-eq v2, v3, :cond_9

    .line 197
    .line 198
    const/4 v5, 0x1

    .line 199
    if-ne v2, v5, :cond_d

    .line 200
    .line 201
    :cond_8
    move-object/from16 v2, v32

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_9
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mShutdownIfNoPower:Z

    .line 205
    .line 206
    if-nez v2, :cond_a

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_a
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 210
    .line 211
    if-lez v2, :cond_b

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_b
    iget-boolean v5, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 215
    .line 216
    if-nez v5, :cond_c

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_c
    if-nez v2, :cond_d

    .line 220
    .line 221
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 222
    .line 223
    if-eqz v2, :cond_d

    .line 224
    .line 225
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 226
    .line 227
    if-ltz v1, :cond_8

    .line 228
    .line 229
    const/16 v1, 0xf

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_8

    .line 236
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v2, "!@ BatteryService plug type: 0x"

    .line 240
    .line 241
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget v2, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 245
    .line 246
    const-string v5, " battery current avg: "

    .line 247
    .line 248
    invoke-static {v2, v1, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 252
    .line 253
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 254
    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    move-object/from16 v2, v32

    .line 266
    .line 267
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    goto :goto_8

    .line 271
    :goto_6
    new-instance v1, Lcom/android/server/BatteryService$16;

    .line 272
    .line 273
    const/4 v5, 0x2

    .line 274
    invoke-direct {v1, v0, v5}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 275
    .line 276
    .line 277
    move-object/from16 v5, v34

    .line 278
    .line 279
    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_d
    :goto_7
    move-object/from16 v2, v32

    .line 284
    .line 285
    :goto_8
    move-object/from16 v5, v34

    .line 286
    .line 287
    :goto_9
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 288
    .line 289
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 290
    .line 291
    if-nez v1, :cond_f

    .line 292
    .line 293
    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 294
    .line 295
    if-eqz v1, :cond_e

    .line 296
    .line 297
    iget-object v1, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 298
    .line 299
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-nez v1, :cond_f

    .line 304
    .line 305
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v6, "!@ BatteryService mBootCompleted: "

    .line 308
    .line 309
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-boolean v6, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 313
    .line 314
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v6, " am.isSystemReady: "

    .line 318
    .line 319
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget-object v6, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 323
    .line 324
    invoke-virtual {v6}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    :cond_f
    if-nez p1, :cond_10

    .line 342
    .line 343
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 344
    .line 345
    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    .line 346
    .line 347
    iget v4, v0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    .line 348
    .line 349
    if-eq v1, v4, :cond_11

    .line 350
    .line 351
    :cond_10
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 352
    .line 353
    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    .line 354
    .line 355
    iput v1, v0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    .line 356
    .line 357
    new-instance v1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;

    .line 358
    .line 359
    const/4 v4, 0x0

    .line 360
    invoke-direct {v1, v4, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    .line 365
    .line 366
    :cond_11
    sget-boolean v1, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 367
    .line 368
    if-eqz v1, :cond_12

    .line 369
    .line 370
    iget-object v7, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    .line 371
    .line 372
    if-eqz v7, :cond_12

    .line 373
    .line 374
    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 375
    .line 376
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 377
    .line 378
    iget v9, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 379
    .line 380
    iget-wide v10, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 381
    .line 382
    iget-object v1, v7, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    .line 383
    .line 384
    new-instance v4, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;

    .line 385
    .line 386
    move-object v6, v4

    .line 387
    invoke-direct/range {v6 .. v11}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;IIJ)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    .line 392
    .line 393
    :cond_12
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 394
    .line 395
    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 396
    .line 397
    if-eqz v1, :cond_13

    .line 398
    .line 399
    const-string v1, "/sys/class/power_supply/battery/wc_tx_id"

    .line 400
    .line 401
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->readNodeAsInt(Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    iput v1, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 406
    .line 407
    goto :goto_a

    .line 408
    :cond_13
    const/4 v1, 0x0

    .line 409
    iput v1, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 410
    .line 411
    :goto_a
    iget-object v1, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 412
    .line 413
    iget v1, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    .line 414
    .line 415
    const-string v4, "[SS]BattFunctions"

    .line 416
    .line 417
    const/4 v6, 0x4

    .line 418
    if-ne v1, v6, :cond_1f

    .line 419
    .line 420
    iget-object v1, v0, Lcom/android/server/BatteryService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 421
    .line 422
    iget-object v6, v0, Lcom/android/server/BatteryService;->mToken:Landroid/os/IBinder;

    .line 423
    .line 424
    const-string v7, "/sys/class/power_supply/battery/batt_main_con_det"

    .line 425
    .line 426
    invoke-static {v7}, Lcom/android/server/battery/BattUtils;->readNodeAsInt(Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v7

    .line 430
    const-string v8, "/sys/class/power_supply/battery/batt_sub_con_det"

    .line 431
    .line 432
    invoke-static {v8}, Lcom/android/server/battery/BattUtils;->readNodeAsInt(Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    if-eq v7, v3, :cond_1e

    .line 437
    .line 438
    if-ne v8, v3, :cond_14

    .line 439
    .line 440
    goto/16 :goto_e

    .line 441
    .line 442
    :cond_14
    const/4 v9, 0x1

    .line 443
    shl-int/2addr v8, v9

    .line 444
    add-int/2addr v7, v8

    .line 445
    new-instance v8, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    const-string v9, "[processBatteryConnectionChanged]mLastBatteryConnections:"

    .line 448
    .line 449
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    sget v9, Lcom/android/server/battery/BattFunctions$MultiSbpController;->mLastBatteryConnections:I

    .line 453
    .line 454
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v9, " ,currentBatteryConnections:"

    .line 458
    .line 459
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    sget v8, Lcom/android/server/battery/BattFunctions$MultiSbpController;->mLastBatteryConnections:I

    .line 473
    .line 474
    if-ne v8, v7, :cond_15

    .line 475
    .line 476
    goto/16 :goto_f

    .line 477
    .line 478
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    const-string v9, "BatteryConnectionsChanged:"

    .line 481
    .line 482
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    sget v9, Lcom/android/server/battery/BattFunctions$MultiSbpController;->mLastBatteryConnections:I

    .line 486
    .line 487
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v9, "=>"

    .line 491
    .line 492
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    const/4 v9, 0x1

    .line 503
    invoke-static {v9, v8}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 504
    .line 505
    .line 506
    if-gtz v7, :cond_16

    .line 507
    .line 508
    const-string v1, "[processBatteryConnectionChanged]currentBatteryConnections = 0 will skip sendBroadcast ACTION_BATTERY_CONNECTION_STATE_CHANGED"

    .line 509
    .line 510
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    goto :goto_c

    .line 514
    :cond_16
    sget v8, Lcom/android/server/battery/BattFunctions$MultiSbpController;->mLastBatteryConnections:I

    .line 515
    .line 516
    const/4 v9, 0x3

    .line 517
    if-ne v8, v9, :cond_17

    .line 518
    .line 519
    if-eq v7, v9, :cond_17

    .line 520
    .line 521
    new-instance v8, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;

    .line 522
    .line 523
    const/4 v10, 0x0

    .line 524
    invoke-direct {v8, v1, v6, v10}, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManagerInternal;Landroid/os/IBinder;I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    .line 529
    .line 530
    const/4 v1, 0x0

    .line 531
    goto :goto_b

    .line 532
    :cond_17
    if-eq v8, v9, :cond_18

    .line 533
    .line 534
    if-ne v7, v9, :cond_18

    .line 535
    .line 536
    new-instance v8, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;

    .line 537
    .line 538
    const/4 v9, 0x1

    .line 539
    invoke-direct {v8, v1, v6, v9}, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManagerInternal;Landroid/os/IBinder;I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v5, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    .line 544
    .line 545
    :cond_18
    const/4 v1, 0x1

    .line 546
    :goto_b
    new-instance v6, Landroid/content/Intent;

    .line 547
    .line 548
    const-string/jumbo v8, "com.samsung.server.BatteryService.action.BATTERY_CONNECTION_STATE_CHANGED"

    .line 549
    .line 550
    .line 551
    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    const/high16 v8, 0x24000000

    .line 555
    .line 556
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 557
    .line 558
    .line 559
    const-string v8, "all_battery_connected"

    .line 560
    .line 561
    invoke-virtual {v6, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 562
    .line 563
    .line 564
    const-string/jumbo v1, "battery_connection_status"

    .line 565
    .line 566
    .line 567
    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    .line 569
    .line 570
    new-instance v1, Lcom/android/server/battery/BattFunctions$$ExternalSyntheticLambda0;

    .line 571
    .line 572
    const/4 v8, 0x1

    .line 573
    invoke-direct {v1, v8, v6}, Lcom/android/server/battery/BattFunctions$$ExternalSyntheticLambda0;-><init>(ILandroid/content/Intent;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    .line 578
    .line 579
    :goto_c
    sput v7, Lcom/android/server/battery/BattFunctions$MultiSbpController;->mLastBatteryConnections:I

    .line 580
    .line 581
    new-instance v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 582
    .line 583
    iget-object v6, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 584
    .line 585
    invoke-direct {v1, v6}, Lcom/android/server/battery/batteryInfo/BattInfoManager;-><init>(Landroid/content/Context;)V

    .line 586
    .line 587
    .line 588
    iget-object v6, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 589
    .line 590
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    const-string v7, "[SS][BattInfo]BattInfoManager"

    .line 594
    .line 595
    const-string v8, "[end]end"

    .line 596
    .line 597
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .line 599
    .line 600
    iget-object v7, v6, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 601
    .line 602
    iget-object v8, v7, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 603
    .line 604
    iget-object v9, v7, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 605
    .line 606
    if-eqz v8, :cond_19

    .line 607
    .line 608
    iget-object v10, v7, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 609
    .line 610
    invoke-virtual {v10, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 611
    .line 612
    .line 613
    const/4 v8, 0x0

    .line 614
    iput-object v8, v7, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 615
    .line 616
    const-string v10, "[end]unregister writeFirstUseDateReceiver"

    .line 617
    .line 618
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    goto :goto_d

    .line 622
    :cond_19
    const/4 v8, 0x0

    .line 623
    :goto_d
    iget-object v10, v7, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 624
    .line 625
    if-eqz v10, :cond_1a

    .line 626
    .line 627
    iget-object v11, v7, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    .line 628
    .line 629
    invoke-virtual {v11, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 630
    .line 631
    .line 632
    iput-object v8, v7, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    .line 633
    .line 634
    const-string v10, "[end]unregister dateChangedReceiver"

    .line 635
    .line 636
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .line 638
    .line 639
    :cond_1a
    iget-object v9, v7, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 640
    .line 641
    if-eqz v9, :cond_1b

    .line 642
    .line 643
    invoke-virtual {v9, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    iput-object v8, v7, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 647
    .line 648
    :cond_1b
    iget-object v7, v6, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 649
    .line 650
    if-eqz v7, :cond_1c

    .line 651
    .line 652
    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 653
    .line 654
    .line 655
    :cond_1c
    iget-object v7, v6, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 656
    .line 657
    if-eqz v7, :cond_1d

    .line 658
    .line 659
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 660
    .line 661
    .line 662
    iput-object v8, v6, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 663
    .line 664
    :cond_1d
    iput-object v1, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 665
    .line 666
    goto :goto_f

    .line 667
    :cond_1e
    :goto_e
    const-string v1, "[processBatteryConnectionChanged]wrong battery connection value"

    .line 668
    .line 669
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .line 671
    .line 672
    :cond_1f
    :goto_f
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 673
    .line 674
    iget-wide v6, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 675
    .line 676
    sget-wide v8, Lcom/android/server/battery/BattFunctions;->mLastRemainingChargingTime:J

    .line 677
    .line 678
    cmp-long v1, v6, v8

    .line 679
    .line 680
    if-nez v1, :cond_20

    .line 681
    .line 682
    goto :goto_10

    .line 683
    :cond_20
    const-string v1, "[sendRemainingChargingTimeChangedIntent]remainingChargingTime:"

    .line 684
    .line 685
    const-string v8, " ,mLastRemainingChargingTime:"

    .line 686
    .line 687
    invoke-static {v1, v6, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    sget-wide v8, Lcom/android/server/battery/BattFunctions;->mLastRemainingChargingTime:J

    .line 692
    .line 693
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .line 702
    .line 703
    new-instance v1, Landroid/content/Intent;

    .line 704
    .line 705
    const-string/jumbo v4, "com.samsung.server.BatteryService.action.SEC_BATTERY_REMAINING_CHARGING_TIME_CHANGED"

    .line 706
    .line 707
    .line 708
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    const/high16 v4, 0x60000000

    .line 712
    .line 713
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    .line 715
    .line 716
    const-string/jumbo v4, "remaining_charging_time"

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 720
    .line 721
    .line 722
    new-instance v4, Lcom/android/server/battery/BattFunctions$$ExternalSyntheticLambda0;

    .line 723
    .line 724
    const/4 v8, 0x0

    .line 725
    invoke-direct {v4, v8, v1}, Lcom/android/server/battery/BattFunctions$$ExternalSyntheticLambda0;-><init>(ILandroid/content/Intent;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    .line 730
    .line 731
    sput-wide v6, Lcom/android/server/battery/BattFunctions;->mLastRemainingChargingTime:J

    .line 732
    .line 733
    :goto_10
    const/16 v1, 0x32

    .line 734
    .line 735
    if-nez p1, :cond_24

    .line 736
    .line 737
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 738
    .line 739
    iget v6, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 740
    .line 741
    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 742
    .line 743
    if-ne v6, v7, :cond_24

    .line 744
    .line 745
    iget v6, v4, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 746
    .line 747
    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 748
    .line 749
    if-ne v6, v7, :cond_24

    .line 750
    .line 751
    iget-boolean v6, v4, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 752
    .line 753
    iget-boolean v7, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 754
    .line 755
    if-ne v6, v7, :cond_24

    .line 756
    .line 757
    iget v6, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 758
    .line 759
    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 760
    .line 761
    if-ne v6, v7, :cond_24

    .line 762
    .line 763
    iget v6, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 764
    .line 765
    iget v7, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 766
    .line 767
    if-ne v6, v7, :cond_24

    .line 768
    .line 769
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 770
    .line 771
    iget v6, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 772
    .line 773
    if-eq v4, v6, :cond_21

    .line 774
    .line 775
    sub-int/2addr v4, v6

    .line 776
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 777
    .line 778
    .line 779
    move-result v4

    .line 780
    if-gt v4, v1, :cond_24

    .line 781
    .line 782
    :cond_21
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 783
    .line 784
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 785
    .line 786
    iget v6, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 787
    .line 788
    if-eq v4, v6, :cond_22

    .line 789
    .line 790
    sub-int/2addr v4, v6

    .line 791
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 792
    .line 793
    .line 794
    move-result v4

    .line 795
    const/16 v6, 0xa

    .line 796
    .line 797
    if-gt v4, v6, :cond_24

    .line 798
    .line 799
    :cond_22
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 800
    .line 801
    iget v6, v4, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 802
    .line 803
    iget v7, v0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 804
    .line 805
    if-ne v6, v7, :cond_24

    .line 806
    .line 807
    iget v6, v4, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 808
    .line 809
    iget v7, v0, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 810
    .line 811
    if-ne v6, v7, :cond_24

    .line 812
    .line 813
    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 814
    .line 815
    iget v7, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 816
    .line 817
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 818
    .line 819
    if-ne v7, v8, :cond_24

    .line 820
    .line 821
    iget v7, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 822
    .line 823
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 824
    .line 825
    if-ne v7, v8, :cond_24

    .line 826
    .line 827
    iget-boolean v7, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 828
    .line 829
    iget-boolean v8, v0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 830
    .line 831
    if-ne v7, v8, :cond_24

    .line 832
    .line 833
    iget v7, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 834
    .line 835
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 836
    .line 837
    if-ne v7, v8, :cond_24

    .line 838
    .line 839
    iget-boolean v7, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 840
    .line 841
    iget-boolean v8, v0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 842
    .line 843
    if-ne v7, v8, :cond_24

    .line 844
    .line 845
    iget v7, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 846
    .line 847
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 848
    .line 849
    if-ne v7, v8, :cond_24

    .line 850
    .line 851
    iget v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 852
    .line 853
    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 854
    .line 855
    if-ne v6, v7, :cond_24

    .line 856
    .line 857
    iget v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 858
    .line 859
    iget v7, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 860
    .line 861
    if-ne v6, v7, :cond_24

    .line 862
    .line 863
    iget v6, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 864
    .line 865
    iget v7, v0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 866
    .line 867
    if-ne v6, v7, :cond_24

    .line 868
    .line 869
    iget v6, v4, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 870
    .line 871
    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryCycleCount:I

    .line 872
    .line 873
    if-ne v6, v7, :cond_24

    .line 874
    .line 875
    iget v4, v4, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 876
    .line 877
    iget v6, v0, Lcom/android/server/BatteryService;->mLastCharingState:I

    .line 878
    .line 879
    if-ne v4, v6, :cond_24

    .line 880
    .line 881
    iget v4, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 882
    .line 883
    iget v6, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 884
    .line 885
    if-eq v4, v6, :cond_23

    .line 886
    .line 887
    goto :goto_11

    .line 888
    :cond_23
    move-object v1, v0

    .line 889
    move-object v6, v5

    .line 890
    goto/16 :goto_3f

    .line 891
    .line 892
    :cond_24
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 893
    .line 894
    const-string v6, "[processValuesLocked]batteryLevel:"

    .line 895
    .line 896
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 900
    .line 901
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 902
    .line 903
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    const-string v6, " ,LastbatteryLevel:"

    .line 907
    .line 908
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    iget v6, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 912
    .line 913
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    const-string v6, " ,mPlugType:"

    .line 917
    .line 918
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    iget v6, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 922
    .line 923
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    const-string v6, " ,batteryStatus:"

    .line 927
    .line 928
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 932
    .line 933
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 934
    .line 935
    invoke-static {v4, v6, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 936
    .line 937
    .line 938
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 939
    .line 940
    iget v6, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 941
    .line 942
    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 943
    .line 944
    if-eq v6, v7, :cond_25

    .line 945
    .line 946
    const/4 v6, 0x1

    .line 947
    goto :goto_12

    .line 948
    :cond_25
    const/4 v6, 0x0

    .line 949
    :goto_12
    iget v7, v4, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 950
    .line 951
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 952
    .line 953
    if-eq v7, v8, :cond_26

    .line 954
    .line 955
    const/4 v7, 0x1

    .line 956
    goto :goto_13

    .line 957
    :cond_26
    const/4 v7, 0x0

    .line 958
    :goto_13
    iget-boolean v8, v4, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 959
    .line 960
    iget-boolean v9, v0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 961
    .line 962
    if-eq v8, v9, :cond_27

    .line 963
    .line 964
    const/4 v8, 0x1

    .line 965
    goto :goto_14

    .line 966
    :cond_27
    const/4 v8, 0x0

    .line 967
    :goto_14
    iget v9, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 968
    .line 969
    iget v10, v0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 970
    .line 971
    if-eq v9, v10, :cond_28

    .line 972
    .line 973
    const/4 v9, 0x1

    .line 974
    goto :goto_15

    .line 975
    :cond_28
    const/4 v9, 0x0

    .line 976
    :goto_15
    iget v10, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 977
    .line 978
    iget v11, v0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 979
    .line 980
    if-eq v10, v11, :cond_29

    .line 981
    .line 982
    const/4 v10, 0x1

    .line 983
    goto :goto_16

    .line 984
    :cond_29
    const/4 v10, 0x0

    .line 985
    :goto_16
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 986
    .line 987
    iget v11, v0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 988
    .line 989
    if-eq v4, v11, :cond_2a

    .line 990
    .line 991
    sub-int/2addr v4, v11

    .line 992
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 993
    .line 994
    .line 995
    move-result v4

    .line 996
    if-le v4, v1, :cond_2a

    .line 997
    .line 998
    const/4 v1, 0x1

    .line 999
    goto :goto_17

    .line 1000
    :cond_2a
    const/4 v1, 0x0

    .line 1001
    :goto_17
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1002
    .line 1003
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 1004
    .line 1005
    iget v11, v0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 1006
    .line 1007
    if-eq v4, v11, :cond_2b

    .line 1008
    .line 1009
    sub-int/2addr v4, v11

    .line 1010
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 1011
    .line 1012
    .line 1013
    move-result v4

    .line 1014
    const/16 v11, 0xa

    .line 1015
    .line 1016
    if-le v4, v11, :cond_2b

    .line 1017
    .line 1018
    const/4 v4, 0x1

    .line 1019
    goto :goto_18

    .line 1020
    :cond_2b
    const/4 v4, 0x0

    .line 1021
    :goto_18
    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1022
    .line 1023
    iget v12, v11, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 1024
    .line 1025
    iget v13, v0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 1026
    .line 1027
    if-eq v12, v13, :cond_2c

    .line 1028
    .line 1029
    const/4 v12, 0x1

    .line 1030
    goto :goto_19

    .line 1031
    :cond_2c
    const/4 v12, 0x0

    .line 1032
    :goto_19
    iget v13, v11, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 1033
    .line 1034
    iget v14, v0, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 1035
    .line 1036
    if-eq v13, v14, :cond_2d

    .line 1037
    .line 1038
    const/4 v13, 0x1

    .line 1039
    goto :goto_1a

    .line 1040
    :cond_2d
    const/4 v13, 0x0

    .line 1041
    :goto_1a
    iget-object v14, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1042
    .line 1043
    iget v15, v14, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 1044
    .line 1045
    iget v3, v0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 1046
    .line 1047
    if-eq v15, v3, :cond_2e

    .line 1048
    .line 1049
    const/4 v3, 0x1

    .line 1050
    goto :goto_1b

    .line 1051
    :cond_2e
    const/4 v3, 0x0

    .line 1052
    :goto_1b
    iget v15, v14, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 1053
    .line 1054
    move-object/from16 v34, v5

    .line 1055
    .line 1056
    iget v5, v0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 1057
    .line 1058
    if-eq v15, v5, :cond_2f

    .line 1059
    .line 1060
    const/4 v5, 0x1

    .line 1061
    goto :goto_1c

    .line 1062
    :cond_2f
    const/4 v5, 0x0

    .line 1063
    :goto_1c
    iget-boolean v15, v14, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 1064
    .line 1065
    move-object/from16 v32, v2

    .line 1066
    .line 1067
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 1068
    .line 1069
    if-eq v15, v2, :cond_30

    .line 1070
    .line 1071
    const/4 v2, 0x1

    .line 1072
    goto :goto_1d

    .line 1073
    :cond_30
    const/4 v2, 0x0

    .line 1074
    :goto_1d
    iget v15, v14, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 1075
    .line 1076
    move/from16 v17, v2

    .line 1077
    .line 1078
    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 1079
    .line 1080
    if-eq v15, v2, :cond_31

    .line 1081
    .line 1082
    const/4 v2, 0x1

    .line 1083
    goto :goto_1e

    .line 1084
    :cond_31
    const/4 v2, 0x0

    .line 1085
    :goto_1e
    iget-boolean v15, v14, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 1086
    .line 1087
    move/from16 v18, v2

    .line 1088
    .line 1089
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 1090
    .line 1091
    if-eq v15, v2, :cond_32

    .line 1092
    .line 1093
    const/4 v2, 0x1

    .line 1094
    goto :goto_1f

    .line 1095
    :cond_32
    const/4 v2, 0x0

    .line 1096
    :goto_1f
    iget v15, v14, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 1097
    .line 1098
    move/from16 v19, v2

    .line 1099
    .line 1100
    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 1101
    .line 1102
    if-eq v15, v2, :cond_33

    .line 1103
    .line 1104
    const/4 v2, 0x1

    .line 1105
    goto :goto_20

    .line 1106
    :cond_33
    const/4 v2, 0x0

    .line 1107
    :goto_20
    iget v14, v14, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 1108
    .line 1109
    iget v15, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 1110
    .line 1111
    if-eq v14, v15, :cond_34

    .line 1112
    .line 1113
    const/4 v14, 0x1

    .line 1114
    goto :goto_21

    .line 1115
    :cond_34
    const/4 v14, 0x0

    .line 1116
    :goto_21
    iget v15, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 1117
    .line 1118
    move/from16 v20, v14

    .line 1119
    .line 1120
    iget v14, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 1121
    .line 1122
    if-eq v15, v14, :cond_35

    .line 1123
    .line 1124
    const/4 v14, 0x1

    .line 1125
    goto :goto_22

    .line 1126
    :cond_35
    const/4 v14, 0x0

    .line 1127
    :goto_22
    iget v15, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 1128
    .line 1129
    move/from16 v21, v14

    .line 1130
    .line 1131
    iget v14, v0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 1132
    .line 1133
    if-eq v15, v14, :cond_36

    .line 1134
    .line 1135
    const/4 v14, 0x1

    .line 1136
    goto :goto_23

    .line 1137
    :cond_36
    const/4 v14, 0x0

    .line 1138
    :goto_23
    iget v15, v11, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 1139
    .line 1140
    move/from16 v22, v14

    .line 1141
    .line 1142
    iget v14, v0, Lcom/android/server/BatteryService;->mLastBatteryCycleCount:I

    .line 1143
    .line 1144
    if-eq v15, v14, :cond_37

    .line 1145
    .line 1146
    const/4 v14, 0x1

    .line 1147
    goto :goto_24

    .line 1148
    :cond_37
    const/4 v14, 0x0

    .line 1149
    :goto_24
    iget v11, v11, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 1150
    .line 1151
    iget v15, v0, Lcom/android/server/BatteryService;->mLastCharingState:I

    .line 1152
    .line 1153
    if-eq v11, v15, :cond_38

    .line 1154
    .line 1155
    const/4 v11, 0x1

    .line 1156
    goto :goto_25

    .line 1157
    :cond_38
    const/4 v11, 0x0

    .line 1158
    :goto_25
    iget v15, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 1159
    .line 1160
    move/from16 v23, v11

    .line 1161
    .line 1162
    iget v11, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 1163
    .line 1164
    if-eq v15, v11, :cond_39

    .line 1165
    .line 1166
    const/4 v11, 0x1

    .line 1167
    :goto_26
    const/16 v15, 0x16

    .line 1168
    .line 1169
    goto :goto_27

    .line 1170
    :cond_39
    const/4 v11, 0x0

    .line 1171
    goto :goto_26

    .line 1172
    :goto_27
    new-array v0, v15, [Z

    .line 1173
    .line 1174
    const/4 v15, 0x0

    .line 1175
    aput-boolean v6, v0, v15

    .line 1176
    .line 1177
    const/4 v6, 0x1

    .line 1178
    aput-boolean v7, v0, v6

    .line 1179
    .line 1180
    const/4 v6, 0x2

    .line 1181
    aput-boolean v8, v0, v6

    .line 1182
    .line 1183
    const/4 v6, 0x3

    .line 1184
    aput-boolean v9, v0, v6

    .line 1185
    .line 1186
    const/4 v6, 0x4

    .line 1187
    aput-boolean v10, v0, v6

    .line 1188
    .line 1189
    const/4 v6, 0x5

    .line 1190
    aput-boolean v1, v0, v6

    .line 1191
    .line 1192
    const/4 v1, 0x6

    .line 1193
    aput-boolean v4, v0, v1

    .line 1194
    .line 1195
    const/4 v1, 0x7

    .line 1196
    aput-boolean v12, v0, v1

    .line 1197
    .line 1198
    const/16 v1, 0x8

    .line 1199
    .line 1200
    aput-boolean v13, v0, v1

    .line 1201
    .line 1202
    const/16 v1, 0x9

    .line 1203
    .line 1204
    aput-boolean v3, v0, v1

    .line 1205
    .line 1206
    const/16 v1, 0xa

    .line 1207
    .line 1208
    aput-boolean v5, v0, v1

    .line 1209
    .line 1210
    const/16 v1, 0xb

    .line 1211
    .line 1212
    aput-boolean v17, v0, v1

    .line 1213
    .line 1214
    const/16 v1, 0xc

    .line 1215
    .line 1216
    aput-boolean v18, v0, v1

    .line 1217
    .line 1218
    const/16 v1, 0xd

    .line 1219
    .line 1220
    const/4 v3, 0x0

    .line 1221
    aput-boolean v3, v0, v1

    .line 1222
    .line 1223
    const/16 v1, 0xe

    .line 1224
    .line 1225
    aput-boolean v19, v0, v1

    .line 1226
    .line 1227
    const/16 v1, 0xf

    .line 1228
    .line 1229
    aput-boolean v2, v0, v1

    .line 1230
    .line 1231
    const/16 v1, 0x10

    .line 1232
    .line 1233
    aput-boolean v20, v0, v1

    .line 1234
    .line 1235
    const/16 v1, 0x11

    .line 1236
    .line 1237
    aput-boolean v21, v0, v1

    .line 1238
    .line 1239
    const/16 v1, 0x12

    .line 1240
    .line 1241
    aput-boolean v22, v0, v1

    .line 1242
    .line 1243
    const/16 v1, 0x13

    .line 1244
    .line 1245
    aput-boolean v14, v0, v1

    .line 1246
    .line 1247
    const/16 v1, 0x14

    .line 1248
    .line 1249
    aput-boolean v23, v0, v1

    .line 1250
    .line 1251
    const/16 v1, 0x15

    .line 1252
    .line 1253
    aput-boolean v11, v0, v1

    .line 1254
    .line 1255
    move-object/from16 v1, p0

    .line 1256
    .line 1257
    move-object v2, v0

    .line 1258
    const/4 v0, 0x0

    .line 1259
    :goto_28
    iget-object v3, v1, Lcom/android/server/BatteryService;->mBatteryChangedConditionCounts:[I

    .line 1260
    .line 1261
    const/16 v4, 0x16

    .line 1262
    .line 1263
    if-ge v0, v4, :cond_3b

    .line 1264
    .line 1265
    aget-boolean v5, v2, v0

    .line 1266
    .line 1267
    if-eqz v5, :cond_3a

    .line 1268
    .line 1269
    aget v5, v3, v0

    .line 1270
    .line 1271
    const/4 v6, 0x1

    .line 1272
    add-int/2addr v5, v6

    .line 1273
    aput v5, v3, v0

    .line 1274
    .line 1275
    goto :goto_29

    .line 1276
    :cond_3a
    const/4 v6, 0x1

    .line 1277
    :goto_29
    add-int/2addr v0, v6

    .line 1278
    goto :goto_28

    .line 1279
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    const-string v2, "[countBatteryChangedConditions]mBatteryChangedConditionCounts:"

    .line 1282
    .line 1283
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1284
    .line 1285
    .line 1286
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v2

    .line 1290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v0

    .line 1297
    move-object/from16 v2, v32

    .line 1298
    .line 1299
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    .line 1301
    .line 1302
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1303
    .line 1304
    iget v3, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1305
    .line 1306
    if-eq v0, v3, :cond_40

    .line 1307
    .line 1308
    const/16 v4, 0x58a

    .line 1309
    .line 1310
    const/16 v5, 0x58d

    .line 1311
    .line 1312
    const/16 v6, 0x589

    .line 1313
    .line 1314
    if-nez v3, :cond_3d

    .line 1315
    .line 1316
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1317
    .line 1318
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1319
    .line 1320
    iput v0, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 1321
    .line 1322
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1323
    .line 1324
    .line 1325
    move-result-wide v7

    .line 1326
    iput-wide v7, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 1327
    .line 1328
    new-instance v0, Landroid/metrics/LogMaker;

    .line 1329
    .line 1330
    invoke-direct {v0, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1331
    .line 1332
    .line 1333
    const/4 v3, 0x4

    .line 1334
    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1335
    .line 1336
    .line 1337
    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1338
    .line 1339
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v3

    .line 1343
    invoke-virtual {v0, v5, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1344
    .line 1345
    .line 1346
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1347
    .line 1348
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1349
    .line 1350
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v3

    .line 1354
    invoke-virtual {v0, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1355
    .line 1356
    .line 1357
    iget-object v3, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1358
    .line 1359
    invoke-virtual {v3, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1360
    .line 1361
    .line 1362
    iget-wide v3, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1363
    .line 1364
    const-wide/16 v5, 0x0

    .line 1365
    .line 1366
    cmp-long v0, v3, v5

    .line 1367
    .line 1368
    if-eqz v0, :cond_3c

    .line 1369
    .line 1370
    iget v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1371
    .line 1372
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1373
    .line 1374
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1375
    .line 1376
    if-eq v0, v3, :cond_3c

    .line 1377
    .line 1378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1379
    .line 1380
    .line 1381
    move-result-wide v3

    .line 1382
    iget-wide v5, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1383
    .line 1384
    sub-long/2addr v3, v5

    .line 1385
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v0

    .line 1389
    iget v5, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1390
    .line 1391
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v5

    .line 1395
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1396
    .line 1397
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1398
    .line 1399
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v6

    .line 1403
    filled-new-array {v0, v5, v6}, [Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    const/16 v5, 0xaaa

    .line 1408
    .line 1409
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1410
    .line 1411
    .line 1412
    const-wide/16 v5, 0x0

    .line 1413
    .line 1414
    iput-wide v5, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1415
    .line 1416
    const/4 v0, 0x1

    .line 1417
    goto :goto_2a

    .line 1418
    :cond_3c
    const/4 v0, 0x0

    .line 1419
    const-wide/16 v3, 0x0

    .line 1420
    .line 1421
    :goto_2a
    move-wide v5, v3

    .line 1422
    goto :goto_2c

    .line 1423
    :cond_3d
    if-nez v0, :cond_40

    .line 1424
    .line 1425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1426
    .line 1427
    .line 1428
    move-result-wide v7

    .line 1429
    iput-wide v7, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1430
    .line 1431
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1432
    .line 1433
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1434
    .line 1435
    iput v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1436
    .line 1437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1438
    .line 1439
    .line 1440
    move-result-wide v7

    .line 1441
    iget-wide v9, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 1442
    .line 1443
    sub-long/2addr v7, v9

    .line 1444
    const-wide/16 v11, 0x0

    .line 1445
    .line 1446
    cmp-long v0, v9, v11

    .line 1447
    .line 1448
    if-eqz v0, :cond_3f

    .line 1449
    .line 1450
    cmp-long v0, v7, v11

    .line 1451
    .line 1452
    if-eqz v0, :cond_3e

    .line 1453
    .line 1454
    new-instance v0, Landroid/metrics/LogMaker;

    .line 1455
    .line 1456
    invoke-direct {v0, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1457
    .line 1458
    .line 1459
    const/4 v3, 0x5

    .line 1460
    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1461
    .line 1462
    .line 1463
    iget v3, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1464
    .line 1465
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v3

    .line 1469
    invoke-virtual {v0, v5, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1470
    .line 1471
    .line 1472
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v3

    .line 1476
    const/16 v5, 0x58c

    .line 1477
    .line 1478
    invoke-virtual {v0, v5, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1479
    .line 1480
    .line 1481
    iget v3, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 1482
    .line 1483
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v3

    .line 1487
    invoke-virtual {v0, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1488
    .line 1489
    .line 1490
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1491
    .line 1492
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1493
    .line 1494
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v3

    .line 1498
    const/16 v4, 0x58b

    .line 1499
    .line 1500
    invoke-virtual {v0, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1501
    .line 1502
    .line 1503
    iget-object v3, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1504
    .line 1505
    invoke-virtual {v3, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1506
    .line 1507
    .line 1508
    :cond_3e
    const-wide/16 v3, 0x0

    .line 1509
    .line 1510
    goto :goto_2b

    .line 1511
    :cond_3f
    move-wide v3, v11

    .line 1512
    :goto_2b
    iput-wide v3, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 1513
    .line 1514
    :cond_40
    const/4 v0, 0x0

    .line 1515
    const-wide/16 v5, 0x0

    .line 1516
    .line 1517
    :goto_2c
    iget v3, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1518
    .line 1519
    if-gtz v3, :cond_41

    .line 1520
    .line 1521
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1522
    .line 1523
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1524
    .line 1525
    if-lez v3, :cond_41

    .line 1526
    .line 1527
    iput v3, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 1528
    .line 1529
    :cond_41
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1530
    .line 1531
    iget v4, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1532
    .line 1533
    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 1534
    .line 1535
    if-ne v4, v7, :cond_42

    .line 1536
    .line 1537
    iget v7, v3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 1538
    .line 1539
    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 1540
    .line 1541
    if-ne v7, v8, :cond_42

    .line 1542
    .line 1543
    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 1544
    .line 1545
    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 1546
    .line 1547
    if-ne v3, v7, :cond_42

    .line 1548
    .line 1549
    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1550
    .line 1551
    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1552
    .line 1553
    if-eq v3, v7, :cond_43

    .line 1554
    .line 1555
    :cond_42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v3

    .line 1559
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1560
    .line 1561
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 1562
    .line 1563
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v4

    .line 1567
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1568
    .line 1569
    iget-boolean v7, v7, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 1570
    .line 1571
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v7

    .line 1575
    iget v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1576
    .line 1577
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v8

    .line 1581
    iget-object v9, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1582
    .line 1583
    iget-object v9, v9, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 1584
    .line 1585
    filled-new-array {v3, v4, v7, v8, v9}, [Ljava/lang/Object;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v3

    .line 1589
    const/16 v4, 0xaa3

    .line 1590
    .line 1591
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1592
    .line 1593
    .line 1594
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1595
    .line 1596
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1597
    .line 1598
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v3

    .line 1602
    const-string/jumbo v4, "debug.tracing.battery_status"

    .line 1603
    .line 1604
    .line 1605
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    .line 1607
    .line 1608
    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1609
    .line 1610
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v3

    .line 1614
    const-string/jumbo v4, "debug.tracing.plug_type"

    .line 1615
    .line 1616
    .line 1617
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    .line 1619
    .line 1620
    :cond_43
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1621
    .line 1622
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1623
    .line 1624
    iget v4, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 1625
    .line 1626
    if-eq v3, v4, :cond_44

    .line 1627
    .line 1628
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v3

    .line 1632
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1633
    .line 1634
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 1635
    .line 1636
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1637
    .line 1638
    .line 1639
    move-result-object v4

    .line 1640
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1641
    .line 1642
    iget v7, v7, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 1643
    .line 1644
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v7

    .line 1648
    filled-new-array {v3, v4, v7}, [Ljava/lang/Object;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v3

    .line 1652
    const/16 v4, 0xaa2

    .line 1653
    .line 1654
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1655
    .line 1656
    .line 1657
    :cond_44
    iget-boolean v3, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 1658
    .line 1659
    if-eqz v3, :cond_45

    .line 1660
    .line 1661
    iget-boolean v3, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 1662
    .line 1663
    if-nez v3, :cond_45

    .line 1664
    .line 1665
    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1666
    .line 1667
    if-nez v3, :cond_45

    .line 1668
    .line 1669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1670
    .line 1671
    .line 1672
    move-result-wide v3

    .line 1673
    iget-wide v5, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 1674
    .line 1675
    sub-long v5, v3, v5

    .line 1676
    .line 1677
    move-wide v3, v5

    .line 1678
    const/4 v5, 0x1

    .line 1679
    goto :goto_2d

    .line 1680
    :cond_45
    move-wide v3, v5

    .line 1681
    move v5, v0

    .line 1682
    :goto_2d
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1683
    .line 1684
    if-nez v0, :cond_46

    .line 1685
    .line 1686
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1687
    .line 1688
    if-nez v0, :cond_49

    .line 1689
    .line 1690
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1691
    .line 1692
    iget v6, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1693
    .line 1694
    const/4 v7, 0x1

    .line 1695
    if-eq v6, v7, :cond_49

    .line 1696
    .line 1697
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1698
    .line 1699
    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1700
    .line 1701
    if-gt v0, v6, :cond_49

    .line 1702
    .line 1703
    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1704
    .line 1705
    goto :goto_2e

    .line 1706
    :cond_46
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1707
    .line 1708
    if-eqz v0, :cond_47

    .line 1709
    .line 1710
    const/4 v0, 0x0

    .line 1711
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1712
    .line 1713
    goto :goto_2e

    .line 1714
    :cond_47
    const/4 v0, 0x0

    .line 1715
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1716
    .line 1717
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1718
    .line 1719
    iget v7, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 1720
    .line 1721
    if-lt v6, v7, :cond_48

    .line 1722
    .line 1723
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1724
    .line 1725
    goto :goto_2e

    .line 1726
    :cond_48
    if-eqz p1, :cond_49

    .line 1727
    .line 1728
    iget v7, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1729
    .line 1730
    if-lt v6, v7, :cond_49

    .line 1731
    .line 1732
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 1733
    .line 1734
    :cond_49
    :goto_2e
    iget v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1735
    .line 1736
    const/4 v6, 0x1

    .line 1737
    add-int/2addr v0, v6

    .line 1738
    iput v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1739
    .line 1740
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    .line 1741
    .line 1742
    if-eqz v0, :cond_4a

    .line 1743
    .line 1744
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1745
    .line 1746
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 1747
    .line 1748
    const/16 v7, 0x64

    .line 1749
    .line 1750
    if-ne v0, v7, :cond_4a

    .line 1751
    .line 1752
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 1753
    .line 1754
    if-nez v0, :cond_4a

    .line 1755
    .line 1756
    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 1757
    .line 1758
    const-string/jumbo v0, "enable wireless charger menu in setting"

    .line 1759
    .line 1760
    .line 1761
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    .line 1763
    .line 1764
    iget-object v0, v1, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 1765
    .line 1766
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v0

    .line 1770
    const-string/jumbo v7, "show_wireless_charger_menu"

    .line 1771
    .line 1772
    .line 1773
    const/4 v8, -0x2

    .line 1774
    invoke-static {v0, v7, v6, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1775
    .line 1776
    .line 1777
    new-instance v0, Lcom/android/server/BatteryService$16;

    .line 1778
    .line 1779
    const/4 v6, 0x3

    .line 1780
    invoke-direct {v0, v1, v6}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    .line 1781
    .line 1782
    .line 1783
    move-object/from16 v6, v34

    .line 1784
    .line 1785
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1786
    .line 1787
    .line 1788
    goto :goto_2f

    .line 1789
    :cond_4a
    move-object/from16 v6, v34

    .line 1790
    .line 1791
    :goto_2f
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1792
    .line 1793
    const/high16 v7, 0x4000000

    .line 1794
    .line 1795
    if-eqz v0, :cond_4b

    .line 1796
    .line 1797
    iget v8, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1798
    .line 1799
    if-eqz v8, :cond_4c

    .line 1800
    .line 1801
    const/4 v9, -0x1

    .line 1802
    if-ne v8, v9, :cond_4b

    .line 1803
    .line 1804
    goto :goto_30

    .line 1805
    :cond_4b
    move-object/from16 v9, v33

    .line 1806
    .line 1807
    goto :goto_31

    .line 1808
    :cond_4c
    :goto_30
    new-instance v0, Landroid/content/Intent;

    .line 1809
    .line 1810
    const-string v8, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 1811
    .line 1812
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1813
    .line 1814
    .line 1815
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1816
    .line 1817
    .line 1818
    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1819
    .line 1820
    move-object/from16 v9, v33

    .line 1821
    .line 1822
    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1823
    .line 1824
    .line 1825
    new-instance v8, Lcom/android/server/BatteryService$22;

    .line 1826
    .line 1827
    const/4 v10, 0x0

    .line 1828
    invoke-direct {v8, v1, v0, v10}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 1829
    .line 1830
    .line 1831
    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1832
    .line 1833
    .line 1834
    goto :goto_32

    .line 1835
    :goto_31
    if-nez v0, :cond_4e

    .line 1836
    .line 1837
    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1838
    .line 1839
    if-nez v0, :cond_4d

    .line 1840
    .line 1841
    const/4 v8, -0x1

    .line 1842
    if-ne v0, v8, :cond_4e

    .line 1843
    .line 1844
    :cond_4d
    new-instance v0, Landroid/content/Intent;

    .line 1845
    .line 1846
    const-string v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 1847
    .line 1848
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1849
    .line 1850
    .line 1851
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1852
    .line 1853
    .line 1854
    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1855
    .line 1856
    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1857
    .line 1858
    .line 1859
    new-instance v8, Lcom/android/server/BatteryService$22;

    .line 1860
    .line 1861
    const/4 v10, 0x1

    .line 1862
    invoke-direct {v8, v1, v0, v10}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 1863
    .line 1864
    .line 1865
    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1866
    .line 1867
    .line 1868
    :cond_4e
    :goto_32
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 1869
    .line 1870
    if-eqz v0, :cond_4f

    .line 1871
    .line 1872
    const/4 v0, 0x1

    .line 1873
    goto :goto_33

    .line 1874
    :cond_4f
    const/4 v0, 0x0

    .line 1875
    :goto_33
    iget v8, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 1876
    .line 1877
    if-eqz v8, :cond_50

    .line 1878
    .line 1879
    const/4 v8, 0x1

    .line 1880
    goto :goto_34

    .line 1881
    :cond_50
    const/4 v8, 0x0

    .line 1882
    :goto_34
    if-nez v0, :cond_53

    .line 1883
    .line 1884
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1885
    .line 1886
    iget v10, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1887
    .line 1888
    const/4 v11, 0x1

    .line 1889
    if-eq v10, v11, :cond_53

    .line 1890
    .line 1891
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1892
    .line 1893
    iget v10, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 1894
    .line 1895
    if-gt v0, v10, :cond_53

    .line 1896
    .line 1897
    if-nez v8, :cond_51

    .line 1898
    .line 1899
    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 1900
    .line 1901
    if-gt v8, v10, :cond_51

    .line 1902
    .line 1903
    iget v8, v1, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    .line 1904
    .line 1905
    if-le v0, v8, :cond_53

    .line 1906
    .line 1907
    :cond_51
    const/4 v0, 0x1

    .line 1908
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 1909
    .line 1910
    new-instance v0, Landroid/content/Intent;

    .line 1911
    .line 1912
    const-string v8, "android.intent.action.BATTERY_LOW"

    .line 1913
    .line 1914
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1915
    .line 1916
    .line 1917
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1918
    .line 1919
    .line 1920
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1921
    .line 1922
    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1923
    .line 1924
    .line 1925
    new-instance v7, Lcom/android/server/BatteryService$22;

    .line 1926
    .line 1927
    const/4 v8, 0x2

    .line 1928
    invoke-direct {v7, v1, v0, v8}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 1929
    .line 1930
    .line 1931
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1932
    .line 1933
    .line 1934
    :cond_52
    const/4 v8, 0x3

    .line 1935
    goto :goto_35

    .line 1936
    :cond_53
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 1937
    .line 1938
    if-eqz v0, :cond_52

    .line 1939
    .line 1940
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1941
    .line 1942
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1943
    .line 1944
    iget v8, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 1945
    .line 1946
    if-lt v0, v8, :cond_52

    .line 1947
    .line 1948
    const/4 v0, 0x0

    .line 1949
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 1950
    .line 1951
    new-instance v0, Landroid/content/Intent;

    .line 1952
    .line 1953
    const-string v8, "android.intent.action.BATTERY_OKAY"

    .line 1954
    .line 1955
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1956
    .line 1957
    .line 1958
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1959
    .line 1960
    .line 1961
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 1962
    .line 1963
    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1964
    .line 1965
    .line 1966
    new-instance v7, Lcom/android/server/BatteryService$22;

    .line 1967
    .line 1968
    const/4 v8, 0x3

    .line 1969
    invoke-direct {v7, v1, v0, v8}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 1970
    .line 1971
    .line 1972
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1973
    .line 1974
    .line 1975
    :goto_35
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1976
    .line 1977
    iget v7, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1978
    .line 1979
    iget-object v10, v1, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

    .line 1980
    .line 1981
    const/4 v11, 0x2

    .line 1982
    if-ne v7, v11, :cond_55

    .line 1983
    .line 1984
    iget-object v11, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 1985
    .line 1986
    iget v11, v11, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 1987
    .line 1988
    if-ge v11, v8, :cond_55

    .line 1989
    .line 1990
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 1991
    .line 1992
    if-nez v0, :cond_55

    .line 1993
    .line 1994
    iget v0, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 1995
    .line 1996
    if-eq v7, v0, :cond_54

    .line 1997
    .line 1998
    const-string/jumbo v0, "skip send broadcast ACTION_BATTERY_CHANGED for 250ms"

    .line 1999
    .line 2000
    .line 2001
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    .line 2003
    .line 2004
    const/4 v0, 0x1

    .line 2005
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 2006
    .line 2007
    const-wide/16 v7, 0xfa

    .line 2008
    .line 2009
    invoke-virtual {v10, v0, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2010
    .line 2011
    .line 2012
    :cond_54
    const/4 v0, 0x0

    .line 2013
    goto :goto_36

    .line 2014
    :cond_55
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 2015
    .line 2016
    if-eqz v0, :cond_54

    .line 2017
    .line 2018
    const/4 v0, 0x0

    .line 2019
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 2020
    .line 2021
    const/4 v0, 0x0

    .line 2022
    invoke-virtual {v10, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2023
    .line 2024
    .line 2025
    :goto_36
    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    .line 2026
    .line 2027
    if-nez v7, :cond_56

    .line 2028
    .line 2029
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 2030
    .line 2031
    .line 2032
    :cond_56
    iget-object v7, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2033
    .line 2034
    iget v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 2035
    .line 2036
    iget v10, v1, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 2037
    .line 2038
    if-ne v8, v10, :cond_57

    .line 2039
    .line 2040
    iget v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 2041
    .line 2042
    iget v10, v1, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 2043
    .line 2044
    if-ne v8, v10, :cond_57

    .line 2045
    .line 2046
    iget-boolean v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 2047
    .line 2048
    iget-boolean v10, v1, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 2049
    .line 2050
    if-ne v8, v10, :cond_57

    .line 2051
    .line 2052
    iget v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 2053
    .line 2054
    iget v10, v1, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 2055
    .line 2056
    if-ne v8, v10, :cond_57

    .line 2057
    .line 2058
    iget-boolean v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 2059
    .line 2060
    iget-boolean v10, v1, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 2061
    .line 2062
    if-ne v8, v10, :cond_57

    .line 2063
    .line 2064
    iget v8, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2065
    .line 2066
    iget v10, v1, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 2067
    .line 2068
    if-ne v8, v10, :cond_57

    .line 2069
    .line 2070
    iget v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 2071
    .line 2072
    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 2073
    .line 2074
    if-ne v7, v8, :cond_57

    .line 2075
    .line 2076
    iget v7, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2077
    .line 2078
    iget v8, v1, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 2079
    .line 2080
    if-ne v7, v8, :cond_57

    .line 2081
    .line 2082
    iget v7, v1, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 2083
    .line 2084
    iget v8, v1, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 2085
    .line 2086
    if-eq v7, v8, :cond_59

    .line 2087
    .line 2088
    :cond_57
    const-string/jumbo v7, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 2089
    .line 2090
    .line 2091
    const/high16 v8, 0x24000000

    .line 2092
    .line 2093
    invoke-static {v8, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v7

    .line 2097
    iget-object v8, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2098
    .line 2099
    iget v8, v8, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2100
    .line 2101
    const-string/jumbo v10, "misc_event"

    .line 2102
    .line 2103
    .line 2104
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2105
    .line 2106
    .line 2107
    const-string/jumbo v8, "sec_plug_type"

    .line 2108
    .line 2109
    .line 2110
    iget v10, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2111
    .line 2112
    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2113
    .line 2114
    .line 2115
    iget-object v8, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2116
    .line 2117
    iget v8, v8, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 2118
    .line 2119
    const-string/jumbo v10, "online"

    .line 2120
    .line 2121
    .line 2122
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2123
    .line 2124
    .line 2125
    iget-object v8, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2126
    .line 2127
    iget v8, v8, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 2128
    .line 2129
    const-string/jumbo v10, "charge_type"

    .line 2130
    .line 2131
    .line 2132
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2133
    .line 2134
    .line 2135
    iget-object v8, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2136
    .line 2137
    iget-boolean v8, v8, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 2138
    .line 2139
    const-string/jumbo v10, "power_sharing"

    .line 2140
    .line 2141
    .line 2142
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2143
    .line 2144
    .line 2145
    iget-object v8, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2146
    .line 2147
    iget v8, v8, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 2148
    .line 2149
    if-eqz v8, :cond_58

    .line 2150
    .line 2151
    const/4 v8, 0x1

    .line 2152
    goto :goto_37

    .line 2153
    :cond_58
    const/4 v8, 0x0

    .line 2154
    :goto_37
    const-string/jumbo v10, "hv_charger"

    .line 2155
    .line 2156
    .line 2157
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2158
    .line 2159
    .line 2160
    iget-object v8, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2161
    .line 2162
    iget v8, v8, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 2163
    .line 2164
    const-string/jumbo v10, "charger_type"

    .line 2165
    .line 2166
    .line 2167
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2168
    .line 2169
    .line 2170
    const-string/jumbo v8, "pogo_plugged"

    .line 2171
    .line 2172
    .line 2173
    iget v10, v1, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 2174
    .line 2175
    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2176
    .line 2177
    .line 2178
    iget-object v8, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2179
    .line 2180
    iget v8, v8, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 2181
    .line 2182
    const-string/jumbo v10, "current_event"

    .line 2183
    .line 2184
    .line 2185
    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2186
    .line 2187
    .line 2188
    const-string/jumbo v8, "wc_tx_id"

    .line 2189
    .line 2190
    .line 2191
    iget v10, v1, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 2192
    .line 2193
    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2194
    .line 2195
    .line 2196
    new-instance v8, Lcom/android/server/BatteryService$22;

    .line 2197
    .line 2198
    const/4 v10, 0x5

    .line 2199
    invoke-direct {v8, v1, v7, v10}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 2200
    .line 2201
    .line 2202
    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2203
    .line 2204
    .line 2205
    :cond_59
    iget-object v7, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2206
    .line 2207
    iget v7, v7, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2208
    .line 2209
    iget v8, v1, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 2210
    .line 2211
    if-eq v7, v8, :cond_5b

    .line 2212
    .line 2213
    const/4 v8, 0x1

    .line 2214
    and-int/2addr v7, v8

    .line 2215
    if-eqz v7, :cond_5a

    .line 2216
    .line 2217
    const/4 v7, 0x1

    .line 2218
    goto :goto_38

    .line 2219
    :cond_5a
    const/4 v7, 0x0

    .line 2220
    :goto_38
    iget-boolean v8, v1, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 2221
    .line 2222
    if-eq v8, v7, :cond_5b

    .line 2223
    .line 2224
    new-instance v8, Landroid/content/Intent;

    .line 2225
    .line 2226
    const-string/jumbo v10, "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

    .line 2227
    .line 2228
    .line 2229
    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2230
    .line 2231
    .line 2232
    const/high16 v10, 0x24000000

    .line 2233
    .line 2234
    invoke-virtual {v8, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2235
    .line 2236
    .line 2237
    const-string/jumbo v10, "water"

    .line 2238
    .line 2239
    .line 2240
    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2241
    .line 2242
    .line 2243
    new-instance v10, Lcom/android/server/BatteryService$27;

    .line 2244
    .line 2245
    const/4 v11, 0x0

    .line 2246
    invoke-direct {v10, v11, v8, v7}, Lcom/android/server/BatteryService$27;-><init>(ILandroid/content/Intent;Z)V

    .line 2247
    .line 2248
    .line 2249
    invoke-virtual {v6, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2250
    .line 2251
    .line 2252
    iput-boolean v7, v1, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    .line 2253
    .line 2254
    :cond_5b
    iget v7, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 2255
    .line 2256
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2257
    .line 2258
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2259
    .line 2260
    if-ne v7, v8, :cond_5d

    .line 2261
    .line 2262
    iget v7, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 2263
    .line 2264
    iget v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 2265
    .line 2266
    if-eq v7, v8, :cond_5c

    .line 2267
    .line 2268
    goto :goto_3a

    .line 2269
    :cond_5c
    :goto_39
    const/4 v7, 0x0

    .line 2270
    goto/16 :goto_3c

    .line 2271
    .line 2272
    :cond_5d
    :goto_3a
    new-instance v7, Landroid/os/Bundle;

    .line 2273
    .line 2274
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2275
    .line 2276
    .line 2277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2278
    .line 2279
    .line 2280
    move-result-wide v10

    .line 2281
    iget v8, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 2282
    .line 2283
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2284
    .line 2285
    .line 2286
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2287
    .line 2288
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 2289
    .line 2290
    const-string/jumbo v9, "status"

    .line 2291
    .line 2292
    .line 2293
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2294
    .line 2295
    .line 2296
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2297
    .line 2298
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 2299
    .line 2300
    const-string/jumbo v9, "health"

    .line 2301
    .line 2302
    .line 2303
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2304
    .line 2305
    .line 2306
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2307
    .line 2308
    iget-boolean v8, v8, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 2309
    .line 2310
    const-string/jumbo v9, "present"

    .line 2311
    .line 2312
    .line 2313
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2314
    .line 2315
    .line 2316
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2317
    .line 2318
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2319
    .line 2320
    const-string/jumbo v9, "level"

    .line 2321
    .line 2322
    .line 2323
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2324
    .line 2325
    .line 2326
    const-string/jumbo v8, "battery_low"

    .line 2327
    .line 2328
    .line 2329
    iget-boolean v9, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 2330
    .line 2331
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2332
    .line 2333
    .line 2334
    const-string/jumbo v8, "scale"

    .line 2335
    .line 2336
    .line 2337
    const/16 v9, 0x64

    .line 2338
    .line 2339
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2340
    .line 2341
    .line 2342
    const-string/jumbo v8, "plugged"

    .line 2343
    .line 2344
    .line 2345
    iget v9, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 2346
    .line 2347
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2348
    .line 2349
    .line 2350
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2351
    .line 2352
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 2353
    .line 2354
    const-string/jumbo v9, "voltage"

    .line 2355
    .line 2356
    .line 2357
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2358
    .line 2359
    .line 2360
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2361
    .line 2362
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 2363
    .line 2364
    const-string/jumbo v9, "temperature"

    .line 2365
    .line 2366
    .line 2367
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2368
    .line 2369
    .line 2370
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2371
    .line 2372
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 2373
    .line 2374
    const-string/jumbo v9, "charge_counter"

    .line 2375
    .line 2376
    .line 2377
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2378
    .line 2379
    .line 2380
    const-string v8, "android.os.extra.EVENT_TIMESTAMP"

    .line 2381
    .line 2382
    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2383
    .line 2384
    .line 2385
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2386
    .line 2387
    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 2388
    .line 2389
    const-string v9, "android.os.extra.CYCLE_COUNT"

    .line 2390
    .line 2391
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2392
    .line 2393
    .line 2394
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2395
    .line 2396
    iget v8, v8, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 2397
    .line 2398
    const-string v9, "android.os.extra.CHARGING_STATUS"

    .line 2399
    .line 2400
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2401
    .line 2402
    .line 2403
    iget-object v8, v1, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 2404
    .line 2405
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 2406
    .line 2407
    .line 2408
    move-result v8

    .line 2409
    iget-object v9, v1, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 2410
    .line 2411
    invoke-virtual {v9, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 2412
    .line 2413
    .line 2414
    iget-object v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 2415
    .line 2416
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->size()I

    .line 2417
    .line 2418
    .line 2419
    move-result v7

    .line 2420
    const/16 v9, 0x64

    .line 2421
    .line 2422
    if-le v7, v9, :cond_5e

    .line 2423
    .line 2424
    iget-object v7, v1, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 2425
    .line 2426
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 2427
    .line 2428
    .line 2429
    :cond_5e
    if-eqz v8, :cond_5c

    .line 2430
    .line 2431
    iget-wide v7, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    .line 2432
    .line 2433
    sub-long v12, v10, v7

    .line 2434
    .line 2435
    const-wide/32 v14, 0xea60

    .line 2436
    .line 2437
    .line 2438
    cmp-long v9, v12, v14

    .line 2439
    .line 2440
    if-lez v9, :cond_5f

    .line 2441
    .line 2442
    const-wide/16 v7, 0x0

    .line 2443
    .line 2444
    goto :goto_3b

    .line 2445
    :cond_5f
    add-long/2addr v7, v14

    .line 2446
    sub-long/2addr v7, v10

    .line 2447
    :goto_3b
    new-instance v9, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;

    .line 2448
    .line 2449
    const/4 v10, 0x1

    .line 2450
    invoke-direct {v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 2451
    .line 2452
    .line 2453
    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2454
    .line 2455
    .line 2456
    goto/16 :goto_39

    .line 2457
    .line 2458
    :goto_3c
    invoke-virtual {v1, v7}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    .line 2459
    .line 2460
    .line 2461
    iget-object v7, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 2462
    .line 2463
    invoke-virtual {v7}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 2464
    .line 2465
    .line 2466
    if-eqz v5, :cond_61

    .line 2467
    .line 2468
    const-wide/16 v7, 0x0

    .line 2469
    .line 2470
    cmp-long v5, v3, v7

    .line 2471
    .line 2472
    if-eqz v5, :cond_61

    .line 2473
    .line 2474
    iget-object v5, v1, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 2475
    .line 2476
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2477
    .line 2478
    .line 2479
    move-result-object v5

    .line 2480
    iget-boolean v7, v1, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 2481
    .line 2482
    if-eqz v7, :cond_60

    .line 2483
    .line 2484
    const-string/jumbo v0, "battery_discharge_threshold"

    .line 2485
    .line 2486
    .line 2487
    invoke-static {v5, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 2488
    .line 2489
    .line 2490
    move-result-object v10

    .line 2491
    const-string/jumbo v0, "battery_discharge_duration_threshold"

    .line 2492
    .line 2493
    .line 2494
    invoke-static {v5, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 2495
    .line 2496
    .line 2497
    move-result-object v0

    .line 2498
    goto :goto_3d

    .line 2499
    :cond_60
    move-object v10, v0

    .line 2500
    :goto_3d
    if-eqz v10, :cond_61

    .line 2501
    .line 2502
    if-eqz v0, :cond_61

    .line 2503
    .line 2504
    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2505
    .line 2506
    .line 2507
    move-result-wide v7

    .line 2508
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2509
    .line 2510
    .line 2511
    move-result v5

    .line 2512
    cmp-long v3, v3, v7

    .line 2513
    .line 2514
    if-gtz v3, :cond_61

    .line 2515
    .line 2516
    iget v3, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 2517
    .line 2518
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2519
    .line 2520
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2521
    .line 2522
    sub-int/2addr v3, v4

    .line 2523
    if-lt v3, v5, :cond_61

    .line 2524
    .line 2525
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2526
    .line 2527
    .line 2528
    goto :goto_3e

    .line 2529
    :catch_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2530
    .line 2531
    const-string v4, "Invalid DischargeThresholds GService string: "

    .line 2532
    .line 2533
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2534
    .line 2535
    .line 2536
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    .line 2538
    .line 2539
    const-string v0, " or "

    .line 2540
    .line 2541
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2542
    .line 2543
    .line 2544
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    .line 2546
    .line 2547
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2548
    .line 2549
    .line 2550
    move-result-object v0

    .line 2551
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    .line 2553
    .line 2554
    :cond_61
    :goto_3e
    iget-object v0, v1, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 2555
    .line 2556
    iget-boolean v3, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    .line 2557
    .line 2558
    if-eqz v3, :cond_62

    .line 2559
    .line 2560
    iget v3, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 2561
    .line 2562
    int-to-long v3, v3

    .line 2563
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2564
    .line 2565
    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2566
    .line 2567
    int-to-long v7, v5

    .line 2568
    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processAsoc(JJ)V

    .line 2569
    .line 2570
    .line 2571
    :cond_62
    iget-object v9, v1, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 2572
    .line 2573
    iget v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 2574
    .line 2575
    int-to-long v10, v0

    .line 2576
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2577
    .line 2578
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2579
    .line 2580
    int-to-long v12, v0

    .line 2581
    const/4 v14, 0x0

    .line 2582
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processDischargingLevel(JJZ)V

    .line 2583
    .line 2584
    .line 2585
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2586
    .line 2587
    iget v3, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 2588
    .line 2589
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 2590
    .line 2591
    iget v3, v0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 2592
    .line 2593
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 2594
    .line 2595
    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 2596
    .line 2597
    iput-boolean v3, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 2598
    .line 2599
    iget v3, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2600
    .line 2601
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 2602
    .line 2603
    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 2604
    .line 2605
    iput v3, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 2606
    .line 2607
    iget v3, v0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 2608
    .line 2609
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 2610
    .line 2611
    iget v3, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 2612
    .line 2613
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 2614
    .line 2615
    iget v3, v0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 2616
    .line 2617
    iput v3, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 2618
    .line 2619
    iget v3, v0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 2620
    .line 2621
    iput v3, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 2622
    .line 2623
    iget-boolean v3, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 2624
    .line 2625
    iput-boolean v3, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 2626
    .line 2627
    iget v3, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 2628
    .line 2629
    iput v3, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 2630
    .line 2631
    iget v3, v0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 2632
    .line 2633
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryCycleCount:I

    .line 2634
    .line 2635
    iget v0, v0, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 2636
    .line 2637
    iput v0, v1, Lcom/android/server/BatteryService;->mLastCharingState:I

    .line 2638
    .line 2639
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2640
    .line 2641
    iget v3, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 2642
    .line 2643
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    .line 2644
    .line 2645
    iget v3, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 2646
    .line 2647
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    .line 2648
    .line 2649
    iget-boolean v3, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 2650
    .line 2651
    iput-boolean v3, v1, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    .line 2652
    .line 2653
    iget v3, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 2654
    .line 2655
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    .line 2656
    .line 2657
    iget-boolean v3, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 2658
    .line 2659
    iput-boolean v3, v1, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    .line 2660
    .line 2661
    iget v3, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2662
    .line 2663
    iput v3, v1, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    .line 2664
    .line 2665
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 2666
    .line 2667
    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    .line 2668
    .line 2669
    iget v0, v1, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    .line 2670
    .line 2671
    iput v0, v1, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    .line 2672
    .line 2673
    iget v0, v1, Lcom/android/server/BatteryService;->mWcTxId:I

    .line 2674
    .line 2675
    iput v0, v1, Lcom/android/server/BatteryService;->mLastWcTxId:I

    .line 2676
    .line 2677
    :goto_3f
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2678
    .line 2679
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 2680
    .line 2681
    const/4 v3, 0x2

    .line 2682
    if-ne v0, v3, :cond_63

    .line 2683
    .line 2684
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2685
    .line 2686
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 2687
    .line 2688
    iget v3, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    .line 2689
    .line 2690
    if-eq v0, v3, :cond_63

    .line 2691
    .line 2692
    const-string/jumbo v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_CURRENT_CHANGED"

    .line 2693
    .line 2694
    .line 2695
    const/high16 v3, 0x60000000

    .line 2696
    .line 2697
    invoke-static {v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 2698
    .line 2699
    .line 2700
    move-result-object v0

    .line 2701
    iget-object v3, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2702
    .line 2703
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 2704
    .line 2705
    const-string/jumbo v4, "current_now"

    .line 2706
    .line 2707
    .line 2708
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2709
    .line 2710
    .line 2711
    new-instance v3, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;

    .line 2712
    .line 2713
    const/4 v4, 0x0

    .line 2714
    invoke-direct {v3, v1, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 2715
    .line 2716
    .line 2717
    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2718
    .line 2719
    .line 2720
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2721
    .line 2722
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 2723
    .line 2724
    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    .line 2725
    .line 2726
    :cond_63
    iget-object v0, v1, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 2727
    .line 2728
    iget-boolean v3, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    .line 2729
    .line 2730
    if-eqz v3, :cond_64

    .line 2731
    .line 2732
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2733
    .line 2734
    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 2735
    .line 2736
    int-to-long v3, v3

    .line 2737
    const/4 v5, 0x0

    .line 2738
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processFullStatusUsage(JZ)V

    .line 2739
    .line 2740
    .line 2741
    goto :goto_40

    .line 2742
    :cond_64
    const/4 v5, 0x0

    .line 2743
    :goto_40
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 2744
    .line 2745
    if-eqz v0, :cond_65

    .line 2746
    .line 2747
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked()V

    .line 2748
    .line 2749
    .line 2750
    :cond_65
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    .line 2751
    .line 2752
    if-eqz v0, :cond_66

    .line 2753
    .line 2754
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 2755
    .line 2756
    if-eqz v0, :cond_66

    .line 2757
    .line 2758
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    .line 2759
    .line 2760
    if-eqz v0, :cond_66

    .line 2761
    .line 2762
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2763
    .line 2764
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2765
    .line 2766
    and-int/lit8 v3, v0, 0x20

    .line 2767
    .line 2768
    if-eqz v3, :cond_66

    .line 2769
    .line 2770
    const-string v3, "/sys/class/power_supply/battery/batt_misc_event"

    .line 2771
    .line 2772
    int-to-long v6, v0

    .line 2773
    invoke-static {v6, v7, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 2774
    .line 2775
    .line 2776
    :cond_66
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2777
    .line 2778
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 2779
    .line 2780
    int-to-long v3, v0

    .line 2781
    iget-wide v6, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 2782
    .line 2783
    cmp-long v0, v3, v6

    .line 2784
    .line 2785
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 2786
    .line 2787
    if-lez v0, :cond_67

    .line 2788
    .line 2789
    iput-wide v3, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    .line 2790
    .line 2791
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Lcom/android/server/BatteryService$16;

    .line 2792
    .line 2793
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2794
    .line 2795
    .line 2796
    :cond_67
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2797
    .line 2798
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 2799
    .line 2800
    int-to-long v3, v0

    .line 2801
    iget-wide v7, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 2802
    .line 2803
    cmp-long v0, v3, v7

    .line 2804
    .line 2805
    if-lez v0, :cond_68

    .line 2806
    .line 2807
    iput-wide v3, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    .line 2808
    .line 2809
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Lcom/android/server/BatteryService$16;

    .line 2810
    .line 2811
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2812
    .line 2813
    .line 2814
    :cond_68
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2815
    .line 2816
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 2817
    .line 2818
    iget-boolean v3, v1, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    .line 2819
    .line 2820
    if-eq v0, v3, :cond_69

    .line 2821
    .line 2822
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    .line 2823
    .line 2824
    invoke-virtual {v1, v0}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    .line 2825
    .line 2826
    .line 2827
    :cond_69
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2828
    .line 2829
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2830
    .line 2831
    and-int/lit8 v0, v0, 0x40

    .line 2832
    .line 2833
    if-eqz v0, :cond_6a

    .line 2834
    .line 2835
    const/4 v0, 0x1

    .line 2836
    goto :goto_41

    .line 2837
    :cond_6a
    move v0, v5

    .line 2838
    :goto_41
    iget-boolean v3, v1, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 2839
    .line 2840
    if-eq v3, v0, :cond_6b

    .line 2841
    .line 2842
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 2843
    .line 2844
    invoke-virtual {v1, v0}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    .line 2845
    .line 2846
    .line 2847
    :cond_6b
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2848
    .line 2849
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 2850
    .line 2851
    const/4 v3, 0x2

    .line 2852
    and-int/2addr v0, v3

    .line 2853
    if-eqz v0, :cond_6c

    .line 2854
    .line 2855
    const/4 v14, 0x1

    .line 2856
    goto :goto_42

    .line 2857
    :cond_6c
    move v14, v5

    .line 2858
    :goto_42
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    .line 2859
    .line 2860
    if-eq v0, v14, :cond_6e

    .line 2861
    .line 2862
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 2863
    .line 2864
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 2865
    .line 2866
    if-eqz v0, :cond_6d

    .line 2867
    .line 2868
    if-eqz v14, :cond_6d

    .line 2869
    .line 2870
    const-string/jumbo v0, "notify wireless backpack on"

    .line 2871
    .line 2872
    .line 2873
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    .line 2875
    .line 2876
    const/4 v0, 0x3

    .line 2877
    iput v0, v1, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 2878
    .line 2879
    iget-object v3, v1, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 2880
    .line 2881
    if-eqz v3, :cond_6d

    .line 2882
    .line 2883
    const/16 v4, 0xb

    .line 2884
    .line 2885
    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 2886
    .line 2887
    .line 2888
    iget-object v0, v1, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 2889
    .line 2890
    iget v3, v1, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 2891
    .line 2892
    const/4 v4, 0x1

    .line 2893
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 2894
    .line 2895
    .line 2896
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2897
    .line 2898
    const-string/jumbo v3, "setWirelessChargingMode(All): "

    .line 2899
    .line 2900
    .line 2901
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2902
    .line 2903
    .line 2904
    iget v3, v1, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 2905
    .line 2906
    invoke-static {v0, v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 2907
    .line 2908
    .line 2909
    :cond_6d
    iput-boolean v14, v1, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    .line 2910
    .line 2911
    :cond_6e
    return-void
.end method

.method public final registerContentObserver(Landroid/content/ContentResolver;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "led_indicator_charing"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, -0x2

    .line 6
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x0

    .line 11
    if-ne v3, v1, :cond_0

    .line 12
    .line 13
    move v3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v4

    .line 16
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 17
    .line 18
    const-string/jumbo v3, "led_indicator_low_battery"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-ne v5, v1, :cond_1

    .line 26
    .line 27
    move v5, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v5, v4

    .line 30
    :goto_1
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 31
    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v6, "!@Led Charging Settings = "

    .line 35
    .line 36
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-string v6, "BatteryService"

    .line 49
    .line 50
    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v7, "!@Led Low Battery Settings = "

    .line 56
    .line 57
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    .line 61
    .line 62
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v5, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 77
    .line 78
    const/4 v7, -0x1

    .line 79
    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 87
    .line 88
    .line 89
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "adaptive_fast_charging"

    .line 97
    .line 98
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 103
    .line 104
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    .line 106
    .line 107
    :cond_2
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    const-string/jumbo v0, "super_fast_charging"

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-ne v3, v1, :cond_3

    .line 119
    .line 120
    move v3, v1

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    move v3, v4

    .line 123
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 124
    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v5, "!@SuperFastCharging Settings = "

    .line 128
    .line 129
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 133
    .line 134
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    .line 145
    .line 146
    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setSuperFastCharging(Z)V

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 154
    .line 155
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 156
    .line 157
    .line 158
    :cond_4
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    .line 159
    .line 160
    if-eqz v0, :cond_8

    .line 161
    .line 162
    const-string/jumbo v0, "show_wireless_charger_menu"

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-ne v0, v1, :cond_5

    .line 170
    .line 171
    move v0, v1

    .line 172
    goto :goto_3

    .line 173
    :cond_5
    move v0, v4

    .line 174
    :goto_3
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    .line 175
    .line 176
    const-string/jumbo v0, "wireless_fast_charging"

    .line 177
    .line 178
    .line 179
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-ne v3, v1, :cond_6

    .line 184
    .line 185
    move v3, v1

    .line 186
    goto :goto_4

    .line 187
    :cond_6
    move v3, v4

    .line 188
    :goto_4
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 189
    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v5, "!@WirelessFastCharging Settings = "

    .line 193
    .line 194
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 198
    .line 199
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    .line 210
    .line 211
    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    .line 212
    .line 213
    .line 214
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iget-object v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 219
    .line 220
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 221
    .line 222
    .line 223
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    .line 224
    .line 225
    if-eqz v0, :cond_8

    .line 226
    .line 227
    const-string/jumbo v0, "refresh_rate_mode"

    .line 228
    .line 229
    .line 230
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    iput v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 235
    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v5, "!@RefreshRateMode Setting = "

    .line 239
    .line 240
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget v5, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 244
    .line 245
    invoke-static {v3, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    .line 249
    .line 250
    const-string v5, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    .line 251
    .line 252
    if-nez v3, :cond_7

    .line 253
    .line 254
    const-wide/16 v8, 0x5

    .line 255
    .line 256
    invoke-static {v8, v9, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_7
    const-wide/16 v8, 0x6

    .line 261
    .line 262
    invoke-static {v8, v9, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :goto_5
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget-object v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 270
    .line 271
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 272
    .line 273
    .line 274
    :cond_8
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    .line 275
    .line 276
    if-eqz v0, :cond_a

    .line 277
    .line 278
    const-string/jumbo v0, "pass_through"

    .line 279
    .line 280
    .line 281
    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-ne v3, v1, :cond_9

    .line 286
    .line 287
    move v3, v1

    .line 288
    goto :goto_6

    .line 289
    :cond_9
    move v3, v4

    .line 290
    :goto_6
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 291
    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v5, "!@mPassThroughSettingsEnable Settings = "

    .line 295
    .line 296
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 300
    .line 301
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    .line 312
    .line 313
    invoke-static {v3}, Lcom/android/server/BatteryService;->setPassThrough(Z)V

    .line 314
    .line 315
    .line 316
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    iget-object v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 321
    .line 322
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 323
    .line 324
    .line 325
    :cond_a
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    .line 326
    .line 327
    iget-object v3, p0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 328
    .line 329
    const-string/jumbo v5, "protect_battery"

    .line 330
    .line 331
    .line 332
    if-eqz v0, :cond_b

    .line 333
    .line 334
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    iput v3, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 352
    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string/jumbo v5, "mProtectBatteryMode:"

    .line 356
    .line 357
    .line 358
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget v5, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 362
    .line 363
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    sget-object v5, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 371
    .line 372
    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    sget v3, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    .line 376
    .line 377
    iput v3, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 378
    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string/jumbo v8, "mProtectionThreshold:"

    .line 382
    .line 383
    .line 384
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget v8, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 388
    .line 389
    invoke-static {v5, v8, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 390
    .line 391
    .line 392
    const-string/jumbo v5, "battery_protection_threshold"

    .line 393
    .line 394
    .line 395
    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    iput v0, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 400
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string/jumbo v3, "mMaximumProtectionThreshold:"

    .line 404
    .line 405
    .line 406
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget v3, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 410
    .line 411
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    new-instance v0, Lcom/android/server/BatteryService$15;

    .line 422
    .line 423
    const/4 v3, 0x5

    .line 424
    invoke-direct {v0, p0, v3}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    .line 425
    .line 426
    .line 427
    iput-object v0, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThresholdObserver:Lcom/android/server/BatteryService$15;

    .line 428
    .line 429
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    iget-object v3, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThresholdObserver:Lcom/android/server/BatteryService$15;

    .line 434
    .line 435
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 436
    .line 437
    .line 438
    const/16 v0, 0x5f

    .line 439
    .line 440
    iput v0, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    .line 441
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    const-string/jumbo v3, "mLtcHighThreshold:"

    .line 445
    .line 446
    .line 447
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    .line 451
    .line 452
    invoke-static {v0, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget v0, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    .line 456
    .line 457
    int-to-long v8, v0

    .line 458
    const-string v0, "/efs/Battery/batt_ltc_highsoc_threshold"

    .line 459
    .line 460
    invoke-static {v8, v9, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 461
    .line 462
    .line 463
    const/16 v0, 0x2760

    .line 464
    .line 465
    iput v0, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    .line 466
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    const-string/jumbo v3, "mLtcHighSocDuration:"

    .line 470
    .line 471
    .line 472
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    .line 476
    .line 477
    invoke-static {v0, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 478
    .line 479
    .line 480
    iget v0, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    .line 481
    .line 482
    int-to-long v8, v0

    .line 483
    const-string v0, "/efs/Battery/batt_ltc_highsoc_duration"

    .line 484
    .line 485
    invoke-static {v8, v9, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 486
    .line 487
    .line 488
    const/16 v0, 0x4b

    .line 489
    .line 490
    iput v0, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    .line 491
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    const-string/jumbo v3, "mLtcReleaseThreshold:"

    .line 495
    .line 496
    .line 497
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iget v3, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    .line 501
    .line 502
    invoke-static {v0, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 503
    .line 504
    .line 505
    iget v0, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    .line 506
    .line 507
    int-to-long v8, v0

    .line 508
    const-string v0, "/efs/Battery/batt_ltc_release_threshold"

    .line 509
    .line 510
    invoke-static {v8, v9, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    .line 514
    .line 515
    .line 516
    goto :goto_9

    .line 517
    :cond_b
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    .line 518
    .line 519
    if-eqz v0, :cond_e

    .line 520
    .line 521
    invoke-static {p1, v5, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-ne v0, v1, :cond_c

    .line 526
    .line 527
    move v0, v1

    .line 528
    goto :goto_7

    .line 529
    :cond_c
    move v0, v4

    .line 530
    :goto_7
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    .line 531
    .line 532
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    .line 533
    .line 534
    iget-object v8, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    .line 535
    .line 536
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 537
    .line 538
    .line 539
    invoke-static {p1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 540
    .line 541
    .line 542
    move-result v8

    .line 543
    if-ne v8, v1, :cond_d

    .line 544
    .line 545
    move v8, v1

    .line 546
    goto :goto_8

    .line 547
    :cond_d
    move v8, v4

    .line 548
    :goto_8
    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 549
    .line 550
    new-instance v8, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    const-string v9, "!@mFullCapacityEnable Settings = "

    .line 553
    .line 554
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    .line 558
    .line 559
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v8

    .line 566
    invoke-static {v6, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    iget-object v8, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

    .line 570
    .line 571
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    .line 573
    .line 574
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 579
    .line 580
    .line 581
    :cond_e
    :goto_9
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    .line 582
    .line 583
    if-eqz v0, :cond_f

    .line 584
    .line 585
    const-string/jumbo v0, "tx_battery_limit"

    .line 586
    .line 587
    .line 588
    const/16 v3, 0x1e

    .line 589
    .line 590
    invoke-static {p1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    iput v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 595
    .line 596
    new-instance v3, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    const-string v5, "!@Tx Battery Limit Settings = "

    .line 599
    .line 600
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    iget v5, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 604
    .line 605
    invoke-static {v3, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 606
    .line 607
    .line 608
    iget v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    .line 609
    .line 610
    const-string v5, "/sys/class/power_supply/battery/wc_tx_stop_capacity"

    .line 611
    .line 612
    int-to-long v8, v3

    .line 613
    invoke-static {v8, v9, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 614
    .line 615
    .line 616
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    iget-object v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 621
    .line 622
    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 623
    .line 624
    .line 625
    :cond_f
    const-string v0, "/sys/class/power_supply/battery/wc_param_info"

    .line 626
    .line 627
    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    iget v3, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    .line 632
    .line 633
    if-eq v3, v7, :cond_10

    .line 634
    .line 635
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    if-nez v0, :cond_10

    .line 640
    .line 641
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 642
    .line 643
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    const-string/jumbo v3, "wireless_wc_write"

    .line 648
    .line 649
    .line 650
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 651
    .line 652
    .line 653
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    iget-object v5, p0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$15;

    .line 658
    .line 659
    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 660
    .line 661
    .line 662
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 663
    .line 664
    const-string/jumbo v0, "wc param"

    .line 665
    .line 666
    .line 667
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    .line 668
    .line 669
    .line 670
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 671
    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 673
    .line 674
    .line 675
    move-result-object p0

    .line 676
    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 677
    .line 678
    .line 679
    :cond_10
    return-void
.end method

.method public final resetBattery(Ljava/io/PrintWriter;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 11
    .line 12
    invoke-static {v0, v2}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v0, p0, p2, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-static {p1}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 31
    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final sendBatteryChangedIntentLocked()V
    .locals 13

    .line 1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 2
    .line 3
    const/high16 v1, 0x60000000

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 10
    .line 11
    const/high16 v2, 0x20000000

    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 18
    .line 19
    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v5, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 28
    .line 29
    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 30
    .line 31
    const/4 v6, 0x2

    .line 32
    const/4 v7, 0x1

    .line 33
    const/4 v8, 0x0

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 37
    .line 38
    iget-boolean v9, v5, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 39
    .line 40
    if-nez v9, :cond_1

    .line 41
    .line 42
    iget-boolean v9, v5, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 43
    .line 44
    if-nez v9, :cond_1

    .line 45
    .line 46
    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput v7, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    iput v6, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 55
    .line 56
    :goto_1
    iput v7, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    iput v8, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 60
    .line 61
    iput v8, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 62
    .line 63
    :goto_2
    iget v5, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 64
    .line 65
    const-string v9, "BatteryService"

    .line 66
    .line 67
    iget-object v10, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 68
    .line 69
    const-string/jumbo v11, "pogo_plugged"

    .line 70
    .line 71
    .line 72
    if-ne v3, v5, :cond_3

    .line 73
    .line 74
    iget v3, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 75
    .line 76
    if-eq v2, v3, :cond_6

    .line 77
    .line 78
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    const-string/jumbo v2, "device_provisioned"

    .line 83
    .line 84
    .line 85
    invoke-static {v4, v2, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string/jumbo v4, "kids_home_mode"

    .line 96
    .line 97
    .line 98
    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    move v2, v8

    .line 104
    move v3, v2

    .line 105
    :goto_3
    if-eqz v2, :cond_5

    .line 106
    .line 107
    if-nez v3, :cond_5

    .line 108
    .line 109
    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 110
    .line 111
    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    .line 112
    .line 113
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 117
    .line 118
    invoke-virtual {v1, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    new-instance v2, Lcom/android/server/BatteryService$22;

    .line 122
    .line 123
    const/4 v3, 0x4

    .line 124
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/BatteryService$22;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string/jumbo v4, "device_provisioned: "

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string/jumbo v2, "kids_home_mode: "

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v9, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 159
    .line 160
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 161
    .line 162
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 163
    .line 164
    const/4 v2, 0x5

    .line 165
    const/4 v3, 0x4

    .line 166
    const/16 v4, 0x64

    .line 167
    .line 168
    const v5, 0x1080b8c

    .line 169
    .line 170
    .line 171
    if-ne v1, v6, :cond_7

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_7
    const/4 v6, 0x3

    .line 175
    const v12, 0x1080b7e

    .line 176
    .line 177
    .line 178
    if-ne v1, v6, :cond_9

    .line 179
    .line 180
    :cond_8
    move v5, v12

    .line 181
    goto :goto_6

    .line 182
    :cond_9
    if-eq v1, v3, :cond_b

    .line 183
    .line 184
    if-ne v1, v2, :cond_a

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_a
    const v5, 0x1080b9a

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_b
    :goto_5
    const/16 v1, 0xf

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_8

    .line 198
    .line 199
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 200
    .line 201
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 202
    .line 203
    if-lt v1, v4, :cond_8

    .line 204
    .line 205
    :goto_6
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 206
    .line 207
    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 208
    .line 209
    if-eqz v1, :cond_c

    .line 210
    .line 211
    move v1, v7

    .line 212
    goto :goto_7

    .line 213
    :cond_c
    move v1, v8

    .line 214
    :goto_7
    iget-object v6, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 215
    .line 216
    iget v12, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 217
    .line 218
    if-ge v12, v4, :cond_d

    .line 219
    .line 220
    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 221
    .line 222
    if-ne v6, v2, :cond_d

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_d
    move v7, v8

    .line 226
    :goto_8
    const-string/jumbo v2, "seq"

    .line 227
    .line 228
    .line 229
    iget v6, p0, Lcom/android/server/BatteryService;->mSequence:I

    .line 230
    .line 231
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    .line 233
    .line 234
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 235
    .line 236
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 237
    .line 238
    const-string/jumbo v6, "status"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    .line 243
    .line 244
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 245
    .line 246
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 247
    .line 248
    const-string/jumbo v6, "health"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    .line 253
    .line 254
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 255
    .line 256
    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 257
    .line 258
    const-string/jumbo v6, "present"

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    .line 263
    .line 264
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 265
    .line 266
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 267
    .line 268
    const-string/jumbo v6, "level"

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    const-string/jumbo v2, "battery_low"

    .line 275
    .line 276
    .line 277
    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 278
    .line 279
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    .line 281
    .line 282
    const-string/jumbo v2, "scale"

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    const-string/jumbo v2, "icon-small"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    .line 293
    .line 294
    const-string/jumbo v2, "plugged"

    .line 295
    .line 296
    .line 297
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 298
    .line 299
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 303
    .line 304
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 305
    .line 306
    const-string/jumbo v4, "voltage"

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    .line 311
    .line 312
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 313
    .line 314
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 315
    .line 316
    const-string/jumbo v4, "temperature"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    .line 321
    .line 322
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 323
    .line 324
    iget-object v2, v2, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 325
    .line 326
    const-string/jumbo v4, "technology"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    .line 331
    .line 332
    const-string/jumbo v2, "invalid_charger"

    .line 333
    .line 334
    .line 335
    iget v4, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 336
    .line 337
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 341
    .line 342
    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 343
    .line 344
    const-string/jumbo v4, "max_charging_current"

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    .line 349
    .line 350
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 351
    .line 352
    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 353
    .line 354
    const-string/jumbo v4, "max_charging_voltage"

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    .line 359
    .line 360
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 361
    .line 362
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 363
    .line 364
    const-string/jumbo v4, "charge_counter"

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    .line 369
    .line 370
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 371
    .line 372
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 373
    .line 374
    const-string v4, "android.os.extra.CYCLE_COUNT"

    .line 375
    .line 376
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    .line 378
    .line 379
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 380
    .line 381
    iget v2, v2, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 382
    .line 383
    const-string v4, "android.os.extra.CHARGING_STATUS"

    .line 384
    .line 385
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    .line 387
    .line 388
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 389
    .line 390
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 391
    .line 392
    const-string/jumbo v4, "online"

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    .line 397
    .line 398
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 399
    .line 400
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 401
    .line 402
    const-string/jumbo v4, "charge_type"

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    .line 407
    .line 408
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 409
    .line 410
    iget-boolean v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 411
    .line 412
    const-string/jumbo v4, "power_sharing"

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    .line 417
    .line 418
    const-string/jumbo v2, "hv_charger"

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    .line 423
    .line 424
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 425
    .line 426
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 427
    .line 428
    const-string/jumbo v4, "charger_type"

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    .line 433
    .line 434
    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    .line 435
    .line 436
    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    .line 438
    .line 439
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 440
    .line 441
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 442
    .line 443
    const-string/jumbo v4, "misc_event"

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    .line 448
    .line 449
    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 450
    .line 451
    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 452
    .line 453
    const-string/jumbo v4, "current_event"

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    .line 458
    .line 459
    const-string/jumbo v2, "protection"

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    .line 464
    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    const-string v4, "Sending ACTION_BATTERY_CHANGED: level:"

    .line 468
    .line 469
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 473
    .line 474
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 475
    .line 476
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v4, ", status:"

    .line 480
    .line 481
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 485
    .line 486
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 487
    .line 488
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v4, ", health:"

    .line 492
    .line 493
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 497
    .line 498
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 499
    .line 500
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v4, ", remain:"

    .line 504
    .line 505
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 509
    .line 510
    iget-wide v4, v4, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 511
    .line 512
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    const-string v4, ", ac:"

    .line 516
    .line 517
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 521
    .line 522
    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 523
    .line 524
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    const-string v4, ", usb:"

    .line 528
    .line 529
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 533
    .line 534
    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 535
    .line 536
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v4, ", wireless:"

    .line 540
    .line 541
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 545
    .line 546
    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 547
    .line 548
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v4, ", pogo:"

    .line 552
    .line 553
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 557
    .line 558
    iget-boolean v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 559
    .line 560
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v4, ", misc:0x"

    .line 564
    .line 565
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 569
    .line 570
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 571
    .line 572
    const-string v5, ", charge_type:"

    .line 573
    .line 574
    invoke-static {v4, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 578
    .line 579
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 580
    .line 581
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    const-string v4, ", charger_type:"

    .line 585
    .line 586
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 590
    .line 591
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 592
    .line 593
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    const-string v4, ", voltage:"

    .line 597
    .line 598
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 602
    .line 603
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 604
    .line 605
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    const-string v4, ", temperature:"

    .line 609
    .line 610
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 614
    .line 615
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 616
    .line 617
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    const-string v4, ", online:"

    .line 621
    .line 622
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 626
    .line 627
    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 628
    .line 629
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    const-string v4, ", charging_status:"

    .line 633
    .line 634
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 638
    .line 639
    iget v4, v4, Landroid/hardware/health/HealthInfo;->chargingState:I

    .line 640
    .line 641
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    const-string v4, ", cycle_count:"

    .line 645
    .line 646
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 650
    .line 651
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 652
    .line 653
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    const-string v4, ", current_avg:"

    .line 657
    .line 658
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 662
    .line 663
    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 664
    .line 665
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    const-string v4, ", ps:"

    .line 669
    .line 670
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 674
    .line 675
    iget-boolean v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 676
    .line 677
    const-string v5, ", hvc:"

    .line 678
    .line 679
    const-string v6, ", current_event:0x"

    .line 680
    .line 681
    invoke-static {v2, v4, v5, v1, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 682
    .line 683
    .line 684
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 685
    .line 686
    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 687
    .line 688
    const-string v4, ", mcc:"

    .line 689
    .line 690
    invoke-static {v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 694
    .line 695
    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 696
    .line 697
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    const-string v1, ", mcv:"

    .line 701
    .line 702
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 706
    .line 707
    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 708
    .line 709
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    const-string v1, ", cc:"

    .line 713
    .line 714
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 718
    .line 719
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 720
    .line 721
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    const-string v1, ", present:"

    .line 725
    .line 726
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 730
    .line 731
    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 732
    .line 733
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    const-string v1, ", scale:100, technology:"

    .line 737
    .line 738
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 742
    .line 743
    iget-object v1, v1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 744
    .line 745
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    const-string v1, ", protection:"

    .line 749
    .line 750
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    invoke-static {v9, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .line 762
    .line 763
    invoke-static {v3, v1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 764
    .line 765
    .line 766
    new-instance v1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;

    .line 767
    .line 768
    const/4 v2, 0x1

    .line 769
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 773
    .line 774
    .line 775
    return-void
.end method

.method public final sendDeteriorationIntentLocked(Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v2, "r0q,r0s,g0q,g0s,b0q,b0s"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    sget-object v5, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 15
    .line 16
    const/high16 v6, 0x10000000

    .line 17
    .line 18
    const-string/jumbo v7, "deterioration"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v8, "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"

    .line 22
    .line 23
    .line 24
    const/16 v9, 0xf

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    const-wide/16 v13, 0x2710

    .line 28
    .line 29
    const/4 v15, 0x1

    .line 30
    if-nez v3, :cond_5

    .line 31
    .line 32
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v10, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_BSOH_GALAXYDIAGNOSTICS"

    .line 37
    .line 38
    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 46
    .line 47
    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 48
    .line 49
    const/high16 v2, 0xf0000

    .line 50
    .line 51
    and-int/2addr v1, v2

    .line 52
    shr-int/lit8 v1, v1, 0x10

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    move-wide v10, v13

    .line 59
    move v12, v15

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget v2, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 62
    .line 63
    if-eq v2, v1, :cond_4

    .line 64
    .line 65
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    if-ne v1, v9, :cond_3

    .line 70
    .line 71
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 72
    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    move-wide v10, v13

    .line 76
    move v12, v15

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move v12, v15

    .line 79
    :cond_3
    const-wide/16 v10, 0xa

    .line 80
    .line 81
    :goto_0
    iput v1, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const-wide/16 v10, 0xa

    .line 85
    .line 86
    :goto_1
    if-eqz v12, :cond_c

    .line 87
    .line 88
    new-instance v2, Landroid/content/Intent;

    .line 89
    .line 90
    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    new-instance v3, Lcom/android/server/BatteryService$29;

    .line 103
    .line 104
    const/4 v5, 0x1

    .line 105
    invoke-direct {v3, v0, v1, v2, v5}, Lcom/android/server/BatteryService$29;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    .line 110
    .line 111
    goto/16 :goto_a

    .line 112
    .line 113
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/server/battery/BattUtils;->readNodeAsDouble()D

    .line 114
    .line 115
    .line 116
    move-result-wide v10

    .line 117
    double-to-int v3, v10

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_6

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string/jumbo v2, "{"

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v2, "/sys/class/power_supply/battery/cisd_data_json"

    .line 133
    .line 134
    invoke-static {v2, v12}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string/jumbo v2, "}"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :try_start_0
    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->getValueFromJson(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_3

    .line 160
    :catch_0
    const-string v1, "[SS]BattUtils"

    .line 161
    .line 162
    const-string v2, "[getValueFromJsonAsLong]NumberFormatException"

    .line 163
    .line 164
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    const-wide/16 v1, -0x1

    .line 168
    .line 169
    :goto_3
    long-to-int v1, v1

    .line 170
    goto :goto_4

    .line 171
    :cond_6
    const/4 v1, -0x1

    .line 172
    :goto_4
    const/16 v2, 0x1388

    .line 173
    .line 174
    if-gt v1, v2, :cond_8

    .line 175
    .line 176
    const/16 v2, 0x37

    .line 177
    .line 178
    if-ge v3, v2, :cond_7

    .line 179
    .line 180
    if-ltz v3, :cond_7

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_7
    move v1, v15

    .line 184
    goto :goto_6

    .line 185
    :cond_8
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string/jumbo v10, "sendBroadcastDeterioration hsc : "

    .line 188
    .line 189
    .line 190
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", bsoh : "

    .line 197
    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v2, "BatteryService"

    .line 209
    .line 210
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    move v1, v9

    .line 214
    :goto_6
    if-eqz p1, :cond_9

    .line 215
    .line 216
    move-wide v10, v13

    .line 217
    :goto_7
    move v12, v15

    .line 218
    goto :goto_9

    .line 219
    :cond_9
    iget v2, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 220
    .line 221
    if-eq v2, v1, :cond_b

    .line 222
    .line 223
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 224
    .line 225
    if-eqz v2, :cond_b

    .line 226
    .line 227
    if-ne v1, v9, :cond_b

    .line 228
    .line 229
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    .line 230
    .line 231
    if-nez v2, :cond_a

    .line 232
    .line 233
    move-wide v10, v13

    .line 234
    goto :goto_8

    .line 235
    :cond_a
    const-wide/16 v10, 0xa

    .line 236
    .line 237
    :goto_8
    iput v1, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_b
    const-wide/16 v10, 0xa

    .line 241
    .line 242
    :goto_9
    if-eqz v12, :cond_c

    .line 243
    .line 244
    new-instance v2, Landroid/content/Intent;

    .line 245
    .line 246
    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    new-instance v3, Lcom/android/server/BatteryService$29;

    .line 259
    .line 260
    const/4 v5, 0x0

    .line 261
    invoke-direct {v3, v0, v1, v2, v5}, Lcom/android/server/BatteryService$29;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    .line 266
    .line 267
    :cond_c
    :goto_a
    return-void
.end method

.method public final sendWirelessPowerSharingIntentLocked()V
    .locals 12

    .line 1
    const-string/jumbo v0, "setWirelessChargingMode(TSP): "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setWirelessChargingMode(DEVID_SPEN): "

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 11
    .line 12
    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 13
    .line 14
    and-int/lit8 v4, v3, 0x1

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    move v4, v5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v4, v6

    .line 23
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 24
    .line 25
    const/high16 v8, 0x10000000

    .line 26
    .line 27
    if-eq v7, v4, :cond_2

    .line 28
    .line 29
    new-instance v7, Landroid/content/Intent;

    .line 30
    .line 31
    const-string/jumbo v9, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

    .line 32
    .line 33
    .line 34
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v9, "enabled"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    sget-object v9, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object v9, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    new-instance v10, Lcom/android/server/BatteryService$27;

    .line 54
    .line 55
    const/4 v11, 0x1

    .line 56
    invoke-direct {v10, v11, v7, v4}, Lcom/android/server/BatteryService$27;-><init>(ILandroid/content/Intent;Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    .line 63
    .line 64
    iput v4, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 65
    .line 66
    iget-object v7, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 67
    .line 68
    if-eqz v7, :cond_1

    .line 69
    .line 70
    const/16 v9, 0xb

    .line 71
    .line 72
    invoke-virtual {v7, v9, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 73
    .line 74
    .line 75
    const-string v4, "BatteryService"

    .line 76
    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 83
    .line 84
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_3

    .line 97
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    iget v4, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 110
    .line 111
    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 112
    .line 113
    .line 114
    const-string v1, "BatteryService"

    .line 115
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 122
    .line 123
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_2
    and-int/lit8 v0, v3, 0x2

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    move v5, v6

    .line 139
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 140
    .line 141
    if-eq v0, v5, :cond_4

    .line 142
    .line 143
    new-instance v0, Landroid/content/Intent;

    .line 144
    .line 145
    const-string/jumbo v1, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED"

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string/jumbo v1, "connected"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    sget-object v1, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 166
    .line 167
    new-instance v4, Lcom/android/server/BatteryService$33;

    .line 168
    .line 169
    invoke-direct {v4, p0, v5, v0}, Lcom/android/server/BatteryService$33;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .line 174
    .line 175
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    .line 176
    .line 177
    :cond_4
    iget v0, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    .line 178
    .line 179
    if-eq v3, v0, :cond_5

    .line 180
    .line 181
    new-instance v0, Landroid/content/Intent;

    .line 182
    .line 183
    const-string/jumbo v1, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT"

    .line 184
    .line 185
    .line 186
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string/jumbo v1, "tx_event"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 199
    .line 200
    new-instance v4, Lcom/android/server/BatteryService$34;

    .line 201
    .line 202
    invoke-direct {v4, v3, v0}, Lcom/android/server/BatteryService$34;-><init>(ILandroid/content/Intent;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    .line 207
    .line 208
    iput v3, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    .line 209
    .line 210
    :cond_5
    monitor-exit v2

    .line 211
    return-void

    .line 212
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    throw p0
.end method

.method public final setAdaptiveFastCharging(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 2
    .line 3
    xor-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    const-string v2, "afc"

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    .line 8
    .line 9
    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    xor-int/lit8 v0, p1, 0x1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const-string v0, "BatteryService"

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v1, "success to set AFC sysfs as "

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string/jumbo p0, "fail to set AFC sysfs"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final setSuperFastCharging(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 2
    .line 3
    xor-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    const-string/jumbo v2, "sfc"

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    .line 9
    .line 10
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    xor-int/lit8 p0, p1, 0x1

    .line 14
    .line 15
    const-string v0, "/sys/class/power_supply/battery/pd_disable"

    .line 16
    .line 17
    invoke-static {v0, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string v0, "BatteryService"

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v1, "success to set SFC sysfs as "

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string/jumbo p0, "fail to set SFC sysfs"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final setWirelessChargingState(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "wirelessChargingState: "

    .line 2
    .line 3
    .line 4
    const-string v1, ", notifyWirelessEnabled: "

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "BatteryService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string v0, "/sys/class/sec/switch/wireless"

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    const-string/jumbo p1, "notify wireless on"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iput v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 40
    .line 41
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 42
    .line 43
    invoke-static {v0, v2}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-nez p1, :cond_1

    .line 48
    .line 49
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    const-string/jumbo p1, "notify wireless off"

    .line 62
    .line 63
    .line 64
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    .line 71
    .line 72
    const-string p1, "0"

    .line 73
    .line 74
    invoke-static {v0, p1}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    const/16 v0, 0xb

    .line 82
    .line 83
    iget v3, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 84
    .line 85
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 89
    .line 90
    iget v0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 91
    .line 92
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    .line 93
    .line 94
    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v0, "setWirelessChargingMode(All): "

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget p0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    .line 104
    .line 105
    invoke-static {p1, p0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method public final setWirelessFastCharging(Z)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 7
    .line 8
    xor-int/lit8 v0, p1, 0x1

    .line 9
    .line 10
    const-string/jumbo v2, "wfc"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string p0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-wide/16 v0, 0x2

    .line 21
    .line 22
    invoke-static {v0, v1, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-wide/16 v0, 0x1

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final setWirelessPowerSharingExternelEventInternal(II)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setWirelessPowerSharingExternelEventInternal packageNum: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "BatteryService"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " value: "

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    .line 33
    .line 34
    not-int p1, p1

    .line 35
    and-int/2addr p1, v0

    .line 36
    or-int/2addr p1, p2

    .line 37
    if-eq p1, v0, :cond_0

    .line 38
    .line 39
    const-string p2, "/sys/class/power_supply/battery/ext_event"

    .line 40
    .line 41
    int-to-long v2, p1

    .line 42
    invoke-static {v2, v3, p2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput p1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final unplugBattery(Ljava/io/PrintWriter;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 16
    .line 17
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 18
    .line 19
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 20
    .line 21
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;

    .line 27
    .line 28
    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    const-string v1, "adaptive_fast_charging"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "!@AdaptiveFastCharging Settings = "

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "BatteryService"

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final updateBatteryWarningLevelLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x10e00d4

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 23
    .line 24
    if-ge v0, v1, :cond_0

    .line 25
    .line 26
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 27
    .line 28
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v2, 0x10e00d3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v1, v0

    .line 44
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final writeProtectBatteryValues()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "writeProtectBatteryValues:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    .line 24
    .line 25
    const-string v1, "/efs/Battery/batt_full_capacity"

    .line 26
    .line 27
    const-string v2, "/efs/Battery/batt_soc_rechg"

    .line 28
    .line 29
    const-string v3, "/sys/class/power_supply/battery/batt_soc_rechg"

    .line 30
    .line 31
    const-wide/16 v4, 0x64

    .line 32
    .line 33
    const-string v6, "/sys/class/power_supply/battery/batt_full_capacity"

    .line 34
    .line 35
    const-wide/16 v7, 0x0

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    const/4 v9, 0x1

    .line 40
    if-eq v0, v9, :cond_2

    .line 41
    .line 42
    const/4 v9, 0x2

    .line 43
    if-eq v0, v9, :cond_1

    .line 44
    .line 45
    const/4 p0, 0x3

    .line 46
    if-eq v0, p0, :cond_0

    .line 47
    .line 48
    const/4 p0, 0x4

    .line 49
    if-eq v0, p0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v4, v5, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v0, 0x1

    .line 59
    .line 60
    invoke-static {v0, v1, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget p0, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p0, " HIGHSOC"

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v6, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    invoke-static {v7, v8, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v7, v8, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    iget v4, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 102
    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v4, " OPTION"

    .line 107
    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v6, v0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    iget p0, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    .line 119
    .line 120
    int-to-long v4, p0

    .line 121
    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v7, v8, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v7, v8, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    invoke-static {v4, v5, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v7, v8, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v7, v8, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_0
    return-void
.end method
