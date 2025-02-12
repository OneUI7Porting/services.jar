.class public final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/DisplayPowerControllerInterface;


# static fields
.field public static final BRIGHTNESS_RANGE_BOUNDARIES:[F

.field public static final BRIGHTNESS_RANGE_INDEX:[I

.field public static final COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public static final COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final DEBUG:Z

.field public static final DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I

.field public static final MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I

.field public static final RATE_FROM_DOZE_TO_ON:F

.field public static final SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

.field public static sLastScreenBrightnessSettingChangedTime:J


# instance fields
.field public defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mActualDisplayState:I

.field public final mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

.field public final mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field public final mAnimatorListener:Lcom/android/server/display/DisplayPowerController$2;

.field public final mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

.field public mAppliedForceDimming:Z

.field public mAppliedForceDimmingBrightness:F

.field public mAutoBrightnessEnabled:Z

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public mAwakenFromDozingInAutoBrightness:Z

.field public mBatteryLevelCritical:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public mBootCompleted:Z

.field public mBrightnessAnimationConsumerInvoked:Z

.field public final mBrightnessAnimationEndRunnable:Lcom/android/server/display/DisplayPowerController$3;

.field public final mBrightnessBucketsInDozeConfig:Z

.field public final mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

.field public mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mBrightnessRampDecreaseMaxTimeIdleMillis:J

.field public mBrightnessRampDecreaseMaxTimeMillis:J

.field public mBrightnessRampIncreaseMaxTimeIdleMillis:J

.field public mBrightnessRampIncreaseMaxTimeMillis:J

.field public mBrightnessRampRateFastDecrease:F

.field public mBrightnessRampRateFastIncrease:F

.field public mBrightnessRampRateHdrDecrease:F

.field public mBrightnessRampRateHdrIncrease:F

.field public mBrightnessRampRateSlowDecrease:F

.field public mBrightnessRampRateSlowDecreaseIdle:F

.field public mBrightnessRampRateSlowIncrease:F

.field public mBrightnessRampRateSlowIncreaseIdle:F

.field public final mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

.field final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

.field public final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

.field public mClampedMaxBrightness:F

.field public final mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

.field public final mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

.field public final mColorFadeEnabled:Z

.field public final mColorFadeFadesConfig:Z

.field public mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field public mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayBlanksAfterDozeConfig:Z

.field public final mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

.field public final mDisplayBrightnessFollowers:Landroid/util/SparseArray;

.field public mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

.field public final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field public mDisplayReadyLocked:Z

.field public final mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

.field public mDisplayStatsId:I

.field public final mDozeScaleFactor:F

.field public mDozing:Z

.field public mDualScreenPolicy:I

.field public final mEarlyWakeUpEnabled:Z

.field public final mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

.field public final mExtraDimStrength:I

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mFollowerRampSpeed:F

.field public mFollowerRampSpeedAtHbm:F

.field public mForceDimSettingEnabled:Z

.field public mForceSlowChange:Z

.field public mFreezeBrightnessMode:Z

.field public mFreezeBrightnessModeSelector:I

.field public final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field public mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

.field public mInitialAutoBrightnessUpdated:Z

.field public final mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

.field public final mIsCoverDisplay:Z

.field public mIsDisplayInternal:Z

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public mIsOutdoorModeEnabled:Z

.field public final mIsSupportedAodMode:Z

.field public mLastAmbientLux:F

.field public mLastAutomaticScreenBrightness:F

.field public mLastBatteryLevelCriticalTime:J

.field public final mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mLastCoverClosedState:Z

.field public mLastNotifiedBrightness:F

.field public mLastOriginalTarget:F

.field public mLastScreenBrightnessSettingBeforeForceDim:F

.field public mLastStatsBrightness:F

.field public mLcdFlashModeEnabled:Z

.field public mLeadDisplayId:I

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLock:Ljava/lang/Object;

.field public final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mMoreFastRampRate:F

.field public mNeedPrepareColorFade:Z

.field public mNitsRange:[F

.field public final mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

.field public final mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field public final mOnBrightnessModeChangeRunnable:Ljava/lang/Runnable;

.field public mPassRampAnimation:Z

.field public mPendingEarlyWakeUpRequestLocked:Z

.field public mPendingForceSlowChangeLocked:Z

.field public mPendingRequestChangedLocked:Z

.field public mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPendingScreenOff:Z

.field public mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

.field public mPendingScreenOnByAodReady:Z

.field public mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field public mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

.field public mPendingTransitionOffInDualCase:Z

.field public mPendingUpdatePowerStateLocked:Z

.field public final mPowerHistorian:Lcom/android/server/power/PowerHistorian;

.field public mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPowerState:Lcom/android/server/display/DisplayPowerState;

.field public mPrevScreenBrightness:F

.field public final mRampAnimatorListener:Lcom/android/server/display/DisplayPowerController$4;

.field public final mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mReportedScreenStateToPolicy:I

.field public mResetBrightnessConfiguration:Z

.field public final mScreenBrightnessDimConfig:F

.field public final mScreenBrightnessDozeConfig:F

.field public final mScreenBrightnessMinimumDimAmount:F

.field public final mScreenBrightnessModeSettingName:Ljava/lang/String;

.field public mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

.field public final mScreenExtendedBrightnessRangeMaximum:F

.field public mScreenOffBlockStartRealTime:J

.field public mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

.field public mScreenOnBlockByDisplayOffloadStartRealTime:J

.field public mScreenOnBlockStartRealTime:J

.field public mScreenTurningOnWasBlockedByDisplayOffload:Z

.field public mSeamlessAodReady:Z

.field public final mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field public final mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

.field public mStopped:Z

.field public final mTag:Ljava/lang/String;

.field public final mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mThermalBrightnessThrottlingDataId:Ljava/lang/String;

.field public mUniqueDisplayId:Ljava/lang/String;

.field public mUseSoftwareAutoBrightnessConfig:Z

.field public mWaitingAutoBrightnessFromDoze:Z

.field public final mWakelockController:Lcom/android/server/display/WakelockController;

.field public final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iput v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 11
    .line 12
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updatePendingAutoBrightnessAdjustments()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updateGameAutoBrightnessLock()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string/jumbo v1, "auto_dim_screen"

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPrevScreenBrightness:F

    .line 50
    .line 51
    const-string v0, " sb: %.3f abAdj: %.3f sbLock: %s fd: %s"

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 54
    .line 55
    iget-object v3, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v3

    .line 58
    :try_start_1
    iget v1, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 59
    .line 60
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getPendingAutoBrightnessAdjustment()F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isGameAutoBrightnessLocked()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    .line 86
    .line 87
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 100
    .line 101
    const-string v2, "[api] handleSettingsChange:"

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    throw p0

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "DisplayPowerController2"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    .line 11
    .line 12
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 13
    .line 14
    const v1, 0x3eb33333    # 0.35f

    .line 15
    .line 16
    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    const v3, 0x3ee66666    # 0.45f

    .line 20
    .line 21
    .line 22
    const v4, 0x3e3851ec    # 0.18f

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 29
    .line 30
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/16 v1, 0x26

    .line 39
    .line 40
    new-array v2, v1, [F

    .line 41
    .line 42
    fill-array-data v2, :array_0

    .line 43
    .line 44
    .line 45
    sput-object v2, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    .line 46
    .line 47
    new-array v1, v1, [I

    .line 48
    .line 49
    fill-array-data v1, :array_1

    .line 50
    .line 51
    .line 52
    sput-object v1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    .line 53
    .line 54
    const-wide/16 v1, -0x1

    .line 55
    .line 56
    sput-wide v1, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    .line 57
    .line 58
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FULLSCREEN_AOD:Z

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    const v0, 0x3cf5c28f    # 0.03f

    .line 63
    .line 64
    .line 65
    :cond_0
    sput v0, Lcom/android/server/display/DisplayPowerController;->RATE_FROM_DOZE_TO_ON:F

    .line 66
    .line 67
    const/16 v0, 0xb4

    .line 68
    .line 69
    sput v0, Lcom/android/server/display/DisplayPowerController;->DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I

    .line 70
    .line 71
    const v0, 0xea60

    .line 72
    .line 73
    .line 74
    sput v0, Lcom/android/server/display/DisplayPowerController;->MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I

    .line 75
    .line 76
    return-void

    .line 77
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
        0x42200000    # 40.0f
        0x42480000    # 50.0f
        0x42700000    # 60.0f
        0x428c0000    # 70.0f
        0x42a00000    # 80.0f
        0x42b40000    # 90.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x43960000    # 300.0f
        0x43c80000    # 400.0f
        0x43fa0000    # 500.0f
        0x44160000    # 600.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x44610000    # 900.0f
        0x447a0000    # 1000.0f
        0x44960000    # 1200.0f
        0x44af0000    # 1400.0f
        0x44c80000    # 1600.0f
        0x44e10000    # 1800.0f
        0x44fa0000    # 2000.0f
        0x450ca000    # 2250.0f
        0x451c4000    # 2500.0f
        0x452be000    # 2750.0f
        0x453b8000    # 3000.0f
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v14, p6

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v13, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 19
    .line 20
    new-instance v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/util/MutableFloat;

    .line 26
    .line 27
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 28
    .line 29
    invoke-direct {v3, v4}, Landroid/util/MutableFloat;-><init>(F)V

    .line 30
    .line 31
    .line 32
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 33
    .line 34
    new-instance v3, Landroid/util/MutableFloat;

    .line 35
    .line 36
    invoke-direct {v3, v4}, Landroid/util/MutableFloat;-><init>(F)V

    .line 37
    .line 38
    .line 39
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 40
    .line 41
    new-instance v3, Landroid/util/MutableFloat;

    .line 42
    .line 43
    invoke-direct {v3, v4}, Landroid/util/MutableFloat;-><init>(F)V

    .line 44
    .line 45
    .line 46
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 47
    .line 48
    new-instance v3, Landroid/util/MutableFloat;

    .line 49
    .line 50
    invoke-direct {v3, v4}, Landroid/util/MutableFloat;-><init>(F)V

    .line 51
    .line 52
    .line 53
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 54
    .line 55
    new-instance v3, Landroid/util/MutableInt;

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    invoke-direct {v3, v12}, Landroid/util/MutableInt;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    .line 62
    .line 63
    new-instance v3, Landroid/util/MutableFloat;

    .line 64
    .line 65
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 66
    .line 67
    invoke-direct {v3, v5}, Landroid/util/MutableFloat;-><init>(F)V

    .line 68
    .line 69
    .line 70
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 71
    .line 72
    new-instance v3, Landroid/util/MutableInt;

    .line 73
    .line 74
    invoke-direct {v3, v12}, Landroid/util/MutableInt;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 78
    .line 79
    new-instance v3, Landroid/util/MutableBoolean;

    .line 80
    .line 81
    invoke-direct {v3, v12}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 82
    .line 83
    .line 84
    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    .line 85
    .line 86
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 87
    .line 88
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 89
    .line 90
    new-instance v2, Lcom/android/server/display/brightness/BrightnessReason;

    .line 91
    .line 92
    invoke-direct {v2}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 96
    .line 97
    new-instance v2, Lcom/android/server/display/brightness/BrightnessReason;

    .line 98
    .line 99
    invoke-direct {v2}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 106
    .line 107
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    .line 108
    .line 109
    const-class v3, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 110
    .line 111
    const/16 v5, 0x14

    .line 112
    .line 113
    invoke-direct {v2, v3, v5}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 114
    .line 115
    .line 116
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 117
    .line 118
    new-instance v2, Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 124
    .line 125
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 126
    .line 127
    const-string/jumbo v2, "screen_brightness_mode"

    .line 128
    .line 129
    .line 130
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 131
    .line 132
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 133
    .line 134
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 135
    .line 136
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 137
    .line 138
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 139
    .line 140
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 141
    .line 142
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 143
    .line 144
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    .line 145
    .line 146
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    .line 147
    .line 148
    iput v12, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 149
    .line 150
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    .line 151
    .line 152
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mExtraDimStrength:I

    .line 153
    .line 154
    sget-object v1, Lcom/android/server/power/PowerHistorian;->INSTANCE:Lcom/android/server/power/PowerHistorian;

    .line 155
    .line 156
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 157
    .line 158
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mPrevScreenBrightness:F

    .line 159
    .line 160
    new-instance v1, Lcom/android/server/display/DisplayPowerController$2;

    .line 161
    .line 162
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 163
    .line 164
    .line 165
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Lcom/android/server/display/DisplayPowerController$2;

    .line 166
    .line 167
    new-instance v1, Lcom/android/server/display/DisplayPowerController$3;

    .line 168
    .line 169
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 170
    .line 171
    .line 172
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationEndRunnable:Lcom/android/server/display/DisplayPowerController$3;

    .line 173
    .line 174
    new-instance v1, Lcom/android/server/display/DisplayPowerController$4;

    .line 175
    .line 176
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 177
    .line 178
    .line 179
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/DisplayPowerController$4;

    .line 180
    .line 181
    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    .line 182
    .line 183
    const/4 v2, 0x0

    .line 184
    invoke-direct {v1, v0, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 185
    .line 186
    .line 187
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    .line 188
    .line 189
    move-object/from16 v11, p12

    .line 190
    .line 191
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 192
    .line 193
    new-instance v1, Lcom/android/server/display/DisplayPowerController$Injector;

    .line 194
    .line 195
    invoke-direct {v1}, Lcom/android/server/display/DisplayPowerController$Injector;-><init>()V

    .line 196
    .line 197
    .line 198
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 199
    .line 200
    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 201
    .line 202
    const/4 v2, 0x1

    .line 203
    invoke-direct {v1, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;-><init>(I)V

    .line 204
    .line 205
    .line 206
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 207
    .line 208
    iput-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 209
    .line 210
    iget v10, v14, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 211
    .line 212
    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 213
    .line 214
    move-object/from16 v2, p4

    .line 215
    .line 216
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 217
    .line 218
    new-instance v1, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 219
    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-direct {v1, v0, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    .line 225
    .line 226
    .line 227
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 228
    .line 229
    iget-object v3, v14, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 230
    .line 231
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 236
    .line 237
    iget-boolean v3, v14, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 238
    .line 239
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 240
    .line 241
    iget-boolean v3, v14, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 242
    .line 243
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 244
    .line 245
    iget-object v3, v14, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 252
    .line 253
    const/4 v9, 0x1

    .line 254
    if-ne v3, v9, :cond_0

    .line 255
    .line 256
    move v3, v9

    .line 257
    goto :goto_0

    .line 258
    :cond_0
    move v3, v12

    .line 259
    :goto_0
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 260
    .line 261
    new-instance v8, Lcom/android/server/display/WakelockController;

    .line 262
    .line 263
    move-object/from16 v3, p2

    .line 264
    .line 265
    invoke-direct {v8, v10, v3}, Lcom/android/server/display/WakelockController;-><init>(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    .line 266
    .line 267
    .line 268
    iput-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 269
    .line 270
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 271
    .line 272
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    new-instance v7, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    .line 277
    .line 278
    const/4 v3, 0x2

    .line 279
    invoke-direct {v7, v0, v3}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 280
    .line 281
    .line 282
    new-instance v4, Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 283
    .line 284
    move-object v3, v4

    .line 285
    move-object v12, v4

    .line 286
    move-object v4, v8

    .line 287
    move-object/from16 v17, v8

    .line 288
    .line 289
    move v8, v10

    .line 290
    move-object/from16 v18, v13

    .line 291
    .line 292
    move v13, v9

    .line 293
    move-object/from16 v9, p4

    .line 294
    .line 295
    invoke-direct/range {v3 .. v9}, Lcom/android/server/display/DisplayPowerProximityStateController;-><init>(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;ILandroid/hardware/SensorManager;)V

    .line 296
    .line 297
    .line 298
    iput-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 299
    .line 300
    new-instance v3, Lcom/android/server/display/state/DisplayStateController;

    .line 301
    .line 302
    invoke-direct {v3, v12, v10}, Lcom/android/server/display/state/DisplayStateController;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;I)V

    .line 303
    .line 304
    .line 305
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 306
    .line 307
    const-string v3, "DisplayPowerController2["

    .line 308
    .line 309
    const-string v4, "]"

    .line 310
    .line 311
    invoke-static {v10, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    iput-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    iget-object v3, v3, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 322
    .line 323
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 324
    .line 325
    iget-object v3, v14, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 326
    .line 327
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 328
    .line 329
    iget-object v3, v3, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 330
    .line 331
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 338
    .line 339
    new-instance v3, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 340
    .line 341
    invoke-direct {v3, v10}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    .line 342
    .line 343
    .line 344
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 345
    .line 346
    new-instance v3, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 347
    .line 348
    invoke-direct {v3, v10}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    .line 349
    .line 350
    .line 351
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 352
    .line 353
    const/4 v9, 0x0

    .line 354
    if-eqz v10, :cond_2

    .line 355
    .line 356
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 357
    .line 358
    if-eqz v3, :cond_1

    .line 359
    .line 360
    if-ne v10, v13, :cond_1

    .line 361
    .line 362
    goto :goto_1

    .line 363
    :cond_1
    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 371
    .line 372
    :goto_2
    new-instance v3, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 373
    .line 374
    invoke-direct {v3, v0, v1}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V

    .line 375
    .line 376
    .line 377
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 378
    .line 379
    const-class v3, Lcom/android/server/policy/WindowManagerPolicy;

    .line 380
    .line 381
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    check-cast v3, Lcom/android/server/policy/WindowManagerPolicy;

    .line 386
    .line 387
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 388
    .line 389
    const-class v3, Lcom/samsung/android/aod/AODManagerInternal;

    .line 390
    .line 391
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    check-cast v3, Lcom/samsung/android/aod/AODManagerInternal;

    .line 396
    .line 397
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    .line 398
    .line 399
    move-object/from16 v8, p5

    .line 400
    .line 401
    iput-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 402
    .line 403
    iput-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 404
    .line 405
    move-object/from16 v3, p9

    .line 406
    .line 407
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 408
    .line 409
    if-nez v10, :cond_3

    .line 410
    .line 411
    move-object/from16 v3, p14

    .line 412
    .line 413
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    .line 414
    .line 415
    :cond_3
    const-class v3, Landroid/os/PowerManager;

    .line 416
    .line 417
    invoke-virtual {v15, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    check-cast v3, Landroid/os/PowerManager;

    .line 422
    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    const/4 v4, 0x4

    .line 428
    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    invoke-static {v4}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 437
    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    .line 439
    .line 440
    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    const v5, 0x1130007

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v5, v13, v13}, Landroid/content/res/Resources;->getFraction(III)F

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    .line 453
    .line 454
    new-instance v6, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    .line 455
    .line 456
    const/4 v4, 0x3

    .line 457
    invoke-direct {v6, v0, v4}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    invoke-static {v3}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 469
    .line 470
    const v4, 0x105010c

    .line 471
    .line 472
    .line 473
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getFloat(I)F

    .line 474
    .line 475
    .line 476
    move-result v4

    .line 477
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    .line 478
    .line 479
    sget v5, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    .line 480
    .line 481
    iput v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    .line 482
    .line 483
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 484
    .line 485
    if-eqz v4, :cond_4

    .line 486
    .line 487
    if-ne v10, v13, :cond_4

    .line 488
    .line 489
    move v4, v13

    .line 490
    goto :goto_3

    .line 491
    :cond_4
    const/4 v4, 0x0

    .line 492
    :goto_3
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 493
    .line 494
    if-eqz v4, :cond_5

    .line 495
    .line 496
    const-string/jumbo v4, "sub_screen_brightness_mode"

    .line 497
    .line 498
    .line 499
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 500
    .line 501
    :cond_5
    iput v5, v0, Lcom/android/server/display/DisplayPowerController;->mMoreFastRampRate:F

    .line 502
    .line 503
    const v4, 0x3e99999a    # 0.3f

    .line 504
    .line 505
    .line 506
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrIncrease:F

    .line 507
    .line 508
    const v4, 0x3f666666    # 0.9f

    .line 509
    .line 510
    .line 511
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrDecrease:F

    .line 512
    .line 513
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 514
    .line 515
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 520
    .line 521
    iget-object v13, v9, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 522
    .line 523
    if-eqz v4, :cond_6

    .line 524
    .line 525
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    move-object/from16 v19, v4

    .line 530
    .line 531
    goto :goto_4

    .line 532
    :cond_6
    const/16 v19, 0x0

    .line 533
    .line 534
    :goto_4
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    move-object/from16 v20, v1

    .line 539
    .line 540
    const-class v1, Landroid/os/PowerManager;

    .line 541
    .line 542
    invoke-virtual {v15, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    check-cast v1, Landroid/os/PowerManager;

    .line 547
    .line 548
    move-object/from16 v21, v12

    .line 549
    .line 550
    const/4 v12, 0x0

    .line 551
    invoke-virtual {v1, v12}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 556
    .line 557
    .line 558
    move-result v16

    .line 559
    iget v3, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 560
    .line 561
    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 562
    .line 563
    new-instance v1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;

    .line 564
    .line 565
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 566
    .line 567
    .line 568
    new-instance v22, Lcom/android/server/display/HighBrightnessModeController;

    .line 569
    .line 570
    new-instance v23, Lcom/android/server/display/HighBrightnessModeController$Injector;

    .line 571
    .line 572
    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    .line 573
    .line 574
    .line 575
    iget-object v9, v9, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 576
    .line 577
    move-object/from16 p14, v20

    .line 578
    .line 579
    move-object/from16 v20, v1

    .line 580
    .line 581
    move-object/from16 v1, v22

    .line 582
    .line 583
    move-object/from16 v2, v23

    .line 584
    .line 585
    move/from16 v23, v3

    .line 586
    .line 587
    move-object/from16 v3, p14

    .line 588
    .line 589
    move/from16 v24, v4

    .line 590
    .line 591
    move/from16 v4, v23

    .line 592
    .line 593
    move/from16 v23, v5

    .line 594
    .line 595
    move/from16 v5, v24

    .line 596
    .line 597
    move-object/from16 p9, v6

    .line 598
    .line 599
    move-object v6, v13

    .line 600
    move-object v13, v7

    .line 601
    move-object v7, v9

    .line 602
    move/from16 v8, v16

    .line 603
    .line 604
    const/4 v15, 0x0

    .line 605
    move/from16 v9, v23

    .line 606
    .line 607
    move/from16 p2, v10

    .line 608
    .line 609
    move-object/from16 v10, v19

    .line 610
    .line 611
    move-object/from16 v11, v20

    .line 612
    .line 613
    move v15, v12

    .line 614
    move-object/from16 v12, p9

    .line 615
    .line 616
    move-object/from16 v26, v13

    .line 617
    .line 618
    move-object/from16 v25, v18

    .line 619
    .line 620
    move-object/from16 v13, p10

    .line 621
    .line 622
    move-object v15, v14

    .line 623
    move-object/from16 v14, p1

    .line 624
    .line 625
    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V

    .line 626
    .line 627
    .line 628
    iget-object v1, v15, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 629
    .line 630
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    new-instance v10, Lcom/android/server/display/BrightnessThrottler;

    .line 635
    .line 636
    new-instance v5, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    .line 637
    .line 638
    const/4 v2, 0x1

    .line 639
    invoke-direct {v5, v0, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 640
    .line 641
    .line 642
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 643
    .line 644
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 645
    .line 646
    .line 647
    move-result-object v2

    .line 648
    iget-object v7, v2, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 649
    .line 650
    new-instance v2, Lcom/android/server/display/BrightnessThrottler$Injector;

    .line 651
    .line 652
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 653
    .line 654
    .line 655
    iget-object v8, v1, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 656
    .line 657
    iget-object v9, v1, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 658
    .line 659
    move-object v1, v10

    .line 660
    move-object/from16 v3, p14

    .line 661
    .line 662
    move-object/from16 v4, p14

    .line 663
    .line 664
    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/BrightnessThrottler;-><init>(Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/server/display/config/SensorData;)V

    .line 665
    .line 666
    .line 667
    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 668
    .line 669
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 670
    .line 671
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 672
    .line 673
    iget-object v10, v1, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 674
    .line 675
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 676
    .line 677
    .line 678
    move-result-object v11

    .line 679
    new-instance v1, Lcom/android/server/display/BrightnessRangeController;

    .line 680
    .line 681
    new-instance v7, Lcom/android/server/display/NormalBrightnessModeController;

    .line 682
    .line 683
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 684
    .line 685
    .line 686
    new-instance v2, Ljava/util/HashMap;

    .line 687
    .line 688
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 689
    .line 690
    .line 691
    iput-object v2, v7, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 692
    .line 693
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 694
    .line 695
    .line 696
    iput v2, v7, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    .line 697
    .line 698
    const/4 v2, 0x0

    .line 699
    iput-boolean v2, v7, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    .line 700
    .line 701
    const/high16 v2, 0x3f800000    # 1.0f

    .line 702
    .line 703
    iput v2, v7, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    .line 704
    .line 705
    new-instance v8, Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 706
    .line 707
    new-instance v2, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;

    .line 708
    .line 709
    move-object/from16 v12, p9

    .line 710
    .line 711
    invoke-direct {v2, v12}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    .line 712
    .line 713
    .line 714
    new-instance v3, Landroid/os/Handler;

    .line 715
    .line 716
    invoke-virtual/range {p14 .. p14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 717
    .line 718
    .line 719
    move-result-object v4

    .line 720
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 721
    .line 722
    .line 723
    new-instance v4, Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;

    .line 724
    .line 725
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 726
    .line 727
    .line 728
    invoke-direct {v8, v2, v3, v4}, Lcom/android/server/display/brightness/clamper/HdrClamper;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;)V

    .line 729
    .line 730
    .line 731
    move-object v3, v1

    .line 732
    move-object/from16 v4, v22

    .line 733
    .line 734
    move-object v5, v12

    .line 735
    move-object/from16 v9, p12

    .line 736
    .line 737
    invoke-direct/range {v3 .. v11}, Lcom/android/server/display/BrightnessRangeController;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/NormalBrightnessModeController;Lcom/android/server/display/brightness/clamper/HdrClamper;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 738
    .line 739
    .line 740
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 741
    .line 742
    new-instance v9, Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 743
    .line 744
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    iget v4, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 749
    .line 750
    new-instance v6, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    .line 751
    .line 752
    const/4 v1, 0x4

    .line 753
    invoke-direct {v6, v0, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 754
    .line 755
    .line 756
    new-instance v7, Landroid/os/HandlerExecutor;

    .line 757
    .line 758
    move-object/from16 v10, p14

    .line 759
    .line 760
    invoke-direct {v7, v10}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 761
    .line 762
    .line 763
    move-object v1, v9

    .line 764
    move-object/from16 v2, p1

    .line 765
    .line 766
    move/from16 v3, p2

    .line 767
    .line 768
    move-object/from16 v5, p8

    .line 769
    .line 770
    move-object/from16 v8, p12

    .line 771
    .line 772
    invoke-direct/range {v1 .. v8}, Lcom/android/server/display/brightness/DisplayBrightnessController;-><init>(Landroid/content/Context;IFLcom/android/server/display/BrightnessSetting;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 773
    .line 774
    .line 775
    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 776
    .line 777
    new-instance v4, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;

    .line 778
    .line 779
    invoke-direct {v4, v12}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    new-instance v5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 783
    .line 784
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 785
    .line 786
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 787
    .line 788
    iget-object v3, v15, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 789
    .line 790
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 791
    .line 792
    invoke-direct {v5, v1, v2, v3, v6}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 793
    .line 794
    .line 795
    new-instance v11, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 796
    .line 797
    const/4 v2, 0x0

    .line 798
    move-object v1, v11

    .line 799
    move-object v3, v10

    .line 800
    move-object/from16 v6, p1

    .line 801
    .line 802
    move-object/from16 v7, p12

    .line 803
    .line 804
    move-object/from16 v8, p4

    .line 805
    .line 806
    invoke-direct/range {v1 .. v8}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;)V

    .line 807
    .line 808
    .line 809
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 810
    .line 811
    invoke-virtual {v9}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    const/4 v2, 0x0

    .line 816
    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    .line 817
    .line 818
    .line 819
    iget-object v1, v9, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 820
    .line 821
    iget-object v1, v1, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 822
    .line 823
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 824
    .line 825
    move-object/from16 v3, v26

    .line 826
    .line 827
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    .line 828
    .line 829
    .line 830
    move-object/from16 v4, p3

    .line 831
    .line 832
    move-object v5, v2

    .line 833
    move-object/from16 v2, p1

    .line 834
    .line 835
    invoke-virtual {v0, v2, v4}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    .line 836
    .line 837
    .line 838
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 839
    .line 840
    if-eqz v4, :cond_7

    .line 841
    .line 842
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 843
    .line 844
    if-eqz v4, :cond_7

    .line 845
    .line 846
    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 847
    .line 848
    new-instance v5, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 849
    .line 850
    invoke-direct {v5, v2, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMappingStrategy;)V

    .line 851
    .line 852
    .line 853
    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 854
    .line 855
    goto :goto_5

    .line 856
    :cond_7
    move-object/from16 v4, p7

    .line 857
    .line 858
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 859
    .line 860
    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 861
    .line 862
    :goto_5
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 863
    .line 864
    .line 865
    move-result v4

    .line 866
    const/4 v5, 0x1

    .line 867
    xor-int/2addr v4, v5

    .line 868
    if-eqz v4, :cond_8

    .line 869
    .line 870
    const v4, 0x1110146

    .line 871
    .line 872
    .line 873
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 874
    .line 875
    .line 876
    move-result v4

    .line 877
    if-nez v4, :cond_8

    .line 878
    .line 879
    move v12, v5

    .line 880
    goto :goto_6

    .line 881
    :cond_8
    const/4 v12, 0x0

    .line 882
    :goto_6
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 883
    .line 884
    const v4, 0x1110034

    .line 885
    .line 886
    .line 887
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 888
    .line 889
    .line 890
    move-result v4

    .line 891
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 892
    .line 893
    const v4, 0x1110144

    .line 894
    .line 895
    .line 896
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 897
    .line 898
    .line 899
    move-result v4

    .line 900
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 901
    .line 902
    const v4, 0x1110145

    .line 903
    .line 904
    .line 905
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 906
    .line 907
    .line 908
    move-result v3

    .line 909
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 910
    .line 911
    move/from16 v3, p11

    .line 912
    .line 913
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    .line 914
    .line 915
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 916
    .line 917
    if-eqz v3, :cond_9

    .line 918
    .line 919
    new-instance v3, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    .line 920
    .line 921
    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 922
    .line 923
    .line 924
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    .line 925
    .line 926
    new-instance v3, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    .line 927
    .line 928
    const/4 v4, 0x5

    .line 929
    invoke-direct {v3, v0, v4}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v10, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 933
    .line 934
    .line 935
    :cond_9
    move-object/from16 v3, p13

    .line 936
    .line 937
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessModeChangeRunnable:Ljava/lang/Runnable;

    .line 938
    .line 939
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 940
    .line 941
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpEnabled:Z

    .line 942
    .line 943
    if-eqz v3, :cond_a

    .line 944
    .line 945
    new-instance v3, Lcom/android/server/display/DisplayPowerController$4;

    .line 946
    .line 947
    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 948
    .line 949
    .line 950
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 951
    .line 952
    new-instance v6, Lcom/android/server/display/EarlyWakeUpManager;

    .line 953
    .line 954
    move-object/from16 p6, v6

    .line 955
    .line 956
    move-object/from16 p7, v21

    .line 957
    .line 958
    move/from16 p8, p2

    .line 959
    .line 960
    move-object/from16 p9, v3

    .line 961
    .line 962
    move-object/from16 p10, p5

    .line 963
    .line 964
    move-object/from16 p11, v4

    .line 965
    .line 966
    move-object/from16 p12, v17

    .line 967
    .line 968
    invoke-direct/range {p6 .. p12}, Lcom/android/server/display/EarlyWakeUpManager;-><init>(Ljava/lang/String;ILcom/android/server/display/DisplayPowerController$4;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/AutomaticBrightnessController;Lcom/android/server/display/WakelockController;)V

    .line 969
    .line 970
    .line 971
    iput-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    .line 972
    .line 973
    :cond_a
    move/from16 v3, p2

    .line 974
    .line 975
    if-nez v3, :cond_b

    .line 976
    .line 977
    new-instance v4, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 978
    .line 979
    move-object/from16 v6, v25

    .line 980
    .line 981
    invoke-direct {v4, v2, v6, v10}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V

    .line 982
    .line 983
    .line 984
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 985
    .line 986
    new-instance v6, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;

    .line 987
    .line 988
    invoke-direct {v6, v4, v10}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;-><init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V

    .line 989
    .line 990
    .line 991
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 992
    .line 993
    .line 994
    move-result-object v7

    .line 995
    new-instance v8, Landroid/content/IntentFilter;

    .line 996
    .line 997
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 998
    .line 999
    .line 1000
    const-string v9, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 1001
    .line 1002
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    const-string/jumbo v9, "package"

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    new-instance v9, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;

    .line 1012
    .line 1013
    invoke-direct {v9, v4, v7, v6, v8}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;Landroid/content/ContentResolver;Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;Landroid/content/IntentFilter;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->handleSettingsChangedLocked()V

    .line 1020
    .line 1021
    .line 1022
    :cond_b
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    .line 1023
    .line 1024
    if-eqz v4, :cond_c

    .line 1025
    .line 1026
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 1027
    .line 1028
    if-eqz v4, :cond_c

    .line 1029
    .line 1030
    move v12, v5

    .line 1031
    goto :goto_7

    .line 1032
    :cond_c
    const/4 v12, 0x0

    .line 1033
    :goto_7
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    .line 1034
    .line 1035
    if-eqz v12, :cond_d

    .line 1036
    .line 1037
    new-instance v4, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    .line 1038
    .line 1039
    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 1040
    .line 1041
    .line 1042
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    .line 1043
    .line 1044
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v2

    .line 1048
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 1049
    .line 1050
    const/4 v6, -0x2

    .line 1051
    const/4 v7, 0x0

    .line 1052
    invoke-static {v2, v4, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1053
    .line 1054
    .line 1055
    move-result v2

    .line 1056
    if-ne v2, v5, :cond_e

    .line 1057
    .line 1058
    move v12, v5

    .line 1059
    goto :goto_8

    .line 1060
    :cond_e
    move v12, v7

    .line 1061
    :goto_8
    invoke-virtual {v1, v12}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setUseAutoBrightness(Z)V

    .line 1062
    .line 1063
    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    const-string v2, "Create new DPC instance, mDisplayId="

    .line 1067
    .line 1068
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    const-string v2, " AutomaticBrightnessController="

    .line 1075
    .line 1076
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1080
    .line 1081
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    const-string v2, " defaultModeBrightnessMapper="

    .line 1085
    .line 1086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1090
    .line 1091
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    move-object/from16 v1, v21

    .line 1099
    .line 1100
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    .line 1102
    .line 1103
    return-void
.end method

.method public static getDynamicRampRate(FFFFII)F
    .locals 2

    .line 1
    int-to-double v0, p4

    .line 2
    div-float/2addr p1, p0

    .line 3
    div-float/2addr p2, p3

    .line 4
    mul-float/2addr p2, p1

    .line 5
    float-to-double p0, p2

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    div-double/2addr v0, p0

    .line 11
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr v0, p0

    .line 17
    int-to-double p0, p5

    .line 18
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    const-wide/16 p2, 0x0

    .line 23
    .line 24
    cmpl-double p2, p0, p2

    .line 25
    .line 26
    if-lez p2, :cond_0

    .line 27
    .line 28
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 29
    .line 30
    div-double/2addr p2, p0

    .line 31
    double-to-float p0, p2

    .line 32
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 33
    .line 34
    mul-float/2addr p0, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 37
    .line 38
    :goto_0
    return p0
.end method

.method public static logDisplayPolicyChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/metrics/LogMaker;

    .line 2
    .line 3
    const/16 v1, 0x6a0

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final addBrightnessWeights(FFFF)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "addBrightnessWeightDirectly: l:"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " b:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " d:"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " c:"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 49
    .line 50
    invoke-virtual {p4, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    .line 51
    .line 52
    .line 53
    iget-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 54
    .line 55
    invoke-virtual {p4}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iput-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 62
    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget p4, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentUserId:I

    .line 65
    .line 66
    if-nez p4, :cond_0

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->mStats:Ljava/util/Map;

    .line 79
    .line 80
    invoke-virtual {v0, p4, v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;->getOrCreateUserStats(ILjava/util/Map;)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    move v1, p1

    .line 88
    move v2, p2

    .line 89
    move v3, p3

    .line 90
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->log(FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    .line 97
    goto :goto_2

    .line 98
    :goto_1
    monitor-exit p0

    .line 99
    throw p1

    .line 100
    :cond_1
    :goto_2
    return-void
.end method

.method public final animateScreenBrightness(FFFZF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "Animating brightness: target="

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    cmpl-float v3, p1, p2

    .line 25
    .line 26
    const-string v4, ""

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-static {p2}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v5, ", sdrTarget="

    .line 35
    .line 36
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v3, v4

    .line 42
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v5, ", rate=%.3f"

    .line 54
    .line 55
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    if-eq v0, v1, :cond_2

    .line 63
    .line 64
    const-string v3, ", DR="

    .line 65
    .line 66
    invoke-static {v0, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move-object v0, v4

    .line 72
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v3, ", rateAtHbm=%.3f"

    .line 90
    .line 91
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, ", reason="

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->changesToString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 122
    .line 123
    iget v4, v0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 124
    .line 125
    iget v5, v2, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 126
    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v7, 0x6

    .line 129
    if-eq v4, v5, :cond_5

    .line 130
    .line 131
    if-eq v4, v7, :cond_4

    .line 132
    .line 133
    if-ne v5, v7, :cond_5

    .line 134
    .line 135
    :cond_4
    move v4, v1

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    move v4, v6

    .line 138
    :goto_3
    if-eqz v4, :cond_6

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    iget v4, v0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 142
    .line 143
    iget v5, v2, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 144
    .line 145
    if-eq v4, v5, :cond_7

    .line 146
    .line 147
    const/16 v4, 0x70

    .line 148
    .line 149
    invoke-virtual {v0, v4}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-virtual {v2, v4}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eq v5, v2, :cond_7

    .line 158
    .line 159
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->changesToString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    new-instance v4, Lcom/android/server/power/PowerHistorian$MessageRecord;

    .line 169
    .line 170
    invoke-direct {v4, v0}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/4 v0, 0x2

    .line 174
    invoke-virtual {v2, v0, v4}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 178
    .line 179
    iget-object v2, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 180
    .line 181
    invoke-virtual {v2, p1, p3, p5, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTarget(FFFZ)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    iget-object v4, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 186
    .line 187
    invoke-virtual {v4, p2, p3, p5, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTarget(FFFZ)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    or-int/2addr p2, v2

    .line 192
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 193
    .line 194
    .line 195
    move-result p3

    .line 196
    iget-boolean p4, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    .line 197
    .line 198
    if-eq p3, p4, :cond_a

    .line 199
    .line 200
    const/4 p5, 0x0

    .line 201
    iget-object v2, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAnimationCallback:Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    .line 202
    .line 203
    if-eqz p3, :cond_8

    .line 204
    .line 205
    iput-boolean v1, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    .line 206
    .line 207
    iget-object p3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 208
    .line 209
    invoke-virtual {p3, v1, v2, p5}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_8
    if-eqz p4, :cond_a

    .line 214
    .line 215
    iget-object p3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/DisplayPowerController$4;

    .line 216
    .line 217
    if-eqz p3, :cond_9

    .line 218
    .line 219
    invoke-virtual {p3}, Lcom/android/server/display/DisplayPowerController$4;->onAnimationEnd()V

    .line 220
    .line 221
    .line 222
    :cond_9
    iget-object p3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 223
    .line 224
    invoke-virtual {p3, v1, v2, p5}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iput-boolean v6, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    .line 228
    .line 229
    :cond_a
    :goto_5
    if-eqz p2, :cond_c

    .line 230
    .line 231
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 232
    .line 233
    if-eqz p2, :cond_b

    .line 234
    .line 235
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    .line 236
    .line 237
    if-eqz p2, :cond_b

    .line 238
    .line 239
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 240
    .line 241
    invoke-virtual {p2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    if-eqz p2, :cond_b

    .line 246
    .line 247
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationConsumerInvoked:Z

    .line 248
    .line 249
    if-nez p2, :cond_b

    .line 250
    .line 251
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 252
    .line 253
    invoke-virtual {p2, v7}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 254
    .line 255
    .line 256
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationConsumerInvoked:Z

    .line 257
    .line 258
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Ljava/util/function/Consumer;

    .line 259
    .line 260
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 261
    .line 262
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_b
    float-to-int p2, p1

    .line 266
    const-wide/32 p3, 0x20000

    .line 267
    .line 268
    .line 269
    const-string p5, "TargetScreenBrightness"

    .line 270
    .line 271
    invoke-static {p3, p4, p5, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 272
    .line 273
    .line 274
    const-string/jumbo p2, "debug.tracing.screen_brightness"

    .line 275
    .line 276
    .line 277
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p3

    .line 281
    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :catch_0
    move-exception p2

    .line 286
    const-string p4, "Failed to set a system property: key=debug.tracing.screen_brightness value="

    .line 287
    .line 288
    const-string p5, " "

    .line 289
    .line 290
    invoke-static {p4, p3, p5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    move-result-object p3

    .line 294
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    invoke-static {v3, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 309
    .line 310
    .line 311
    :cond_c
    return-void
.end method

.method public final animateScreenStateChange(IIZ)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "animateScreenStateChange: target="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", mIsEnabled="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    const/4 v2, 0x0

    .line 36
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 37
    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    :cond_0
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 57
    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    if-eq p1, v0, :cond_2

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    const-string v4, "animateScreenStateChange: mColorFadeOffAnimator.cancel()"

    .line 75
    .line 76
    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 85
    .line 86
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    if-eqz v4, :cond_7

    .line 90
    .line 91
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 92
    .line 93
    iget v4, v4, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 94
    .line 95
    invoke-static {v4}, Landroid/view/Display;->isDozeState(I)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_7

    .line 100
    .line 101
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_7

    .line 106
    .line 107
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 108
    .line 109
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    if-eqz v5, :cond_4

    .line 112
    .line 113
    move v8, v0

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    move v8, v2

    .line 116
    :goto_0
    invoke-virtual {v4, v7, v8}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 120
    .line 121
    if-eqz v4, :cond_5

    .line 122
    .line 123
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->end()V

    .line 124
    .line 125
    .line 126
    :cond_5
    if-eq p1, v6, :cond_6

    .line 127
    .line 128
    move v4, v6

    .line 129
    goto :goto_1

    .line 130
    :cond_6
    move v4, v2

    .line 131
    :goto_1
    invoke-virtual {p0, v6, p2, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 132
    .line 133
    .line 134
    :cond_7
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 135
    .line 136
    if-eqz v4, :cond_8

    .line 137
    .line 138
    if-eq p1, v6, :cond_8

    .line 139
    .line 140
    invoke-virtual {p0, v6, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 141
    .line 142
    .line 143
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 144
    .line 145
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 146
    .line 147
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 148
    .line 149
    if-eqz v4, :cond_8

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 152
    .line 153
    .line 154
    :cond_8
    const/high16 v4, 0x3f800000    # 1.0f

    .line 155
    .line 156
    const/4 v7, 0x0

    .line 157
    const/4 v8, 0x4

    .line 158
    const/4 v9, 0x3

    .line 159
    if-ne p1, v0, :cond_f

    .line 160
    .line 161
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    .line 162
    .line 163
    if-eqz p1, :cond_9

    .line 164
    .line 165
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

    .line 166
    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 170
    .line 171
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 172
    .line 173
    if-ne p1, v8, :cond_9

    .line 174
    .line 175
    invoke-virtual {p0, v9, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 176
    .line 177
    .line 178
    :cond_9
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    .line 179
    .line 180
    if-eqz p1, :cond_b

    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 183
    .line 184
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    .line 185
    .line 186
    const/16 p3, 0xc

    .line 187
    .line 188
    if-ne p1, p3, :cond_b

    .line 189
    .line 190
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 191
    .line 192
    iget p3, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 193
    .line 194
    cmpl-float p3, p3, v7

    .line 195
    .line 196
    if-nez p3, :cond_a

    .line 197
    .line 198
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    invoke-virtual {p1, p3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_a

    .line 205
    .line 206
    const-string/jumbo p1, "draw ColorFade due to unfolding"

    .line 207
    .line 208
    .line 209
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 213
    .line 214
    invoke-virtual {p1, v7}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 215
    .line 216
    .line 217
    :cond_a
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    .line 218
    .line 219
    :cond_b
    invoke-virtual {p0, v0, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-nez p1, :cond_c

    .line 224
    .line 225
    return-void

    .line 226
    :cond_c
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 227
    .line 228
    if-eqz p1, :cond_e

    .line 229
    .line 230
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_e

    .line 237
    .line 238
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 239
    .line 240
    iget-boolean p1, p1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 241
    .line 242
    if-nez p1, :cond_e

    .line 243
    .line 244
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 245
    .line 246
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 247
    .line 248
    if-ne p1, v0, :cond_e

    .line 249
    .line 250
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 251
    .line 252
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 253
    .line 254
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_e

    .line 259
    .line 260
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 261
    .line 262
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 263
    .line 264
    if-nez p1, :cond_e

    .line 265
    .line 266
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 267
    .line 268
    if-eqz p1, :cond_d

    .line 269
    .line 270
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 271
    .line 272
    if-ne p1, v6, :cond_e

    .line 273
    .line 274
    :cond_d
    const-string p0, "animateScreenStateChange is returned because lux is not yet valid!"

    .line 275
    .line 276
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :cond_e
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 281
    .line 282
    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 283
    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_4

    .line 291
    .line 292
    :cond_f
    if-ne p1, v9, :cond_12

    .line 293
    .line 294
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_10

    .line 301
    .line 302
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 303
    .line 304
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 305
    .line 306
    if-ne p1, v0, :cond_10

    .line 307
    .line 308
    return-void

    .line 309
    :cond_10
    invoke-virtual {p0, v9, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-nez p1, :cond_11

    .line 314
    .line 315
    return-void

    .line 316
    :cond_11
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 317
    .line 318
    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 319
    .line 320
    .line 321
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_4

    .line 327
    .line 328
    :cond_12
    if-ne p1, v8, :cond_16

    .line 329
    .line 330
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 331
    .line 332
    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_13

    .line 337
    .line 338
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 339
    .line 340
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 341
    .line 342
    if-eq p1, v8, :cond_13

    .line 343
    .line 344
    return-void

    .line 345
    :cond_13
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 346
    .line 347
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 348
    .line 349
    if-eq p1, v8, :cond_15

    .line 350
    .line 351
    invoke-virtual {p0, v9, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-nez p1, :cond_14

    .line 356
    .line 357
    return-void

    .line 358
    :cond_14
    invoke-virtual {p0, v8, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 359
    .line 360
    .line 361
    :cond_15
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 362
    .line 363
    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 364
    .line 365
    .line 366
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 367
    .line 368
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_4

    .line 372
    .line 373
    :cond_16
    const/4 v1, 0x6

    .line 374
    if-ne p1, v1, :cond_1a

    .line 375
    .line 376
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 377
    .line 378
    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_17

    .line 383
    .line 384
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 385
    .line 386
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 387
    .line 388
    if-eq p1, v1, :cond_17

    .line 389
    .line 390
    return-void

    .line 391
    :cond_17
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 392
    .line 393
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 394
    .line 395
    if-eq p1, v1, :cond_19

    .line 396
    .line 397
    invoke-virtual {p0, v0, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-nez p1, :cond_18

    .line 402
    .line 403
    return-void

    .line 404
    :cond_18
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 405
    .line 406
    .line 407
    :cond_19
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 408
    .line 409
    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 410
    .line 411
    .line 412
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 413
    .line 414
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 415
    .line 416
    .line 417
    goto :goto_4

    .line 418
    :cond_1a
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 419
    .line 420
    if-nez v3, :cond_1b

    .line 421
    .line 422
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 423
    .line 424
    invoke-virtual {p1, v7}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 425
    .line 426
    .line 427
    :cond_1b
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 428
    .line 429
    iget v1, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 430
    .line 431
    cmpl-float v1, v1, v7

    .line 432
    .line 433
    if-nez v1, :cond_1c

    .line 434
    .line 435
    invoke-virtual {p0, v6, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    .line 436
    .line 437
    .line 438
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 439
    .line 440
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 441
    .line 442
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 443
    .line 444
    if-eqz p0, :cond_21

    .line 445
    .line 446
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 447
    .line 448
    .line 449
    goto :goto_4

    .line 450
    :cond_1c
    if-nez v5, :cond_1e

    .line 451
    .line 452
    sget-boolean p2, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    .line 453
    .line 454
    if-eqz p2, :cond_1d

    .line 455
    .line 456
    move p2, v9

    .line 457
    goto :goto_2

    .line 458
    :cond_1d
    move p2, v6

    .line 459
    goto :goto_2

    .line 460
    :cond_1e
    move p2, v0

    .line 461
    :goto_2
    if-eqz p3, :cond_20

    .line 462
    .line 463
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 464
    .line 465
    invoke-virtual {p1, p3, p2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    if-eqz p1, :cond_20

    .line 470
    .line 471
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 472
    .line 473
    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 474
    .line 475
    if-eq p1, v6, :cond_20

    .line 476
    .line 477
    if-ne p2, v9, :cond_1f

    .line 478
    .line 479
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 480
    .line 481
    sget-object p2, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 482
    .line 483
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 484
    .line 485
    .line 486
    goto :goto_3

    .line 487
    :cond_1f
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 488
    .line 489
    sget-object p2, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 490
    .line 491
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 492
    .line 493
    .line 494
    :goto_3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 495
    .line 496
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 497
    .line 498
    .line 499
    goto :goto_4

    .line 500
    :cond_20
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 501
    .line 502
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 503
    .line 504
    invoke-virtual {p1, p2, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 505
    .line 506
    .line 507
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 508
    .line 509
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    .line 510
    .line 511
    .line 512
    :cond_21
    :goto_4
    return-void
.end method

.method public final clampScreenBrightness(F)F
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 11
    .line 12
    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final clampScreenBrightnessForFinal(F)F
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 11
    .line 12
    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    .line 15
    .line 16
    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final clearAdaptiveBrightnessLongtermModelBuilder()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    .line 6
    .line 7
    const-string/jumbo v1, "clearBrightnessEvents()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 22
    .line 23
    const-string/jumbo v2, "brightness_events_sec.xml"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 46
    .line 47
    const-string v1, "adaptive_brightness_stats_sec.xml"

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    .line 63
    .line 64
    .line 65
    :cond_1
    monitor-exit v0

    .line 66
    goto :goto_2

    .line 67
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0

    .line 69
    :cond_2
    :goto_2
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "  mCachedBrightnessInfo.brightnessMaxReason ="

    .line 6
    .line 7
    const-string v3, "  mCachedBrightnessInfo.hbmTransitionPoint="

    .line 8
    .line 9
    const-string v4, "  mCachedBrightnessInfo.hbmMode="

    .line 10
    .line 11
    const-string v5, "  mCachedBrightnessInfo.brightnessMax="

    .line 12
    .line 13
    const-string v6, "  mCachedBrightnessInfo.brightnessMin="

    .line 14
    .line 15
    const-string v7, "  mCachedBrightnessInfo.adjustedBrightness="

    .line 16
    .line 17
    const-string v8, "  mCachedBrightnessInfo.brightness="

    .line 18
    .line 19
    const-string v9, "  mPendingUpdatePowerStateLocked="

    .line 20
    .line 21
    const-string v10, "  mPendingRequestChangedLocked="

    .line 22
    .line 23
    const-string v11, "  mPendingRequestLocked="

    .line 24
    .line 25
    const-string v12, "  mDisplayReadyLocked="

    .line 26
    .line 27
    const-string v13, "  mDisplayBrightnessFollowers="

    .line 28
    .line 29
    const-string v14, "  mLightSensor="

    .line 30
    .line 31
    const-string v15, "  mLeadDisplayId="

    .line 32
    .line 33
    move-object/from16 v16, v2

    .line 34
    .line 35
    const-string v2, "  mDisplayId="

    .line 36
    .line 37
    move-object/from16 v17, v3

    .line 38
    .line 39
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v3

    .line 42
    move-object/from16 v18, v4

    .line 43
    .line 44
    :try_start_0
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 45
    .line 46
    move-object/from16 v19, v5

    .line 47
    .line 48
    const-string/jumbo v5, "dump"

    .line 49
    .line 50
    .line 51
    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 55
    .line 56
    .line 57
    const-string v4, "Display Power Controller:"

    .line 58
    .line 59
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 68
    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 131
    .line 132
    .line 133
    const-string v2, "Display Power Controller Locked State:"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 144
    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 161
    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 178
    .line 179
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 208
    .line 209
    .line 210
    const-string v2, "Display Power Controller Configuration:"

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v3, "  mScreenBrightnessDozeConfig="

    .line 218
    .line 219
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 223
    .line 224
    const-string v4, "  mScreenBrightnessDimConfig="

    .line 225
    .line 226
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 231
    .line 232
    const-string v4, "  mUseSoftwareAutoBrightnessConfig="

    .line 233
    .line 234
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 239
    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string v2, "  mSkipScreenOnBrightnessRamp=false"

    .line 251
    .line 252
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v3, "  mColorFadeFadesConfig="

    .line 258
    .line 259
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 263
    .line 264
    const-string v4, "  mColorFadeEnabled="

    .line 265
    .line 266
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 271
    .line 272
    const-string v4, "  mIsDisplayInternal="

    .line 273
    .line 274
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 279
    .line 280
    invoke-static {v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 281
    .line 282
    .line 283
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 284
    .line 285
    monitor-enter v2

    .line 286
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 292
    .line 293
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 294
    .line 295
    iget v4, v4, Landroid/util/MutableFloat;->value:F

    .line 296
    .line 297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 313
    .line 314
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 315
    .line 316
    iget v4, v4, Landroid/util/MutableFloat;->value:F

    .line 317
    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 334
    .line 335
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 336
    .line 337
    iget v4, v4, Landroid/util/MutableFloat;->value:F

    .line 338
    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    move-object/from16 v4, v19

    .line 352
    .line 353
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 357
    .line 358
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 359
    .line 360
    iget v4, v4, Landroid/util/MutableFloat;->value:F

    .line 361
    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    move-object/from16 v4, v18

    .line 375
    .line 376
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 380
    .line 381
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    .line 382
    .line 383
    iget v4, v4, Landroid/util/MutableInt;->value:I

    .line 384
    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    move-object/from16 v4, v17

    .line 398
    .line 399
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 403
    .line 404
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 405
    .line 406
    iget v4, v4, Landroid/util/MutableFloat;->value:F

    .line 407
    .line 408
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    move-object/from16 v4, v16

    .line 421
    .line 422
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 426
    .line 427
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 428
    .line 429
    iget v4, v4, Landroid/util/MutableInt;->value:I

    .line 430
    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    const-string v3, "  mDisplayBlanksAfterDozeConfig="

    .line 445
    .line 446
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 450
    .line 451
    const-string v4, "  mBrightnessBucketsInDozeConfig="

    .line 452
    .line 453
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 458
    .line 459
    const-string v4, "  mDozeScaleFactor="

    .line 460
    .line 461
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    .line 466
    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const-string v2, "  --SEC_PMS"

    .line 478
    .line 479
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    const-string v3, "  AUTO_BRIGHTNESS_TYPE="

    .line 485
    .line 486
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    sget v3, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    .line 490
    .line 491
    const-string v4, "  USE_SEC_LONG_TERM_MODEL="

    .line 492
    .line 493
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 498
    .line 499
    const-string v4, "  USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL="

    .line 500
    .line 501
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    .line 506
    .line 507
    const-string v4, "  extraDim mExtraDimStrength= "

    .line 508
    .line 509
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mExtraDimStrength:I

    .line 514
    .line 515
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    const-string v2, "  extraDim mExtraDimIsActive= false"

    .line 526
    .line 527
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    const-string v3, "  mForceDimSettingEnabled= "

    .line 533
    .line 534
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    .line 538
    .line 539
    invoke-static {v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 540
    .line 541
    .line 542
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 543
    .line 544
    new-instance v3, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 545
    .line 546
    const/4 v4, 0x0

    .line 547
    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/lang/Object;I)V

    .line 548
    .line 549
    .line 550
    const-wide/16 v0, 0x32

    .line 551
    .line 552
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 553
    .line 554
    .line 555
    return-void

    .line 556
    :catchall_0
    move-exception v0

    .line 557
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 558
    throw v0

    .line 559
    :catchall_1
    move-exception v0

    .line 560
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 561
    throw v0
.end method

.method public final getAmbientBrightnessInfo(F)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-virtual {v1, v0, p1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lcom/android/server/display/config/HysteresisLevels;->getDarkeningThreshold(F)F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v2, p1}, Lcom/android/server/display/config/HysteresisLevels;->getBrighteningThreshold(F)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v5, "getAmbientBrightnessInfo : "

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v5, "%6d"

    .line 44
    .line 45
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "("

    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v5, "%.2f"

    .line 68
    .line 69
    invoke-static {v1, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ") "

    .line 77
    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v3, "%6.0f"

    .line 90
    .line 91
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " < "

    .line 99
    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v5, "%8.1f"

    .line 112
    .line 113
    invoke-static {v1, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p1, " (adj:"

    .line 139
    .line 140
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    const-string p1, "%+.1f"

    .line 158
    .line 159
    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p0, ")"

    .line 167
    .line 168
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    return-object p0

    .line 176
    :cond_0
    return-object v0
.end method

.method public final getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v1, "getAmbientBrightnessStats: not supported"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 20
    .line 21
    if-eqz p0, :cond_3

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v2, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast v1, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/util/Collection;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_2
    monitor-exit p0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 63
    .line 64
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1

    .line 71
    :cond_3
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_0
    return-object p0
.end method

.method public final getBrightnessDynamicRampRatePair(FF)Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    const v2, 0x3b83126f    # 0.004f

    .line 5
    .line 6
    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    move p1, v2

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 13
    .line 14
    iget v1, v1, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 15
    .line 16
    cmpg-float v3, v1, v0

    .line 17
    .line 18
    if-gtz v3, :cond_1

    .line 19
    .line 20
    move v1, v2

    .line 21
    :cond_1
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    .line 22
    .line 23
    cmpg-float v3, p2, v0

    .line 24
    .line 25
    const v4, 0x3f666666    # 0.9f

    .line 26
    .line 27
    .line 28
    if-gtz v3, :cond_2

    .line 29
    .line 30
    move p2, v4

    .line 31
    :cond_2
    cmpg-float v0, v2, v0

    .line 32
    .line 33
    if-gtz v0, :cond_3

    .line 34
    .line 35
    move v2, v4

    .line 36
    :cond_3
    const-string/jumbo v0, "sys.display.transition.weight"

    .line 37
    .line 38
    .line 39
    sget v3, Lcom/android/server/display/DisplayPowerController;->DEFAULT_WEIGHT_FOR_BRIGHTNESS_TRANSITION:I

    .line 40
    .line 41
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const-string/jumbo v0, "sys.display.transition.weight.hbm"

    .line 46
    .line 47
    .line 48
    const/16 v3, 0xf

    .line 49
    .line 50
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    cmpg-float v3, p1, v1

    .line 55
    .line 56
    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 57
    .line 58
    if-gez v3, :cond_5

    .line 59
    .line 60
    sget v8, Lcom/android/server/display/DisplayPowerController;->MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I

    .line 61
    .line 62
    move v3, p1

    .line 63
    move v4, v1

    .line 64
    move v5, v2

    .line 65
    move v6, p2

    .line 66
    invoke-static/range {v3 .. v8}, Lcom/android/server/display/DisplayPowerController;->getDynamicRampRate(FFFFII)F

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    const/high16 v3, 0x3f800000    # 1.0f

    .line 71
    .line 72
    cmpl-float v3, v1, v3

    .line 73
    .line 74
    if-lez v3, :cond_4

    .line 75
    .line 76
    const/16 v8, 0x7530

    .line 77
    .line 78
    move v3, p1

    .line 79
    move v4, v1

    .line 80
    move v5, v2

    .line 81
    move v6, p2

    .line 82
    move v7, v0

    .line 83
    invoke-static/range {v3 .. v8}, Lcom/android/server/display/DisplayPowerController;->getDynamicRampRate(FFFFII)F

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    :cond_4
    move p1, v9

    .line 88
    move v9, v10

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    move p1, v9

    .line 91
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 92
    .line 93
    if-eqz p0, :cond_6

    .line 94
    .line 95
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    .line 96
    .line 97
    int-to-float p0, p0

    .line 98
    mul-float/2addr v9, p0

    .line 99
    mul-float/2addr p1, p0

    .line 100
    :cond_6
    new-instance p0, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;

    .line 101
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    iput v9, p0, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamic:F

    .line 106
    .line 107
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamicAtHbm:F

    .line 108
    .line 109
    return-object p0
.end method

.method public final getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v1, "getBrightnessEvents: not supported"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 29
    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    filled-new-array {p1}, [I

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    move v3, v0

    .line 56
    :goto_1
    array-length v4, p0

    .line 57
    const/4 v5, 0x1

    .line 58
    if-ge v3, v4, :cond_5

    .line 59
    .line 60
    aget v4, p0, v3

    .line 61
    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    if-eq v4, p1, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v5, v0

    .line 68
    :cond_4
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    .line 83
    .line 84
    array-length p1, v1

    .line 85
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    :goto_3
    array-length p1, v1

    .line 89
    if-ge v0, p1, :cond_8

    .line 90
    .line 91
    aget-object p1, v1, v0

    .line 92
    .line 93
    iget p1, p1, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    .line 94
    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/Boolean;

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_6

    .line 112
    .line 113
    aget-object p1, v1, v0

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    new-instance p1, Landroid/hardware/display/BrightnessChangeEvent;

    .line 120
    .line 121
    aget-object p2, v1, v0

    .line 122
    .line 123
    invoke-direct {p1, p2, v5}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_8
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    .line 133
    .line 134
    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    return-object p1

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw p0
.end method

.method public final getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v10, Landroid/hardware/display/BrightnessInfo;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 9
    .line 10
    iget v2, v1, Landroid/util/MutableFloat;->value:F

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 13
    .line 14
    iget v3, v1, Landroid/util/MutableFloat;->value:F

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 17
    .line 18
    iget v4, v1, Landroid/util/MutableFloat;->value:F

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 21
    .line 22
    iget v5, v1, Landroid/util/MutableFloat;->value:F

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    .line 25
    .line 26
    iget v6, v1, Landroid/util/MutableInt;->value:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 29
    .line 30
    iget v7, v1, Landroid/util/MutableFloat;->value:F

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 33
    .line 34
    iget v8, v1, Landroid/util/MutableInt;->value:I

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    .line 37
    .line 38
    iget-boolean v9, p0, Landroid/util/MutableBoolean;->value:Z

    .line 39
    .line 40
    move-object v1, v10

    .line 41
    invoke-direct/range {v1 .. v9}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFIZ)V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-object v10

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final getFinalBrightness(FI)F
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 5
    .line 6
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    cmpl-float v3, v1, v2

    .line 10
    .line 11
    const/high16 v4, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 14
    .line 15
    if-ltz v3, :cond_0

    .line 16
    .line 17
    cmpl-float v3, v1, v4

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    mul-float/2addr p1, v1

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/16 v1, 0x10

    .line 27
    .line 28
    invoke-virtual {v5, p1, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 32
    .line 33
    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    .line 34
    .line 35
    const/16 v3, 0x100

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    cmpl-float v1, p1, v4

    .line 40
    .line 41
    if-lez v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5, v4, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 44
    .line 45
    .line 46
    move p1, v4

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 48
    .line 49
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    .line 50
    .line 51
    cmpl-float v6, v1, v2

    .line 52
    .line 53
    const/16 v7, 0x20

    .line 54
    .line 55
    if-ltz v6, :cond_2

    .line 56
    .line 57
    cmpg-float v6, p1, v1

    .line 58
    .line 59
    if-gez v6, :cond_2

    .line 60
    .line 61
    invoke-virtual {v5, v1, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 62
    .line 63
    .line 64
    move p1, v1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 66
    .line 67
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 68
    .line 69
    cmpl-float v6, v1, v2

    .line 70
    .line 71
    if-ltz v6, :cond_3

    .line 72
    .line 73
    cmpl-float v6, p1, v1

    .line 74
    .line 75
    if-lez v6, :cond_3

    .line 76
    .line 77
    invoke-virtual {v5, v1, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 78
    .line 79
    .line 80
    move p1, v1

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 82
    .line 83
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    .line 84
    .line 85
    const/4 v6, -0x1

    .line 86
    if-eq v1, v6, :cond_4

    .line 87
    .line 88
    int-to-float v1, v1

    .line 89
    cmpl-float v6, p1, v1

    .line 90
    .line 91
    if-lez v6, :cond_4

    .line 92
    .line 93
    const/16 p1, 0x80

    .line 94
    .line 95
    invoke-virtual {v5, v1, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 96
    .line 97
    .line 98
    move p1, v1

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 108
    .line 109
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 110
    .line 111
    cmpl-float v6, v1, v2

    .line 112
    .line 113
    const/16 v7, 0x40

    .line 114
    .line 115
    if-ltz v6, :cond_5

    .line 116
    .line 117
    cmpl-float v6, p1, v1

    .line 118
    .line 119
    if-lez v6, :cond_5

    .line 120
    .line 121
    invoke-virtual {v5, v1, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 122
    .line 123
    .line 124
    move p1, v1

    .line 125
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 126
    .line 127
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 128
    .line 129
    cmpl-float v6, v1, v2

    .line 130
    .line 131
    if-ltz v6, :cond_6

    .line 132
    .line 133
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 134
    .line 135
    if-nez v6, :cond_6

    .line 136
    .line 137
    cmpg-float v6, p1, v1

    .line 138
    .line 139
    if-gez v6, :cond_6

    .line 140
    .line 141
    invoke-virtual {v5, v1, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 142
    .line 143
    .line 144
    move p1, v1

    .line 145
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    .line 146
    .line 147
    const/4 v6, 0x1

    .line 148
    if-eqz v1, :cond_9

    .line 149
    .line 150
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    .line 151
    .line 152
    const/high16 v7, 0x10000

    .line 153
    .line 154
    if-eq v1, v6, :cond_8

    .line 155
    .line 156
    const/4 v8, 0x2

    .line 157
    if-eq v1, v8, :cond_7

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_7
    cmpg-float v1, p1, v4

    .line 161
    .line 162
    if-gtz v1, :cond_9

    .line 163
    .line 164
    invoke-static {v3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    invoke-virtual {v5, p1, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_8
    cmpl-float v1, p1, v4

    .line 173
    .line 174
    if-lez v1, :cond_9

    .line 175
    .line 176
    invoke-virtual {v5, v4, v7}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 177
    .line 178
    .line 179
    move p1, v4

    .line 180
    :cond_9
    :goto_0
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 181
    .line 182
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_a

    .line 187
    .line 188
    invoke-static {p2}, Landroid/view/Display;->isDozeState(I)Z

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-eqz p2, :cond_a

    .line 193
    .line 194
    const p2, 0x3ec28f5c    # 0.38f

    .line 195
    .line 196
    .line 197
    cmpl-float v1, p1, p2

    .line 198
    .line 199
    if-lez v1, :cond_a

    .line 200
    .line 201
    const/16 p1, 0x800

    .line 202
    .line 203
    invoke-virtual {v5, p2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 204
    .line 205
    .line 206
    move p1, p2

    .line 207
    :cond_a
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 208
    .line 209
    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 210
    .line 211
    if-eqz p2, :cond_b

    .line 212
    .line 213
    const/16 p1, 0x400

    .line 214
    .line 215
    invoke-virtual {v5, v2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_b
    move v2, p1

    .line 220
    :goto_1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 221
    .line 222
    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    .line 223
    .line 224
    if-nez p2, :cond_c

    .line 225
    .line 226
    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    .line 227
    .line 228
    if-eqz p2, :cond_d

    .line 229
    .line 230
    :cond_c
    iget p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 231
    .line 232
    const/4 v1, 0x3

    .line 233
    if-ne p2, v1, :cond_d

    .line 234
    .line 235
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    .line 236
    .line 237
    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    const/16 p1, 0x200

    .line 242
    .line 243
    invoke-virtual {v5, v2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 244
    .line 245
    .line 246
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 247
    .line 248
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 249
    .line 250
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    .line 251
    .line 252
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 253
    .line 254
    if-eqz p1, :cond_e

    .line 255
    .line 256
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_d
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 260
    .line 261
    if-eqz p2, :cond_e

    .line 262
    .line 263
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 264
    .line 265
    if-eqz p1, :cond_e

    .line 266
    .line 267
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 268
    .line 269
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 270
    .line 271
    if-eqz p1, :cond_e

    .line 272
    .line 273
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 274
    .line 275
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 276
    .line 277
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 278
    .line 279
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenCurtainEnabled:Z

    .line 280
    .line 281
    if-eqz p1, :cond_f

    .line 282
    .line 283
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 284
    .line 285
    const/16 p1, 0x31

    .line 286
    .line 287
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    const p1, 0x8000

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 303
    .line 304
    .line 305
    :cond_f
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    .line 306
    .line 307
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 308
    .line 309
    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 310
    .line 311
    if-eq p1, p2, :cond_10

    .line 312
    .line 313
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    .line 314
    .line 315
    if-nez p2, :cond_10

    .line 316
    .line 317
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 318
    .line 319
    :cond_10
    return v2
.end method

.method public final handleBrightnessModeChange()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne v0, v4, :cond_0

    .line 23
    .line 24
    move v2, v4

    .line 25
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setUseAutoBrightness(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eq v3, v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v2, Lcom/android/server/power/PowerHistorian$MessageRecord;

    .line 50
    .line 51
    const-string v3, "ShortTermModel: reset data, manual"

    .line 52
    .line 53
    invoke-direct {v2, v3}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x3

    .line 57
    invoke-virtual {v0, v3, v2}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    sput-wide v2, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    .line 75
    .line 76
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessModeChangeRunnable:Ljava/lang/Runnable;

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "[api] handleBrightnessModeChange: shouldUseAutoBrightness= "

    .line 90
    .line 91
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final initialize(I)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance v2, Lcom/android/server/display/ColorFade;

    .line 7
    .line 8
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 9
    .line 10
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 15
    .line 16
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 17
    .line 18
    invoke-direct {v2, v4, v3}, Lcom/android/server/display/ColorFade;-><init>(ILandroid/hardware/display/DisplayManagerInternal;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    move-object v5, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/android/server/display/DisplayPowerState;

    .line 31
    .line 32
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 37
    .line 38
    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    move v7, p1

    .line 42
    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;IILjava/util/concurrent/Executor;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Lcom/android/server/display/DisplayPowerState$1;

    .line 51
    .line 52
    new-array v3, v0, [F

    .line 53
    .line 54
    fill-array-data v3, :array_0

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    const-wide/16 v3, 0xa0

    .line 64
    .line 65
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Lcom/android/server/display/DisplayPowerController$2;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 76
    .line 77
    new-array v0, v0, [F

    .line 78
    .line 79
    fill-array-data v0, :array_1

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 87
    .line 88
    const-wide/16 v1, 0x140

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 99
    .line 100
    sget-object v1, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    .line 101
    .line 102
    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    .line 103
    .line 104
    new-instance v3, Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 105
    .line 106
    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;-><init>(Ljava/lang/Object;Lcom/android/server/display/DisplayPowerState$1;Lcom/android/server/display/DisplayPowerState$1;)V

    .line 107
    .line 108
    .line 109
    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    const/4 v2, 0x0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    move v0, v1

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    move v0, v2

    .line 126
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 130
    .line 131
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/DisplayPowerController$4;

    .line 132
    .line 133
    iput-object v3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/DisplayPowerController$4;

    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 136
    .line 137
    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 138
    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 143
    .line 144
    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    .line 147
    .line 148
    .line 149
    sget-object v0, Lcom/android/server/power/HqmDataDispatcher$HqmDataDispatcherHolder;->INSTANCE:Lcom/android/server/power/HqmDataDispatcher;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 154
    .line 155
    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    cmpl-float p1, v0, p1

    .line 164
    .line 165
    if-ltz p1, :cond_5

    .line 166
    .line 167
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 168
    .line 169
    const-string v3, "Start"

    .line 170
    .line 171
    if-eqz p1, :cond_3

    .line 172
    .line 173
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 174
    .line 175
    if-eqz p1, :cond_5

    .line 176
    .line 177
    const-string v4, "AdaptiveBrightnessLongtermModelBuilder"

    .line 178
    .line 179
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object p1, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 187
    .line 188
    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_3
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    sget-boolean v4, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 202
    .line 203
    if-eqz v4, :cond_4

    .line 204
    .line 205
    const-string v4, "BrightnessTracker"

    .line 206
    .line 207
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    iput v3, p1, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 215
    .line 216
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iget-object p1, p1, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 221
    .line 222
    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 227
    .line 228
    .line 229
    :cond_5
    :goto_3
    new-instance p1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;

    .line 230
    .line 231
    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 232
    .line 233
    .line 234
    iput-object p1, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 235
    .line 236
    iget-object v0, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 237
    .line 238
    iget-object v1, v0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 239
    .line 240
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_6

    .line 245
    .line 246
    const-string v1, "BrightnessSetting"

    .line 247
    .line 248
    const-string v3, "Duplicate Listener added"

    .line 249
    .line 250
    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    :cond_6
    iget-object v0, v0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 254
    .line 255
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string/jumbo v0, "screen_auto_brightness_adj"

    .line 265
    .line 266
    .line 267
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 272
    .line 273
    const/4 v3, -0x1

    .line 274
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 293
    .line 294
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_7

    .line 301
    .line 302
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    const-string/jumbo v0, "screen_brightness_for_als"

    .line 309
    .line 310
    .line 311
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const/4 v4, -0x2

    .line 316
    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 317
    .line 318
    .line 319
    :cond_7
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 320
    .line 321
    if-eqz p1, :cond_8

    .line 322
    .line 323
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 324
    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    const-string/jumbo v0, "game_autobrightness_lock"

    .line 330
    .line 331
    .line 332
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 337
    .line 338
    .line 339
    :cond_8
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 340
    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    const-string/jumbo v0, "auto_dim_screen"

    .line 346
    .line 347
    .line 348
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final loadBrightnessRampRates()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 4
    .line 5
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 6
    .line 7
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 8
    .line 9
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    .line 10
    .line 11
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 12
    .line 13
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    .line 14
    .line 15
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 16
    .line 17
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    .line 18
    .line 19
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    .line 22
    .line 23
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 24
    .line 25
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    .line 26
    .line 27
    iget-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 28
    .line 29
    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 30
    .line 31
    iget-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 32
    .line 33
    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    .line 34
    .line 35
    iget-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 36
    .line 37
    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    .line 38
    .line 39
    iget-wide v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    .line 42
    .line 43
    return-void
.end method

.method public final loadNitsRange(Landroid/content/res/Resources;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNits:[F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 13
    .line 14
    :goto_0
    if-eqz v2, :cond_2

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p1, v1, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNits:[F

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object p1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 22
    .line 23
    :goto_1
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "Screen brightness nits configuration is unavailable; falling back"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const v0, 0x1070150

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    .line 45
    .line 46
    :goto_2
    return-void
.end method

.method public final logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;F)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 6
    .line 7
    iget v2, v2, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 8
    .line 9
    iget v3, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 10
    .line 11
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 12
    .line 13
    cmpl-float v4, p2, v4

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    move/from16 v21, v6

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v21, 0x0

    .line 22
    .line 23
    :goto_0
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 24
    .line 25
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 26
    .line 27
    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 32
    .line 33
    and-int/lit8 v8, v4, 0x20

    .line 34
    .line 35
    const/high16 v10, -0x40800000    # -1.0f

    .line 36
    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    iget v8, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    .line 40
    .line 41
    move v13, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v13, v10

    .line 44
    :goto_1
    and-int/2addr v4, v6

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    .line 48
    .line 49
    :goto_2
    move v14, v4

    .line 50
    goto :goto_3

    .line 51
    :cond_2
    const/4 v4, -0x1

    .line 52
    goto :goto_2

    .line 53
    :goto_3
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 54
    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    move v15, v10

    .line 58
    goto :goto_4

    .line 59
    :cond_3
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    .line 60
    .line 61
    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    move v15, v4

    .line 66
    :goto_4
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    .line 67
    .line 68
    const/high16 v8, 0x3f800000    # 1.0f

    .line 69
    .line 70
    cmpl-float v8, v4, v8

    .line 71
    .line 72
    if-nez v8, :cond_4

    .line 73
    .line 74
    move/from16 v16, v10

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_4
    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    move/from16 v16, v4

    .line 82
    .line 83
    :goto_5
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 84
    .line 85
    if-eqz v4, :cond_11

    .line 86
    .line 87
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    .line 88
    .line 89
    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    iget v10, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    .line 94
    .line 95
    iget-object v11, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    .line 96
    .line 97
    iget-boolean v12, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    .line 98
    .line 99
    iget-boolean v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    .line 100
    .line 101
    iget-object v7, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 102
    .line 103
    iget v7, v7, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 104
    .line 105
    packed-switch v7, :pswitch_data_0

    .line 106
    .line 107
    .line 108
    const/16 v19, 0x0

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :pswitch_0
    const/16 v7, 0xa

    .line 112
    .line 113
    :goto_6
    move/from16 v19, v7

    .line 114
    .line 115
    goto :goto_7

    .line 116
    :pswitch_1
    const/16 v7, 0x9

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :pswitch_2
    const/16 v7, 0x8

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :pswitch_3
    const/4 v7, 0x7

    .line 123
    goto :goto_6

    .line 124
    :pswitch_4
    const/4 v7, 0x6

    .line 125
    goto :goto_6

    .line 126
    :pswitch_5
    const/4 v7, 0x5

    .line 127
    goto :goto_6

    .line 128
    :pswitch_6
    const/4 v7, 0x4

    .line 129
    goto :goto_6

    .line 130
    :pswitch_7
    const/4 v7, 0x3

    .line 131
    goto :goto_6

    .line 132
    :pswitch_8
    const/16 v19, 0x2

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :pswitch_9
    move/from16 v19, v6

    .line 136
    .line 137
    :goto_7
    const/4 v7, 0x0

    .line 138
    :goto_8
    sget-object v5, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    .line 139
    .line 140
    array-length v6, v5

    .line 141
    if-ge v7, v6, :cond_6

    .line 142
    .line 143
    aget v5, v5, v7

    .line 144
    .line 145
    cmpg-float v5, v9, v5

    .line 146
    .line 147
    if-gez v5, :cond_5

    .line 148
    .line 149
    sget-object v5, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    .line 150
    .line 151
    aget v5, v5, v7

    .line 152
    .line 153
    :goto_9
    move/from16 v20, v5

    .line 154
    .line 155
    goto :goto_a

    .line 156
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 157
    .line 158
    const/4 v6, 0x1

    .line 159
    goto :goto_8

    .line 160
    :cond_6
    const/16 v5, 0x26

    .line 161
    .line 162
    goto :goto_9

    .line 163
    :goto_a
    iget v5, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    .line 164
    .line 165
    const/4 v6, 0x1

    .line 166
    if-ne v5, v6, :cond_7

    .line 167
    .line 168
    const/4 v6, 0x2

    .line 169
    const/16 v22, 0x1

    .line 170
    .line 171
    goto :goto_b

    .line 172
    :cond_7
    const/4 v6, 0x2

    .line 173
    const/16 v22, 0x0

    .line 174
    .line 175
    :goto_b
    if-ne v5, v6, :cond_8

    .line 176
    .line 177
    const/16 v23, 0x1

    .line 178
    .line 179
    goto :goto_c

    .line 180
    :cond_8
    const/16 v23, 0x0

    .line 181
    .line 182
    :goto_c
    and-int/lit8 v5, v2, 0x2

    .line 183
    .line 184
    if-lez v5, :cond_9

    .line 185
    .line 186
    const/16 v24, 0x1

    .line 187
    .line 188
    goto :goto_d

    .line 189
    :cond_9
    const/16 v24, 0x0

    .line 190
    .line 191
    :goto_d
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->getBrightnessMaxReason()I

    .line 194
    .line 195
    .line 196
    move-result v25

    .line 197
    const/4 v0, 0x1

    .line 198
    and-int/2addr v2, v0

    .line 199
    if-lez v2, :cond_a

    .line 200
    .line 201
    move/from16 v26, v0

    .line 202
    .line 203
    goto :goto_e

    .line 204
    :cond_a
    const/16 v26, 0x0

    .line 205
    .line 206
    :goto_e
    iget v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 207
    .line 208
    and-int/2addr v2, v0

    .line 209
    if-eqz v2, :cond_b

    .line 210
    .line 211
    const/16 v27, 0x1

    .line 212
    .line 213
    goto :goto_f

    .line 214
    :cond_b
    const/16 v27, 0x0

    .line 215
    .line 216
    :goto_f
    and-int/lit8 v0, v3, 0x2

    .line 217
    .line 218
    if-lez v0, :cond_c

    .line 219
    .line 220
    const/16 v28, 0x1

    .line 221
    .line 222
    goto :goto_10

    .line 223
    :cond_c
    const/16 v28, 0x0

    .line 224
    .line 225
    :goto_10
    and-int/lit8 v0, v3, 0x4

    .line 226
    .line 227
    if-lez v0, :cond_d

    .line 228
    .line 229
    const/16 v29, 0x1

    .line 230
    .line 231
    goto :goto_11

    .line 232
    :cond_d
    const/16 v29, 0x0

    .line 233
    .line 234
    :goto_11
    and-int/lit8 v0, v3, 0x8

    .line 235
    .line 236
    if-lez v0, :cond_e

    .line 237
    .line 238
    const/16 v30, 0x1

    .line 239
    .line 240
    goto :goto_12

    .line 241
    :cond_e
    const/16 v30, 0x0

    .line 242
    .line 243
    :goto_12
    iget v0, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    .line 244
    .line 245
    const/4 v1, 0x1

    .line 246
    if-ne v0, v1, :cond_f

    .line 247
    .line 248
    move/from16 v31, v1

    .line 249
    .line 250
    goto :goto_13

    .line 251
    :cond_f
    const/16 v31, 0x0

    .line 252
    .line 253
    :goto_13
    and-int/lit8 v0, v3, 0x20

    .line 254
    .line 255
    if-lez v0, :cond_10

    .line 256
    .line 257
    move/from16 v32, v1

    .line 258
    .line 259
    goto :goto_14

    .line 260
    :cond_10
    const/16 v32, 0x0

    .line 261
    .line 262
    :goto_14
    const/16 v7, 0x1ee

    .line 263
    .line 264
    const/16 v18, 0x1

    .line 265
    .line 266
    move/from16 v17, v4

    .line 267
    .line 268
    invoke-static/range {v7 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->write(IFFFLjava/lang/String;ZFIFFZIIIZZZZIZZZZZZZ)V

    .line 269
    .line 270
    .line 271
    :cond_11
    return-void

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final noteScreenBrightness(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 16
    .line 17
    invoke-interface {v0, v2, v1, v3}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenBrightness(III)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntSetting(Landroid/content/Context;F)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 43
    .line 44
    invoke-interface {v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 60
    .line 61
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsFirstDisplay:Z

    .line 62
    .line 63
    xor-int/lit8 v1, p0, 0x1

    .line 64
    .line 65
    :cond_3
    invoke-virtual {v0, p1, v1}, Lcom/android/server/power/HqmDataDispatcher;->noteScreenBrightness(FI)V

    .line 66
    .line 67
    .line 68
    :cond_4
    return-void
.end method

.method public final noteScreenState(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v2, "noteDualScreenState: State="

    .line 6
    .line 7
    .line 8
    const/16 v3, 0x24d

    .line 9
    .line 10
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 11
    .line 12
    move/from16 v5, p2

    .line 13
    .line 14
    invoke-static {v3, v1, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 18
    .line 19
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    :try_start_0
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 25
    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 35
    .line 36
    if-eq v3, v5, :cond_3

    .line 37
    .line 38
    :cond_0
    if-ne v4, v5, :cond_1

    .line 39
    .line 40
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static/range {p1 .. p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, ", dualScreenPolicy="

    .line 60
    .line 61
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 65
    .line 66
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 77
    .line 78
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 79
    .line 80
    invoke-interface {v2, v1, v4, v3}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenState(III)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v3, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    :catch_0
    :cond_3
    :goto_0
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 88
    .line 89
    if-eqz v2, :cond_b

    .line 90
    .line 91
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    .line 92
    .line 93
    if-eqz v2, :cond_b

    .line 94
    .line 95
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 100
    .line 101
    iget-boolean v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mIsFirstDisplay:Z

    .line 102
    .line 103
    xor-int/lit8 v4, v0, 0x1

    .line 104
    .line 105
    :cond_4
    if-nez v4, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 109
    .line 110
    if-eqz v0, :cond_b

    .line 111
    .line 112
    if-ne v4, v5, :cond_b

    .line 113
    .line 114
    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget v6, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    .line 119
    .line 120
    const/4 v8, 0x2

    .line 121
    if-ne v6, v8, :cond_6

    .line 122
    .line 123
    move v6, v5

    .line 124
    goto :goto_2

    .line 125
    :cond_6
    const/4 v6, 0x0

    .line 126
    :goto_2
    if-ne v1, v8, :cond_7

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    const/4 v5, 0x0

    .line 130
    :goto_3
    iget-object v9, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 131
    .line 132
    if-nez v6, :cond_8

    .line 133
    .line 134
    if-eqz v5, :cond_8

    .line 135
    .line 136
    iget-wide v5, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 137
    .line 138
    const-wide/16 v10, 0x1

    .line 139
    .line 140
    add-long/2addr v5, v10

    .line 141
    iput-wide v5, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v5

    .line 150
    iput-wide v5, v9, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_8
    if-eqz v6, :cond_a

    .line 154
    .line 155
    if-nez v5, :cond_a

    .line 156
    .line 157
    iget-wide v5, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    .line 158
    .line 159
    long-to-float v5, v5

    .line 160
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v10

    .line 167
    iget-wide v12, v9, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    .line 168
    .line 169
    sub-long/2addr v10, v12

    .line 170
    long-to-double v9, v10

    .line 171
    const-wide v11, 0x408f400000000000L    # 1000.0

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    div-double/2addr v9, v11

    .line 177
    double-to-float v6, v9

    .line 178
    add-float/2addr v6, v5

    .line 179
    float-to-long v5, v6

    .line 180
    iput-wide v5, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    .line 181
    .line 182
    iget v5, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 183
    .line 184
    const/4 v6, -0x1

    .line 185
    if-eq v5, v6, :cond_9

    .line 186
    .line 187
    iget-object v9, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    .line 188
    .line 189
    aget-wide v13, v9, v5

    .line 190
    .line 191
    long-to-float v10, v13

    .line 192
    iget-object v13, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 193
    .line 194
    aget-object v13, v13, v5

    .line 195
    .line 196
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 200
    .line 201
    .line 202
    move-result-wide v14

    .line 203
    iget-wide v7, v13, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    .line 204
    .line 205
    sub-long/2addr v14, v7

    .line 206
    long-to-double v7, v14

    .line 207
    div-double/2addr v7, v11

    .line 208
    double-to-float v7, v7

    .line 209
    add-float/2addr v7, v10

    .line 210
    float-to-long v7, v7

    .line 211
    aput-wide v7, v9, v5

    .line 212
    .line 213
    iput v6, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 214
    .line 215
    :cond_9
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    .line 216
    .line 217
    if-eqz v5, :cond_a

    .line 218
    .line 219
    iget-boolean v5, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 220
    .line 221
    if-eqz v5, :cond_a

    .line 222
    .line 223
    iget-wide v5, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 224
    .line 225
    long-to-float v5, v5

    .line 226
    iget-object v6, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    .line 227
    .line 228
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 232
    .line 233
    .line 234
    move-result-wide v7

    .line 235
    iget-wide v9, v6, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    .line 236
    .line 237
    sub-long/2addr v7, v9

    .line 238
    long-to-double v6, v7

    .line 239
    div-double/2addr v6, v11

    .line 240
    double-to-float v6, v6

    .line 241
    add-float/2addr v6, v5

    .line 242
    float-to-long v5, v6

    .line 243
    iput-wide v5, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 244
    .line 245
    const/4 v5, 0x0

    .line 246
    iput-boolean v5, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 247
    .line 248
    :cond_a
    :goto_4
    iput v1, v0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    .line 249
    .line 250
    if-eqz v3, :cond_b

    .line 251
    .line 252
    const/4 v0, 0x2

    .line 253
    if-ne v1, v0, :cond_b

    .line 254
    .line 255
    iget v0, v2, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    .line 256
    .line 257
    invoke-virtual {v2, v0, v4}, Lcom/android/server/power/HqmDataDispatcher;->noteScreenBrightness(FI)V

    .line 258
    .line 259
    .line 260
    :cond_b
    return-void
.end method

.method public final notifyBrightnessTrackerChanged(FZZZZZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 5
    .line 6
    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    if-nez p5, :cond_10

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 13
    .line 14
    if-eqz v2, :cond_10

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_10

    .line 21
    .line 22
    if-eqz p4, :cond_10

    .line 23
    .line 24
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 25
    .line 26
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 27
    .line 28
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    if-nez v12, :cond_1

    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_0
    if-eqz v3, :cond_10

    .line 37
    .line 38
    :cond_1
    if-eqz p6, :cond_10

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    cmpg-float v5, v4, v2

    .line 42
    .line 43
    if-gez v5, :cond_2

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_2
    const/4 v13, 0x0

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 51
    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    iget-boolean v5, v5, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 55
    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    :cond_3
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 59
    .line 60
    iget-boolean v6, v5, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 61
    .line 62
    if-eqz v6, :cond_5

    .line 63
    .line 64
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    .line 65
    .line 66
    if-eqz v6, :cond_5

    .line 67
    .line 68
    iget v5, v5, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 69
    .line 70
    sget v6, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    .line 71
    .line 72
    int-to-float v6, v6

    .line 73
    cmpl-float v5, v5, v6

    .line 74
    .line 75
    if-ltz v5, :cond_5

    .line 76
    .line 77
    :cond_4
    move v14, v13

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    move/from16 v14, p2

    .line 80
    .line 81
    :goto_0
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    .line 82
    .line 83
    invoke-static {v5, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_10

    .line 88
    .line 89
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 90
    .line 91
    iget v6, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 92
    .line 93
    cmpl-float v2, v6, v2

    .line 94
    .line 95
    const/high16 v7, 0x3f800000    # 1.0f

    .line 96
    .line 97
    if-ltz v2, :cond_6

    .line 98
    .line 99
    cmpl-float v2, v6, v7

    .line 100
    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :cond_6
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    .line 106
    .line 107
    iget-boolean v1, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 108
    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    iget v1, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 112
    .line 113
    move v5, v1

    .line 114
    goto :goto_1

    .line 115
    :cond_7
    move v5, v7

    .line 116
    :goto_1
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    const-string/jumbo v6, "notifyBrightnessChanged(brightness=%f, userInitiated=%b)"

    .line 120
    .line 121
    .line 122
    if-eqz v1, :cond_9

    .line 123
    .line 124
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 125
    .line 126
    iget-object v3, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_8

    .line 133
    .line 134
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    move v7, v2

    .line 143
    goto :goto_2

    .line 144
    :cond_8
    move v7, v13

    .line 145
    :goto_2
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    .line 175
    .line 176
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;

    .line 180
    .line 181
    iget-object v1, v12, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v8

    .line 190
    move-object v3, v0

    .line 191
    move/from16 v6, p3

    .line 192
    .line 193
    invoke-direct/range {v3 .. v11}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;-><init>(FFZZJLjava/lang/String;Landroid/util/Spline;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v12, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 197
    .line 198
    invoke-virtual {v1, v2, v14, v13, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_6

    .line 206
    .line 207
    :cond_9
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 208
    .line 209
    iget-object v7, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 210
    .line 211
    invoke-virtual {v7}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-nez v7, :cond_a

    .line 216
    .line 217
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_a

    .line 224
    .line 225
    move v7, v2

    .line 226
    goto :goto_3

    .line 227
    :cond_a
    move v7, v13

    .line 228
    :goto_3
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 229
    .line 230
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 231
    .line 232
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 233
    .line 234
    iget v8, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 235
    .line 236
    new-array v11, v8, [F

    .line 237
    .line 238
    if-nez v8, :cond_b

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_b
    iget v9, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 242
    .line 243
    iget v12, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 244
    .line 245
    if-ge v9, v12, :cond_c

    .line 246
    .line 247
    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 248
    .line 249
    invoke-static {v1, v9, v11, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_c
    iget-object v8, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 254
    .line 255
    iget v12, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 256
    .line 257
    sub-int/2addr v12, v9

    .line 258
    invoke-static {v8, v9, v11, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    .line 260
    .line 261
    iget-object v8, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 262
    .line 263
    iget v9, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 264
    .line 265
    iget v12, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 266
    .line 267
    sub-int/2addr v9, v12

    .line 268
    iget v1, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 269
    .line 270
    invoke-static {v8, v13, v11, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    .line 272
    .line 273
    :goto_4
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 274
    .line 275
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 276
    .line 277
    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 278
    .line 279
    new-array v12, v1, [J

    .line 280
    .line 281
    if-nez v1, :cond_d

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_d
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 285
    .line 286
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 287
    .line 288
    if-ge v8, v9, :cond_e

    .line 289
    .line 290
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 291
    .line 292
    invoke-static {v0, v8, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_e
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 297
    .line 298
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 299
    .line 300
    sub-int/2addr v9, v8

    .line 301
    invoke-static {v1, v8, v12, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 305
    .line 306
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 307
    .line 308
    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 309
    .line 310
    sub-int/2addr v8, v9

    .line 311
    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 312
    .line 313
    invoke-static {v1, v13, v12, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    .line 315
    .line 316
    :goto_5
    sget-boolean v0, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 317
    .line 318
    if-eqz v0, :cond_f

    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    const-string v1, "BrightnessTracker"

    .line 340
    .line 341
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    :cond_f
    iget-object v0, v3, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 345
    .line 346
    new-instance v1, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 347
    .line 348
    iget-object v3, v3, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 349
    .line 350
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 354
    .line 355
    .line 356
    move-result-wide v8

    .line 357
    move-object v3, v1

    .line 358
    move/from16 v6, p3

    .line 359
    .line 360
    invoke-direct/range {v3 .. v12}, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;-><init>(FFZZJLjava/lang/String;[F[J)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v2, v14, v13, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 368
    .line 369
    .line 370
    :cond_10
    :goto_6
    return-void
.end method

.method public final onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;I)V
    .locals 17

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 6
    .line 7
    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Display Device is null in DisplayPowerController2 for display: "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v0, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget v1, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 30
    .line 31
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v8, v4, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v11, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 52
    .line 53
    iget v12, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 54
    .line 55
    iget-boolean v2, v0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 56
    .line 57
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    if-ne v1, v5, :cond_1

    .line 71
    .line 72
    move v13, v5

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 75
    move v13, v1

    .line 76
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v7, v1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v14, v0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v10, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    .line 85
    .line 86
    iget-object v5, v4, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 87
    .line 88
    move-object v0, v10

    .line 89
    move-object/from16 v1, p0

    .line 90
    .line 91
    move-object/from16 v16, v10

    .line 92
    .line 93
    move-object/from16 v10, p1

    .line 94
    .line 95
    invoke-direct/range {v0 .. v14}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayPowerController;ZZLcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    iget-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 108
    .line 109
    move-object/from16 v3, v16

    .line 110
    .line 111
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final postBrightnessChangeRunnable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final putAutoBrightnessTransitionTime(FFF)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 5
    .line 6
    if-lez v1, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 11
    .line 12
    iget v1, v1, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    xor-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    const/high16 v3, 0x3f800000    # 1.0f

    .line 28
    .line 29
    cmpl-float v6, v1, v3

    .line 30
    .line 31
    if-lez v6, :cond_0

    .line 32
    .line 33
    cmpg-float v6, p3, v3

    .line 34
    .line 35
    if-gtz v6, :cond_0

    .line 36
    .line 37
    sub-float v0, v1, v3

    .line 38
    .line 39
    sub-float p3, v3, p3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    cmpg-float v3, v3, p3

    .line 43
    .line 44
    if-gez v3, :cond_1

    .line 45
    .line 46
    cmpg-float v3, p3, v1

    .line 47
    .line 48
    if-gez v3, :cond_1

    .line 49
    .line 50
    sub-float/2addr v1, p3

    .line 51
    move p3, v0

    .line 52
    move v0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string/jumbo v6, "getTransitionTimeWithHbm: rateAtHbm: "

    .line 57
    .line 58
    .line 59
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v6, " currentBrightness: "

    .line 66
    .line 67
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v6, " targetBrightness: "

    .line 74
    .line 75
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sub-float/2addr v1, p3

    .line 89
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    :goto_0
    float-to-double v0, v0

    .line 94
    float-to-double v6, p2

    .line 95
    div-double/2addr v0, v6

    .line 96
    mul-double/2addr v0, v4

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    long-to-int p2, v0

    .line 102
    float-to-double v0, p3

    .line 103
    float-to-double v6, p1

    .line 104
    div-double/2addr v0, v6

    .line 105
    mul-double/2addr v0, v4

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    long-to-int p1, v0

    .line 111
    add-int/2addr p2, p1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    sub-float/2addr v1, p3

    .line 114
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    float-to-double p2, p2

    .line 119
    float-to-double v0, p1

    .line 120
    div-double/2addr p2, v0

    .line 121
    mul-double/2addr p2, v4

    .line 122
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    .line 123
    .line 124
    .line 125
    move-result-wide p1

    .line 126
    long-to-int p2, p1

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    const/4 p2, 0x0

    .line 129
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string/jumbo p3, "putAutoBrightnessTransitionTime: transitionTime="

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    const-string/jumbo p1, "auto_brightness_transition_time"

    .line 154
    .line 155
    .line 156
    const/4 p3, -0x2

    .line 157
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final reportStats(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    iget v1, v1, Landroid/util/MutableFloat;->value:F

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    cmpl-float v0, p1, v1

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-lez v0, :cond_2

    .line 29
    .line 30
    move v0, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v2

    .line 33
    :goto_0
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 34
    .line 35
    cmpl-float v1, v4, v1

    .line 36
    .line 37
    if-lez v1, :cond_3

    .line 38
    .line 39
    move v2, v3

    .line 40
    :cond_3
    if-nez v0, :cond_4

    .line 41
    .line 42
    if-eqz v2, :cond_6

    .line 43
    .line 44
    :cond_4
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 47
    .line 48
    const/16 v3, 0xb

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    .line 52
    .line 53
    if-eq v0, v2, :cond_5

    .line 54
    .line 55
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 58
    .line 59
    monitor-enter v1

    .line 60
    const/16 p0, 0x1a1

    .line 61
    .line 62
    :try_start_1
    invoke-static {p0, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    .line 63
    .line 64
    .line 65
    monitor-exit v1

    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    throw p0

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput v3, v0, Landroid/os/Message;->what:I

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 83
    .line 84
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    .line 85
    .line 86
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    const-wide/16 v3, 0x1f4

    .line 100
    .line 101
    add-long/2addr v1, v3

    .line 102
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_1
    return-void

    .line 106
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    throw p0
.end method

.method public final requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "requestPowerState: "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", waitForNegativeProximity="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return v2

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_4

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 46
    .line 47
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const/4 v4, 0x0

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    :try_start_1
    iget-boolean p2, v1, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 54
    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 58
    .line 59
    monitor-exit v3

    .line 60
    move p2, v2

    .line 61
    goto :goto_0

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    move p2, v4

    .line 66
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    new-instance p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 71
    .line 72
    invoke-direct {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 76
    .line 77
    :goto_1
    move p2, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    :goto_2
    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 96
    .line 97
    if-nez v1, :cond_5

    .line 98
    .line 99
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 100
    .line 101
    move p2, v2

    .line 102
    :cond_5
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 107
    .line 108
    if-nez p1, :cond_6

    .line 109
    .line 110
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 111
    .line 112
    move p2, v2

    .line 113
    :cond_6
    if-eqz p2, :cond_7

    .line 114
    .line 115
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 116
    .line 117
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 118
    .line 119
    if-nez p1, :cond_7

    .line 120
    .line 121
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 124
    .line 125
    .line 126
    :cond_7
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 127
    .line 128
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    return p0

    .line 130
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    :try_start_4
    throw p0

    .line 132
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    throw p0
.end method

.method public final restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 9
    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_0
    :goto_0
    return-void
.end method

.method public final saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z
    .locals 11

    .line 1
    const-string/jumbo v0, "saveBrightnessInfo: brt:"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget v3, p3, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    :goto_0
    if-eqz p3, :cond_1

    .line 16
    .line 17
    iget v2, p3, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 18
    .line 19
    :cond_1
    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 20
    .line 21
    iget-object p3, p3, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 22
    .line 23
    iget p3, p3, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 24
    .line 25
    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 46
    .line 47
    invoke-static {v3, p1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 52
    .line 53
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 54
    .line 55
    invoke-static {v4, p2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    or-int/2addr v3, v4

    .line 60
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 61
    .line 62
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 63
    .line 64
    invoke-static {v4, p3}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    or-int/2addr v3, v4

    .line 69
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 70
    .line 71
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 72
    .line 73
    invoke-static {v4, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    or-int/2addr v3, v4

    .line 78
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 79
    .line 80
    iget-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    .line 81
    .line 82
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 83
    .line 84
    iget-object v6, v6, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 85
    .line 86
    iget v7, v6, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 87
    .line 88
    iget v8, v5, Landroid/util/MutableInt;->value:I

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v10, 0x1

    .line 92
    if-eq v8, v7, :cond_2

    .line 93
    .line 94
    iput v7, v5, Landroid/util/MutableInt;->value:I

    .line 95
    .line 96
    move v5, v10

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    move v5, v9

    .line 99
    :goto_1
    or-int/2addr v3, v5

    .line 100
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 101
    .line 102
    invoke-virtual {v6}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 107
    .line 108
    if-eqz v5, :cond_3

    .line 109
    .line 110
    iget-object v5, v6, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 111
    .line 112
    iget v5, v5, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move v5, v7

    .line 116
    :goto_2
    invoke-static {v4, v5}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    or-int/2addr v3, v4

    .line 121
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 122
    .line 123
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 124
    .line 125
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->getBrightnessMaxReason()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    iget v6, v4, Landroid/util/MutableInt;->value:I

    .line 132
    .line 133
    if-eq v6, v5, :cond_4

    .line 134
    .line 135
    iput v5, v4, Landroid/util/MutableInt;->value:I

    .line 136
    .line 137
    move v4, v10

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    move v4, v9

    .line 140
    :goto_3
    or-int/2addr v3, v4

    .line 141
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    .line 142
    .line 143
    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    .line 144
    .line 145
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 146
    .line 147
    if-eqz v5, :cond_5

    .line 148
    .line 149
    invoke-virtual {v5}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_5

    .line 154
    .line 155
    move v5, v10

    .line 156
    goto :goto_4

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    goto/16 :goto_6

    .line 159
    .line 160
    :cond_5
    move v5, v9

    .line 161
    :goto_4
    iget-boolean v6, v4, Landroid/util/MutableBoolean;->value:Z

    .line 162
    .line 163
    if-eq v6, v5, :cond_6

    .line 164
    .line 165
    iput-boolean v5, v4, Landroid/util/MutableBoolean;->value:Z

    .line 166
    .line 167
    move v4, v10

    .line 168
    goto :goto_5

    .line 169
    :cond_6
    move v4, v9

    .line 170
    :goto_5
    or-int/2addr v3, v4

    .line 171
    if-eqz v3, :cond_9

    .line 172
    .line 173
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 174
    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p1, " adjBrt:"

    .line 184
    .line 185
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p1, " min:"

    .line 192
    .line 193
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p1, " max:"

    .line 200
    .line 201
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string p1, " hbm:"

    .line 208
    .line 209
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 213
    .line 214
    iget-object p1, p1, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 215
    .line 216
    iget p1, p1, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 217
    .line 218
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p1, " tp:"

    .line 222
    .line 223
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 227
    .line 228
    iget-object p1, p1, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    if-eqz p2, :cond_7

    .line 235
    .line 236
    iget-object p1, p1, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 237
    .line 238
    iget v7, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 239
    .line 240
    :cond_7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p1, " throttler:"

    .line 244
    .line 245
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 249
    .line 250
    iget p1, p1, Lcom/android/server/display/BrightnessThrottler;->mBrightnessMaxReason:I

    .line 251
    .line 252
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string p1, " isAnimating:"

    .line 256
    .line 257
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 261
    .line 262
    if-eqz p0, :cond_8

    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    if-eqz p0, :cond_8

    .line 269
    .line 270
    move v9, v10

    .line 271
    :cond_8
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    invoke-static {v4, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    :cond_9
    monitor-exit v1

    .line 282
    return v3

    .line 283
    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    throw p0
.end method

.method public final sendOnStateChangedWithWakelock()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final sendUpdatePowerState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final sendUpdatePowerStateLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final setAnimatorRampSpeeds(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements1:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    .line 23
    .line 24
    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 36
    .line 37
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    .line 38
    .line 39
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    .line 40
    .line 41
    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public final setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setBrightnessConfiguration: "

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
    const-string v1, " shouldResetShortTermModel: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " ("

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ")"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 53
    .line 54
    const/4 v1, 0x4

    .line 55
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final setBrightnessToFollow(FFFZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/android/server/display/BrightnessRangeController;->onAmbientLuxChange(F)V

    .line 4
    .line 5
    .line 6
    const/high16 p3, -0x40800000    # -1.0f

    .line 7
    .line 8
    cmpl-float p3, p2, p3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p4, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(ZF)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromNits(F)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-static {p2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p4, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(ZF)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0, p4, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(ZF)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setFreezeBrightnessMode(Z)I
    .locals 4

    .line 1
    const-string/jumbo v0, "setFreezeBrightnessMode: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    .line 8
    .line 9
    if-eq v2, p1, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 35
    .line 36
    iget p1, p1, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 37
    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    .line 40
    cmpg-float p1, p1, v0

    .line 41
    .line 42
    if-gtz p1, :cond_0

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "NON_HBM_FREEZE_MODE"

    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 p1, 0x2

    .line 58
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "HBM_FREEZE_MODE"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    .line 72
    .line 73
    monitor-exit v1

    .line 74
    return p0

    .line 75
    :cond_2
    monitor-exit v1

    .line 76
    const/4 p0, 0x0

    .line 77
    return p0

    .line 78
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final setRampSpeedToFollower(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeed:F

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeedAtHbm:F

    .line 4
    .line 5
    return-void
.end method

.method public final setReportedScreenState(I)V
    .locals 3

    .line 1
    const-wide/32 v0, 0x20000

    .line 2
    .line 3
    .line 4
    const-string v2, "ReportedScreenStateToPolicy"

    .line 5
    .line 6
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final setScreenState(IIZ)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-ne v2, v4, :cond_0

    .line 8
    .line 9
    move v5, v4

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v5, v3

    .line 12
    :goto_0
    const/4 v0, 0x2

    .line 13
    if-ne v2, v0, :cond_1

    .line 14
    .line 15
    move v6, v4

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v6, v3

    .line 18
    :goto_1
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 19
    .line 20
    iget v7, v7, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 21
    .line 22
    if-eq v7, v2, :cond_2

    .line 23
    .line 24
    move v7, v4

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v7, v3

    .line 27
    :goto_2
    const-wide/32 v8, 0x20000

    .line 28
    .line 29
    .line 30
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v6, :cond_5

    .line 33
    .line 34
    if-eqz v7, :cond_5

    .line 35
    .line 36
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 37
    .line 38
    if-nez v11, :cond_5

    .line 39
    .line 40
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 41
    .line 42
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 43
    .line 44
    if-nez v11, :cond_6

    .line 45
    .line 46
    if-nez v6, :cond_3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 50
    .line 51
    const-string v11, "Screen on blocked by displayoffload"

    .line 52
    .line 53
    invoke-static {v8, v9, v11, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v12

    .line 60
    iput-wide v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    .line 61
    .line 62
    new-instance v12, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 63
    .line 64
    const/4 v13, 0x1

    .line 65
    invoke-direct {v12, v1, v6, v13}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    iput-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 69
    .line 70
    invoke-interface {v6, v12}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->blockScreenOn(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_4

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 78
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v12

    .line 83
    iget-wide v14, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    .line 84
    .line 85
    sub-long/2addr v12, v14

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v14, "Tried blocking screen on for offloading but failed. So, end trace after "

    .line 89
    .line 90
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v12, " ms."

    .line 97
    .line 98
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v10, v6}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    invoke-static {v8, v9, v11, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    const-string v6, "Blocking screen on for offloading."

    .line 113
    .line 114
    invoke-static {v10, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    if-nez v6, :cond_6

    .line 119
    .line 120
    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 121
    .line 122
    if-eqz v6, :cond_6

    .line 123
    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    .line 125
    .line 126
    .line 127
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    .line 128
    .line 129
    :cond_6
    :goto_3
    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 130
    .line 131
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 132
    .line 133
    const/4 v12, 0x3

    .line 134
    const/4 v13, -0x1

    .line 135
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 136
    .line 137
    if-nez v7, :cond_7

    .line 138
    .line 139
    iget v15, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 140
    .line 141
    if-ne v15, v13, :cond_14

    .line 142
    .line 143
    :cond_7
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 144
    .line 145
    iget v15, v15, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 146
    .line 147
    if-eq v15, v12, :cond_9

    .line 148
    .line 149
    const/4 v8, 0x4

    .line 150
    if-ne v15, v8, :cond_8

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_8
    move v8, v3

    .line 154
    goto :goto_5

    .line 155
    :cond_9
    :goto_4
    move v8, v4

    .line 156
    :goto_5
    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    .line 157
    .line 158
    if-eqz v9, :cond_c

    .line 159
    .line 160
    if-eqz v8, :cond_b

    .line 161
    .line 162
    if-ne v2, v0, :cond_b

    .line 163
    .line 164
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 165
    .line 166
    if-nez v8, :cond_b

    .line 167
    .line 168
    const-string/jumbo v0, "setScreenState(): mSeamlessAodReady : false AOD"

    .line 169
    .line 170
    .line 171
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 175
    .line 176
    if-nez v0, :cond_a

    .line 177
    .line 178
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    .line 179
    .line 180
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Lcom/samsung/android/aod/AODManagerInternal;->screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V

    .line 183
    .line 184
    .line 185
    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 186
    .line 187
    :cond_a
    return v3

    .line 188
    :cond_b
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 189
    .line 190
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 191
    .line 192
    :cond_c
    if-eqz v5, :cond_10

    .line 193
    .line 194
    iget-boolean v8, v11, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 195
    .line 196
    if-nez v8, :cond_10

    .line 197
    .line 198
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 199
    .line 200
    if-eq v8, v0, :cond_e

    .line 201
    .line 202
    if-ne v8, v13, :cond_d

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_d
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 206
    .line 207
    if-eqz v0, :cond_10

    .line 208
    .line 209
    return v3

    .line 210
    :cond_e
    :goto_6
    invoke-virtual {v1, v12}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 214
    .line 215
    if-nez v0, :cond_f

    .line 216
    .line 217
    const-string v0, "Screen off blocked"

    .line 218
    .line 219
    const-wide/32 v8, 0x20000

    .line 220
    .line 221
    .line 222
    invoke-static {v8, v9, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lcom/android/server/display/DisplayPowerController$4;

    .line 226
    .line 227
    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 228
    .line 229
    .line 230
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 231
    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 233
    .line 234
    .line 235
    move-result-wide v8

    .line 236
    iput-wide v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 237
    .line 238
    const-string v0, "Blocking screen off"

    .line 239
    .line 240
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :cond_f
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurningOff()"

    .line 244
    .line 245
    .line 246
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 250
    .line 251
    move-object v8, v14

    .line 252
    check-cast v8, Lcom/android/server/policy/PhoneWindowManager;

    .line 253
    .line 254
    invoke-virtual {v8, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 258
    .line 259
    .line 260
    :cond_10
    if-nez p3, :cond_14

    .line 261
    .line 262
    if-eqz v7, :cond_14

    .line 263
    .line 264
    if-eqz v6, :cond_11

    .line 265
    .line 266
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    .line 267
    .line 268
    if-nez v0, :cond_11

    .line 269
    .line 270
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 271
    .line 272
    if-eqz v0, :cond_14

    .line 273
    .line 274
    :cond_11
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 275
    .line 276
    if-nez v0, :cond_14

    .line 277
    .line 278
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 279
    .line 280
    if-nez v0, :cond_14

    .line 281
    .line 282
    const-string v0, "ScreenState"

    .line 283
    .line 284
    const-wide/32 v7, 0x20000

    .line 285
    .line 286
    .line 287
    invoke-static {v7, v8, v0, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    const-string/jumbo v0, "debug.tracing.screen_state"

    .line 291
    .line 292
    .line 293
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    :try_start_0
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .line 299
    .line 300
    goto :goto_7

    .line 301
    :catch_0
    move-exception v0

    .line 302
    move-object v8, v0

    .line 303
    const-string v0, "Failed to set a system property: key=debug.tracing.screen_state value="

    .line 304
    .line 305
    const-string v9, " "

    .line 306
    .line 307
    invoke-static {v0, v7, v9}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :goto_7
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 326
    .line 327
    iget v7, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 328
    .line 329
    if-eq v7, v2, :cond_13

    .line 330
    .line 331
    sget-boolean v7, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 332
    .line 333
    if-eqz v7, :cond_12

    .line 334
    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string/jumbo v8, "setScreenState: state="

    .line 338
    .line 339
    .line 340
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-static/range {p1 .. p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v8, "; reason="

    .line 351
    .line 352
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-static/range {p2 .. p2}, Landroid/view/Display;->stateReasonToString(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    const-string v8, "DisplayPowerState"

    .line 367
    .line 368
    invoke-static {v8, v7}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :cond_12
    iput v2, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 372
    .line 373
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 376
    .line 377
    .line 378
    :cond_13
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    .line 379
    .line 380
    .line 381
    :cond_14
    if-eqz v5, :cond_15

    .line 382
    .line 383
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 384
    .line 385
    if-eqz v0, :cond_15

    .line 386
    .line 387
    iget-boolean v0, v11, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 388
    .line 389
    if-nez v0, :cond_15

    .line 390
    .line 391
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 395
    .line 396
    .line 397
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurnedOff()"

    .line 398
    .line 399
    .line 400
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 404
    .line 405
    move-object v2, v14

    .line 406
    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    .line 407
    .line 408
    invoke-virtual {v2, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff(IZ)V

    .line 409
    .line 410
    .line 411
    goto :goto_8

    .line 412
    :cond_15
    if-nez v5, :cond_16

    .line 413
    .line 414
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 415
    .line 416
    if-ne v0, v12, :cond_16

    .line 417
    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 419
    .line 420
    .line 421
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurnedOff()(transitional)"

    .line 422
    .line 423
    .line 424
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 428
    .line 429
    move-object v2, v14

    .line 430
    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    .line 431
    .line 432
    invoke-virtual {v2, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff(IZ)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 436
    .line 437
    .line 438
    :cond_16
    :goto_8
    if-nez v5, :cond_1a

    .line 439
    .line 440
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 441
    .line 442
    if-eqz v0, :cond_17

    .line 443
    .line 444
    if-ne v0, v13, :cond_1a

    .line 445
    .line 446
    :cond_17
    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 447
    .line 448
    .line 449
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 450
    .line 451
    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 452
    .line 453
    const/4 v2, 0x0

    .line 454
    cmpl-float v0, v0, v2

    .line 455
    .line 456
    if-nez v0, :cond_18

    .line 457
    .line 458
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 459
    .line 460
    if-nez v0, :cond_19

    .line 461
    .line 462
    const-string v0, "Screen on blocked"

    .line 463
    .line 464
    const-wide/32 v7, 0x20000

    .line 465
    .line 466
    .line 467
    invoke-static {v7, v8, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 468
    .line 469
    .line 470
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 471
    .line 472
    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 473
    .line 474
    .line 475
    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 476
    .line 477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 478
    .line 479
    .line 480
    move-result-wide v7

    .line 481
    iput-wide v7, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 482
    .line 483
    const-string v0, "Blocking screen on until initial contents have been drawn."

    .line 484
    .line 485
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .line 487
    .line 488
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 494
    .line 495
    .line 496
    move-result-wide v7

    .line 497
    iput-wide v7, v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 501
    .line 502
    .line 503
    :cond_19
    :goto_9
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurningOn() +"

    .line 504
    .line 505
    .line 506
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 510
    .line 511
    check-cast v14, Lcom/android/server/policy/PhoneWindowManager;

    .line 512
    .line 513
    invoke-virtual {v14, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(ILcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    .line 514
    .line 515
    .line 516
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurningOn() -"

    .line 517
    .line 518
    .line 519
    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    :cond_1a
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 523
    .line 524
    if-nez v0, :cond_1b

    .line 525
    .line 526
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 527
    .line 528
    if-nez v0, :cond_1b

    .line 529
    .line 530
    move v3, v4

    .line 531
    :cond_1b
    return v3
.end method

.method public final setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 6
    .line 7
    iget-boolean v2, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    .line 8
    .line 9
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v7, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 v14, 0x0

    .line 27
    invoke-static {v1, v2, v14}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 32
    .line 33
    invoke-virtual {v7, v14, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const v3, 0x1110176

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x1

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 51
    .line 52
    invoke-static {v1, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v7, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    invoke-static {v1, v2, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 69
    .line 70
    iget-object v5, v15, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_2

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-virtual {v7, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    iget-object v2, v2, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 93
    .line 94
    iget-object v4, v2, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object v2, v2, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-virtual {v2, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    move/from16 v33, v2

    .line 107
    .line 108
    move/from16 v32, v4

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    const/high16 v2, -0x40800000    # -1.0f

    .line 112
    .line 113
    move/from16 v32, v2

    .line 114
    .line 115
    move/from16 v33, v32

    .line 116
    .line 117
    :goto_0
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 118
    .line 119
    if-eqz v2, :cond_e

    .line 120
    .line 121
    instance-of v2, v2, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    .line 122
    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    sput-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    sput-boolean v14, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 129
    .line 130
    :goto_1
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 131
    .line 132
    iget-object v12, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 133
    .line 134
    iget-object v8, v2, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 135
    .line 136
    iget-object v6, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 137
    .line 138
    iget-object v5, v2, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 139
    .line 140
    iget-object v4, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/SecHysteresisLevels;

    .line 141
    .line 142
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/SecHysteresisLevels;

    .line 143
    .line 144
    iget-wide v9, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 145
    .line 146
    move-wide/from16 v16, v9

    .line 147
    .line 148
    iget-wide v9, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 149
    .line 150
    move-wide/from16 v18, v9

    .line 151
    .line 152
    iget-wide v9, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 153
    .line 154
    move-wide/from16 v20, v9

    .line 155
    .line 156
    iget-wide v9, v2, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 157
    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const v11, 0x111003c

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 166
    .line 167
    .line 168
    move-result v22

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const v11, 0x10e00cb

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    .line 177
    .line 178
    .line 179
    move-result v23

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const v2, 0x10e0039

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    const/16 v1, 0x32

    .line 192
    .line 193
    if-le v1, v2, :cond_5

    .line 194
    .line 195
    const-string v1, "Expected config_autoBrightnessInitialLightSensorRate (50) to be less than or equal to config_autoBrightnessLightSensorRate ("

    .line 196
    .line 197
    const-string v11, ")."

    .line 198
    .line 199
    invoke-static {v2, v1, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v11, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    :cond_5
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 209
    .line 210
    if-eqz v1, :cond_6

    .line 211
    .line 212
    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 213
    .line 214
    if-eqz v11, :cond_7

    .line 215
    .line 216
    :cond_6
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 217
    .line 218
    const v13, 0x10041

    .line 219
    .line 220
    .line 221
    invoke-virtual {v11, v13}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 226
    .line 227
    :cond_7
    if-nez v1, :cond_8

    .line 228
    .line 229
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 230
    .line 231
    if-nez v11, :cond_8

    .line 232
    .line 233
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 234
    .line 235
    const v13, 0x10044

    .line 236
    .line 237
    .line 238
    invoke-virtual {v11, v13}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    iput-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 243
    .line 244
    :cond_8
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 245
    .line 246
    if-eqz v11, :cond_9

    .line 247
    .line 248
    if-nez v1, :cond_9

    .line 249
    .line 250
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 251
    .line 252
    iget-object v11, v11, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 253
    .line 254
    const/4 v13, 0x5

    .line 255
    invoke-virtual {v11, v13, v14, v14, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 260
    .line 261
    .line 262
    :cond_9
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 263
    .line 264
    if-eqz v1, :cond_a

    .line 265
    .line 266
    invoke-virtual {v1, v14}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    .line 267
    .line 268
    .line 269
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 270
    .line 271
    .line 272
    move-result-object v24

    .line 273
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 274
    .line 275
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 276
    .line 277
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 278
    .line 279
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 280
    .line 281
    move-object/from16 v26, v13

    .line 282
    .line 283
    iget v13, v14, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    .line 284
    .line 285
    iget v14, v14, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 286
    .line 287
    move/from16 v27, v13

    .line 288
    .line 289
    new-instance v13, Lcom/android/server/display/AutomaticBrightnessController;

    .line 290
    .line 291
    new-instance v30, Lcom/android/server/display/AutomaticBrightnessController$Injector;

    .line 292
    .line 293
    invoke-direct/range {v30 .. v30}, Ljava/lang/Object;-><init>()V

    .line 294
    .line 295
    .line 296
    move-object/from16 v31, v1

    .line 297
    .line 298
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    .line 299
    .line 300
    move-object/from16 v35, v11

    .line 301
    .line 302
    move v11, v1

    .line 303
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 304
    .line 305
    move-object/from16 v28, v1

    .line 306
    .line 307
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessThrottler:Lcom/android/server/display/BrightnessThrottler;

    .line 308
    .line 309
    move-object/from16 v29, v1

    .line 310
    .line 311
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 312
    .line 313
    move-object/from16 v34, v1

    .line 314
    .line 315
    const/4 v1, 0x0

    .line 316
    move-wide/from16 v36, v9

    .line 317
    .line 318
    move v9, v1

    .line 319
    const/high16 v10, 0x3f800000    # 1.0f

    .line 320
    .line 321
    const/16 v1, 0x32

    .line 322
    .line 323
    move-object/from16 p1, v13

    .line 324
    .line 325
    move/from16 v38, v27

    .line 326
    .line 327
    move v13, v1

    .line 328
    move-object/from16 v27, v31

    .line 329
    .line 330
    move-object/from16 v1, p1

    .line 331
    .line 332
    move/from16 v31, v2

    .line 333
    .line 334
    move-object/from16 v2, v30

    .line 335
    .line 336
    move-object/from16 v39, v3

    .line 337
    .line 338
    move-object/from16 v3, p0

    .line 339
    .line 340
    move-object/from16 v40, v4

    .line 341
    .line 342
    move-object/from16 v4, v24

    .line 343
    .line 344
    move-object/from16 v30, v5

    .line 345
    .line 346
    move-object/from16 v5, v27

    .line 347
    .line 348
    move-object/from16 v27, v6

    .line 349
    .line 350
    move-object/from16 v6, v26

    .line 351
    .line 352
    move-object/from16 v24, v8

    .line 353
    .line 354
    move/from16 v8, v23

    .line 355
    .line 356
    move-object/from16 v23, v12

    .line 357
    .line 358
    move/from16 v12, v31

    .line 359
    .line 360
    move/from16 v31, v14

    .line 361
    .line 362
    move-object/from16 v41, v15

    .line 363
    .line 364
    move-wide/from16 v14, v16

    .line 365
    .line 366
    move-wide/from16 v16, v18

    .line 367
    .line 368
    move-wide/from16 v18, v20

    .line 369
    .line 370
    move-wide/from16 v20, v36

    .line 371
    .line 372
    move-object/from16 v25, v27

    .line 373
    .line 374
    move-object/from16 v26, v30

    .line 375
    .line 376
    move-object/from16 v27, v35

    .line 377
    .line 378
    move/from16 v30, v38

    .line 379
    .line 380
    move-object/from16 v35, v40

    .line 381
    .line 382
    move-object/from16 v36, v39

    .line 383
    .line 384
    invoke-direct/range {v1 .. v36}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/util/SparseArray;IFFFIIJJJJZLcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/BrightnessThrottler;IIFFLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;)V

    .line 385
    .line 386
    .line 387
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 388
    .line 389
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 390
    .line 391
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 392
    .line 393
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 394
    .line 395
    iget-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 396
    .line 397
    iget v8, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 398
    .line 399
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 400
    .line 401
    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v2, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    .line 405
    .line 406
    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v2, v2, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 408
    .line 409
    iget-object v2, v2, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    .line 410
    .line 411
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    if-eqz v2, :cond_b

    .line 413
    .line 414
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 415
    .line 416
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->setupAutoBrightnessFallbackSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V

    .line 417
    .line 418
    .line 419
    :cond_b
    new-instance v1, Lcom/android/internal/util/RingBuffer;

    .line 420
    .line 421
    const-class v2, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 422
    .line 423
    const/16 v3, 0x64

    .line 424
    .line 425
    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 426
    .line 427
    .line 428
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 429
    .line 430
    move-object/from16 v1, v41

    .line 431
    .line 432
    iget-object v1, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 433
    .line 434
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_f

    .line 439
    .line 440
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 441
    .line 442
    const/4 v2, 0x0

    .line 443
    const/4 v3, 0x0

    .line 444
    if-eqz v1, :cond_c

    .line 445
    .line 446
    invoke-virtual {v1, v3}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 447
    .line 448
    .line 449
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 450
    .line 451
    :cond_c
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 452
    .line 453
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 454
    .line 455
    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    .line 456
    .line 457
    if-nez v4, :cond_d

    .line 458
    .line 459
    :goto_2
    move-object v5, v2

    .line 460
    goto :goto_3

    .line 461
    :cond_d
    iget-object v2, v4, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 462
    .line 463
    iget-object v4, v4, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 464
    .line 465
    invoke-static {v1, v2, v4, v3}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    goto :goto_2

    .line 470
    :goto_3
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 471
    .line 472
    iget-object v8, v1, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 473
    .line 474
    if-eqz v5, :cond_f

    .line 475
    .line 476
    if-eqz v8, :cond_f

    .line 477
    .line 478
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 479
    .line 480
    new-instance v7, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 481
    .line 482
    const/4 v1, 0x0

    .line 483
    invoke-direct {v7, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;-><init>(I)V

    .line 484
    .line 485
    .line 486
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 487
    .line 488
    new-instance v1, Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 489
    .line 490
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 491
    .line 492
    move-object v3, v1

    .line 493
    invoke-direct/range {v3 .. v9}, Lcom/android/server/display/ScreenOffBrightnessSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;[ILcom/android/server/display/BrightnessMappingStrategy;)V

    .line 494
    .line 495
    .line 496
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 497
    .line 498
    goto :goto_4

    .line 499
    :catchall_0
    move-exception v0

    .line 500
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    throw v0

    .line 502
    :cond_e
    move v3, v14

    .line 503
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 504
    .line 505
    :cond_f
    :goto_4
    return-void
.end method

.method public final shouldEnableHdrRampRateCase()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 6
    .line 7
    iget v2, v0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq p0, v0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public final shouldEnableMoreFastRampRateCase()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    :cond_0
    iget v0, v0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 24
    .line 25
    iget v3, v3, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 26
    .line 27
    if-ne v3, v2, :cond_3

    .line 28
    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 30
    .line 31
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 32
    .line 33
    if-eq v0, p0, :cond_2

    .line 34
    .line 35
    const/4 v2, 0x6

    .line 36
    if-eq v0, v2, :cond_3

    .line 37
    .line 38
    if-ne p0, v2, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :cond_3
    :goto_0
    return v1
.end method

.method public final unblockScreenOff()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Unblocked screen off after "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " ms"

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const-string p0, "Screen off blocked"

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    const-wide/32 v1, 0x20000

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public final unblockScreenOn()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Unblocked screen on after "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " ms"

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const-wide/32 v0, 0x20000

    .line 40
    .line 41
    .line 42
    const-string p0, "Screen on blocked"

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v1, p0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    const/4 v3, 0x1

    .line 58
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    .line 59
    .line 60
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 61
    .line 62
    const-wide/16 v5, 0x0

    .line 63
    .line 64
    cmp-long v3, v3, v5

    .line 65
    .line 66
    if-nez v3, :cond_0

    .line 67
    .line 68
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 69
    .line 70
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 71
    .line 72
    :cond_0
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    .line 73
    .line 74
    sub-long/2addr v0, v3

    .line 75
    long-to-int v0, v0

    .line 76
    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    .line 77
    .line 78
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd(Z)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method

.method public final unblockScreenOnByDisplayOffload()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "Unblocked screen on for offloading after "

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " ms"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    const-wide/32 v0, 0x20000

    .line 42
    .line 43
    .line 44
    const-string v2, "Screen on blocked by displayoffload"

    .line 45
    .line 46
    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final updatePowerState()V
    .locals 3

    .line 1
    const-string v0, "DisplayPowerController#updatePowerState"

    .line 2
    .line 3
    const-wide/32 v1, 0x20000

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerStateInternal()V

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final updatePowerStateInternal()V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto/16 :goto_62

    .line 25
    .line 26
    :cond_0
    const/4 v8, 0x0

    .line 27
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 28
    .line 29
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    const/4 v4, 0x3

    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 42
    .line 43
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 44
    .line 45
    invoke-direct {v2, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 53
    .line 54
    .line 55
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 56
    .line 57
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 58
    .line 59
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 60
    .line 61
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 62
    .line 63
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 64
    .line 65
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 66
    .line 67
    move v10, v4

    .line 68
    move v3, v9

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    iget v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    .line 82
    .line 83
    .line 84
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 85
    .line 86
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 87
    .line 88
    or-int/2addr v2, v3

    .line 89
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 90
    .line 91
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 92
    .line 93
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 94
    .line 95
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 96
    .line 97
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 98
    .line 99
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 100
    .line 101
    move v10, v5

    .line 102
    move v3, v8

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 105
    .line 106
    move v10, v5

    .line 107
    move v2, v8

    .line 108
    move v3, v2

    .line 109
    :goto_0
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 110
    .line 111
    xor-int/2addr v5, v9

    .line 112
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {v6}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 120
    .line 121
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 122
    .line 123
    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 124
    .line 125
    iget-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 126
    .line 127
    invoke-virtual {v1, v6, v11, v12}, Lcom/android/server/display/state/DisplayStateController;->updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Landroid/util/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v6, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v3, :cond_6

    .line 140
    .line 141
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 142
    .line 143
    if-eqz v3, :cond_5

    .line 144
    .line 145
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    .line 146
    .line 147
    if-nez v3, :cond_5

    .line 148
    .line 149
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 150
    .line 151
    if-eqz v3, :cond_4

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    move v3, v8

    .line 155
    goto :goto_2

    .line 156
    :cond_5
    :goto_1
    move v3, v6

    .line 157
    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->initialize(I)V

    .line 158
    .line 159
    .line 160
    :cond_6
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isOffloadDozeOverrideHoldsWakelockEnabled()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    const/4 v11, 0x5

    .line 167
    if-eqz v3, :cond_8

    .line 168
    .line 169
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 170
    .line 171
    iget v3, v3, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 172
    .line 173
    if-eq v3, v6, :cond_8

    .line 174
    .line 175
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 176
    .line 177
    monitor-enter v3

    .line 178
    :try_start_1
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 179
    .line 180
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 181
    .line 182
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    if-eqz v5, :cond_7

    .line 184
    .line 185
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 186
    .line 187
    invoke-virtual {v3, v11}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 188
    .line 189
    .line 190
    :cond_7
    move v12, v9

    .line 191
    goto :goto_3

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    throw v0

    .line 195
    :cond_8
    move v12, v5

    .line 196
    :goto_3
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpEnabled:Z

    .line 197
    .line 198
    if-eqz v3, :cond_9

    .line 199
    .line 200
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    .line 201
    .line 202
    if-eqz v3, :cond_9

    .line 203
    .line 204
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 205
    .line 206
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 207
    .line 208
    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 209
    .line 210
    .line 211
    move-result v13

    .line 212
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 213
    .line 214
    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximityPositive()Z

    .line 215
    .line 216
    .line 217
    move-result v14

    .line 218
    invoke-virtual {v3, v5, v2, v13, v14}, Lcom/android/server/display/EarlyWakeUpManager;->update(IZZZ)V

    .line 219
    .line 220
    .line 221
    :cond_9
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 222
    .line 223
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 224
    .line 225
    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    .line 226
    .line 227
    const/4 v5, -0x1

    .line 228
    if-eq v2, v3, :cond_d

    .line 229
    .line 230
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 231
    .line 232
    if-nez v3, :cond_a

    .line 233
    .line 234
    move v13, v9

    .line 235
    goto :goto_4

    .line 236
    :cond_a
    move v13, v8

    .line 237
    :goto_4
    iput-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    .line 238
    .line 239
    if-nez v3, :cond_b

    .line 240
    .line 241
    if-ne v2, v5, :cond_b

    .line 242
    .line 243
    move v2, v9

    .line 244
    goto :goto_5

    .line 245
    :cond_b
    move v2, v8

    .line 246
    :goto_5
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingTransitionOffInDualCase:Z

    .line 247
    .line 248
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 249
    .line 250
    if-eqz v2, :cond_c

    .line 251
    .line 252
    invoke-virtual {v0, v6, v8}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    .line 253
    .line 254
    .line 255
    :cond_c
    sget-object v2, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 256
    .line 257
    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->setSkip()V

    .line 258
    .line 259
    .line 260
    :cond_d
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingTransitionOffInDualCase:Z

    .line 261
    .line 262
    if-eqz v2, :cond_e

    .line 263
    .line 264
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    .line 265
    .line 266
    if-eqz v2, :cond_e

    .line 267
    .line 268
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 269
    .line 270
    invoke-virtual {v2}, Lcom/android/server/display/state/DisplayStateController;->setPerformScreenOffTransition()V

    .line 271
    .line 272
    .line 273
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mPendingTransitionOffInDualCase:Z

    .line 274
    .line 275
    :cond_e
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 276
    .line 277
    iget v2, v2, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 278
    .line 279
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v1, Ljava/lang/Integer;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 288
    .line 289
    invoke-virtual {v3}, Lcom/android/server/display/state/DisplayStateController;->shouldPerformScreenOffTransition()Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {v0, v6, v1, v3}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIZ)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 297
    .line 298
    iget v6, v1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 299
    .line 300
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    .line 301
    .line 302
    const/4 v3, 0x7

    .line 303
    if-eqz v1, :cond_11

    .line 304
    .line 305
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 306
    .line 307
    if-eqz v1, :cond_10

    .line 308
    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->clearAdaptiveBrightnessLongtermModelBuilder()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerController;->restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V

    .line 313
    .line 314
    .line 315
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 316
    .line 317
    if-eqz v1, :cond_f

    .line 318
    .line 319
    const-string v13, "AdaptiveBrightnessLongtermModelBuilder"

    .line 320
    .line 321
    const-string/jumbo v14, "notifyShortTermResetValid()"

    .line 322
    .line 323
    .line 324
    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    iget-object v1, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 328
    .line 329
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 334
    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 338
    .line 339
    .line 340
    :cond_10
    :goto_6
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    .line 341
    .line 342
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_11
    move v1, v8

    .line 346
    :goto_7
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 347
    .line 348
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 349
    .line 350
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 351
    .line 352
    invoke-virtual {v13, v14, v6, v15}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)Lcom/android/server/display/DisplayBrightnessState;

    .line 353
    .line 354
    .line 355
    move-result-object v15

    .line 356
    iget v13, v15, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 357
    .line 358
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 359
    .line 360
    iget-object v11, v15, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 361
    .line 362
    invoke-virtual {v14, v11}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 363
    .line 364
    .line 365
    iget-boolean v11, v15, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 366
    .line 367
    const/4 v14, 0x4

    .line 368
    if-eq v6, v4, :cond_13

    .line 369
    .line 370
    if-ne v6, v14, :cond_12

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_12
    move/from16 v16, v8

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_13
    :goto_8
    move/from16 v16, v9

    .line 377
    .line 378
    :goto_9
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 379
    .line 380
    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 381
    .line 382
    if-ne v14, v9, :cond_14

    .line 383
    .line 384
    move/from16 v18, v9

    .line 385
    .line 386
    goto :goto_a

    .line 387
    :cond_14
    move/from16 v18, v8

    .line 388
    .line 389
    :goto_a
    if-ne v10, v9, :cond_15

    .line 390
    .line 391
    if-ne v14, v4, :cond_15

    .line 392
    .line 393
    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    .line 394
    .line 395
    .line 396
    move-result v14

    .line 397
    if-nez v14, :cond_16

    .line 398
    .line 399
    :cond_15
    invoke-static {v2}, Landroid/view/Display;->isDozeState(I)Z

    .line 400
    .line 401
    .line 402
    move-result v14

    .line 403
    if-eqz v14, :cond_17

    .line 404
    .line 405
    invoke-static {v6}, Landroid/view/Display;->isOnState(I)Z

    .line 406
    .line 407
    .line 408
    move-result v14

    .line 409
    if-eqz v14, :cond_17

    .line 410
    .line 411
    :cond_16
    move/from16 v23, v9

    .line 412
    .line 413
    goto :goto_b

    .line 414
    :cond_17
    move/from16 v23, v8

    .line 415
    .line 416
    :goto_b
    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    .line 417
    .line 418
    const/16 v3, 0xe

    .line 419
    .line 420
    if-eqz v14, :cond_19

    .line 421
    .line 422
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 423
    .line 424
    .line 425
    move-result v14

    .line 426
    if-eqz v14, :cond_19

    .line 427
    .line 428
    if-nez v16, :cond_18

    .line 429
    .line 430
    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 431
    .line 432
    if-nez v14, :cond_18

    .line 433
    .line 434
    if-eqz v18, :cond_19

    .line 435
    .line 436
    :cond_18
    iget v14, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 437
    .line 438
    invoke-static {v14}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    .line 439
    .line 440
    .line 441
    move-result v14

    .line 442
    if-nez v14, :cond_19

    .line 443
    .line 444
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 445
    .line 446
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 447
    .line 448
    invoke-virtual {v14, v13, v3}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 449
    .line 450
    .line 451
    :cond_19
    move/from16 v25, v13

    .line 452
    .line 453
    move/from16 v26, v25

    .line 454
    .line 455
    iget v14, v15, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 456
    .line 457
    iget v13, v15, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    .line 458
    .line 459
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 460
    .line 461
    invoke-virtual {v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getIsUserSetScreenBrightnessUpdated()Z

    .line 462
    .line 463
    .line 464
    move-result v28

    .line 465
    iget-object v3, v15, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 466
    .line 467
    if-eqz v3, :cond_1a

    .line 468
    .line 469
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 470
    .line 471
    invoke-virtual {v8, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 472
    .line 473
    .line 474
    :cond_1a
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 475
    .line 476
    invoke-virtual {v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozing()Z

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 481
    .line 482
    invoke-virtual {v8}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    .line 483
    .line 484
    .line 485
    move-result v8

    .line 486
    if-nez v8, :cond_1d

    .line 487
    .line 488
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 489
    .line 490
    if-eqz v8, :cond_1d

    .line 491
    .line 492
    iget-boolean v5, v15, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 493
    .line 494
    if-eqz v5, :cond_1c

    .line 495
    .line 496
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    .line 497
    .line 498
    if-eqz v5, :cond_1c

    .line 499
    .line 500
    if-eq v6, v9, :cond_1b

    .line 501
    .line 502
    if-ne v6, v4, :cond_1c

    .line 503
    .line 504
    if-nez v3, :cond_1c

    .line 505
    .line 506
    :cond_1b
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    .line 507
    .line 508
    const/4 v4, -0x1

    .line 509
    if-ne v5, v4, :cond_1c

    .line 510
    .line 511
    move v4, v9

    .line 512
    goto :goto_c

    .line 513
    :cond_1c
    const/4 v4, 0x0

    .line 514
    :goto_c
    invoke-virtual {v8, v4}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 515
    .line 516
    .line 517
    :cond_1d
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 518
    .line 519
    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isShortTermModelActive()Z

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    iget-boolean v4, v15, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    .line 524
    .line 525
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 526
    .line 527
    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    move/from16 v16, v4

    .line 532
    .line 533
    if-nez v5, :cond_22

    .line 534
    .line 535
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 536
    .line 537
    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    if-eqz v5, :cond_1f

    .line 542
    .line 543
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 544
    .line 545
    if-eqz v5, :cond_1f

    .line 546
    .line 547
    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 548
    .line 549
    .line 550
    move-result v5

    .line 551
    if-nez v5, :cond_1f

    .line 552
    .line 553
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 554
    .line 555
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    .line 556
    .line 557
    .line 558
    move-result v16

    .line 559
    if-eqz v16, :cond_1e

    .line 560
    .line 561
    const/4 v4, 0x2

    .line 562
    :goto_d
    const/4 v9, 0x0

    .line 563
    goto :goto_e

    .line 564
    :cond_1e
    const/4 v4, 0x0

    .line 565
    goto :goto_d

    .line 566
    :goto_e
    invoke-virtual {v5, v4, v9}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    .line 567
    .line 568
    .line 569
    :cond_1f
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 570
    .line 571
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 572
    .line 573
    invoke-virtual {v5}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    .line 574
    .line 575
    .line 576
    move-result v16

    .line 577
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 578
    .line 579
    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 580
    .line 581
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 582
    .line 583
    invoke-virtual {v9}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getLastUserSetScreenBrightness()F

    .line 584
    .line 585
    .line 586
    move-result v18

    .line 587
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 588
    .line 589
    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 590
    .line 591
    move/from16 v30, v11

    .line 592
    .line 593
    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 594
    .line 595
    move/from16 v31, v13

    .line 596
    .line 597
    move-object v13, v4

    .line 598
    move/from16 v32, v14

    .line 599
    .line 600
    const/4 v4, 0x4

    .line 601
    move v14, v6

    .line 602
    move-object v4, v15

    .line 603
    move v15, v3

    .line 604
    move/from16 v17, v5

    .line 605
    .line 606
    move/from16 v19, v28

    .line 607
    .line 608
    move/from16 v20, v9

    .line 609
    .line 610
    move/from16 v21, v1

    .line 611
    .line 612
    move/from16 v22, v11

    .line 613
    .line 614
    invoke-virtual/range {v13 .. v22}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessState(IZIIFZZZI)V

    .line 615
    .line 616
    .line 617
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isNaN(F)Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-eqz v3, :cond_21

    .line 622
    .line 623
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 624
    .line 625
    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    if-nez v3, :cond_20

    .line 630
    .line 631
    if-eqz v28, :cond_21

    .line 632
    .line 633
    :cond_20
    const/4 v3, 0x1

    .line 634
    goto :goto_f

    .line 635
    :cond_21
    const/4 v3, 0x0

    .line 636
    :goto_f
    move v9, v3

    .line 637
    goto :goto_10

    .line 638
    :cond_22
    move/from16 v30, v11

    .line 639
    .line 640
    move/from16 v31, v13

    .line 641
    .line 642
    move/from16 v32, v14

    .line 643
    .line 644
    move-object v4, v15

    .line 645
    move/from16 v9, v16

    .line 646
    .line 647
    :goto_10
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    .line 648
    .line 649
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 650
    .line 651
    invoke-virtual {v5}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 652
    .line 653
    .line 654
    move-result v5

    .line 655
    if-eq v3, v5, :cond_25

    .line 656
    .line 657
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 658
    .line 659
    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    .line 664
    .line 665
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 666
    .line 667
    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    if-eqz v3, :cond_25

    .line 672
    .line 673
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 674
    .line 675
    if-nez v3, :cond_23

    .line 676
    .line 677
    const/4 v3, 0x1

    .line 678
    if-ne v10, v3, :cond_25

    .line 679
    .line 680
    :cond_23
    const/4 v3, 0x0

    .line 681
    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    .line 682
    .line 683
    invoke-static {v2}, Landroid/view/Display;->isDozeState(I)Z

    .line 684
    .line 685
    .line 686
    move-result v3

    .line 687
    if-nez v3, :cond_24

    .line 688
    .line 689
    invoke-static {v2}, Landroid/view/Display;->isOnState(I)Z

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    if-eqz v2, :cond_25

    .line 694
    .line 695
    :cond_24
    const/4 v2, 0x1

    .line 696
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    .line 697
    .line 698
    :cond_25
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 699
    .line 700
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    if-nez v2, :cond_28

    .line 705
    .line 706
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpEnabled:Z

    .line 707
    .line 708
    if-eqz v2, :cond_26

    .line 709
    .line 710
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    .line 711
    .line 712
    invoke-virtual {v2}, Lcom/android/server/display/EarlyWakeUpManager;->isEarlyLightSensorEnabled()Z

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    if-eqz v2, :cond_26

    .line 717
    .line 718
    goto :goto_11

    .line 719
    :cond_26
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 720
    .line 721
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessDisabledDueToDisplayOff()Z

    .line 722
    .line 723
    .line 724
    move-result v2

    .line 725
    if-eqz v2, :cond_27

    .line 726
    .line 727
    const/4 v2, 0x3

    .line 728
    goto :goto_12

    .line 729
    :cond_27
    const/4 v2, 0x2

    .line 730
    goto :goto_12

    .line 731
    :cond_28
    :goto_11
    const/4 v2, 0x1

    .line 732
    :goto_12
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 733
    .line 734
    invoke-virtual {v3, v2}, Lcom/android/server/display/BrightnessRangeController;->setAutoBrightnessEnabled(I)V

    .line 735
    .line 736
    .line 737
    iget-boolean v2, v4, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    .line 738
    .line 739
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 740
    .line 741
    invoke-virtual {v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    .line 742
    .line 743
    .line 744
    move-result v3

    .line 745
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 746
    .line 747
    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    .line 748
    .line 749
    .line 750
    move-result v5

    .line 751
    if-eqz v5, :cond_29

    .line 752
    .line 753
    iget-object v5, v4, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 754
    .line 755
    invoke-virtual {v5}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    .line 756
    .line 757
    .line 758
    move-result v5

    .line 759
    const/4 v11, 0x4

    .line 760
    if-ne v5, v11, :cond_29

    .line 761
    .line 762
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 763
    .line 764
    if-eqz v5, :cond_29

    .line 765
    .line 766
    const/4 v11, 0x0

    .line 767
    invoke-virtual {v5, v11}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 768
    .line 769
    .line 770
    :cond_29
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 771
    .line 772
    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    .line 773
    .line 774
    .line 775
    move-result v5

    .line 776
    const/high16 v11, -0x40800000    # -1.0f

    .line 777
    .line 778
    const/high16 v19, 0x7fc00000    # Float.NaN

    .line 779
    .line 780
    if-nez v5, :cond_35

    .line 781
    .line 782
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isNaN(F)Z

    .line 783
    .line 784
    .line 785
    move-result v5

    .line 786
    if-nez v5, :cond_2b

    .line 787
    .line 788
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 789
    .line 790
    invoke-virtual {v5}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    .line 791
    .line 792
    .line 793
    move-result v5

    .line 794
    const/16 v13, 0xb

    .line 795
    .line 796
    if-ne v5, v13, :cond_2a

    .line 797
    .line 798
    goto :goto_13

    .line 799
    :cond_2a
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 800
    .line 801
    const/4 v13, 0x0

    .line 802
    invoke-virtual {v5, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_1a

    .line 806
    .line 807
    :cond_2b
    :goto_13
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 808
    .line 809
    invoke-virtual {v5}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 810
    .line 811
    .line 812
    move-result v5

    .line 813
    if-eqz v5, :cond_35

    .line 814
    .line 815
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 816
    .line 817
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 818
    .line 819
    invoke-virtual {v5, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    .line 820
    .line 821
    .line 822
    move-result v5

    .line 823
    invoke-static {v5}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 824
    .line 825
    .line 826
    move-result v13

    .line 827
    if-nez v13, :cond_2e

    .line 828
    .line 829
    cmpl-float v13, v5, v11

    .line 830
    .line 831
    if-nez v13, :cond_2c

    .line 832
    .line 833
    goto :goto_15

    .line 834
    :cond_2c
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 835
    .line 836
    const/4 v13, 0x0

    .line 837
    invoke-virtual {v5, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 838
    .line 839
    .line 840
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 841
    .line 842
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 843
    .line 844
    const/16 v14, 0xe

    .line 845
    .line 846
    invoke-virtual {v13, v5, v14}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 847
    .line 848
    .line 849
    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 850
    .line 851
    if-eqz v13, :cond_2d

    .line 852
    .line 853
    const/4 v13, 0x1

    .line 854
    iput-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mAwakenFromDozingInAutoBrightness:Z

    .line 855
    .line 856
    :cond_2d
    move v13, v5

    .line 857
    move/from16 v26, v13

    .line 858
    .line 859
    move/from16 v5, v19

    .line 860
    .line 861
    move/from16 v21, v5

    .line 862
    .line 863
    :goto_14
    move/from16 v15, v30

    .line 864
    .line 865
    move/from16 v11, v31

    .line 866
    .line 867
    goto/16 :goto_1b

    .line 868
    .line 869
    :cond_2e
    :goto_15
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 870
    .line 871
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getRawAutomaticScreenBrightness()F

    .line 872
    .line 873
    .line 874
    move-result v26

    .line 875
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 876
    .line 877
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    .line 882
    .line 883
    cmpl-float v13, v5, v13

    .line 884
    .line 885
    if-eqz v13, :cond_2f

    .line 886
    .line 887
    iput v5, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    .line 888
    .line 889
    const/4 v13, 0x1

    .line 890
    goto :goto_16

    .line 891
    :cond_2f
    const/4 v13, 0x0

    .line 892
    :goto_16
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 893
    .line 894
    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    .line 895
    .line 896
    .line 897
    move-result v14

    .line 898
    if-eqz v14, :cond_30

    .line 899
    .line 900
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 901
    .line 902
    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    .line 903
    .line 904
    .line 905
    move-result v14

    .line 906
    if-nez v14, :cond_30

    .line 907
    .line 908
    if-eqz v13, :cond_30

    .line 909
    .line 910
    const/4 v13, 0x1

    .line 911
    goto :goto_17

    .line 912
    :cond_30
    const/4 v13, 0x0

    .line 913
    :goto_17
    if-eqz v13, :cond_32

    .line 914
    .line 915
    sget-boolean v14, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    .line 916
    .line 917
    if-nez v14, :cond_31

    .line 918
    .line 919
    sget-boolean v14, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    .line 920
    .line 921
    if-eqz v14, :cond_32

    .line 922
    .line 923
    :cond_31
    invoke-virtual {v0, v5, v2}, Lcom/android/server/display/DisplayPowerController;->getBrightnessDynamicRampRatePair(FF)Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;

    .line 924
    .line 925
    .line 926
    move-result-object v14

    .line 927
    iget v15, v14, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamic:F

    .line 928
    .line 929
    iget v14, v14, Lcom/android/server/display/DisplayPowerController$BrightnessDynamicRampRatePair;->brightnessRampRateDynamicAtHbm:F

    .line 930
    .line 931
    goto :goto_18

    .line 932
    :cond_32
    move/from16 v14, v19

    .line 933
    .line 934
    move v15, v14

    .line 935
    :goto_18
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 936
    .line 937
    invoke-virtual {v11}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentReasonsFlags()I

    .line 938
    .line 939
    .line 940
    move-result v11

    .line 941
    invoke-static {v5}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    .line 942
    .line 943
    .line 944
    move-result v16

    .line 945
    cmpl-float v16, v3, v16

    .line 946
    .line 947
    move/from16 v17, v11

    .line 948
    .line 949
    if-eqz v16, :cond_33

    .line 950
    .line 951
    const/16 v16, 0x1

    .line 952
    .line 953
    goto :goto_19

    .line 954
    :cond_33
    const/16 v16, 0x0

    .line 955
    .line 956
    :goto_19
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 957
    .line 958
    move/from16 v18, v13

    .line 959
    .line 960
    const/4 v13, 0x1

    .line 961
    invoke-virtual {v11, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    .line 962
    .line 963
    .line 964
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    .line 965
    .line 966
    const/4 v2, 0x0

    .line 967
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAwakenFromDozingInAutoBrightness:Z

    .line 968
    .line 969
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 970
    .line 971
    const/4 v13, 0x4

    .line 972
    invoke-virtual {v11, v5, v13}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 973
    .line 974
    .line 975
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 976
    .line 977
    if-eqz v11, :cond_34

    .line 978
    .line 979
    invoke-virtual {v11, v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    .line 980
    .line 981
    .line 982
    :cond_34
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 983
    .line 984
    .line 985
    move-result v11

    .line 986
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 987
    .line 988
    move/from16 v21, v5

    .line 989
    .line 990
    const/16 v5, 0x11

    .line 991
    .line 992
    invoke-virtual {v13, v5, v11, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 993
    .line 994
    .line 995
    move-result-object v5

    .line 996
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 997
    .line 998
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    .line 1000
    .line 1001
    move v2, v14

    .line 1002
    move v11, v15

    .line 1003
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1004
    .line 1005
    .line 1006
    move-result-wide v14

    .line 1007
    invoke-virtual {v13, v5, v14, v15}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1008
    .line 1009
    .line 1010
    move v5, v2

    .line 1011
    move/from16 v2, v16

    .line 1012
    .line 1013
    move/from16 v15, v18

    .line 1014
    .line 1015
    move/from16 v13, v21

    .line 1016
    .line 1017
    move/from16 v21, v11

    .line 1018
    .line 1019
    move/from16 v11, v17

    .line 1020
    .line 1021
    goto :goto_1b

    .line 1022
    :cond_35
    :goto_1a
    move/from16 v5, v19

    .line 1023
    .line 1024
    move/from16 v21, v5

    .line 1025
    .line 1026
    move/from16 v13, v25

    .line 1027
    .line 1028
    goto/16 :goto_14

    .line 1029
    .line 1030
    :goto_1b
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v14

    .line 1034
    if-nez v14, :cond_36

    .line 1035
    .line 1036
    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    .line 1037
    .line 1038
    .line 1039
    move-result v13

    .line 1040
    :cond_36
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v14

    .line 1044
    if-eqz v14, :cond_3a

    .line 1045
    .line 1046
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v14

    .line 1050
    if-nez v14, :cond_37

    .line 1051
    .line 1052
    iget-object v14, v4, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 1053
    .line 1054
    move/from16 v16, v2

    .line 1055
    .line 1056
    const-string v2, "FallbackBrightnessStrategy"

    .line 1057
    .line 1058
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1059
    .line 1060
    .line 1061
    move-result v2

    .line 1062
    if-eqz v2, :cond_39

    .line 1063
    .line 1064
    goto :goto_1c

    .line 1065
    :cond_37
    move/from16 v16, v2

    .line 1066
    .line 1067
    :goto_1c
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1068
    .line 1069
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    .line 1070
    .line 1071
    .line 1072
    move-result v2

    .line 1073
    if-eqz v2, :cond_39

    .line 1074
    .line 1075
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 1076
    .line 1077
    if-eqz v2, :cond_39

    .line 1078
    .line 1079
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1080
    .line 1081
    if-eqz v2, :cond_38

    .line 1082
    .line 1083
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1084
    .line 1085
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    .line 1086
    .line 1087
    .line 1088
    move-result v2

    .line 1089
    if-nez v2, :cond_39

    .line 1090
    .line 1091
    :cond_38
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1092
    .line 1093
    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    .line 1094
    .line 1095
    .line 1096
    move-result v2

    .line 1097
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    .line 1098
    .line 1099
    mul-float/2addr v2, v13

    .line 1100
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    .line 1101
    .line 1102
    .line 1103
    move-result v13

    .line 1104
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1105
    .line 1106
    move/from16 v17, v2

    .line 1107
    .line 1108
    const/16 v2, 0xc

    .line 1109
    .line 1110
    invoke-virtual {v14, v13, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 1111
    .line 1112
    .line 1113
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 1114
    .line 1115
    iget v14, v2, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 1116
    .line 1117
    const/16 v18, 0x4

    .line 1118
    .line 1119
    or-int/lit8 v14, v14, 0x4

    .line 1120
    .line 1121
    iput v14, v2, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 1122
    .line 1123
    move/from16 v26, v17

    .line 1124
    .line 1125
    :cond_39
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v2

    .line 1129
    if-eqz v2, :cond_3b

    .line 1130
    .line 1131
    invoke-static {v6}, Landroid/view/Display;->isDozeState(I)Z

    .line 1132
    .line 1133
    .line 1134
    move-result v2

    .line 1135
    if-eqz v2, :cond_3b

    .line 1136
    .line 1137
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1138
    .line 1139
    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozingConfig()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v2

    .line 1143
    if-nez v2, :cond_3b

    .line 1144
    .line 1145
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 1146
    .line 1147
    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v2

    .line 1151
    if-nez v2, :cond_3b

    .line 1152
    .line 1153
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 1154
    .line 1155
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    .line 1156
    .line 1157
    .line 1158
    move-result v13

    .line 1159
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1160
    .line 1161
    move/from16 v17, v2

    .line 1162
    .line 1163
    const/4 v2, 0x3

    .line 1164
    invoke-virtual {v14, v13, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 1165
    .line 1166
    .line 1167
    move/from16 v26, v17

    .line 1168
    .line 1169
    goto :goto_1d

    .line 1170
    :cond_3a
    move/from16 v16, v2

    .line 1171
    .line 1172
    :cond_3b
    :goto_1d
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1173
    .line 1174
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    .line 1175
    .line 1176
    .line 1177
    move-result v2

    .line 1178
    if-nez v2, :cond_3e

    .line 1179
    .line 1180
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v2

    .line 1184
    if-eqz v2, :cond_3e

    .line 1185
    .line 1186
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1187
    .line 1188
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 1189
    .line 1190
    .line 1191
    move-result v2

    .line 1192
    if-eqz v2, :cond_3e

    .line 1193
    .line 1194
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    .line 1195
    .line 1196
    if-eqz v2, :cond_3e

    .line 1197
    .line 1198
    invoke-virtual {v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    .line 1199
    .line 1200
    .line 1201
    move-result v13

    .line 1202
    invoke-static {v13}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v2

    .line 1206
    if-eqz v2, :cond_3d

    .line 1207
    .line 1208
    invoke-virtual {v0, v13}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    .line 1209
    .line 1210
    .line 1211
    move-result v2

    .line 1212
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1213
    .line 1214
    invoke-virtual {v14}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    .line 1215
    .line 1216
    .line 1217
    move-result v14

    .line 1218
    cmpl-float v14, v14, v2

    .line 1219
    .line 1220
    move-object/from16 v22, v4

    .line 1221
    .line 1222
    if-eqz v14, :cond_3c

    .line 1223
    .line 1224
    const/4 v14, 0x1

    .line 1225
    goto :goto_1e

    .line 1226
    :cond_3c
    const/4 v14, 0x0

    .line 1227
    :goto_1e
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1228
    .line 1229
    move/from16 v25, v5

    .line 1230
    .line 1231
    const/16 v5, 0x9

    .line 1232
    .line 1233
    invoke-virtual {v4, v2, v5}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 1234
    .line 1235
    .line 1236
    move/from16 v26, v13

    .line 1237
    .line 1238
    move/from16 v16, v14

    .line 1239
    .line 1240
    move v13, v2

    .line 1241
    goto :goto_1f

    .line 1242
    :cond_3d
    move-object/from16 v22, v4

    .line 1243
    .line 1244
    move/from16 v25, v5

    .line 1245
    .line 1246
    move/from16 v26, v13

    .line 1247
    .line 1248
    goto :goto_1f

    .line 1249
    :cond_3e
    move-object/from16 v22, v4

    .line 1250
    .line 1251
    move/from16 v25, v5

    .line 1252
    .line 1253
    :goto_1f
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v2

    .line 1257
    const/16 v4, 0x2000

    .line 1258
    .line 1259
    if-eqz v2, :cond_40

    .line 1260
    .line 1261
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 1262
    .line 1263
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    .line 1264
    .line 1265
    .line 1266
    move-result v2

    .line 1267
    if-nez v2, :cond_40

    .line 1268
    .line 1269
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    .line 1270
    .line 1271
    .line 1272
    move-result v13

    .line 1273
    cmpl-float v2, v13, v3

    .line 1274
    .line 1275
    if-eqz v2, :cond_3f

    .line 1276
    .line 1277
    const/16 v16, 0x1

    .line 1278
    .line 1279
    :cond_3f
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1280
    .line 1281
    const/4 v5, 0x1

    .line 1282
    invoke-virtual {v2, v13, v5}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    .line 1283
    .line 1284
    .line 1285
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 1286
    .line 1287
    if-eqz v2, :cond_41

    .line 1288
    .line 1289
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 1290
    .line 1291
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1292
    .line 1293
    .line 1294
    move-result v2

    .line 1295
    if-nez v2, :cond_41

    .line 1296
    .line 1297
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 1298
    .line 1299
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1300
    .line 1301
    invoke-virtual {v2, v13, v4}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 1302
    .line 1303
    .line 1304
    goto :goto_20

    .line 1305
    :cond_40
    move/from16 v3, v26

    .line 1306
    .line 1307
    :cond_41
    :goto_20
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    .line 1308
    .line 1309
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1310
    .line 1311
    iget-boolean v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    .line 1312
    .line 1313
    if-eq v2, v5, :cond_43

    .line 1314
    .line 1315
    if-eqz v5, :cond_42

    .line 1316
    .line 1317
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 1318
    .line 1319
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;->uptimeMillis()J

    .line 1320
    .line 1321
    .line 1322
    move-result-wide v4

    .line 1323
    iput-wide v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    .line 1324
    .line 1325
    :cond_42
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1326
    .line 1327
    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    .line 1328
    .line 1329
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    .line 1330
    .line 1331
    :cond_43
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    .line 1332
    .line 1333
    if-eqz v2, :cond_44

    .line 1334
    .line 1335
    const/4 v2, 0x2

    .line 1336
    if-ne v6, v2, :cond_44

    .line 1337
    .line 1338
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1339
    .line 1340
    iget v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1341
    .line 1342
    const/4 v14, 0x3

    .line 1343
    if-ne v4, v14, :cond_44

    .line 1344
    .line 1345
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 1346
    .line 1347
    if-eqz v4, :cond_45

    .line 1348
    .line 1349
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    .line 1350
    .line 1351
    if-eqz v4, :cond_44

    .line 1352
    .line 1353
    goto :goto_21

    .line 1354
    :cond_44
    move/from16 v26, v6

    .line 1355
    .line 1356
    goto/16 :goto_26

    .line 1357
    .line 1358
    :cond_45
    :goto_21
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    .line 1359
    .line 1360
    if-eqz v4, :cond_47

    .line 1361
    .line 1362
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    .line 1363
    .line 1364
    if-eqz v4, :cond_47

    .line 1365
    .line 1366
    move/from16 v26, v6

    .line 1367
    .line 1368
    iget-wide v5, v0, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    .line 1369
    .line 1370
    sget-wide v30, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    .line 1371
    .line 1372
    cmp-long v4, v5, v30

    .line 1373
    .line 1374
    if-lez v4, :cond_48

    .line 1375
    .line 1376
    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    .line 1377
    .line 1378
    if-nez v2, :cond_48

    .line 1379
    .line 1380
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1381
    .line 1382
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 1383
    .line 1384
    .line 1385
    move-result v2

    .line 1386
    if-eqz v2, :cond_46

    .line 1387
    .line 1388
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1389
    .line 1390
    if-eqz v2, :cond_48

    .line 1391
    .line 1392
    iget-boolean v2, v2, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 1393
    .line 1394
    if-eqz v2, :cond_48

    .line 1395
    .line 1396
    :cond_46
    const/4 v2, 0x1

    .line 1397
    goto :goto_22

    .line 1398
    :cond_47
    move/from16 v26, v6

    .line 1399
    .line 1400
    :cond_48
    const/4 v2, 0x0

    .line 1401
    :goto_22
    if-eqz v2, :cond_4a

    .line 1402
    .line 1403
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 1404
    .line 1405
    if-nez v4, :cond_4a

    .line 1406
    .line 1407
    const/4 v4, 0x1

    .line 1408
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 1409
    .line 1410
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1411
    .line 1412
    iget v2, v2, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 1413
    .line 1414
    const/4 v4, 0x4

    .line 1415
    if-ne v2, v4, :cond_49

    .line 1416
    .line 1417
    iput v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 1418
    .line 1419
    goto :goto_23

    .line 1420
    :cond_49
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1421
    .line 1422
    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    .line 1423
    .line 1424
    .line 1425
    move-result v2

    .line 1426
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 1427
    .line 1428
    :goto_23
    if-nez v23, :cond_4c

    .line 1429
    .line 1430
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    .line 1431
    .line 1432
    if-nez v2, :cond_4c

    .line 1433
    .line 1434
    :goto_24
    const/4 v2, 0x1

    .line 1435
    goto :goto_25

    .line 1436
    :cond_4a
    if-nez v2, :cond_4c

    .line 1437
    .line 1438
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 1439
    .line 1440
    if-eqz v2, :cond_4c

    .line 1441
    .line 1442
    const/4 v2, 0x0

    .line 1443
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 1444
    .line 1445
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1446
    .line 1447
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 1448
    .line 1449
    .line 1450
    move-result v2

    .line 1451
    if-nez v2, :cond_4b

    .line 1452
    .line 1453
    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 1454
    .line 1455
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1456
    .line 1457
    const/16 v4, 0x2000

    .line 1458
    .line 1459
    invoke-virtual {v2, v13, v4}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 1460
    .line 1461
    .line 1462
    const/16 v16, 0x1

    .line 1463
    .line 1464
    :cond_4b
    if-nez v23, :cond_4c

    .line 1465
    .line 1466
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    .line 1467
    .line 1468
    if-nez v2, :cond_4c

    .line 1469
    .line 1470
    goto :goto_24

    .line 1471
    :cond_4c
    const/4 v2, 0x0

    .line 1472
    :goto_25
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 1473
    .line 1474
    if-eqz v4, :cond_4d

    .line 1475
    .line 1476
    const/4 v4, 0x0

    .line 1477
    cmpl-float v5, v13, v4

    .line 1478
    .line 1479
    if-lez v5, :cond_4d

    .line 1480
    .line 1481
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    .line 1482
    .line 1483
    sub-float/2addr v13, v5

    .line 1484
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 1485
    .line 1486
    invoke-static {v13, v5}, Ljava/lang/Math;->min(FF)F

    .line 1487
    .line 1488
    .line 1489
    move-result v5

    .line 1490
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    .line 1491
    .line 1492
    .line 1493
    move-result v13

    .line 1494
    iput v13, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimmingBrightness:F

    .line 1495
    .line 1496
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1497
    .line 1498
    const/16 v5, 0x1000

    .line 1499
    .line 1500
    invoke-virtual {v4, v13, v5}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 1501
    .line 1502
    .line 1503
    move/from16 v30, v2

    .line 1504
    .line 1505
    move v6, v13

    .line 1506
    const/4 v2, 0x1

    .line 1507
    goto :goto_27

    .line 1508
    :cond_4d
    move/from16 v30, v2

    .line 1509
    .line 1510
    move v6, v13

    .line 1511
    move/from16 v2, v16

    .line 1512
    .line 1513
    goto :goto_27

    .line 1514
    :goto_26
    move v6, v13

    .line 1515
    move/from16 v2, v16

    .line 1516
    .line 1517
    const/16 v30, 0x0

    .line 1518
    .line 1519
    :goto_27
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1520
    .line 1521
    if-nez v4, :cond_4e

    .line 1522
    .line 1523
    const/4 v4, 0x0

    .line 1524
    goto :goto_28

    .line 1525
    :cond_4e
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    .line 1526
    .line 1527
    .line 1528
    move-result v4

    .line 1529
    :goto_28
    const/4 v5, 0x0

    .line 1530
    :goto_29
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 1531
    .line 1532
    .line 1533
    move-result v13

    .line 1534
    if-ge v5, v13, :cond_4f

    .line 1535
    .line 1536
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v13

    .line 1540
    check-cast v13, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 1541
    .line 1542
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1543
    .line 1544
    invoke-virtual {v14, v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    .line 1545
    .line 1546
    .line 1547
    move-result v14

    .line 1548
    check-cast v13, Lcom/android/server/display/DisplayPowerController;

    .line 1549
    .line 1550
    invoke-virtual {v13, v3, v14, v4, v15}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    .line 1551
    .line 1552
    .line 1553
    add-int/lit8 v5, v5, 0x1

    .line 1554
    .line 1555
    goto :goto_29

    .line 1556
    :cond_4f
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 1557
    .line 1558
    cmpl-float v3, v3, v6

    .line 1559
    .line 1560
    if-eqz v3, :cond_50

    .line 1561
    .line 1562
    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 1563
    .line 1564
    :cond_50
    new-instance v3, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;

    .line 1565
    .line 1566
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mAwakenFromDozingInAutoBrightness:Z

    .line 1567
    .line 1568
    move/from16 v5, v26

    .line 1569
    .line 1570
    invoke-direct {v3, v5, v4}, Lcom/android/server/display/brightness/clamper/BrightnessModifierRequest;-><init>(IZ)V

    .line 1571
    .line 1572
    .line 1573
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 1574
    .line 1575
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1576
    .line 1577
    move/from16 v18, v15

    .line 1578
    .line 1579
    move v15, v6

    .line 1580
    move/from16 v16, v18

    .line 1581
    .line 1582
    move/from16 v17, v5

    .line 1583
    .line 1584
    move-object/from16 v18, v3

    .line 1585
    .line 1586
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->clamp(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZILcom/android/server/display/brightness/clamper/BrightnessModifierRequest;)Lcom/android/server/display/DisplayBrightnessState;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v13

    .line 1590
    iget v3, v13, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 1591
    .line 1592
    iget-boolean v4, v13, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    .line 1593
    .line 1594
    iget v14, v13, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    .line 1595
    .line 1596
    move/from16 v15, v32

    .line 1597
    .line 1598
    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    .line 1599
    .line 1600
    .line 1601
    move-result v14

    .line 1602
    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1603
    .line 1604
    move/from16 v16, v4

    .line 1605
    .line 1606
    iget-object v4, v13, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1607
    .line 1608
    iget v4, v4, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 1609
    .line 1610
    move/from16 v17, v10

    .line 1611
    .line 1612
    iget v10, v13, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    .line 1613
    .line 1614
    invoke-virtual {v15, v10, v4}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 1615
    .line 1616
    .line 1617
    iget v4, v13, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 1618
    .line 1619
    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mClampedMaxBrightness:F

    .line 1620
    .line 1621
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1622
    .line 1623
    iget v10, v10, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 1624
    .line 1625
    const/4 v15, 0x1

    .line 1626
    if-ne v10, v15, :cond_51

    .line 1627
    .line 1628
    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 1629
    .line 1630
    :cond_51
    if-eqz v2, :cond_52

    .line 1631
    .line 1632
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1633
    .line 1634
    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1635
    .line 1636
    const/4 v10, 0x2

    .line 1637
    if-eq v2, v10, :cond_52

    .line 1638
    .line 1639
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 1640
    .line 1641
    iget v10, v13, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    .line 1642
    .line 1643
    invoke-static {v6, v10, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 1644
    .line 1645
    .line 1646
    move-result v4

    .line 1647
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1648
    .line 1649
    invoke-virtual {v10}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 1650
    .line 1651
    .line 1652
    move-result v10

    .line 1653
    iget v15, v13, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    .line 1654
    .line 1655
    invoke-static {v10, v15}, Ljava/lang/Math;->min(FF)F

    .line 1656
    .line 1657
    .line 1658
    move-result v10

    .line 1659
    invoke-virtual {v2, v4, v10}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateScreenBrightnessSetting(FF)Z

    .line 1660
    .line 1661
    .line 1662
    move-result v2

    .line 1663
    move v10, v2

    .line 1664
    goto :goto_2a

    .line 1665
    :cond_52
    const/4 v10, 0x0

    .line 1666
    :goto_2a
    invoke-virtual {v0, v3, v5}, Lcom/android/server/display/DisplayPowerController;->getFinalBrightness(FI)F

    .line 1667
    .line 1668
    .line 1669
    move-result v15

    .line 1670
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 1671
    .line 1672
    if-eqz v2, :cond_53

    .line 1673
    .line 1674
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 1675
    .line 1676
    const-string v3, "ForceSlowChange is requested, set slowChange as true"

    .line 1677
    .line 1678
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    .line 1680
    .line 1681
    const/16 v16, 0x1

    .line 1682
    .line 1683
    :cond_53
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1684
    .line 1685
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 1686
    .line 1687
    invoke-virtual {v3}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->getBrightnessMaxReason()I

    .line 1688
    .line 1689
    .line 1690
    move-result v3

    .line 1691
    invoke-virtual {v2, v3, v15, v6}, Lcom/android/server/display/BrightnessRangeController;->onBrightnessChanged(IFF)V

    .line 1692
    .line 1693
    .line 1694
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1695
    .line 1696
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    .line 1697
    .line 1698
    .line 1699
    move-result v2

    .line 1700
    const/4 v3, 0x7

    .line 1701
    if-eq v2, v3, :cond_55

    .line 1702
    .line 1703
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1704
    .line 1705
    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    .line 1706
    .line 1707
    .line 1708
    move-result v2

    .line 1709
    if-eqz v2, :cond_54

    .line 1710
    .line 1711
    goto :goto_2b

    .line 1712
    :cond_54
    const/16 v18, 0x0

    .line 1713
    .line 1714
    goto :goto_2c

    .line 1715
    :cond_55
    :goto_2b
    const/16 v18, 0x1

    .line 1716
    .line 1717
    :goto_2c
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 1718
    .line 1719
    if-nez v2, :cond_89

    .line 1720
    .line 1721
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 1722
    .line 1723
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->shouldSkipRampBecauseOfProximityChangeToNegative()Z

    .line 1724
    .line 1725
    .line 1726
    move-result v2

    .line 1727
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1728
    .line 1729
    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 1730
    .line 1731
    .line 1732
    move-result v3

    .line 1733
    if-eqz v3, :cond_57

    .line 1734
    .line 1735
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    .line 1736
    .line 1737
    if-eqz v3, :cond_56

    .line 1738
    .line 1739
    if-eqz v1, :cond_57

    .line 1740
    .line 1741
    :cond_56
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    .line 1742
    .line 1743
    if-nez v1, :cond_57

    .line 1744
    .line 1745
    const/4 v1, 0x1

    .line 1746
    goto :goto_2d

    .line 1747
    :cond_57
    const/4 v1, 0x0

    .line 1748
    :goto_2d
    invoke-static {v5}, Landroid/view/Display;->isDozeState(I)Z

    .line 1749
    .line 1750
    .line 1751
    move-result v3

    .line 1752
    if-eqz v3, :cond_58

    .line 1753
    .line 1754
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1755
    .line 1756
    iget v3, v3, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    .line 1757
    .line 1758
    const/16 v4, 0xe

    .line 1759
    .line 1760
    if-ne v3, v4, :cond_58

    .line 1761
    .line 1762
    const/4 v3, 0x1

    .line 1763
    goto :goto_2e

    .line 1764
    :cond_58
    const/4 v3, 0x0

    .line 1765
    :goto_2e
    invoke-static {v5}, Landroid/view/Display;->isDozeState(I)Z

    .line 1766
    .line 1767
    .line 1768
    move-result v4

    .line 1769
    sget-boolean v27, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_BRIGHTNESS_ANIM:Z

    .line 1770
    .line 1771
    if-nez v27, :cond_59

    .line 1772
    .line 1773
    if-eqz v4, :cond_59

    .line 1774
    .line 1775
    const/16 v27, 0x1

    .line 1776
    .line 1777
    goto :goto_2f

    .line 1778
    :cond_59
    const/16 v27, 0x0

    .line 1779
    .line 1780
    :goto_2f
    invoke-static {v5}, Landroid/view/Display;->isDozeState(I)Z

    .line 1781
    .line 1782
    .line 1783
    move-result v31

    .line 1784
    if-eqz v31, :cond_5a

    .line 1785
    .line 1786
    move/from16 v31, v5

    .line 1787
    .line 1788
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 1789
    .line 1790
    if-eqz v5, :cond_5b

    .line 1791
    .line 1792
    move/from16 v32, v6

    .line 1793
    .line 1794
    const/4 v5, 0x1

    .line 1795
    goto :goto_30

    .line 1796
    :cond_5a
    move/from16 v31, v5

    .line 1797
    .line 1798
    :cond_5b
    move/from16 v32, v6

    .line 1799
    .line 1800
    const/4 v5, 0x0

    .line 1801
    :goto_30
    iget-boolean v6, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 1802
    .line 1803
    if-eqz v6, :cond_5c

    .line 1804
    .line 1805
    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1806
    .line 1807
    iget v6, v6, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 1808
    .line 1809
    const/high16 v34, 0x3f800000    # 1.0f

    .line 1810
    .line 1811
    cmpl-float v6, v6, v34

    .line 1812
    .line 1813
    if-nez v6, :cond_5c

    .line 1814
    .line 1815
    move/from16 v34, v12

    .line 1816
    .line 1817
    const/4 v6, 0x1

    .line 1818
    goto :goto_31

    .line 1819
    :cond_5c
    move/from16 v34, v12

    .line 1820
    .line 1821
    const/4 v6, 0x0

    .line 1822
    :goto_31
    invoke-virtual {v0, v15}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    .line 1823
    .line 1824
    .line 1825
    move-result v12

    .line 1826
    move/from16 v35, v11

    .line 1827
    .line 1828
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1829
    .line 1830
    iget-object v11, v11, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 1831
    .line 1832
    iget v11, v11, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 1833
    .line 1834
    move-object/from16 v36, v13

    .line 1835
    .line 1836
    const/4 v13, 0x2

    .line 1837
    if-ne v11, v13, :cond_63

    .line 1838
    .line 1839
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1840
    .line 1841
    iget v11, v11, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    .line 1842
    .line 1843
    and-int/2addr v11, v13

    .line 1844
    if-eqz v11, :cond_5d

    .line 1845
    .line 1846
    const/4 v11, 0x1

    .line 1847
    goto :goto_32

    .line 1848
    :cond_5d
    const/4 v11, 0x0

    .line 1849
    :goto_32
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 1850
    .line 1851
    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 1852
    .line 1853
    .line 1854
    move-result v13

    .line 1855
    if-eqz v13, :cond_5f

    .line 1856
    .line 1857
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1858
    .line 1859
    if-eqz v13, :cond_5e

    .line 1860
    .line 1861
    iget-boolean v13, v13, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 1862
    .line 1863
    if-eqz v13, :cond_5e

    .line 1864
    .line 1865
    goto :goto_33

    .line 1866
    :cond_5e
    const/4 v13, 0x0

    .line 1867
    goto :goto_34

    .line 1868
    :cond_5f
    :goto_33
    const/4 v13, 0x1

    .line 1869
    :goto_34
    if-nez v11, :cond_62

    .line 1870
    .line 1871
    if-eqz v13, :cond_62

    .line 1872
    .line 1873
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1874
    .line 1875
    invoke-virtual {v11}, Lcom/android/server/display/BrightnessRangeController;->getHdrBrightnessValue()F

    .line 1876
    .line 1877
    .line 1878
    move-result v11

    .line 1879
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 1880
    .line 1881
    invoke-virtual {v13}, Lcom/android/server/display/BrightnessRangeController;->getHdrTransitionRate()F

    .line 1882
    .line 1883
    .line 1884
    move-result v13

    .line 1885
    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    .line 1886
    .line 1887
    .line 1888
    move-result v14

    .line 1889
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1890
    .line 1891
    move/from16 v37, v14

    .line 1892
    .line 1893
    const/4 v14, 0x4

    .line 1894
    invoke-virtual {v13, v11, v14}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 1895
    .line 1896
    .line 1897
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1898
    .line 1899
    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hdrMaxBrightness:F

    .line 1900
    .line 1901
    cmpl-float v14, v11, v13

    .line 1902
    .line 1903
    if-ltz v14, :cond_60

    .line 1904
    .line 1905
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    .line 1906
    .line 1907
    .line 1908
    move-result v11

    .line 1909
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1910
    .line 1911
    const/high16 v14, 0x20000

    .line 1912
    .line 1913
    invoke-virtual {v13, v11, v14}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 1914
    .line 1915
    .line 1916
    :cond_60
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1917
    .line 1918
    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 1919
    .line 1920
    cmpl-float v14, v11, v13

    .line 1921
    .line 1922
    if-ltz v14, :cond_61

    .line 1923
    .line 1924
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 1925
    .line 1926
    const/16 v14, 0x20

    .line 1927
    .line 1928
    invoke-virtual {v11, v13, v14}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    .line 1929
    .line 1930
    .line 1931
    move/from16 v39, v8

    .line 1932
    .line 1933
    move/from16 v38, v10

    .line 1934
    .line 1935
    move v11, v13

    .line 1936
    move/from16 v26, v14

    .line 1937
    .line 1938
    :goto_35
    move/from16 v14, v37

    .line 1939
    .line 1940
    goto :goto_37

    .line 1941
    :cond_61
    move/from16 v39, v8

    .line 1942
    .line 1943
    move/from16 v38, v10

    .line 1944
    .line 1945
    move/from16 v14, v37

    .line 1946
    .line 1947
    const/16 v26, 0x20

    .line 1948
    .line 1949
    goto :goto_37

    .line 1950
    :cond_62
    const/16 v26, 0x20

    .line 1951
    .line 1952
    move/from16 v37, v14

    .line 1953
    .line 1954
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 1955
    .line 1956
    move/from16 v38, v10

    .line 1957
    .line 1958
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1959
    .line 1960
    move/from16 v39, v8

    .line 1961
    .line 1962
    const-string/jumbo v8, "pending hdr: low power: "

    .line 1963
    .line 1964
    .line 1965
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1966
    .line 1967
    .line 1968
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1969
    .line 1970
    .line 1971
    const-string v8, " brightness ready: "

    .line 1972
    .line 1973
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    .line 1975
    .line 1976
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1977
    .line 1978
    .line 1979
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v8

    .line 1983
    invoke-static {v14, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    .line 1985
    .line 1986
    goto :goto_36

    .line 1987
    :cond_63
    move/from16 v39, v8

    .line 1988
    .line 1989
    move/from16 v38, v10

    .line 1990
    .line 1991
    move/from16 v37, v14

    .line 1992
    .line 1993
    const/16 v26, 0x20

    .line 1994
    .line 1995
    :goto_36
    move v11, v12

    .line 1996
    goto :goto_35

    .line 1997
    :goto_37
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1998
    .line 1999
    iget v10, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 2000
    .line 2001
    const/4 v13, 0x1

    .line 2002
    if-ne v10, v13, :cond_65

    .line 2003
    .line 2004
    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2005
    .line 2006
    if-eqz v8, :cond_64

    .line 2007
    .line 2008
    const/4 v10, 0x4

    .line 2009
    if-eq v8, v10, :cond_64

    .line 2010
    .line 2011
    const/4 v10, 0x6

    .line 2012
    if-ne v8, v10, :cond_65

    .line 2013
    .line 2014
    :cond_64
    const/16 v16, 0x0

    .line 2015
    .line 2016
    const/high16 v20, -0x40800000    # -1.0f

    .line 2017
    .line 2018
    goto :goto_38

    .line 2019
    :cond_65
    move/from16 v20, v14

    .line 2020
    .line 2021
    :goto_38
    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2022
    .line 2023
    iget v10, v8, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 2024
    .line 2025
    iget v8, v8, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 2026
    .line 2027
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->shouldEnableMoreFastRampRateCase()Z

    .line 2028
    .line 2029
    .line 2030
    move-result v13

    .line 2031
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->shouldEnableHdrRampRateCase()Z

    .line 2032
    .line 2033
    .line 2034
    move-result v14

    .line 2035
    move/from16 v33, v9

    .line 2036
    .line 2037
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2038
    .line 2039
    invoke-virtual {v9}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    .line 2040
    .line 2041
    .line 2042
    move-result v9

    .line 2043
    move/from16 v40, v15

    .line 2044
    .line 2045
    const/16 v15, 0xa

    .line 2046
    .line 2047
    if-ne v9, v15, :cond_66

    .line 2048
    .line 2049
    const/4 v9, 0x1

    .line 2050
    goto :goto_39

    .line 2051
    :cond_66
    const/4 v9, 0x0

    .line 2052
    :goto_39
    iget-boolean v15, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    .line 2053
    .line 2054
    if-nez v15, :cond_68

    .line 2055
    .line 2056
    if-eqz v23, :cond_67

    .line 2057
    .line 2058
    goto :goto_3a

    .line 2059
    :cond_67
    move-object/from16 v23, v7

    .line 2060
    .line 2061
    const/4 v15, 0x0

    .line 2062
    goto :goto_3b

    .line 2063
    :cond_68
    :goto_3a
    move-object/from16 v23, v7

    .line 2064
    .line 2065
    const/4 v15, 0x1

    .line 2066
    :goto_3b
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2067
    .line 2068
    iget-object v7, v7, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    .line 2069
    .line 2070
    iget v7, v7, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 2071
    .line 2072
    invoke-static {v7}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 2073
    .line 2074
    .line 2075
    move-result v7

    .line 2076
    invoke-static {v11}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 2077
    .line 2078
    .line 2079
    move-result v41

    .line 2080
    sub-int v7, v7, v41

    .line 2081
    .line 2082
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 2083
    .line 2084
    .line 2085
    move-result v7

    .line 2086
    move/from16 v41, v9

    .line 2087
    .line 2088
    const/4 v9, 0x1

    .line 2089
    if-gt v7, v9, :cond_69

    .line 2090
    .line 2091
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2092
    .line 2093
    invoke-virtual {v7}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 2094
    .line 2095
    .line 2096
    move-result v7

    .line 2097
    if-nez v7, :cond_69

    .line 2098
    .line 2099
    const/4 v7, 0x1

    .line 2100
    goto :goto_3c

    .line 2101
    :cond_69
    const/4 v7, 0x0

    .line 2102
    :goto_3c
    invoke-static {v11}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    .line 2103
    .line 2104
    .line 2105
    move-result v9

    .line 2106
    if-eqz v9, :cond_6a

    .line 2107
    .line 2108
    cmpl-float v9, v11, v10

    .line 2109
    .line 2110
    if-nez v9, :cond_6b

    .line 2111
    .line 2112
    cmpl-float v10, v12, v8

    .line 2113
    .line 2114
    if-eqz v10, :cond_6a

    .line 2115
    .line 2116
    goto :goto_3d

    .line 2117
    :cond_6a
    move-object/from16 v10, v22

    .line 2118
    .line 2119
    move/from16 v22, v26

    .line 2120
    .line 2121
    move/from16 v13, v31

    .line 2122
    .line 2123
    move/from16 v12, v32

    .line 2124
    .line 2125
    const/4 v7, 0x2

    .line 2126
    const/4 v8, 0x7

    .line 2127
    const/16 v24, 0x0

    .line 2128
    .line 2129
    goto/16 :goto_4b

    .line 2130
    .line 2131
    :cond_6b
    :goto_3d
    if-nez v2, :cond_6f

    .line 2132
    .line 2133
    if-nez v5, :cond_6f

    .line 2134
    .line 2135
    if-eqz v6, :cond_6f

    .line 2136
    .line 2137
    if-eqz v18, :cond_6c

    .line 2138
    .line 2139
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 2140
    .line 2141
    if-eqz v2, :cond_6f

    .line 2142
    .line 2143
    :cond_6c
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 2144
    .line 2145
    if-nez v2, :cond_6f

    .line 2146
    .line 2147
    if-nez v1, :cond_6f

    .line 2148
    .line 2149
    if-nez v3, :cond_6f

    .line 2150
    .line 2151
    if-nez v27, :cond_6f

    .line 2152
    .line 2153
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2154
    .line 2155
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    .line 2156
    .line 2157
    .line 2158
    move-result v1

    .line 2159
    const/4 v2, 0x6

    .line 2160
    if-ne v1, v2, :cond_6d

    .line 2161
    .line 2162
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2163
    .line 2164
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2165
    .line 2166
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->isStartBrightnessChanged(Lcom/android/server/display/brightness/BrightnessReason;)Z

    .line 2167
    .line 2168
    .line 2169
    move-result v1

    .line 2170
    if-eqz v1, :cond_6d

    .line 2171
    .line 2172
    if-nez v13, :cond_6d

    .line 2173
    .line 2174
    goto :goto_3e

    .line 2175
    :cond_6d
    if-nez v30, :cond_6f

    .line 2176
    .line 2177
    if-eqz v7, :cond_6e

    .line 2178
    .line 2179
    goto :goto_3e

    .line 2180
    :cond_6e
    const/4 v1, 0x0

    .line 2181
    goto :goto_3f

    .line 2182
    :cond_6f
    :goto_3e
    const/4 v1, 0x1

    .line 2183
    :goto_3f
    invoke-static {v12, v8}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 2184
    .line 2185
    .line 2186
    move-result v2

    .line 2187
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 2188
    .line 2189
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isFastHdrTransitionsEnabled()Z

    .line 2190
    .line 2191
    .line 2192
    move-result v3

    .line 2193
    if-eqz v3, :cond_70

    .line 2194
    .line 2195
    if-nez v1, :cond_70

    .line 2196
    .line 2197
    if-eqz v2, :cond_70

    .line 2198
    .line 2199
    const/16 v16, 0x0

    .line 2200
    .line 2201
    :cond_70
    if-eqz v1, :cond_71

    .line 2202
    .line 2203
    const/4 v5, 0x0

    .line 2204
    move-object/from16 v1, p0

    .line 2205
    .line 2206
    move v2, v11

    .line 2207
    const/4 v8, 0x7

    .line 2208
    move v3, v12

    .line 2209
    move-object/from16 v10, v22

    .line 2210
    .line 2211
    move/from16 v22, v26

    .line 2212
    .line 2213
    const/4 v6, 0x0

    .line 2214
    const/4 v7, 0x2

    .line 2215
    move v4, v6

    .line 2216
    move/from16 v24, v6

    .line 2217
    .line 2218
    move/from16 v6, v31

    .line 2219
    .line 2220
    move v9, v6

    .line 2221
    move/from16 v12, v32

    .line 2222
    .line 2223
    move/from16 v6, v24

    .line 2224
    .line 2225
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZF)V

    .line 2226
    .line 2227
    .line 2228
    move v13, v9

    .line 2229
    move/from16 v9, v24

    .line 2230
    .line 2231
    move v14, v9

    .line 2232
    goto/16 :goto_4c

    .line 2233
    .line 2234
    :cond_71
    move-object/from16 v10, v22

    .line 2235
    .line 2236
    move/from16 v22, v26

    .line 2237
    .line 2238
    move/from16 v6, v31

    .line 2239
    .line 2240
    move/from16 v5, v32

    .line 2241
    .line 2242
    const/4 v7, 0x2

    .line 2243
    const/4 v8, 0x7

    .line 2244
    const/16 v24, 0x0

    .line 2245
    .line 2246
    cmpl-float v1, v20, v24

    .line 2247
    .line 2248
    if-lez v1, :cond_72

    .line 2249
    .line 2250
    const/4 v9, 0x1

    .line 2251
    move-object/from16 v1, p0

    .line 2252
    .line 2253
    move v2, v11

    .line 2254
    move v3, v12

    .line 2255
    move/from16 v4, v20

    .line 2256
    .line 2257
    move v12, v5

    .line 2258
    move v5, v9

    .line 2259
    move v9, v6

    .line 2260
    move/from16 v6, v20

    .line 2261
    .line 2262
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZF)V

    .line 2263
    .line 2264
    .line 2265
    move v13, v9

    .line 2266
    goto/16 :goto_4b

    .line 2267
    .line 2268
    :cond_72
    if-lez v9, :cond_73

    .line 2269
    .line 2270
    const/4 v1, 0x1

    .line 2271
    goto :goto_40

    .line 2272
    :cond_73
    const/4 v1, 0x0

    .line 2273
    :goto_40
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2274
    .line 2275
    if-eqz v2, :cond_74

    .line 2276
    .line 2277
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    .line 2278
    .line 2279
    .line 2280
    move-result v2

    .line 2281
    if-eqz v2, :cond_74

    .line 2282
    .line 2283
    const/4 v2, 0x1

    .line 2284
    goto :goto_41

    .line 2285
    :cond_74
    const/4 v2, 0x0

    .line 2286
    :goto_41
    if-eqz v1, :cond_76

    .line 2287
    .line 2288
    if-eqz v16, :cond_76

    .line 2289
    .line 2290
    if-eqz v2, :cond_75

    .line 2291
    .line 2292
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    .line 2293
    .line 2294
    goto :goto_42

    .line 2295
    :cond_75
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    .line 2296
    .line 2297
    :goto_42
    move/from16 v25, v19

    .line 2298
    .line 2299
    goto :goto_45

    .line 2300
    :cond_76
    if-eqz v1, :cond_77

    .line 2301
    .line 2302
    if-nez v16, :cond_77

    .line 2303
    .line 2304
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    .line 2305
    .line 2306
    goto :goto_42

    .line 2307
    :cond_77
    if-nez v1, :cond_7a

    .line 2308
    .line 2309
    if-eqz v16, :cond_7a

    .line 2310
    .line 2311
    if-eqz v2, :cond_78

    .line 2312
    .line 2313
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    .line 2314
    .line 2315
    :goto_43
    move/from16 v21, v2

    .line 2316
    .line 2317
    goto :goto_44

    .line 2318
    :cond_78
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    .line 2319
    .line 2320
    .line 2321
    move-result v2

    .line 2322
    if-nez v2, :cond_79

    .line 2323
    .line 2324
    goto :goto_44

    .line 2325
    :cond_79
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    .line 2326
    .line 2327
    goto :goto_43

    .line 2328
    :goto_44
    move/from16 v2, v21

    .line 2329
    .line 2330
    goto :goto_45

    .line 2331
    :cond_7a
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    .line 2332
    .line 2333
    goto :goto_42

    .line 2334
    :goto_45
    if-eqz v13, :cond_7b

    .line 2335
    .line 2336
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mMoreFastRampRate:F

    .line 2337
    .line 2338
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 2339
    .line 2340
    .line 2341
    move-result v2

    .line 2342
    goto :goto_46

    .line 2343
    :cond_7b
    move/from16 v19, v25

    .line 2344
    .line 2345
    :goto_46
    if-eqz v4, :cond_7c

    .line 2346
    .line 2347
    const v2, 0x3eb33333    # 0.35f

    .line 2348
    .line 2349
    .line 2350
    :cond_7c
    if-eqz v15, :cond_7e

    .line 2351
    .line 2352
    if-eqz v1, :cond_7d

    .line 2353
    .line 2354
    move/from16 v2, v24

    .line 2355
    .line 2356
    goto :goto_47

    .line 2357
    :cond_7d
    sget v2, Lcom/android/server/display/DisplayPowerController;->RATE_FROM_DOZE_TO_ON:F

    .line 2358
    .line 2359
    :cond_7e
    :goto_47
    if-eqz v14, :cond_80

    .line 2360
    .line 2361
    if-eqz v1, :cond_7f

    .line 2362
    .line 2363
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrIncrease:F

    .line 2364
    .line 2365
    goto :goto_48

    .line 2366
    :cond_7f
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrDecrease:F

    .line 2367
    .line 2368
    :cond_80
    :goto_48
    if-eqz v41, :cond_81

    .line 2369
    .line 2370
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeed:F

    .line 2371
    .line 2372
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeedAtHbm:F

    .line 2373
    .line 2374
    move v9, v1

    .line 2375
    move/from16 v19, v2

    .line 2376
    .line 2377
    goto :goto_49

    .line 2378
    :cond_81
    move v9, v2

    .line 2379
    :goto_49
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2380
    .line 2381
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getTarget()F

    .line 2382
    .line 2383
    .line 2384
    move-result v1

    .line 2385
    cmpl-float v1, v1, v11

    .line 2386
    .line 2387
    if-eqz v1, :cond_82

    .line 2388
    .line 2389
    const/4 v13, 0x0

    .line 2390
    move-object/from16 v1, p0

    .line 2391
    .line 2392
    move v2, v11

    .line 2393
    move v3, v12

    .line 2394
    move v4, v9

    .line 2395
    move v12, v5

    .line 2396
    move v5, v13

    .line 2397
    move v13, v6

    .line 2398
    move/from16 v6, v19

    .line 2399
    .line 2400
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZF)V

    .line 2401
    .line 2402
    .line 2403
    goto :goto_4a

    .line 2404
    :cond_82
    move v12, v5

    .line 2405
    move v13, v6

    .line 2406
    :goto_4a
    move/from16 v14, v19

    .line 2407
    .line 2408
    goto :goto_4c

    .line 2409
    :goto_4b
    move/from16 v14, v19

    .line 2410
    .line 2411
    move/from16 v9, v24

    .line 2412
    .line 2413
    :goto_4c
    const/4 v1, 0x0

    .line 2414
    :goto_4d
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    .line 2415
    .line 2416
    .line 2417
    move-result v2

    .line 2418
    if-ge v1, v2, :cond_83

    .line 2419
    .line 2420
    move-object/from16 v2, v23

    .line 2421
    .line 2422
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 2423
    .line 2424
    .line 2425
    move-result-object v3

    .line 2426
    check-cast v3, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 2427
    .line 2428
    check-cast v3, Lcom/android/server/display/DisplayPowerController;

    .line 2429
    .line 2430
    invoke-virtual {v3, v9, v14}, Lcom/android/server/display/DisplayPowerController;->setRampSpeedToFollower(FF)V

    .line 2431
    .line 2432
    .line 2433
    add-int/lit8 v1, v1, 0x1

    .line 2434
    .line 2435
    goto :goto_4d

    .line 2436
    :cond_83
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2437
    .line 2438
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 2439
    .line 2440
    .line 2441
    move-result v1

    .line 2442
    if-nez v1, :cond_84

    .line 2443
    .line 2444
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 2445
    .line 2446
    if-eqz v1, :cond_84

    .line 2447
    .line 2448
    const/4 v1, 0x0

    .line 2449
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 2450
    .line 2451
    :cond_84
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 2452
    .line 2453
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 2454
    .line 2455
    .line 2456
    move-result v5

    .line 2457
    iget-boolean v15, v10, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 2458
    .line 2459
    move-object/from16 v1, p0

    .line 2460
    .line 2461
    move/from16 v2, v40

    .line 2462
    .line 2463
    move/from16 v3, v33

    .line 2464
    .line 2465
    move/from16 v4, v39

    .line 2466
    .line 2467
    move/from16 v6, v18

    .line 2468
    .line 2469
    move v7, v15

    .line 2470
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessTrackerChanged(FZZZZZ)V

    .line 2471
    .line 2472
    .line 2473
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 2474
    .line 2475
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    .line 2476
    .line 2477
    .line 2478
    move-result v1

    .line 2479
    if-nez v1, :cond_85

    .line 2480
    .line 2481
    if-eqz v30, :cond_86

    .line 2482
    .line 2483
    :cond_85
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    .line 2484
    .line 2485
    if-nez v1, :cond_86

    .line 2486
    .line 2487
    const/4 v1, 0x1

    .line 2488
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    .line 2489
    .line 2490
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    .line 2491
    .line 2492
    if-eqz v1, :cond_86

    .line 2493
    .line 2494
    const/4 v1, 0x0

    .line 2495
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    .line 2496
    .line 2497
    :cond_86
    if-eqz v38, :cond_88

    .line 2498
    .line 2499
    if-nez v33, :cond_88

    .line 2500
    .line 2501
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 2502
    .line 2503
    if-eqz v1, :cond_87

    .line 2504
    .line 2505
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    .line 2506
    .line 2507
    if-eqz v1, :cond_88

    .line 2508
    .line 2509
    :cond_87
    invoke-virtual {v0, v9, v14, v11}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessTransitionTime(FFF)V

    .line 2510
    .line 2511
    .line 2512
    :cond_88
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2513
    .line 2514
    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    .line 2515
    .line 2516
    .line 2517
    move-result v1

    .line 2518
    move-object/from16 v2, v36

    .line 2519
    .line 2520
    invoke-virtual {v0, v1, v11, v2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    .line 2521
    .line 2522
    .line 2523
    move-result v1

    .line 2524
    goto :goto_4e

    .line 2525
    :cond_89
    move/from16 v39, v8

    .line 2526
    .line 2527
    move/from16 v35, v11

    .line 2528
    .line 2529
    move/from16 v34, v12

    .line 2530
    .line 2531
    move-object v2, v13

    .line 2532
    move/from16 v40, v15

    .line 2533
    .line 2534
    move-object/from16 v10, v22

    .line 2535
    .line 2536
    const/16 v22, 0x20

    .line 2537
    .line 2538
    move v8, v3

    .line 2539
    move v13, v5

    .line 2540
    move v12, v6

    .line 2541
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 2542
    .line 2543
    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    .line 2544
    .line 2545
    .line 2546
    move-result v1

    .line 2547
    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    .line 2548
    .line 2549
    .line 2550
    move-result v1

    .line 2551
    :goto_4e
    if-eqz v1, :cond_8a

    .line 2552
    .line 2553
    if-nez v18, :cond_8a

    .line 2554
    .line 2555
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 2556
    .line 2557
    .line 2558
    :cond_8a
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2559
    .line 2560
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2561
    .line 2562
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    .line 2563
    .line 2564
    .line 2565
    move-result v1

    .line 2566
    if-eqz v1, :cond_8b

    .line 2567
    .line 2568
    if-eqz v35, :cond_8c

    .line 2569
    .line 2570
    :cond_8b
    move/from16 v3, v40

    .line 2571
    .line 2572
    goto :goto_50

    .line 2573
    :cond_8c
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2574
    .line 2575
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    .line 2576
    .line 2577
    .line 2578
    move-result v1

    .line 2579
    const/4 v2, 0x1

    .line 2580
    if-ne v1, v2, :cond_8d

    .line 2581
    .line 2582
    if-eqz v28, :cond_8d

    .line 2583
    .line 2584
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 2585
    .line 2586
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2587
    .line 2588
    const-string v3, "Brightness ["

    .line 2589
    .line 2590
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2591
    .line 2592
    .line 2593
    move/from16 v3, v40

    .line 2594
    .line 2595
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2596
    .line 2597
    .line 2598
    const-string v4, "] manual adjustment."

    .line 2599
    .line 2600
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    .line 2602
    .line 2603
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2604
    .line 2605
    .line 2606
    move-result-object v2

    .line 2607
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    .line 2609
    .line 2610
    :goto_4f
    move/from16 v5, v35

    .line 2611
    .line 2612
    goto :goto_51

    .line 2613
    :cond_8d
    move/from16 v3, v40

    .line 2614
    .line 2615
    goto :goto_4f

    .line 2616
    :goto_50
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 2617
    .line 2618
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2619
    .line 2620
    const-string v4, "Brightness ["

    .line 2621
    .line 2622
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2623
    .line 2624
    .line 2625
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2626
    .line 2627
    .line 2628
    const-string v4, "] reason changing to: \'"

    .line 2629
    .line 2630
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    .line 2632
    .line 2633
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2634
    .line 2635
    move/from16 v5, v35

    .line 2636
    .line 2637
    invoke-virtual {v4, v5}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    .line 2638
    .line 2639
    .line 2640
    move-result-object v4

    .line 2641
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    .line 2643
    .line 2644
    const-string v4, "\', previous reason: \'"

    .line 2645
    .line 2646
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    .line 2648
    .line 2649
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2650
    .line 2651
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2652
    .line 2653
    .line 2654
    const-string v4, "\'."

    .line 2655
    .line 2656
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
    .line 2658
    .line 2659
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2660
    .line 2661
    .line 2662
    move-result-object v2

    .line 2663
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    .line 2665
    .line 2666
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2667
    .line 2668
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2669
    .line 2670
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 2671
    .line 2672
    .line 2673
    :goto_51
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2674
    .line 2675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2676
    .line 2677
    .line 2678
    move-result-wide v6

    .line 2679
    invoke-virtual {v1, v6, v7}, Lcom/android/server/display/brightness/BrightnessEvent;->setTime(J)V

    .line 2680
    .line 2681
    .line 2682
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2683
    .line 2684
    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setBrightness(F)V

    .line 2685
    .line 2686
    .line 2687
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2688
    .line 2689
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    .line 2690
    .line 2691
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayId(Ljava/lang/String;)V

    .line 2692
    .line 2693
    .line 2694
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2695
    .line 2696
    invoke-virtual {v1, v13}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayState(I)V

    .line 2697
    .line 2698
    .line 2699
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2700
    .line 2701
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2702
    .line 2703
    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 2704
    .line 2705
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayPolicy(I)V

    .line 2706
    .line 2707
    .line 2708
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2709
    .line 2710
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2711
    .line 2712
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setReason(Lcom/android/server/display/brightness/BrightnessReason;)V

    .line 2713
    .line 2714
    .line 2715
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2716
    .line 2717
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2718
    .line 2719
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    .line 2720
    .line 2721
    .line 2722
    move-result v2

    .line 2723
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMax(F)V

    .line 2724
    .line 2725
    .line 2726
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2727
    .line 2728
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    .line 2729
    .line 2730
    iget-object v2, v2, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 2731
    .line 2732
    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 2733
    .line 2734
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMode(I)V

    .line 2735
    .line 2736
    .line 2737
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2738
    .line 2739
    iget v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 2740
    .line 2741
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2742
    .line 2743
    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 2744
    .line 2745
    if-eqz v3, :cond_8e

    .line 2746
    .line 2747
    move/from16 v9, v22

    .line 2748
    .line 2749
    goto :goto_52

    .line 2750
    :cond_8e
    const/4 v9, 0x0

    .line 2751
    :goto_52
    or-int/2addr v2, v9

    .line 2752
    iput v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 2753
    .line 2754
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->setRbcStrength()V

    .line 2755
    .line 2756
    .line 2757
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2758
    .line 2759
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 2760
    .line 2761
    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 2762
    .line 2763
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPowerFactor(F)V

    .line 2764
    .line 2765
    .line 2766
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2767
    .line 2768
    move/from16 v2, v39

    .line 2769
    .line 2770
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setWasShortTermModelActive(Z)V

    .line 2771
    .line 2772
    .line 2773
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2774
    .line 2775
    iget-object v2, v10, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    .line 2776
    .line 2777
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayBrightnessStrategyName(Ljava/lang/String;)V

    .line 2778
    .line 2779
    .line 2780
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2781
    .line 2782
    iget-boolean v2, v10, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    .line 2783
    .line 2784
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setAutomaticBrightnessEnabled(Z)V

    .line 2785
    .line 2786
    .line 2787
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2788
    .line 2789
    iget-object v1, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2790
    .line 2791
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    .line 2792
    .line 2793
    .line 2794
    move-result v1

    .line 2795
    if-ne v1, v8, :cond_8f

    .line 2796
    .line 2797
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2798
    .line 2799
    iget-object v1, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2800
    .line 2801
    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    .line 2802
    .line 2803
    .line 2804
    move-result v1

    .line 2805
    if-ne v1, v8, :cond_8f

    .line 2806
    .line 2807
    const/4 v1, 0x1

    .line 2808
    goto :goto_53

    .line 2809
    :cond_8f
    const/4 v1, 0x0

    .line 2810
    :goto_53
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2811
    .line 2812
    iget v3, v2, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 2813
    .line 2814
    const/16 v29, 0x1

    .line 2815
    .line 2816
    and-int/lit8 v3, v3, 0x1

    .line 2817
    .line 2818
    if-eqz v3, :cond_90

    .line 2819
    .line 2820
    move/from16 v3, v29

    .line 2821
    .line 2822
    goto :goto_54

    .line 2823
    :cond_90
    const/4 v3, 0x0

    .line 2824
    :goto_54
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2825
    .line 2826
    iget v6, v4, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 2827
    .line 2828
    and-int/lit8 v6, v6, 0x1

    .line 2829
    .line 2830
    if-eqz v6, :cond_91

    .line 2831
    .line 2832
    const/4 v6, 0x1

    .line 2833
    goto :goto_55

    .line 2834
    :cond_91
    const/4 v6, 0x0

    .line 2835
    :goto_55
    if-eq v3, v6, :cond_92

    .line 2836
    .line 2837
    const/4 v3, 0x1

    .line 2838
    goto :goto_56

    .line 2839
    :cond_92
    const/4 v3, 0x0

    .line 2840
    :goto_56
    invoke-virtual {v4, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z

    .line 2841
    .line 2842
    .line 2843
    move-result v2

    .line 2844
    if-nez v2, :cond_93

    .line 2845
    .line 2846
    if-eqz v1, :cond_94

    .line 2847
    .line 2848
    :cond_93
    if-eqz v5, :cond_99

    .line 2849
    .line 2850
    :cond_94
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2851
    .line 2852
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2853
    .line 2854
    iget v2, v2, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    .line 2855
    .line 2856
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setInitialBrightness(F)V

    .line 2857
    .line 2858
    .line 2859
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2860
    .line 2861
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2862
    .line 2863
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 2864
    .line 2865
    .line 2866
    new-instance v1, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2867
    .line 2868
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2869
    .line 2870
    invoke-direct {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(Lcom/android/server/display/brightness/BrightnessEvent;)V

    .line 2871
    .line 2872
    .line 2873
    invoke-virtual {v1, v5}, Lcom/android/server/display/brightness/BrightnessEvent;->setAdjustmentFlags(I)V

    .line 2874
    .line 2875
    .line 2876
    iget v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 2877
    .line 2878
    if-eqz v28, :cond_95

    .line 2879
    .line 2880
    const/16 v9, 0x8

    .line 2881
    .line 2882
    goto :goto_57

    .line 2883
    :cond_95
    const/4 v9, 0x0

    .line 2884
    :goto_57
    or-int/2addr v2, v9

    .line 2885
    iput v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    .line 2886
    .line 2887
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 2888
    .line 2889
    const/4 v9, 0x0

    .line 2890
    invoke-virtual {v1, v9}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    .line 2891
    .line 2892
    .line 2893
    move-result-object v4

    .line 2894
    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    .line 2896
    .line 2897
    if-nez v28, :cond_96

    .line 2898
    .line 2899
    iget-object v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    .line 2900
    .line 2901
    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    .line 2902
    .line 2903
    .line 2904
    move-result v2

    .line 2905
    if-eq v2, v8, :cond_97

    .line 2906
    .line 2907
    :cond_96
    invoke-virtual {v0, v1, v12}, Lcom/android/server/display/DisplayPowerController;->logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;F)V

    .line 2908
    .line 2909
    .line 2910
    :cond_97
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 2911
    .line 2912
    if-eqz v2, :cond_98

    .line 2913
    .line 2914
    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 2915
    .line 2916
    .line 2917
    :cond_98
    if-eqz v3, :cond_9a

    .line 2918
    .line 2919
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    .line 2920
    .line 2921
    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 2922
    .line 2923
    .line 2924
    goto :goto_58

    .line 2925
    :cond_99
    const/4 v9, 0x0

    .line 2926
    :cond_9a
    :goto_58
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2927
    .line 2928
    if-nez v1, :cond_9c

    .line 2929
    .line 2930
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    .line 2931
    .line 2932
    if-nez v1, :cond_9c

    .line 2933
    .line 2934
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 2935
    .line 2936
    if-eqz v1, :cond_9b

    .line 2937
    .line 2938
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2939
    .line 2940
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 2941
    .line 2942
    .line 2943
    move-result v1

    .line 2944
    if-nez v1, :cond_9c

    .line 2945
    .line 2946
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 2947
    .line 2948
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    .line 2949
    .line 2950
    .line 2951
    move-result v1

    .line 2952
    if-nez v1, :cond_9c

    .line 2953
    .line 2954
    :cond_9b
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2955
    .line 2956
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda2;

    .line 2957
    .line 2958
    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    .line 2959
    .line 2960
    .line 2961
    move-result v1

    .line 2962
    if-eqz v1, :cond_9c

    .line 2963
    .line 2964
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 2965
    .line 2966
    if-nez v1, :cond_9c

    .line 2967
    .line 2968
    const/4 v1, 0x1

    .line 2969
    goto :goto_59

    .line 2970
    :cond_9c
    move v1, v9

    .line 2971
    :goto_59
    if-eqz v1, :cond_9d

    .line 2972
    .line 2973
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    .line 2974
    .line 2975
    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    .line 2976
    .line 2977
    .line 2978
    move-result v2

    .line 2979
    if-nez v2, :cond_9d

    .line 2980
    .line 2981
    const/4 v2, 0x1

    .line 2982
    goto :goto_5a

    .line 2983
    :cond_9d
    move v2, v9

    .line 2984
    :goto_5a
    if-eqz v1, :cond_9e

    .line 2985
    .line 2986
    const/4 v3, 0x1

    .line 2987
    if-eq v13, v3, :cond_9e

    .line 2988
    .line 2989
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2990
    .line 2991
    if-ne v4, v3, :cond_9e

    .line 2992
    .line 2993
    const/4 v3, 0x2

    .line 2994
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2995
    .line 2996
    .line 2997
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 2998
    .line 2999
    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    .line 3000
    .line 3001
    check-cast v4, Lcom/android/server/policy/PhoneWindowManager;

    .line 3002
    .line 3003
    invoke-virtual {v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn(I)V

    .line 3004
    .line 3005
    .line 3006
    goto :goto_5b

    .line 3007
    :cond_9e
    const/4 v3, 0x2

    .line 3008
    :goto_5b
    if-nez v2, :cond_9f

    .line 3009
    .line 3010
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 3011
    .line 3012
    const/4 v5, 0x5

    .line 3013
    invoke-virtual {v4, v5}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 3014
    .line 3015
    .line 3016
    :cond_9f
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 3017
    .line 3018
    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    .line 3019
    .line 3020
    .line 3021
    move-result v4

    .line 3022
    if-eqz v4, :cond_a1

    .line 3023
    .line 3024
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3025
    .line 3026
    if-eqz v4, :cond_a0

    .line 3027
    .line 3028
    iget-boolean v4, v4, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 3029
    .line 3030
    if-eqz v4, :cond_a0

    .line 3031
    .line 3032
    goto :goto_5c

    .line 3033
    :cond_a0
    move v4, v9

    .line 3034
    goto :goto_5d

    .line 3035
    :cond_a1
    :goto_5c
    const/4 v4, 0x1

    .line 3036
    :goto_5d
    if-eqz v1, :cond_a4

    .line 3037
    .line 3038
    if-eqz v34, :cond_a4

    .line 3039
    .line 3040
    if-eqz v4, :cond_a4

    .line 3041
    .line 3042
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 3043
    .line 3044
    monitor-enter v1

    .line 3045
    :try_start_3
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 3046
    .line 3047
    if-nez v4, :cond_a2

    .line 3048
    .line 3049
    const/4 v4, 0x1

    .line 3050
    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 3051
    .line 3052
    sget-boolean v5, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 3053
    .line 3054
    if-eqz v5, :cond_a3

    .line 3055
    .line 3056
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 3057
    .line 3058
    const-string v6, "Display ready!"

    .line 3059
    .line 3060
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    .line 3062
    .line 3063
    goto :goto_5e

    .line 3064
    :catchall_2
    move-exception v0

    .line 3065
    goto :goto_5f

    .line 3066
    :cond_a2
    const/4 v4, 0x1

    .line 3067
    :cond_a3
    :goto_5e
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3068
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    .line 3069
    .line 3070
    .line 3071
    goto :goto_60

    .line 3072
    :goto_5f
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3073
    throw v0

    .line 3074
    :cond_a4
    const/4 v4, 0x1

    .line 3075
    :goto_60
    if-eqz v2, :cond_a5

    .line 3076
    .line 3077
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 3078
    .line 3079
    const/4 v2, 0x5

    .line 3080
    invoke-virtual {v1, v2}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    .line 3081
    .line 3082
    .line 3083
    :cond_a5
    if-eq v13, v3, :cond_a6

    .line 3084
    .line 3085
    move v8, v4

    .line 3086
    goto :goto_61

    .line 3087
    :cond_a6
    move v8, v9

    .line 3088
    :goto_61
    iput-boolean v8, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 3089
    .line 3090
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 3091
    .line 3092
    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 3093
    .line 3094
    move/from16 v5, v17

    .line 3095
    .line 3096
    if-eq v5, v0, :cond_a7

    .line 3097
    .line 3098
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    .line 3099
    .line 3100
    .line 3101
    :cond_a7
    return-void

    .line 3102
    :goto_62
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3103
    throw v0
.end method
