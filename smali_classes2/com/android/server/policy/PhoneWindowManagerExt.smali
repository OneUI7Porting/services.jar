.class public final Lcom/android/server/policy/PhoneWindowManagerExt;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

.field public static final KEYCODE_KEY_COMBINATION_ALLOWLIST:Ljava/util/Set;


# instance fields
.field public escDialog:Landroid/app/AlertDialog;

.field public mAcceptCallHomeConsumed:Z

.field public mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppSwitchKeyConsumed:Z

.field public mAudioManager:Landroid/media/AudioManager;

.field public mBixbyService:Lcom/android/server/policy/BixbyService;

.field public mBoldFontEnabled:I

.field public final mBootCompleteReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

.field public mBootCompleted:Z

.field public final mBootMsgDialogs:Ljava/util/ArrayList;

.field public mButtonShapeEnabled:I

.field public final mContext:Landroid/content/Context;

.field public mCursorThicknessScale:F

.field public volatile mDexKeyguardOccluded:Z

.field public final mDoublePressLaunchComponentConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

.field public mDoublePressLaunchComponentName:Landroid/content/ComponentName;

.field public final mDrmEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

.field public final mExtEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

.field public final mFoldSaLock:Ljava/lang/Object;

.field public final mFoldSaLoggingReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$16;

.field public mGlobalActionsByKeyCombnation:Z

.field public mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

.field public mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

.field public mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

.field public mIsAccessibilityShortcutVolupPower:Z

.field public mIsAnyKeyMode:Z

.field public mIsAssistHapticEnabled:Z

.field public mIsCallOpenDictation:Z

.field public mIsCameraSensorToggleSupported:Z

.field public mIsCustomBugreportWriterEnabled:Z

.field public mIsDoubleTapPremiumWatchOn:Z

.field public mIsDoubleTapToWakeUp:Z

.field public mIsDoubleTapToWakeUpSupported:Z

.field public mIsHapticsEnabled:Z

.field public mIsHapticsSupported:Z

.field public mIsInteractionControlEnabled:Z

.field public mIsLastGesture3FingerBottom:Z

.field public mIsMicSensorToggleSupported:Z

.field public mIsPogoKeyboardConnected:Z

.field public mIsPowerKeyBlocked:Z

.field public mIsSamsungKeyboard:Z

.field public mIsScreenshotTriggered:Z

.field public mIsSktPhoneRelaxMode:Z

.field public mIsVolumeKeyBlocked:Z

.field public mIsVolumeUpKeyMode:Z

.field public mIsVolumeUpKeyPressed:Z

.field public mIssueTrackerLoggedIn:Z

.field public final mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

.field public mKeyEventInjectionThread:Ljava/lang/Thread;

.field public final mKeyUpTime:[J

.field public mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

.field public mLastDexMode:I

.field public final mLock:Ljava/lang/Object;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockTaskFeatures:Landroid/util/SparseIntArray;

.field public mLockTaskModeState:I

.field public final mMultiFingerGestureListener:Lcom/android/server/policy/PhoneWindowManagerExt$12;

.field public final mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

.field public mNavBarImeBtnEnabled:Z

.field public final mPackageChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

.field public final mPenDetachNotiConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

.field public mPenInsertIntent:Landroid/content/Intent;

.field public mPenSoundEnabled:Z

.field public mPenSoundFilePath:Ljava/lang/String;

.field public mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

.field public mPenState:I

.field public final mPenType:I

.field public mPenVibrationEnabled:Z

.field public mPendingDualModeInteractive:I

.field public mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field public final mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field public mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

.field public final mProximityChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

.field public mQuadruplePressOnPowerBehavior:I

.field public mQuickLaunchCameraBehavior:I

.field public final mQuickLaunchCameraConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

.field public mQuintuplePressOnPowerBehavior:I

.field public mScreenOffMemoEnabled:Z

.field public mScreenOffMemoIntent:Landroid/content/Intent;

.field public mScreenshotEnabled:Z

.field public mScreenshotTriggeredTime:J

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

.field public final mSetupWizardGlobalActionReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

.field public mShowKeyboardBtnEnabled:Z

.field public mShownEsc:Z

.field public mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field public final mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda8;

.field public mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

.field public mToast:Landroid/widget/Toast;

.field public mTopActivity:Landroid/content/ComponentName;

.field public mTspStateController:Lcom/android/server/wm/TspStateController;

.field public mTvModeDoublePressEnabled:Z

.field public mTvModeEnabled:Z

.field public final mTvModeStateConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

.field public final mTvModeStateDoublePressConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

.field public mVibrator:Landroid/os/Vibrator;

.field public final mWakeAndUnlockRunning:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

.field public mWakeAndUnlockTriggered:Z

.field public mWakingUpReason:I

.field public final mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const/16 v3, 0xbb

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x4

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const/16 v5, 0x18

    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x19

    .line 52
    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const/16 v7, 0x3f7

    .line 61
    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    const/16 v7, 0x437

    .line 70
    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const/16 v7, 0x436

    .line 79
    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    const/16 v7, 0x55

    .line 88
    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    const/16 v7, 0x4f

    .line 97
    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    const/16 v7, 0x78

    .line 106
    .line 107
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-instance v0, Landroid/util/ArraySet;

    .line 115
    .line 116
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 117
    .line 118
    .line 119
    sput-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_KEY_COMBINATION_ALLOWLIST:Ljava/util/Set;

    .line 120
    .line 121
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    const/16 v1, 0x14

    .line 140
    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    const/16 v1, 0x17

    .line 149
    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerServiceExt;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->escDialog:Landroid/app/AlertDialog;

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    .line 26
    .line 27
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleteReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 38
    .line 39
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPackageChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 52
    .line 53
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-direct {v2, v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    .line 60
    .line 61
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    invoke-direct {v2, v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateDoublePressConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    .line 68
    .line 69
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    .line 70
    .line 71
    const/4 v3, 0x2

    .line 72
    invoke-direct {v2, v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    .line 76
    .line 77
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 78
    .line 79
    const/4 v3, 0x3

    .line 80
    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x2

    .line 84
    new-array v3, v2, [J

    .line 85
    .line 86
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    .line 89
    .line 90
    const-wide/16 v3, 0x0

    .line 91
    .line 92
    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    .line 93
    .line 94
    const/4 v3, 0x1

    .line 95
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotEnabled:Z

    .line 96
    .line 97
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 98
    .line 99
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    .line 100
    .line 101
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    .line 104
    .line 105
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 106
    .line 107
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    .line 108
    .line 109
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 110
    .line 111
    const/4 v5, 0x4

    .line 112
    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 113
    .line 114
    .line 115
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProximityChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 116
    .line 117
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    .line 118
    .line 119
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    .line 120
    .line 121
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 122
    .line 123
    const/4 v5, 0x5

    .line 124
    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 125
    .line 126
    .line 127
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardGlobalActionReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 128
    .line 129
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 130
    .line 131
    const/4 v5, 0x6

    .line 132
    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 133
    .line 134
    .line 135
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 136
    .line 137
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 138
    .line 139
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 140
    .line 141
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    .line 142
    .line 143
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    .line 144
    .line 145
    const/4 v4, 0x3

    .line 146
    invoke-direct {v2, v4, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    .line 150
    .line 151
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 152
    .line 153
    const/4 v4, 0x0

    .line 154
    invoke-direct {v2, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$10;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 155
    .line 156
    .line 157
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDrmEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 158
    .line 159
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 160
    .line 161
    const/4 v4, 0x1

    .line 162
    invoke-direct {v2, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$10;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 163
    .line 164
    .line 165
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mExtEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 166
    .line 167
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 168
    .line 169
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 170
    .line 171
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    .line 172
    .line 173
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 174
    .line 175
    new-instance v2, Ljava/lang/Object;

    .line 176
    .line 177
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mServiceAcquireLock:Ljava/lang/Object;

    .line 181
    .line 182
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    .line 183
    .line 184
    const/4 v3, -0x1

    .line 185
    if-eqz v2, :cond_0

    .line 186
    .line 187
    sget v2, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_USP_LEVEL:I

    .line 188
    .line 189
    rem-int/lit8 v2, v2, 0xa

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_0
    move v2, v3

    .line 193
    :goto_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 194
    .line 195
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 196
    .line 197
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    .line 198
    .line 199
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    .line 200
    .line 201
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    .line 202
    .line 203
    const/4 v4, 0x4

    .line 204
    invoke-direct {v2, v4, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenDetachNotiConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    .line 208
    .line 209
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    .line 210
    .line 211
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    .line 212
    .line 213
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 214
    .line 215
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 216
    .line 217
    invoke-direct {v2, v4, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockRunning:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 221
    .line 222
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$12;

    .line 223
    .line 224
    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$12;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 225
    .line 226
    .line 227
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Lcom/android/server/policy/PhoneWindowManagerExt$12;

    .line 228
    .line 229
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 230
    .line 231
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 232
    .line 233
    new-instance v2, Landroid/util/SparseIntArray;

    .line 234
    .line 235
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 236
    .line 237
    .line 238
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 239
    .line 240
    new-instance v2, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootMsgDialogs:Ljava/util/ArrayList;

    .line 246
    .line 247
    new-instance v2, Ljava/lang/Object;

    .line 248
    .line 249
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 250
    .line 251
    .line 252
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLock:Ljava/lang/Object;

    .line 253
    .line 254
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$16;

    .line 255
    .line 256
    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 257
    .line 258
    .line 259
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$16;

    .line 260
    .line 261
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    .line 262
    .line 263
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 264
    .line 265
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda8;

    .line 266
    .line 267
    const/4 v4, 0x0

    .line 268
    invoke-direct {v2, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda8;-><init>(I)V

    .line 269
    .line 270
    .line 271
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda8;

    .line 272
    .line 273
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 274
    .line 275
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    .line 276
    .line 277
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mButtonShapeEnabled:I

    .line 278
    .line 279
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBoldFontEnabled:I

    .line 280
    .line 281
    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mCursorThicknessScale:F

    .line 283
    .line 284
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 285
    .line 286
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 287
    .line 288
    check-cast p2, Lcom/android/server/policy/PhoneWindowManager;

    .line 289
    .line 290
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 291
    .line 292
    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 293
    .line 294
    iput-object p0, p2, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 295
    .line 296
    new-instance p2, Lcom/android/server/policy/KeyCustomizationManager;

    .line 297
    .line 298
    invoke-direct {p2, p1, p0}, Lcom/android/server/policy/KeyCustomizationManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 299
    .line 300
    .line 301
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 302
    .line 303
    return-void
.end method

.method public static getFillInIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "afterKeyguardGone"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    const-string v1, "ignoreKeyguardState"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const-string v1, "dismissIfInsecure"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static isCameraRunning()Z
    .locals 3

    .line 1
    const-string/jumbo v0, "service.camera.running"

    .line 2
    .line 3
    .line 4
    const-string v1, "0"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "isCameraRunning="

    .line 17
    .line 18
    const-string v2, "PhoneWindowManagerExt"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public static saLogForBasic(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "PhoneWindowManagerExt"

    .line 8
    .line 9
    const-string/jumbo v0, "saLogForBasic - eventId is null"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "det"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    const-string p0, "PhoneWindowManagerExt"

    .line 29
    .line 30
    const-string/jumbo p1, "saLogForBasic - eventId or details are null"

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final addSingleKeyGestureRule(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "PhoneWindowManagerExt"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string p0, "Already added rule of keyCode "

    .line 14
    .line 15
    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x3

    .line 20
    if-eq p1, v1, :cond_8

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq p1, v1, :cond_7

    .line 24
    .line 25
    const/16 v1, 0x18

    .line 26
    .line 27
    if-eq p1, v1, :cond_6

    .line 28
    .line 29
    const/16 v1, 0x19

    .line 30
    .line 31
    if-eq p1, v1, :cond_5

    .line 32
    .line 33
    const/16 v1, 0x4f

    .line 34
    .line 35
    if-eq p1, v1, :cond_4

    .line 36
    .line 37
    const/16 v1, 0xbb

    .line 38
    .line 39
    if-eq p1, v1, :cond_3

    .line 40
    .line 41
    const/16 v1, 0x3f7

    .line 42
    .line 43
    if-eq p1, v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x437

    .line 46
    .line 47
    if-eq p1, v1, :cond_1

    .line 48
    .line 49
    const-string/jumbo p0, "updateSingleKeyGestureRule, keyCode was wrong. "

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 61
    .line 62
    .line 63
    :goto_0
    move-object p0, p1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 66
    .line 67
    const/4 v1, 0x4

    .line 68
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 73
    .line 74
    const/4 v1, 0x3

    .line 75
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 80
    .line 81
    const/4 v1, 0x2

    .line 82
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 87
    .line 88
    const/4 v1, 0x6

    .line 89
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 94
    .line 95
    const/4 v1, 0x7

    .line 96
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_7
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_8
    new-instance p1, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-direct {p1, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :goto_1
    if-eqz p0, :cond_9

    .line 115
    .line 116
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 117
    .line 118
    invoke-virtual {p1, p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    return-void
.end method

.method public final callDictation(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "callDictation, method="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", keyCode="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "PhoneWindowManagerExt"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "keyCode"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants$UriTags;->DICTATION:Landroid/net/Uri;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final canDispatchingSystemKeyEvent(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I
    .locals 2

    .line 1
    const-string/jumbo v0, "system key requested code="

    .line 2
    .line 3
    .line 4
    const-string v1, "PhoneWindowManagerExt"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget p2, p2, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 20
    .line 21
    const/16 v0, 0x7f8

    .line 22
    .line 23
    if-ne p2, v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string/jumbo p2, "reason"

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p2, "Can not dispatch key event because of expanded status bar, keyCode="

    .line 42
    .line 43
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 p0, -0x1

    .line 57
    return p0

    .line 58
    :cond_0
    const-string/jumbo p0, "sec check system key before dispatching, keyCode="

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return p0
.end method

.method public final clearKeyCustomizationInfoByAction(III)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    const/4 v5, 0x0

    .line 18
    move v6, v5

    .line 19
    :goto_0
    if-ge v5, v4, :cond_3

    .line 20
    .line 21
    aget v7, v3, v5

    .line 22
    .line 23
    invoke-virtual {v1, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    check-cast v8, Landroid/util/SparseArray;

    .line 32
    .line 33
    if-nez v8, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    check-cast v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 41
    .line 42
    if-nez v9, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget v9, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 46
    .line 47
    if-ne v9, p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 50
    .line 51
    .line 52
    const/4 v6, -0x1

    .line 53
    invoke-virtual {v1, v7, p2, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    .line 54
    .line 55
    .line 56
    move v6, v0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    :cond_2
    :goto_1
    add-int/2addr v5, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    if-eqz v6, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 65
    .line 66
    .line 67
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-nez v6, :cond_5

    .line 69
    .line 70
    const-string p0, "KeyCustomizationManager"

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "clearKeyCustomizationInfoByAction, Requested info is empty. "

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, " keyCode="

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " "

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void

    .line 118
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw p0
.end method

.method public final clearKeyCustomizationInfoByKeyCode(II)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    const/4 v5, 0x0

    .line 18
    move v6, v5

    .line 19
    move v7, v6

    .line 20
    :goto_0
    if-ge v6, v4, :cond_2

    .line 21
    .line 22
    aget v8, v3, v6

    .line 23
    .line 24
    invoke-virtual {v1, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    invoke-virtual {v9, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    check-cast v9, Landroid/util/SparseArray;

    .line 33
    .line 34
    if-eqz v9, :cond_1

    .line 35
    .line 36
    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    if-nez v10, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 44
    .line 45
    .line 46
    const/4 v7, -0x1

    .line 47
    invoke-virtual {v1, v8, p2, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    .line 48
    .line 49
    .line 50
    move v7, v0

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :cond_1
    :goto_1
    add-int/2addr v6, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-eqz v7, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    .line 60
    .line 61
    .line 62
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-nez v7, :cond_4

    .line 64
    .line 65
    const-string p0, "KeyCustomizationManager"

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, "clearKeyCustomizationInfoByKeyCode, Requested info is empty. "

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, " keyCode="

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_4
    const/16 p1, 0x1a

    .line 98
    .line 99
    if-ne p2, p1, :cond_7

    .line 100
    .line 101
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    .line 102
    .line 103
    array-length v1, p1

    .line 104
    :goto_2
    if-ge v5, v1, :cond_8

    .line 105
    .line 106
    aget v2, p1, v5

    .line 107
    .line 108
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 109
    .line 110
    if-eqz v3, :cond_5

    .line 111
    .line 112
    and-int/lit8 v3, v2, 0x10

    .line 113
    .line 114
    if-eqz v3, :cond_5

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    and-int/lit8 v3, v2, 0x40

    .line 118
    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    .line 123
    .line 124
    .line 125
    :goto_3
    add-int/2addr v5, v0

    .line 126
    goto :goto_2

    .line 127
    :cond_7
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    .line 130
    .line 131
    .line 132
    :cond_8
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 145
    .line 146
    if-nez p1, :cond_9

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    .line 150
    .line 151
    .line 152
    :goto_4
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 159
    .line 160
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 165
    .line 166
    if-nez p0, :cond_a

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_a
    iget-wide p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 170
    .line 171
    const-wide/16 v0, 0x0

    .line 172
    .line 173
    cmp-long v2, p1, v0

    .line 174
    .line 175
    if-eqz v2, :cond_b

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_b
    sget-wide p1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 179
    .line 180
    :goto_5
    cmp-long p1, v0, p1

    .line 181
    .line 182
    if-nez p1, :cond_c

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_c
    sget-boolean p1, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 186
    .line 187
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 188
    .line 189
    :goto_6
    return-void

    .line 190
    :goto_7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    throw p0
.end method

.method public final doublePressLaunchPolicy(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "PhoneWindowManagerExt"

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "double press was blocked because UserSetup isn\'t completed"

    .line 13
    .line 14
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    const-string/jumbo v1, "ril.domesticOtaStart"

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string/jumbo v4, "true"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-string p0, "double press was blocked by OTA status"

    .line 35
    .line 36
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-string p0, "double press was blocked by SimLock"

    .line 49
    .line 50
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarrierLocked()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    const-string p0, "double press was blocked by CarrierLock"

    .line 61
    .line 62
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return v2

    .line 66
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    const-string p0, "double press was blocked because cover was closed"

    .line 81
    .line 82
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v2

    .line 86
    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 87
    .line 88
    const/16 v0, 0x8

    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_5

    .line 95
    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v0, "skip double press keyCode("

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, "), requestedSystemKey"

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    return v2

    .line 120
    :cond_5
    const/4 p0, 0x0

    .line 121
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 12

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "--- PhoneWindowManagerExt ---"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "KeyCustomization info state: "

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 38
    .line 39
    iget v3, v3, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v3, "All KeyCustomizationInfo"

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 53
    .line 54
    array-length v4, v3

    .line 55
    const/4 v5, 0x0

    .line 56
    move v6, v5

    .line 57
    :goto_0
    if-ge v6, v4, :cond_3

    .line 58
    .line 59
    aget v7, v3, v6

    .line 60
    .line 61
    invoke-virtual {v1, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-nez v9, :cond_0

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v7}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v7, " ---"

    .line 83
    .line 84
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    :goto_1
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-ge v7, v9, :cond_2

    .line 93
    .line 94
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    check-cast v9, Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    if-nez v10, :cond_1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    const-string v10, "    "

    .line 108
    .line 109
    const-string v11, "    KEY_CODE("

    .line 110
    .line 111
    invoke-static {p1, v10, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v11, ") :"

    .line 123
    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dumpKeyCustomizationInfoKeyCodeMap(Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    goto/16 :goto_f

    .line 145
    .line 146
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v3, "Last KeyCustomizationInfo"

    .line 153
    .line 154
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    .line 158
    .line 159
    array-length v4, v3

    .line 160
    move v6, v5

    .line 161
    :goto_4
    if-ge v6, v4, :cond_5

    .line 162
    .line 163
    aget v7, v3, v6

    .line 164
    .line 165
    invoke-virtual {v1, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-nez v9, :cond_4

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v7}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v7, " ---"

    .line 187
    .line 188
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {p1, v8}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dumpKeyCustomizationInfoKeyCodeMap(Ljava/io/PrintWriter;Landroid/util/SparseArray;)V

    .line 192
    .line 193
    .line 194
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_5
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 198
    .line 199
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_7

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v4, "HotKeys="

    .line 212
    .line 213
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    move v4, v5

    .line 217
    :goto_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-ge v4, v6, :cond_7

    .line 222
    .line 223
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    check-cast v7, Landroid/content/ComponentName;

    .line 232
    .line 233
    if-nez v7, :cond_6

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v8, " KeyCode "

    .line 240
    .line 241
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 245
    .line 246
    .line 247
    const-string v6, ", componentName: "

    .line 248
    .line 249
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_7
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_8

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string/jumbo v3, "ownerPackageList:"

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-eqz v4, :cond_8

    .line 289
    .line 290
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    check-cast v4, Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v7, "    "

    .line 305
    .line 306
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const-string v3, "UserId:"

    .line 324
    .line 325
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget v3, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    .line 329
    .line 330
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 331
    .line 332
    .line 333
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string v2, "XmlFileErrorCode="

    .line 343
    .line 344
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 348
    .line 349
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string/jumbo v1, "maxMultiPressPowerCount="

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 365
    .line 366
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string/jumbo v1, "mQuadruplePressOnPowerBehavior="

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 383
    .line 384
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 392
    .line 393
    monitor-enter v1

    .line 394
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string/jumbo v2, "mFocusedWindow="

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v2, v1, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    const-string v2, "SystemKeyInfo="

    .line 412
    .line 413
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    sget-object v2, Lcom/android/server/policy/SystemKeyManager;->SUPPORT_KEYCODE:[I

    .line 417
    .line 418
    move v3, v5

    .line 419
    :goto_9
    const/4 v4, 0x6

    .line 420
    if-ge v3, v4, :cond_c

    .line 421
    .line 422
    aget v4, v2, v3

    .line 423
    .line 424
    iget-object v6, v1, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    .line 425
    .line 426
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    check-cast v4, Ljava/util/HashMap;

    .line 431
    .line 432
    if-nez v4, :cond_9

    .line 433
    .line 434
    goto :goto_b

    .line 435
    :cond_9
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    if-eqz v6, :cond_b

    .line 448
    .line 449
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    check-cast v6, Ljava/util/Map$Entry;

    .line 454
    .line 455
    if-nez v6, :cond_a

    .line 456
    .line 457
    goto :goto_a

    .line 458
    :cond_a
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    check-cast v6, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;

    .line 463
    .line 464
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string v7, "      "

    .line 468
    .line 469
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v6}, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v6

    .line 476
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    goto :goto_a

    .line 480
    :catchall_1
    move-exception p0

    .line 481
    goto/16 :goto_e

    .line 482
    .line 483
    :cond_b
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_c
    iget-object v2, v1, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    if-eqz v3, :cond_d

    .line 497
    .line 498
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    check-cast v3, Ljava/lang/String;

    .line 503
    .line 504
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    const-string v4, "      "

    .line 508
    .line 509
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    const-string v4, "META_KEY="

    .line 513
    .line 514
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    goto :goto_c

    .line 521
    :cond_d
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    .line 523
    .line 524
    if-eqz v1, :cond_e

    .line 525
    .line 526
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    const-string/jumbo v1, "mIsScreenshotTriggered="

    .line 530
    .line 531
    .line 532
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    .line 536
    .line 537
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 538
    .line 539
    .line 540
    const-string v1, " mGlobalActionsByKeyCombination="

    .line 541
    .line 542
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    .line 546
    .line 547
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 548
    .line 549
    .line 550
    :cond_e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    const-string v1, "bixbyComponentName="

    .line 554
    .line 555
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    .line 559
    .line 560
    iget-object v1, v1, Lcom/android/server/policy/BixbyService;->mDefaultComponentName:Landroid/content/ComponentName;

    .line 561
    .line 562
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 566
    .line 567
    if-eqz v1, :cond_f

    .line 568
    .line 569
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    const-string/jumbo v1, "mQuintuplePressOnPowerBehavior="

    .line 573
    .line 574
    .line 575
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 579
    .line 580
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    const-string/jumbo v1, "mIsHapticsEnabled="

    .line 591
    .line 592
    .line 593
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 597
    .line 598
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 599
    .line 600
    .line 601
    const-string v1, " mIsAssistHapticEnabled="

    .line 602
    .line 603
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    .line 607
    .line 608
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 609
    .line 610
    .line 611
    const-string v1, " mIsHapticsSupported="

    .line 612
    .line 613
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 617
    .line 618
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 619
    .line 620
    .line 621
    const-string v1, " mNavBarVirtualKeyHapticFeedbackEnabled="

    .line 622
    .line 623
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 627
    .line 628
    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 629
    .line 630
    const-string v2, "cameraSensorToggleSupported="

    .line 631
    .line 632
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 633
    .line 634
    .line 635
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    .line 636
    .line 637
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    const-string/jumbo v1, "micSensorToggleSupported="

    .line 644
    .line 645
    .line 646
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    .line 650
    .line 651
    const-string/jumbo v2, "mIsInteractionControlEnabled="

    .line 652
    .line 653
    .line 654
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 655
    .line 656
    .line 657
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 658
    .line 659
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 660
    .line 661
    .line 662
    const-string v1, " mIsPowerKeyBlocked="

    .line 663
    .line 664
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    .line 668
    .line 669
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 670
    .line 671
    .line 672
    const-string v1, " mIsVolumeKeyBlocked="

    .line 673
    .line 674
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    .line 678
    .line 679
    const-string/jumbo v2, "mIsDoubleTapToWakeUpSupported="

    .line 680
    .line 681
    .line 682
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 683
    .line 684
    .line 685
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 686
    .line 687
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 688
    .line 689
    .line 690
    const-string v1, " mIsDoubleTapToWakeUp="

    .line 691
    .line 692
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    .line 696
    .line 697
    const-string/jumbo v2, "mLockTaskModeState="

    .line 698
    .line 699
    .line 700
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 701
    .line 702
    .line 703
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 704
    .line 705
    const-string v2, "mDexKeyguardOccluded="

    .line 706
    .line 707
    invoke-static {v1, p1, v0, v2}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDexKeyguardOccluded:Z

    .line 711
    .line 712
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 713
    .line 714
    .line 715
    const-string v1, " mDexKeyguardOccludedChanged="

    .line 716
    .line 717
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 721
    .line 722
    .line 723
    const-string v1, " mPendingDexKeyguardOccluded="

    .line 724
    .line 725
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 729
    .line 730
    .line 731
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    .line 732
    .line 733
    if-eqz v1, :cond_11

    .line 734
    .line 735
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    const-string v1, "SPen state="

    .line 739
    .line 740
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 744
    .line 745
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 746
    .line 747
    .line 748
    const-string v1, " type="

    .line 749
    .line 750
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 754
    .line 755
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 756
    .line 757
    .line 758
    const-string v1, " vibrationEnabled="

    .line 759
    .line 760
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    .line 764
    .line 765
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 766
    .line 767
    .line 768
    const-string v1, " soundEnabled="

    .line 769
    .line 770
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    .line 774
    .line 775
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 776
    .line 777
    .line 778
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 779
    .line 780
    if-nez v1, :cond_10

    .line 781
    .line 782
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    const-string v1, "SoundInfo is null"

    .line 786
    .line 787
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    goto :goto_d

    .line 791
    :cond_10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    const-string v1, "PenSoundInfo attachSoundPath="

    .line 795
    .line 796
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 800
    .line 801
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 802
    .line 803
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    const-string v1, " detachSoundPath="

    .line 807
    .line 808
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 812
    .line 813
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 814
    .line 815
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    const-string v1, " attachSoundId="

    .line 819
    .line 820
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 824
    .line 825
    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    .line 826
    .line 827
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 828
    .line 829
    .line 830
    const-string v1, " detachSoundId="

    .line 831
    .line 832
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 836
    .line 837
    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    .line 838
    .line 839
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 840
    .line 841
    .line 842
    :cond_11
    :goto_d
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    .line 843
    .line 844
    if-eqz v1, :cond_12

    .line 845
    .line 846
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    const-string/jumbo v1, "mScreenOffMemoEnabled="

    .line 850
    .line 851
    .line 852
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    .line 856
    .line 857
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 858
    .line 859
    .line 860
    :cond_12
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_FINGERPRINT_SIDE_TOUCH:Z

    .line 861
    .line 862
    if-eqz v1, :cond_13

    .line 863
    .line 864
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    const-string/jumbo v1, "mWakeAndUnlockTriggered="

    .line 868
    .line 869
    .line 870
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 874
    .line 875
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 876
    .line 877
    .line 878
    const-string v1, " mWakeAndUnfoldedTriggered="

    .line 879
    .line 880
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 884
    .line 885
    .line 886
    :cond_13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    const-string/jumbo v1, "mIsPogoKeyboardConnected="

    .line 890
    .line 891
    .line 892
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPogoKeyboardConnected:Z

    .line 896
    .line 897
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 898
    .line 899
    .line 900
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    .line 901
    .line 902
    if-eqz v1, :cond_14

    .line 903
    .line 904
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    const-string/jumbo v1, "mIsCallOpenDictation="

    .line 908
    .line 909
    .line 910
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 914
    .line 915
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 916
    .line 917
    .line 918
    :cond_14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    const-string/jumbo v1, "mWakingUpReason="

    .line 922
    .line 923
    .line 924
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 928
    .line 929
    invoke-static {v1}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    .line 937
    .line 938
    if-eqz v1, :cond_15

    .line 939
    .line 940
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    const-string/jumbo v1, "mIsCalledOpenDictationXCoverTop="

    .line 944
    .line 945
    .line 946
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    .line 948
    .line 949
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 950
    .line 951
    iget-boolean v1, v1, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 952
    .line 953
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 954
    .line 955
    .line 956
    :cond_15
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_DOUBLE_TAP_PREMIUM_WATCH:Z

    .line 957
    .line 958
    if-eqz v1, :cond_16

    .line 959
    .line 960
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    const-string/jumbo v0, "mIsDoubleTapPremiumWatchOn="

    .line 964
    .line 965
    .line 966
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    .line 970
    .line 971
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 972
    .line 973
    .line 974
    :cond_16
    return-void

    .line 975
    :goto_e
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 976
    throw p0

    .line 977
    :goto_f
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 978
    throw p0
.end method

.method public final enableOrDisableDexMode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "PhoneWindowManagerExt"

    .line 10
    .line 11
    const-string v0, "enableOrDisableDexMode : User setup is not completed"

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v2, Lcom/android/server/desktopmode/DesktopModeSettings;->DEX_MODE_DEFAULT_VALUE:Ljava/lang/String;

    .line 33
    .line 34
    sget v3, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 35
    .line 36
    const-string v4, "dex_mode"

    .line 37
    .line 38
    invoke-static {v0, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string/jumbo v2, "new"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 55
    .line 56
    const-string v3, "com.samsung.android.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    .line 57
    .line 58
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 62
    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v1, 0x2

    .line 67
    :goto_1
    if-eqz v0, :cond_3

    .line 68
    .line 69
    const-string v0, "com.samsung.android.desktopmode.extra.NEW_DEX_MODE_STATE"

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const-string v0, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_STATE"

    .line 73
    .line 74
    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    const-string v0, "com.samsung.android.desktopmode.extra.DESKTOP_MODE_SOURCE"

    .line 78
    .line 79
    const/4 v1, 0x6

    .line 80
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 86
    .line 87
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final externalKeyboardPolicy()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleted:Z

    .line 2
    .line 3
    const-string v1, "PhoneWindowManagerExt"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo p0, "preCondition : Boot is not completed"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const-string/jumbo p0, "preCondition : User setup is not completed"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string/jumbo p0, "preCondition : Keyguard is shown"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    const-string/jumbo p0, "preCondition : Factory binary"

    .line 48
    .line 49
    .line 50
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const-string/jumbo p0, "preCondition : Automatic test mode"

    .line 63
    .line 64
    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v2

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    return v2

    .line 76
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 85
    .line 86
    xor-int/2addr v0, v2

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 90
    .line 91
    if-nez p0, :cond_6

    .line 92
    .line 93
    return v2

    .line 94
    :cond_6
    const/4 p0, 0x0

    .line 95
    return p0
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mServiceAcquireLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "audio"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/media/AudioManager;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final getDisplayId(Landroid/view/KeyEvent;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/16 v1, 0xdd

    .line 12
    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0xdc

    .line 16
    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    if-ne v0, p1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 34
    .line 35
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    .line 36
    .line 37
    sget-object p0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    :goto_0
    return v0

    .line 40
    :cond_2
    if-nez p1, :cond_3

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    :goto_1
    return p0
.end method

.method public final handleGlobalInteractiveIfNeeded(II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 2
    .line 3
    and-int v1, v0, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    not-int v1, p1

    .line 9
    and-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-string v0, "KeyguardServiceDelegate"

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 24
    .line 25
    if-eq p1, v2, :cond_8

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq p1, v2, :cond_6

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    if-eq p1, v0, :cond_4

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    if-eq p1, v0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 39
    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0, p2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedGoingToSleep(IZ)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iput v1, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 49
    .line 50
    if-eqz p0, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedGoingToSleep(I)V

    .line 53
    .line 54
    .line 55
    :cond_5
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    iput p0, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    .line 60
    .line 61
    const/4 p0, 0x3

    .line 62
    iput p0, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_6
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 66
    .line 67
    if-eqz p1, :cond_7

    .line 68
    .line 69
    const-string/jumbo p1, "onFinishedWakingUp()"

    .line 70
    .line 71
    .line 72
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedWakingUp()V

    .line 78
    .line 79
    .line 80
    :cond_7
    iput v2, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_8
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 84
    .line 85
    if-eqz p1, :cond_9

    .line 86
    .line 87
    const-string/jumbo p1, "onStartedWakingUp()"

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 94
    .line 95
    invoke-virtual {p0, p2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp(IZ)V

    .line 96
    .line 97
    .line 98
    :cond_9
    iput v2, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method public final handleLongPressOnHomeWithPolicy(IJ)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->longPressOnHomePolicy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v8, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v8

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 10
    .line 11
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return v8

    .line 16
    :cond_1
    sget-boolean v9, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 17
    .line 18
    const-string v10, "PhoneWindowManagerExt"

    .line 19
    .line 20
    const/4 v11, 0x1

    .line 21
    if-eqz v9, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLongPressHomeSearcle()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_4

    .line 28
    .line 29
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAssistHapticEnabled:Z

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v5, "Home - Long Press"

    .line 45
    .line 46
    move-object v1, p0

    .line 47
    move v3, v8

    .line 48
    move v6, v11

    .line 49
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const-string v1, "home long press haptic disabled"

    .line 54
    .line 55
    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 59
    .line 60
    iget v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 61
    .line 62
    if-eq v1, v11, :cond_9

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    if-eq v1, v3, :cond_7

    .line 66
    .line 67
    const/4 p1, 0x3

    .line 68
    if-eq v1, p1, :cond_6

    .line 69
    .line 70
    const/4 p1, 0x4

    .line 71
    if-eq v1, p1, :cond_5

    .line 72
    .line 73
    const/16 p1, 0x65

    .line 74
    .line 75
    if-eq v1, p1, :cond_5

    .line 76
    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string p1, "Undefined long press on home behavior: "

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget p1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 85
    .line 86
    invoke-static {p0, p1, v10}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    if-eqz v9, :cond_a

    .line 91
    .line 92
    invoke-virtual {p0, v8, v11}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZ)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    invoke-virtual {v2, v8}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_7
    const/4 v7, 0x0

    .line 101
    const/4 v4, 0x5

    .line 102
    move v3, p1

    .line 103
    move-wide v5, p2

    .line 104
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 108
    .line 109
    if-eqz p0, :cond_a

    .line 110
    .line 111
    const/4 p0, 0x0

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_8

    .line 117
    .line 118
    const-string p0, "None"

    .line 119
    .line 120
    const-string p1, "NAVIB1003"

    .line 121
    .line 122
    invoke-static {p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_8
    throw p0

    .line 127
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    .line 128
    .line 129
    .line 130
    :cond_a
    :goto_1
    return v11
.end method

.method public final handleLongPressOnRecent(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/16 v3, 0xbb

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    :try_start_0
    sget-object p0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "PhoneWindowManagerExt"

    .line 47
    .line 48
    const-string v0, "Unable to reach activity manager"

    .line 49
    .line 50
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 p0, 0x0

    .line 71
    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps(I)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    return-void
.end method

.method public final hasMetaKeyPass()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 2
    .line 3
    const-string v0, "hasMetaKeyPass() : MetaKey is blocked by componentName="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 11
    .line 12
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "SystemKeyManager"

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_0
    monitor-exit p0

    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    monitor-exit p0

    .line 42
    const/4 p0, 0x0

    .line 43
    :goto_1
    return p0

    .line 44
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0
.end method

.method public final hasRequestedActionBlockKeyEvent(IIZ)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    if-ne v2, v3, :cond_2

    .line 18
    .line 19
    const-string v1, "Key was blocked by KeyCustomizationPolicy. keyCode="

    .line 20
    .line 21
    const-string v2, "PhoneWindowManagerExt"

    .line 22
    .line 23
    invoke-static {p1, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    iget p1, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 31
    .line 32
    const/16 p2, 0xa

    .line 33
    .line 34
    if-ne p1, p2, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const p3, 0x1040714

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 p0, 0x2

    .line 53
    return p0

    .line 54
    :cond_2
    return v1
.end method

.method public final hasSingleKeyRule(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x18

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x19

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x4f

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0xbb

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    const/16 v0, 0x3f7

    .line 24
    .line 25
    if-eq p1, v0, :cond_0

    .line 26
    .line 27
    const/16 v0, 0x437

    .line 28
    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final init()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->init(Lcom/android/server/policy/PhoneWindowManagerExt$Injector;)V

    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManagerExt$Injector;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    invoke-direct {v2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 3
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 4
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v4, :cond_1

    .line 6
    :cond_0
    const-string v4, "default_input_method"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 7
    :cond_1
    const-string v4, "any_screen_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 8
    const-string/jumbo v4, "navigation_bar_button_to_hide_keyboard"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v6, 0x7

    invoke-direct {v5, v2, v3, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 9
    const-string/jumbo v4, "show_keyboard_button"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v6, 0x8

    invoke-direct {v5, v2, v3, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 10
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    if-eqz v4, :cond_2

    .line 11
    const-string/jumbo v5, "pen_attach_detach_vibration"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v7, 0x9

    invoke-direct {v6, v2, v3, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v5, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 12
    const-string/jumbo v5, "spen_feedback_sound"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v7, 0xb

    invoke-direct {v6, v2, v3, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v5, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 13
    const-string/jumbo v5, "pen_detachment_notification"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenDetachNotiConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v5, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 14
    :cond_2
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    if-eqz v5, :cond_3

    .line 15
    const-string/jumbo v6, "screen_off_memo"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v8, 0xc

    invoke-direct {v7, v2, v3, v8}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v6, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 16
    :cond_3
    sget-boolean v6, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz v6, :cond_4

    .line 17
    const-string v6, "double_tab_launch"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v6, v7}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 18
    :cond_4
    sget-boolean v6, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    const-string v7, "double_tab_launch_component"

    const-string/jumbo v8, "pwrkey_owner_status"

    const-string/jumbo v9, "tvmode_state"

    if-eqz v6, :cond_5

    .line 19
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 20
    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeStateDoublePressConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 21
    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentConsumer:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda2;

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 22
    :cond_5
    const-string v10, "haptic_feedback_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0xd

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 23
    const-string v10, "default_assist_vibration_feedback"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0xe

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 24
    const-string v10, "anykey_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0xf

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 25
    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_SKT_PHONE_RELAX_MODE:Z

    if-eqz v10, :cond_6

    .line 26
    const-string/jumbo v10, "skt_phone20_relax_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0xa

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 27
    :cond_6
    const-string v10, "access_control_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x10

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 28
    const-string v10, "access_control_power_button"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x11

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 29
    const-string v10, "access_control_volume_button"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x12

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 30
    const-string v10, "double_tab_to_wake_up"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x13

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 31
    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v10, :cond_7

    .line 32
    const-string v10, "active_key_on_lockscreen"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x14

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 33
    :cond_7
    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v10, :cond_8

    .line 34
    const-string/jumbo v10, "xcover_top_key_on_lockscreen"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x15

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 35
    :cond_8
    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_DOUBLE_TAP_PREMIUM_WATCH:Z

    if-eqz v10, :cond_9

    .line 36
    const-string/jumbo v10, "premium_tap_for_watch_face_switch_on_off"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x16

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 37
    :cond_9
    const-string v10, "development_custom_bugreport_writer"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/16 v12, 0x17

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 38
    const-string v10, "issuetracker_logged_in"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x1

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 39
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_CHN_PREMIUM_WATCH:Z

    if-eqz v10, :cond_a

    .line 40
    const-string/jumbo v10, "premium_watch_switch_onoff"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x2

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 41
    :cond_a
    const-string v10, "cursor_thickness"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x3

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 42
    const-string/jumbo v10, "show_button_background"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x4

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 43
    const-string v10, "bold_text"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x5

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 44
    const-string/jumbo v10, "volumekey_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;

    const/4 v12, 0x6

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V

    invoke-virtual {v2, v10, v11}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->registerSettings(Landroid/net/Uri;Ljava/util/function/Consumer;)V

    .line 45
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_d

    .line 46
    invoke-static {v2, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_b

    move v6, v3

    goto :goto_0

    :cond_b
    move v6, v10

    :goto_0
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 47
    invoke-static {v2, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_c

    move v6, v3

    goto :goto_1

    :cond_c
    move v6, v10

    :goto_1
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 48
    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressLaunchInfo(Ljava/lang/String;)V

    .line 50
    :cond_d
    new-instance v14, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v14, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    .line 51
    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 52
    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBootCompleteReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    move-object v13, v2

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 53
    sget-boolean v6, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-eqz v6, :cond_e

    .line 54
    const-string v6, "com.sec.android.app.secsetupwizard.GLOBAL_ACTION"

    .line 55
    invoke-static {v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v18

    .line 56
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSetupWizardGlobalActionReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    const/16 v21, 0x2

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    invoke-virtual/range {v15 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 57
    :cond_e
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 60
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPackageChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    const/16 v21, 0x2

    move-object/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v18, v6

    invoke-virtual/range {v15 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 61
    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.USER_REMOVED"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    if-eqz v6, :cond_f

    .line 64
    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 66
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9}, Lcom/android/server/policy/PhoneWindowManagerExt$2;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    :cond_f
    const-string v6, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 68
    const-string v7, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 69
    invoke-static {v6, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v18

    .line 70
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProximityChangeReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$2;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    invoke-virtual/range {v15 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 71
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    const/4 v6, 0x2

    if-eqz v2, :cond_10

    .line 72
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "com.samsung.android.intent.action.WINNER_LOGGING"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLoggingReceiver:Lcom/android/server/policy/PhoneWindowManagerExt$16;

    invoke-virtual {v7, v8, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_10
    if-eqz v4, :cond_11

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.pen.INSERT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    const/high16 v4, 0x1000000

    .line 75
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v5, :cond_11

    .line 76
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 77
    const-string v4, "com.samsung.android.app.notes/com.samsung.android.app.notes.screenoffmemo.ScreenOffMemoService"

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 78
    :cond_11
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    new-instance v2, Lcom/android/server/policy/SystemKeyManager;

    .line 81
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 82
    iput-object v4, v2, Lcom/android/server/policy/SystemKeyManager;->mFocusedWindow:Ljava/lang/String;

    .line 83
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v2, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyRequestedComponents:Ljava/util/HashSet;

    .line 84
    iput-boolean v10, v2, Lcom/android/server/policy/SystemKeyManager;->mMetaKeyPass:Z

    .line 85
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v2, Lcom/android/server/policy/SystemKeyManager;->mSystemKeyInfoMap:Landroid/util/SparseArray;

    .line 86
    iput-boolean v10, v2, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedRecentKey:Z

    .line 87
    iput-boolean v10, v2, Lcom/android/server/policy/SystemKeyManager;->mIsActivatedHomeKey:Z

    .line 88
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iput-object v5, v2, Lcom/android/server/policy/SystemKeyManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 89
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 90
    new-instance v2, Lcom/android/server/policy/BixbyService;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v5}, Lcom/android/server/policy/BixbyService;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 91
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    .line 92
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v1, :cond_12

    const/16 v1, 0x66

    .line 93
    iput v1, v2, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 94
    :cond_12
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator_manager"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibratorManager;

    .line 95
    invoke-virtual {v1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 96
    new-instance v1, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {v1, v5, v7}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/Vibrator;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 98
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v1

    if-le v1, v3, :cond_13

    move v1, v3

    goto :goto_2

    :cond_13
    move v1, v10

    :goto_2
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 99
    new-instance v1, Lcom/android/server/policy/KeyboardShortcutManager;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v0}, Lcom/android/server/policy/KeyboardShortcutManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 100
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    const/4 v7, 0x3

    invoke-direct {v5, v7, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v6}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v5

    const-string/jumbo v6, "privacy"

    if-eqz v5, :cond_14

    const-string v5, "camera_toggle_enabled"

    .line 103
    invoke-static {v6, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v3

    goto :goto_3

    :cond_14
    move v5, v10

    :goto_3
    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    .line 104
    invoke-virtual {v1, v3}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "mic_toggle_enabled"

    .line 105
    invoke-static {v6, v1, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    move v10, v3

    :cond_15
    iput-boolean v10, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    .line 106
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$13;

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$13;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 108
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v5, Lcom/android/server/policy/PhoneWindowManagerExt$14;

    invoke-direct {v5, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$14;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Lcom/android/server/policy/PhoneWindowManagerExt$13;)V

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    invoke-virtual {v2, v5, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 109
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_TABLE_MODE:Z

    if-eqz v1, :cond_16

    .line 110
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 111
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mMultiFingerGestureListener:Lcom/android/server/policy/PhoneWindowManagerExt$12;

    invoke-virtual {v1, v2, v4}, Landroid/hardware/input/InputManager;->semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    .line 112
    :cond_16
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 113
    const-string/jumbo v1, "persist.service.esc.dialog"

    const-string/jumbo v2, "null"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    .line 115
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    if-eqz v1, :cond_17

    .line 116
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$RoleObserver;

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$RoleObserver;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    :cond_17
    return-void
.end method

.method public final injectionKeyEvent(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;-><init>(III)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-nez v7, :cond_0

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v7, 0x0

    .line 24
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    const/high16 v11, 0x20000000

    .line 29
    .line 30
    and-int v11, p3, v11

    .line 31
    .line 32
    if-eqz v11, :cond_1

    .line 33
    .line 34
    const/4 v11, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v11, 0x0

    .line 37
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDisplayId(Landroid/view/KeyEvent;)I

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    const/4 v13, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/4 v13, 0x0

    .line 48
    :goto_2
    if-eqz v13, :cond_3

    .line 49
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    if-eqz v14, :cond_3

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    if-nez v14, :cond_3

    .line 61
    .line 62
    const/4 v14, 0x1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/4 v14, 0x0

    .line 65
    :goto_3
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 66
    .line 67
    invoke-virtual {v15}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 68
    .line 69
    .line 70
    move-result v15

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 72
    .line 73
    .line 74
    move-result v16

    .line 75
    sget-boolean v17, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 76
    .line 77
    if-nez v17, :cond_4

    .line 78
    .line 79
    sget-object v18, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 80
    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    move-object/from16 v8, v18

    .line 86
    .line 87
    check-cast v8, Landroid/util/ArraySet;

    .line 88
    .line 89
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    :cond_4
    const-string v3, "PhoneWindowManagerExt"

    .line 96
    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v4, "interceptKeyTi code="

    .line 100
    .line 101
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v4, " down="

    .line 108
    .line 109
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v4, " repeatCount="

    .line 116
    .line 117
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v4, " displayId="

    .line 121
    .line 122
    const-string v9, " interactive="

    .line 123
    .line 124
    invoke-static {v6, v12, v4, v9, v8}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v3, v8, v11}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 128
    .line 129
    .line 130
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-nez v4, :cond_6

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    const/4 v4, 0x0

    .line 143
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    const/16 v9, 0x43c

    .line 148
    .line 149
    const-wide/16 v19, -0x1

    .line 150
    .line 151
    if-ne v3, v9, :cond_7

    .line 152
    .line 153
    if-nez v4, :cond_7

    .line 154
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->enableOrDisableDexMode()V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_5

    .line 159
    .line 160
    :cond_7
    invoke-virtual {v0, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDisplayInDexMode(I)Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    move/from16 v21, v10

    .line 165
    .line 166
    const/16 v10, 0x75

    .line 167
    .line 168
    if-nez v9, :cond_8

    .line 169
    .line 170
    goto/16 :goto_6

    .line 171
    .line 172
    :cond_8
    const/16 v9, 0x30

    .line 173
    .line 174
    if-eq v3, v9, :cond_c

    .line 175
    .line 176
    const/16 v9, 0x3d

    .line 177
    .line 178
    if-eq v3, v9, :cond_b

    .line 179
    .line 180
    const/16 v8, 0x7a

    .line 181
    .line 182
    if-eq v3, v8, :cond_a

    .line 183
    .line 184
    if-eq v3, v10, :cond_9

    .line 185
    .line 186
    const/16 v8, 0x76

    .line 187
    .line 188
    if-eq v3, v8, :cond_9

    .line 189
    .line 190
    packed-switch v3, :pswitch_data_0

    .line 191
    .line 192
    .line 193
    packed-switch v3, :pswitch_data_1

    .line 194
    .line 195
    .line 196
    packed-switch v3, :pswitch_data_2

    .line 197
    .line 198
    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :pswitch_0
    const/4 v3, 0x1

    .line 202
    invoke-virtual {v0, v2, v12, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_f

    .line 212
    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-nez v3, :cond_f

    .line 218
    .line 219
    if-eqz v4, :cond_f

    .line 220
    .line 221
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 222
    .line 223
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 224
    .line 225
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 226
    .line 227
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 228
    .line 229
    .line 230
    monitor-enter v3

    .line 231
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 232
    .line 233
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 234
    .line 235
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 236
    .line 237
    iget-object v0, v0, Lcom/android/server/wm/DexController;->mDexMetaKeyPolicy:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 238
    .line 239
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DexMetaKeyPolicy;->handleMetaKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)V

    .line 240
    .line 241
    .line 242
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_5

    .line 247
    .line 248
    :catchall_0
    move-exception v0

    .line 249
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_9
    if-nez v4, :cond_f

    .line 255
    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-nez v3, :cond_f

    .line 261
    .line 262
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 263
    .line 264
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    .line 268
    .line 269
    if-eqz v4, :cond_f

    .line 270
    .line 271
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 272
    .line 273
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 274
    .line 275
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 276
    .line 277
    .line 278
    monitor-enter v4

    .line 279
    :try_start_2
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 280
    .line 281
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 282
    .line 283
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 284
    .line 285
    iget-object v3, v3, Lcom/android/server/wm/DexController;->mDexMetaKeyPolicy:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 286
    .line 287
    invoke-virtual {v3}, Lcom/android/server/wm/DexMetaKeyPolicy;->handleDexMetaKeyForSnapping()V

    .line 288
    .line 289
    .line 290
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 292
    .line 293
    .line 294
    goto :goto_6

    .line 295
    :catchall_1
    move-exception v0

    .line 296
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 297
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 298
    .line 299
    .line 300
    throw v0

    .line 301
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-eqz v3, :cond_f

    .line 306
    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-nez v3, :cond_f

    .line 312
    .line 313
    if-eqz v4, :cond_e

    .line 314
    .line 315
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0, v12}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllTasks(I)Z

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_b
    if-eqz v4, :cond_f

    .line 324
    .line 325
    if-nez v8, :cond_f

    .line 326
    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_f

    .line 332
    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-nez v3, :cond_f

    .line 338
    .line 339
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 340
    .line 341
    invoke-virtual {v0, v12}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps(I)V

    .line 342
    .line 343
    .line 344
    goto :goto_5

    .line 345
    :cond_c
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-eqz v3, :cond_f

    .line 350
    .line 351
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 352
    .line 353
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 354
    .line 355
    if-eqz v3, :cond_d

    .line 356
    .line 357
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 358
    .line 359
    invoke-static {v4, v12}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 364
    .line 365
    invoke-virtual {v3, v2, v4}, Lcom/android/server/statusbar/StatusBarManagerService$2;->sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V

    .line 366
    .line 367
    .line 368
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-nez v3, :cond_f

    .line 373
    .line 374
    :cond_e
    :goto_5
    return-wide v19

    .line 375
    :cond_f
    :goto_6
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 376
    .line 377
    const/4 v4, -0x1

    .line 378
    if-nez v3, :cond_10

    .line 379
    .line 380
    if-eq v12, v4, :cond_11

    .line 381
    .line 382
    :cond_10
    const/4 v8, 0x3

    .line 383
    if-ne v3, v8, :cond_18

    .line 384
    .line 385
    if-nez v12, :cond_18

    .line 386
    .line 387
    :cond_11
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 388
    .line 389
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_12

    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 405
    .line 406
    .line 407
    move-result v9

    .line 408
    if-nez v9, :cond_13

    .line 409
    .line 410
    const/4 v9, 0x1

    .line 411
    goto :goto_7

    .line 412
    :cond_13
    const/4 v9, 0x0

    .line 413
    :goto_7
    const/16 v10, 0x2e

    .line 414
    .line 415
    if-eq v3, v10, :cond_14

    .line 416
    .line 417
    packed-switch v3, :pswitch_data_3

    .line 418
    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_14
    :pswitch_3
    if-eqz v9, :cond_18

    .line 422
    .line 423
    if-nez v8, :cond_18

    .line 424
    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-nez v3, :cond_18

    .line 430
    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    if-eqz v3, :cond_18

    .line 436
    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-nez v3, :cond_15

    .line 442
    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-eqz v3, :cond_18

    .line 448
    .line 449
    :cond_15
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 450
    .line 451
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerServiceExt;->getFocusedTaskIdWithoutHomeOrRecents()I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    const-string v3, "WindowManagerServiceExt"

    .line 456
    .line 457
    if-ne v1, v4, :cond_16

    .line 458
    .line 459
    const-string/jumbo v4, "sendShortcutKey() - there is no focused task."

    .line 460
    .line 461
    .line 462
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    :cond_16
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 466
    .line 467
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 468
    .line 469
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyEventListener:Lcom/samsung/android/multiwindow/IKeyEventListener;

    .line 470
    .line 471
    if-eqz v0, :cond_17

    .line 472
    .line 473
    :try_start_4
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/multiwindow/IKeyEventListener;->sendShortcutKeyWithFocusedTask(ILandroid/view/KeyEvent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 474
    .line 475
    .line 476
    goto :goto_8

    .line 477
    :catch_0
    move-exception v0

    .line 478
    move-object v1, v0

    .line 479
    const-string/jumbo v0, "sendShortcutKey() : e="

    .line 480
    .line 481
    .line 482
    invoke-static {v1, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :cond_17
    :goto_8
    return-wide v19

    .line 486
    :cond_18
    :goto_9
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 487
    .line 488
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 492
    .line 493
    .line 494
    move-result v8

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 496
    .line 497
    .line 498
    move-result v9

    .line 499
    if-nez v9, :cond_19

    .line 500
    .line 501
    const/4 v9, 0x1

    .line 502
    goto :goto_a

    .line 503
    :cond_19
    const/4 v9, 0x0

    .line 504
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 505
    .line 506
    .line 507
    move-result v10

    .line 508
    iget-object v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 509
    .line 510
    move/from16 v22, v6

    .line 511
    .line 512
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    if-eqz v4, :cond_2f

    .line 521
    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    const-string v6, "KeyboardShortcutManager"

    .line 527
    .line 528
    if-eqz v14, :cond_1a

    .line 529
    .line 530
    const/high16 v1, 0x10000

    .line 531
    .line 532
    invoke-static {v4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-eqz v1, :cond_1a

    .line 537
    .line 538
    const/4 v1, 0x1

    .line 539
    iput-boolean v1, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 540
    .line 541
    const-string v1, "interceptKeyTi, triggered"

    .line 542
    .line 543
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    goto :goto_e

    .line 547
    :cond_1a
    iget-boolean v1, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 548
    .line 549
    if-nez v1, :cond_1d

    .line 550
    .line 551
    :cond_1b
    :goto_b
    move/from16 v23, v14

    .line 552
    .line 553
    :goto_c
    move/from16 v24, v15

    .line 554
    .line 555
    :cond_1c
    :goto_d
    const/4 v1, 0x0

    .line 556
    goto/16 :goto_14

    .line 557
    .line 558
    :cond_1d
    :goto_e
    if-eqz v10, :cond_1e

    .line 559
    .line 560
    iget-boolean v1, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 561
    .line 562
    move/from16 v23, v14

    .line 563
    .line 564
    move/from16 v24, v15

    .line 565
    .line 566
    goto/16 :goto_14

    .line 567
    .line 568
    :cond_1e
    if-nez v9, :cond_1f

    .line 569
    .line 570
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 571
    .line 572
    const/4 v1, 0x0

    .line 573
    iput-boolean v1, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 574
    .line 575
    iget-boolean v4, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 576
    .line 577
    if-eqz v4, :cond_1b

    .line 578
    .line 579
    iput-boolean v1, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 580
    .line 581
    :goto_f
    move/from16 v23, v14

    .line 582
    .line 583
    move/from16 v24, v15

    .line 584
    .line 585
    :goto_10
    const/4 v1, 0x1

    .line 586
    goto/16 :goto_14

    .line 587
    .line 588
    :cond_1f
    invoke-virtual {v3, v8}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutSettingsValue(I)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    if-eqz v4, :cond_20

    .line 597
    .line 598
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 599
    .line 600
    goto :goto_b

    .line 601
    :cond_20
    const-string v4, "None"

    .line 602
    .line 603
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    if-eqz v4, :cond_21

    .line 608
    .line 609
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 610
    .line 611
    goto :goto_f

    .line 612
    :cond_21
    const-string v4, "android.intent.category."

    .line 613
    .line 614
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 615
    .line 616
    .line 617
    move-result v4

    .line 618
    const-string v9, "com.android.settings"

    .line 619
    .line 620
    if-eqz v4, :cond_22

    .line 621
    .line 622
    const/4 v4, 0x1

    .line 623
    :goto_11
    const/4 v10, 0x1

    .line 624
    goto :goto_12

    .line 625
    :cond_22
    const-string v4, "android.app.role."

    .line 626
    .line 627
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    if-eqz v4, :cond_23

    .line 632
    .line 633
    const/4 v4, 0x2

    .line 634
    goto :goto_11

    .line 635
    :cond_23
    const-string v4, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    .line 636
    .line 637
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result v4

    .line 641
    if-eqz v4, :cond_24

    .line 642
    .line 643
    const/4 v4, 0x3

    .line 644
    goto :goto_11

    .line 645
    :cond_24
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v4

    .line 649
    if-eqz v4, :cond_25

    .line 650
    .line 651
    const/16 v4, 0x25

    .line 652
    .line 653
    if-ne v8, v4, :cond_25

    .line 654
    .line 655
    const/4 v4, 0x4

    .line 656
    goto :goto_11

    .line 657
    :cond_25
    const-string v4, "com.sec.android.app.launcher"

    .line 658
    .line 659
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    if-eqz v4, :cond_26

    .line 664
    .line 665
    const/4 v4, 0x5

    .line 666
    goto :goto_11

    .line 667
    :cond_26
    const/4 v4, 0x0

    .line 668
    goto :goto_11

    .line 669
    :goto_12
    if-ne v4, v10, :cond_27

    .line 670
    .line 671
    const-string v3, "launch type=category shortcutSetting="

    .line 672
    .line 673
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .line 679
    .line 680
    goto/16 :goto_b

    .line 681
    .line 682
    :cond_27
    const/4 v10, 0x2

    .line 683
    if-ne v4, v10, :cond_28

    .line 684
    .line 685
    const-string v3, "launch type=role shortcutSetting="

    .line 686
    .line 687
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    goto/16 :goto_b

    .line 695
    .line 696
    :cond_28
    const-string v10, " keyCode="

    .line 697
    .line 698
    move/from16 v23, v14

    .line 699
    .line 700
    const/4 v14, 0x4

    .line 701
    if-ne v4, v14, :cond_29

    .line 702
    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    const-string v4, "launch type=settings shortcutSetting="

    .line 706
    .line 707
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .line 725
    .line 726
    goto/16 :goto_c

    .line 727
    .line 728
    :cond_29
    iget-object v14, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 729
    .line 730
    move/from16 v24, v15

    .line 731
    .line 732
    const/4 v15, 0x5

    .line 733
    if-ne v4, v15, :cond_2a

    .line 734
    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    const-string v4, "launch type=HOME shortcutSetting="

    .line 738
    .line 739
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .line 757
    .line 758
    iget-object v1, v14, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 759
    .line 760
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->postShortPressOnHome(Landroid/view/KeyEvent;)V

    .line 761
    .line 762
    .line 763
    goto/16 :goto_10

    .line 764
    .line 765
    :cond_2a
    const/4 v10, 0x3

    .line 766
    if-eq v4, v10, :cond_2c

    .line 767
    .line 768
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v9

    .line 772
    if-eqz v9, :cond_2b

    .line 773
    .line 774
    new-instance v9, Lcom/android/server/policy/KeyboardShortcutManager$DefaultBehavior;

    .line 775
    .line 776
    iget-object v10, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 777
    .line 778
    invoke-direct {v9, v10, v14}, Lcom/android/server/policy/KeyboardShortcutManager$DefaultBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 779
    .line 780
    .line 781
    goto :goto_13

    .line 782
    :cond_2b
    new-instance v9, Lcom/android/server/policy/KeyboardShortcutManager$DefaultBehavior;

    .line 783
    .line 784
    iget-object v10, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 785
    .line 786
    const/4 v15, 0x0

    .line 787
    invoke-direct {v9, v10, v14, v15}, Lcom/android/server/policy/KeyboardShortcutManager$DefaultBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 791
    .line 792
    .line 793
    move-result-object v10

    .line 794
    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    .line 796
    .line 797
    move-result-object v10

    .line 798
    iput-object v10, v9, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 799
    .line 800
    goto :goto_13

    .line 801
    :cond_2c
    new-instance v9, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;

    .line 802
    .line 803
    iget-object v10, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 804
    .line 805
    invoke-direct {v9, v10, v14}, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 806
    .line 807
    .line 808
    :goto_13
    new-instance v10, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    const-string v15, "launch type="

    .line 811
    .line 812
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-static {v4}, Lcom/android/server/policy/KeyboardShortcutManager;->typeToString(I)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v4

    .line 819
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    const-string v4, " shortcutSetting= "

    .line 823
    .line 824
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    const-string v4, " "

    .line 831
    .line 832
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v4

    .line 842
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .line 844
    .line 845
    invoke-virtual {v9}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->preCondition()Z

    .line 846
    .line 847
    .line 848
    move-result v4

    .line 849
    if-eqz v4, :cond_2d

    .line 850
    .line 851
    goto/16 :goto_d

    .line 852
    .line 853
    :cond_2d
    invoke-virtual {v9, v12}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->startTargetApp(I)V

    .line 854
    .line 855
    .line 856
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 857
    .line 858
    if-eqz v4, :cond_2e

    .line 859
    .line 860
    invoke-static {v8}, Lcom/android/server/policy/KeyboardShortcutManager;->getSaLoggerEventId(I)Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 865
    .line 866
    .line 867
    invoke-static {v4, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    :cond_2e
    const/4 v1, 0x1

    .line 871
    iput-boolean v1, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 872
    .line 873
    const-string v1, "consumed"

    .line 874
    .line 875
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .line 877
    .line 878
    goto/16 :goto_10

    .line 879
    .line 880
    :cond_2f
    move/from16 v23, v14

    .line 881
    .line 882
    move/from16 v24, v15

    .line 883
    .line 884
    if-eqz v9, :cond_1c

    .line 885
    .line 886
    if-nez v10, :cond_1c

    .line 887
    .line 888
    const/4 v1, 0x0

    .line 889
    iput-boolean v1, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 890
    .line 891
    iput-boolean v1, v3, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 892
    .line 893
    goto/16 :goto_d

    .line 894
    .line 895
    :goto_14
    if-eqz v1, :cond_30

    .line 896
    .line 897
    return-wide v19

    .line 898
    :cond_30
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 899
    .line 900
    .line 901
    move-result v1

    .line 902
    const-wide/16 v3, 0x0

    .line 903
    .line 904
    packed-switch v1, :pswitch_data_4

    .line 905
    .line 906
    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 908
    .line 909
    .line 910
    move-result v6

    .line 911
    if-nez v6, :cond_31

    .line 912
    .line 913
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 914
    .line 915
    .line 916
    move-result v6

    .line 917
    const/4 v8, 0x1

    .line 918
    if-le v6, v8, :cond_33

    .line 919
    .line 920
    :cond_31
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 921
    .line 922
    iget-object v6, v6, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 923
    .line 924
    const/4 v8, 0x4

    .line 925
    invoke-virtual {v6, v8, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    if-eqz v1, :cond_33

    .line 930
    .line 931
    iget v1, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 932
    .line 933
    if-ne v1, v8, :cond_33

    .line 934
    .line 935
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 936
    .line 937
    if-eqz v17, :cond_32

    .line 938
    .line 939
    const-string v1, "PhoneWindowManagerExt"

    .line 940
    .line 941
    const-string v6, "dispatchKeyEvent:long press, NO_DISPATCHING"

    .line 942
    .line 943
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .line 945
    .line 946
    :cond_32
    :goto_15
    move-wide/from16 v8, v19

    .line 947
    .line 948
    goto :goto_16

    .line 949
    :cond_33
    move-wide v8, v3

    .line 950
    goto :goto_16

    .line 951
    :pswitch_4
    const/4 v1, 0x1

    .line 952
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    .line 953
    .line 954
    goto :goto_15

    .line 955
    :pswitch_5
    const/4 v6, 0x0

    .line 956
    invoke-virtual {v0, v2, v12, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 957
    .line 958
    .line 959
    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    .line 960
    .line 961
    if-eqz v8, :cond_34

    .line 962
    .line 963
    const/16 v8, 0x441

    .line 964
    .line 965
    if-ne v1, v8, :cond_34

    .line 966
    .line 967
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 968
    .line 969
    new-instance v8, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;

    .line 970
    .line 971
    invoke-direct {v8, v0, v2, v6}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 975
    .line 976
    .line 977
    :cond_34
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLastGesture3FingerBottom:Z

    .line 978
    .line 979
    goto :goto_15

    .line 980
    :goto_16
    cmp-long v1, v8, v3

    .line 981
    .line 982
    if-eqz v1, :cond_35

    .line 983
    .line 984
    const-string v0, "PhoneWindowManagerExt"

    .line 985
    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    .line 987
    .line 988
    const-string v2, "interceptKeyTi checkPolicyBeforeDispatching return="

    .line 989
    .line 990
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    .line 1002
    .line 1003
    return-wide v8

    .line 1004
    :cond_35
    const/4 v1, 0x3

    .line 1005
    if-eq v5, v1, :cond_83

    .line 1006
    .line 1007
    const/high16 v1, 0x10000000

    .line 1008
    .line 1009
    const/4 v3, 0x4

    .line 1010
    if-eq v5, v3, :cond_81

    .line 1011
    .line 1012
    const/16 v3, 0x18

    .line 1013
    .line 1014
    if-eq v5, v3, :cond_7c

    .line 1015
    .line 1016
    const/16 v3, 0x19

    .line 1017
    .line 1018
    if-eq v5, v3, :cond_7c

    .line 1019
    .line 1020
    const/16 v4, 0x39

    .line 1021
    .line 1022
    if-eq v5, v4, :cond_7a

    .line 1023
    .line 1024
    const/16 v4, 0x3a

    .line 1025
    .line 1026
    if-eq v5, v4, :cond_7a

    .line 1027
    .line 1028
    const/16 v4, 0x75

    .line 1029
    .line 1030
    if-eq v5, v4, :cond_78

    .line 1031
    .line 1032
    const/16 v4, 0x76

    .line 1033
    .line 1034
    if-eq v5, v4, :cond_78

    .line 1035
    .line 1036
    const/4 v4, 0x0

    .line 1037
    sparse-switch v5, :sswitch_data_0

    .line 1038
    .line 1039
    .line 1040
    packed-switch v5, :pswitch_data_5

    .line 1041
    .line 1042
    .line 1043
    packed-switch v5, :pswitch_data_6

    .line 1044
    .line 1045
    .line 1046
    packed-switch v5, :pswitch_data_7

    .line 1047
    .line 1048
    .line 1049
    goto/16 :goto_2f

    .line 1050
    .line 1051
    :pswitch_6
    if-eqz v13, :cond_8c

    .line 1052
    .line 1053
    const-string v1, "PhoneWindowManagerExt"

    .line 1054
    .line 1055
    const-string v2, "launch view notification"

    .line 1056
    .line 1057
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1061
    .line 1062
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    if-eqz v1, :cond_36

    .line 1067
    .line 1068
    :try_start_5
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1069
    .line 1070
    invoke-static {v0, v12}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 1071
    .line 1072
    .line 1073
    move-result v0

    .line 1074
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1075
    .line 1076
    .line 1077
    goto :goto_17

    .line 1078
    :catch_1
    const-string v0, "PhoneWindowManagerExt"

    .line 1079
    .line 1080
    const-string v1, "Failed to launch view notification"

    .line 1081
    .line 1082
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    .line 1084
    .line 1085
    :cond_36
    :goto_17
    return-wide v19

    .line 1086
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1087
    .line 1088
    const/4 v1, 0x0

    .line 1089
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 1090
    .line 1091
    .line 1092
    return-wide v19

    .line 1093
    :pswitch_8
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 1094
    .line 1095
    if-nez v1, :cond_37

    .line 1096
    .line 1097
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 1098
    .line 1099
    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 1100
    .line 1101
    .line 1102
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 1103
    .line 1104
    :cond_37
    sget-boolean v1, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 1105
    .line 1106
    if-eqz v1, :cond_38

    .line 1107
    .line 1108
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v1

    .line 1112
    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 1113
    .line 1114
    const/4 v2, 0x1

    .line 1115
    xor-int/2addr v1, v2

    .line 1116
    if-eqz v1, :cond_38

    .line 1117
    .line 1118
    return-wide v19

    .line 1119
    :cond_38
    if-eqz v13, :cond_39

    .line 1120
    .line 1121
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 1122
    .line 1123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1124
    .line 1125
    .line 1126
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 1127
    .line 1128
    iput v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->keyCode:I

    .line 1129
    .line 1130
    const/4 v1, 0x1

    .line 1131
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 1132
    .line 1133
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1134
    .line 1135
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1136
    .line 1137
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    .line 1138
    .line 1139
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1140
    .line 1141
    .line 1142
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1143
    .line 1144
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1145
    .line 1146
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    .line 1147
    .line 1148
    const-wide/16 v2, 0xbb8

    .line 1149
    .line 1150
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1151
    .line 1152
    .line 1153
    goto/16 :goto_19

    .line 1154
    .line 1155
    :cond_39
    if-nez v7, :cond_3f

    .line 1156
    .line 1157
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHotKey:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    .line 1158
    .line 1159
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 1160
    .line 1161
    if-nez v1, :cond_3a

    .line 1162
    .line 1163
    goto/16 :goto_19

    .line 1164
    .line 1165
    :cond_3a
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1166
    .line 1167
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1168
    .line 1169
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->registerAppRunnable:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;

    .line 1170
    .line 1171
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1172
    .line 1173
    .line 1174
    const/4 v1, 0x0

    .line 1175
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->isTriggered:Z

    .line 1176
    .line 1177
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1178
    .line 1179
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1180
    .line 1181
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 1182
    .line 1183
    iget-object v2, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    .line 1184
    .line 1185
    monitor-enter v2

    .line 1186
    :try_start_6
    iget-object v1, v1, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    .line 1187
    .line 1188
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    check-cast v1, Landroid/content/ComponentName;

    .line 1193
    .line 1194
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1195
    if-nez v1, :cond_3b

    .line 1196
    .line 1197
    const-string v1, "PhoneWindowManagerExt"

    .line 1198
    .line 1199
    const-string v2, "Can not launch hotkey app. The package info is empty."

    .line 1200
    .line 1201
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    .line 1203
    .line 1204
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1205
    .line 1206
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1207
    .line 1208
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 1209
    .line 1210
    const/4 v3, 0x5

    .line 1211
    invoke-direct {v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1215
    .line 1216
    .line 1217
    goto :goto_19

    .line 1218
    :cond_3b
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v2

    .line 1222
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1223
    .line 1224
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1225
    .line 1226
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v3

    .line 1230
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v3

    .line 1234
    if-nez v3, :cond_3c

    .line 1235
    .line 1236
    new-instance v3, Landroid/content/Intent;

    .line 1237
    .line 1238
    const-string v6, "android.intent.action.MAIN"

    .line 1239
    .line 1240
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    const-string v6, "android.intent.category.LAUNCHER"

    .line 1244
    .line 1245
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    .line 1247
    .line 1248
    const/high16 v6, 0x10200000

    .line 1249
    .line 1250
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1254
    .line 1255
    .line 1256
    :cond_3c
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1257
    .line 1258
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1259
    .line 1260
    .line 1261
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v6

    .line 1265
    if-eqz v6, :cond_3d

    .line 1266
    .line 1267
    const/4 v3, 0x0

    .line 1268
    goto :goto_18

    .line 1269
    :cond_3d
    iget-object v6, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1270
    .line 1271
    invoke-virtual {v3, v6, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    const/4 v3, 0x1

    .line 1275
    :goto_18
    if-eqz v3, :cond_3e

    .line 1276
    .line 1277
    goto :goto_19

    .line 1278
    :cond_3e
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1279
    .line 1280
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 1281
    .line 1282
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v1

    .line 1286
    const/4 v4, 0x0

    .line 1287
    invoke-virtual {v3, v12, v4, v1}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 1288
    .line 1289
    .line 1290
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1291
    .line 1292
    if-eqz v1, :cond_3f

    .line 1293
    .line 1294
    const/4 v1, 0x1

    .line 1295
    invoke-virtual {v0, v5, v2, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->saLogging(ILjava/lang/String;Z)V

    .line 1296
    .line 1297
    .line 1298
    goto :goto_19

    .line 1299
    :catchall_2
    move-exception v0

    .line 1300
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1301
    throw v0

    .line 1302
    :cond_3f
    :goto_19
    return-wide v19

    .line 1303
    :pswitch_9
    if-nez v7, :cond_41

    .line 1304
    .line 1305
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1306
    .line 1307
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 1308
    .line 1309
    .line 1310
    move-result v1

    .line 1311
    if-eqz v1, :cond_41

    .line 1312
    .line 1313
    if-eqz v11, :cond_41

    .line 1314
    .line 1315
    const/4 v1, -0x1

    .line 1316
    if-ne v12, v1, :cond_40

    .line 1317
    .line 1318
    const/4 v8, 0x0

    .line 1319
    goto :goto_1a

    .line 1320
    :cond_40
    move v8, v12

    .line 1321
    :goto_1a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1322
    .line 1323
    const/4 v1, 0x1

    .line 1324
    invoke-virtual {v0, v1, v8}, Lcom/android/server/wm/WindowManagerServiceExt;->sendTakeScreenshotRunnable(II)V

    .line 1325
    .line 1326
    .line 1327
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1328
    .line 1329
    if-eqz v0, :cond_41

    .line 1330
    .line 1331
    const-string v0, "PKBD0032"

    .line 1332
    .line 1333
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1334
    .line 1335
    .line 1336
    :cond_41
    return-wide v19

    .line 1337
    :pswitch_a
    if-eqz v13, :cond_42

    .line 1338
    .line 1339
    if-nez v24, :cond_42

    .line 1340
    .line 1341
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1342
    .line 1343
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v0

    .line 1347
    if-eqz v0, :cond_42

    .line 1348
    .line 1349
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1350
    .line 1351
    .line 1352
    goto :goto_1b

    .line 1353
    :catch_2
    const-string v0, "PhoneWindowManagerExt"

    .line 1354
    .line 1355
    const-string v1, "Failed to toggle Quick Panel"

    .line 1356
    .line 1357
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    .line 1359
    .line 1360
    :cond_42
    :goto_1b
    return-wide v19

    .line 1361
    :pswitch_b
    if-eqz v23, :cond_8c

    .line 1362
    .line 1363
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 1364
    .line 1365
    const-string v1, "com.samsung.android.smartmirroring/com.samsung.android.smartmirroring.CastingActivity"

    .line 1366
    .line 1367
    const/4 v2, 0x0

    .line 1368
    invoke-virtual {v0, v12, v2, v1}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 1369
    .line 1370
    .line 1371
    move-result v0

    .line 1372
    if-eqz v0, :cond_8c

    .line 1373
    .line 1374
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1375
    .line 1376
    if-eqz v0, :cond_43

    .line 1377
    .line 1378
    const-string v0, "PKBD0020"

    .line 1379
    .line 1380
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    :cond_43
    return-wide v19

    .line 1384
    :pswitch_c
    if-eqz v23, :cond_8c

    .line 1385
    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->enableOrDisableDexMode()V

    .line 1387
    .line 1388
    .line 1389
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1390
    .line 1391
    if-eqz v0, :cond_44

    .line 1392
    .line 1393
    const-string v0, "PKBD0018"

    .line 1394
    .line 1395
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1396
    .line 1397
    .line 1398
    :cond_44
    return-wide v19

    .line 1399
    :pswitch_d
    if-eqz v23, :cond_8c

    .line 1400
    .line 1401
    if-eqz v16, :cond_46

    .line 1402
    .line 1403
    const/4 v1, 0x2

    .line 1404
    invoke-virtual {v0, v1, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->sensorToggleBehavior(II)Z

    .line 1405
    .line 1406
    .line 1407
    move-result v0

    .line 1408
    if-nez v0, :cond_45

    .line 1409
    .line 1410
    goto/16 :goto_2f

    .line 1411
    .line 1412
    :cond_45
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1413
    .line 1414
    if-eqz v0, :cond_47

    .line 1415
    .line 1416
    const-string v0, "PKBD0022"

    .line 1417
    .line 1418
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    goto :goto_1c

    .line 1422
    :cond_46
    const-string v1, "PhoneWindowManagerExt"

    .line 1423
    .line 1424
    const-string v2, "launch volume panel"

    .line 1425
    .line 1426
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v0

    .line 1433
    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    .line 1434
    .line 1435
    .line 1436
    move-result v1

    .line 1437
    const/4 v2, 0x0

    .line 1438
    const/4 v3, 0x1

    .line 1439
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1440
    .line 1441
    .line 1442
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1443
    .line 1444
    if-eqz v0, :cond_47

    .line 1445
    .line 1446
    const-string v0, "PKBD0017"

    .line 1447
    .line 1448
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1449
    .line 1450
    .line 1451
    :cond_47
    :goto_1c
    return-wide v19

    .line 1452
    :pswitch_e
    if-eqz v23, :cond_8c

    .line 1453
    .line 1454
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 1455
    .line 1456
    const/4 v1, 0x3

    .line 1457
    invoke-virtual {v0, v12, v1, v4}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 1458
    .line 1459
    .line 1460
    move-result v0

    .line 1461
    if-eqz v0, :cond_8c

    .line 1462
    .line 1463
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1464
    .line 1465
    if-eqz v0, :cond_48

    .line 1466
    .line 1467
    const-string v0, "PKBD0016"

    .line 1468
    .line 1469
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1470
    .line 1471
    .line 1472
    :cond_48
    return-wide v19

    .line 1473
    :sswitch_0
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 1474
    .line 1475
    if-nez v1, :cond_4b

    .line 1476
    .line 1477
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 1478
    .line 1479
    .line 1480
    move-result v1

    .line 1481
    if-eqz v1, :cond_49

    .line 1482
    .line 1483
    goto :goto_1d

    .line 1484
    :cond_49
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1485
    .line 1486
    .line 1487
    move-result v1

    .line 1488
    if-nez v1, :cond_8c

    .line 1489
    .line 1490
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 1491
    .line 1492
    if-eqz v1, :cond_4a

    .line 1493
    .line 1494
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1495
    .line 1496
    invoke-virtual {v1, v5}, Lcom/android/server/policy/KeyCustomizationManager;->canDispatchXCoverTopKeyEvent(I)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v1

    .line 1500
    if-nez v1, :cond_4a

    .line 1501
    .line 1502
    return-wide v19

    .line 1503
    :cond_4a
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1504
    .line 1505
    const/4 v1, 0x0

    .line 1506
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 1507
    .line 1508
    .line 1509
    move-result v0

    .line 1510
    const/4 v1, 0x1

    .line 1511
    if-ne v0, v1, :cond_8c

    .line 1512
    .line 1513
    return-wide v19

    .line 1514
    :cond_4b
    :goto_1d
    const-string v0, "PhoneWindowManagerExt"

    .line 1515
    .line 1516
    const-string v1, "Block Dispatching TopKey because of Factory mode or test."

    .line 1517
    .line 1518
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    .line 1520
    .line 1521
    goto/16 :goto_2f

    .line 1522
    .line 1523
    :sswitch_1
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1524
    .line 1525
    const/4 v2, 0x0

    .line 1526
    invoke-virtual {v1, v5, v2, v2}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 1527
    .line 1528
    .line 1529
    move-result v1

    .line 1530
    if-eqz v1, :cond_4c

    .line 1531
    .line 1532
    move-object/from16 v1, p1

    .line 1533
    .line 1534
    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    .line 1535
    .line 1536
    .line 1537
    move-result v0

    .line 1538
    :goto_1e
    int-to-long v0, v0

    .line 1539
    return-wide v0

    .line 1540
    :cond_4c
    if-nez v7, :cond_4d

    .line 1541
    .line 1542
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 1543
    .line 1544
    const/4 v1, 0x1

    .line 1545
    invoke-virtual {v0, v12, v1, v4}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 1546
    .line 1547
    .line 1548
    move-result v0

    .line 1549
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1550
    .line 1551
    if-eqz v1, :cond_4d

    .line 1552
    .line 1553
    if-eqz v0, :cond_4d

    .line 1554
    .line 1555
    const-string v0, "PKBD0033"

    .line 1556
    .line 1557
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    :cond_4d
    return-wide v19

    .line 1561
    :sswitch_2
    if-nez v7, :cond_4e

    .line 1562
    .line 1563
    if-nez v24, :cond_4e

    .line 1564
    .line 1565
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1566
    .line 1567
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 1568
    .line 1569
    .line 1570
    move-result v1

    .line 1571
    if-eqz v1, :cond_4e

    .line 1572
    .line 1573
    const-string v1, "PhoneWindowManagerExt"

    .line 1574
    .line 1575
    const-string v2, "KEYCODE_MULTI_WINDOW key input"

    .line 1576
    .line 1577
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    .line 1579
    .line 1580
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1581
    .line 1582
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v0

    .line 1586
    if-eqz v0, :cond_4e

    .line 1587
    .line 1588
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 1589
    .line 1590
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1591
    .line 1592
    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1593
    .line 1594
    .line 1595
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1596
    .line 1597
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1598
    .line 1599
    if-eqz v0, :cond_4e

    .line 1600
    .line 1601
    :try_start_9
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleSplitScreen()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1602
    .line 1603
    .line 1604
    :catch_3
    :cond_4e
    return-wide v19

    .line 1605
    :sswitch_3
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 1606
    .line 1607
    if-nez v1, :cond_51

    .line 1608
    .line 1609
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 1610
    .line 1611
    .line 1612
    move-result v1

    .line 1613
    if-eqz v1, :cond_4f

    .line 1614
    .line 1615
    goto :goto_1f

    .line 1616
    :cond_4f
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1617
    .line 1618
    .line 1619
    move-result v1

    .line 1620
    if-nez v1, :cond_8c

    .line 1621
    .line 1622
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    .line 1623
    .line 1624
    if-eqz v1, :cond_50

    .line 1625
    .line 1626
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1627
    .line 1628
    invoke-virtual {v1, v5}, Lcom/android/server/policy/KeyCustomizationManager;->canDispatchXCoverTopKeyEvent(I)Z

    .line 1629
    .line 1630
    .line 1631
    move-result v1

    .line 1632
    if-nez v1, :cond_50

    .line 1633
    .line 1634
    return-wide v19

    .line 1635
    :cond_50
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1636
    .line 1637
    const/4 v1, 0x0

    .line 1638
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 1639
    .line 1640
    .line 1641
    move-result v0

    .line 1642
    const/4 v1, 0x1

    .line 1643
    if-ne v0, v1, :cond_8c

    .line 1644
    .line 1645
    return-wide v19

    .line 1646
    :cond_51
    :goto_1f
    const-string v0, "PhoneWindowManagerExt"

    .line 1647
    .line 1648
    const-string v1, "Block Dispatching XCoverKey because of Factory mode or test."

    .line 1649
    .line 1650
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    .line 1652
    .line 1653
    goto/16 :goto_2f

    .line 1654
    .line 1655
    :sswitch_4
    move-object/from16 v1, p1

    .line 1656
    .line 1657
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1658
    .line 1659
    const/4 v4, 0x0

    .line 1660
    invoke-virtual {v3, v5, v4, v4}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 1661
    .line 1662
    .line 1663
    move-result v3

    .line 1664
    if-eqz v3, :cond_52

    .line 1665
    .line 1666
    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    .line 1667
    .line 1668
    .line 1669
    move-result v0

    .line 1670
    goto/16 :goto_1e

    .line 1671
    .line 1672
    :cond_52
    const/16 v1, 0xbb

    .line 1673
    .line 1674
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1675
    .line 1676
    .line 1677
    move-result v1

    .line 1678
    if-nez v1, :cond_53

    .line 1679
    .line 1680
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1681
    .line 1682
    invoke-virtual {v1, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 1683
    .line 1684
    .line 1685
    move-result v1

    .line 1686
    const/4 v2, 0x1

    .line 1687
    if-ne v1, v2, :cond_53

    .line 1688
    .line 1689
    return-wide v19

    .line 1690
    :cond_53
    if-eqz v13, :cond_54

    .line 1691
    .line 1692
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1693
    .line 1694
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1695
    .line 1696
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 1697
    .line 1698
    if-nez v1, :cond_54

    .line 1699
    .line 1700
    const/4 v1, 0x0

    .line 1701
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 1702
    .line 1703
    :cond_54
    if-eqz v7, :cond_8c

    .line 1704
    .line 1705
    if-eqz v22, :cond_8c

    .line 1706
    .line 1707
    if-eqz v21, :cond_8c

    .line 1708
    .line 1709
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 1710
    .line 1711
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1712
    .line 1713
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 1714
    .line 1715
    if-nez v1, :cond_55

    .line 1716
    .line 1717
    const/4 v1, 0x1

    .line 1718
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 1719
    .line 1720
    :cond_55
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1721
    .line 1722
    const/4 v2, 0x4

    .line 1723
    invoke-virtual {v1, v5, v2}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 1724
    .line 1725
    .line 1726
    move-result v1

    .line 1727
    if-eqz v1, :cond_56

    .line 1728
    .line 1729
    const-string v0, "PhoneWindowManagerExt"

    .line 1730
    .line 1731
    const-string/jumbo v1, "skip long press recent, requestedSystemKey"

    .line 1732
    .line 1733
    .line 1734
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    .line 1736
    .line 1737
    goto/16 :goto_2f

    .line 1738
    .line 1739
    :cond_56
    invoke-virtual {v0, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleLongPressOnRecent(I)V

    .line 1740
    .line 1741
    .line 1742
    goto/16 :goto_2f

    .line 1743
    .line 1744
    :sswitch_5
    const/16 v1, 0xb0

    .line 1745
    .line 1746
    if-ne v5, v1, :cond_8c

    .line 1747
    .line 1748
    if-eqz v13, :cond_8c

    .line 1749
    .line 1750
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 1751
    .line 1752
    const/4 v1, 0x4

    .line 1753
    invoke-virtual {v0, v12, v1, v4}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 1754
    .line 1755
    .line 1756
    move-result v0

    .line 1757
    if-eqz v0, :cond_8c

    .line 1758
    .line 1759
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1760
    .line 1761
    if-eqz v0, :cond_57

    .line 1762
    .line 1763
    const-string v0, "PKBD0034"

    .line 1764
    .line 1765
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1766
    .line 1767
    .line 1768
    :cond_57
    return-wide v19

    .line 1769
    :sswitch_6
    if-eqz v13, :cond_8c

    .line 1770
    .line 1771
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 1772
    .line 1773
    .line 1774
    move-result-object v0

    .line 1775
    if-nez v0, :cond_58

    .line 1776
    .line 1777
    goto/16 :goto_2f

    .line 1778
    .line 1779
    :cond_58
    const/4 v1, 0x2

    .line 1780
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->forceFadeIcon(I)V

    .line 1781
    .line 1782
    .line 1783
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1784
    .line 1785
    if-eqz v0, :cond_8c

    .line 1786
    .line 1787
    const-string v0, "PKBD0002"

    .line 1788
    .line 1789
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1790
    .line 1791
    .line 1792
    goto/16 :goto_2f

    .line 1793
    .line 1794
    :pswitch_f
    :sswitch_7
    const/16 v1, 0x86

    .line 1795
    .line 1796
    if-ne v5, v1, :cond_59

    .line 1797
    .line 1798
    if-eqz v7, :cond_59

    .line 1799
    .line 1800
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 1801
    .line 1802
    .line 1803
    move-result v1

    .line 1804
    if-eqz v1, :cond_59

    .line 1805
    .line 1806
    const/4 v8, 0x1

    .line 1807
    goto :goto_20

    .line 1808
    :cond_59
    const/4 v8, 0x0

    .line 1809
    :goto_20
    if-eqz v8, :cond_5a

    .line 1810
    .line 1811
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 1812
    .line 1813
    .line 1814
    move-result v1

    .line 1815
    if-eqz v1, :cond_5b

    .line 1816
    .line 1817
    :cond_5a
    const/16 v1, 0x34

    .line 1818
    .line 1819
    if-ne v5, v1, :cond_8c

    .line 1820
    .line 1821
    if-eqz v23, :cond_8c

    .line 1822
    .line 1823
    :cond_5b
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 1824
    .line 1825
    const/4 v2, 0x1

    .line 1826
    if-eq v1, v2, :cond_5f

    .line 1827
    .line 1828
    const/4 v2, 0x2

    .line 1829
    if-ne v1, v2, :cond_5c

    .line 1830
    .line 1831
    goto :goto_22

    .line 1832
    :cond_5c
    const-string v1, "PhoneWindowManagerExt"

    .line 1833
    .line 1834
    const-string v2, "finish focused window"

    .line 1835
    .line 1836
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    .line 1838
    .line 1839
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1840
    .line 1841
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getFocusedTaskIdWithoutHomeOrRecents()I

    .line 1842
    .line 1843
    .line 1844
    move-result v1

    .line 1845
    const/4 v2, -0x1

    .line 1846
    if-eq v1, v2, :cond_5e

    .line 1847
    .line 1848
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1849
    .line 1850
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1851
    .line 1852
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1853
    .line 1854
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    .line 1855
    .line 1856
    .line 1857
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1858
    .line 1859
    if-eqz v0, :cond_5e

    .line 1860
    .line 1861
    if-eqz v8, :cond_5d

    .line 1862
    .line 1863
    const-string v0, "PKBD0003"

    .line 1864
    .line 1865
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1866
    .line 1867
    .line 1868
    goto :goto_21

    .line 1869
    :cond_5d
    const-string v0, "PKBD0019"

    .line 1870
    .line 1871
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1872
    .line 1873
    .line 1874
    :cond_5e
    :goto_21
    return-wide v19

    .line 1875
    :cond_5f
    :goto_22
    const-string v1, "PhoneWindowManagerExt"

    .line 1876
    .line 1877
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1878
    .line 1879
    const-string v3, "Can\'t finish focused window in LockTaskMode. mode="

    .line 1880
    .line 1881
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1882
    .line 1883
    .line 1884
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 1885
    .line 1886
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1887
    .line 1888
    .line 1889
    return-wide v19

    .line 1890
    :sswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 1891
    .line 1892
    .line 1893
    move-result v1

    .line 1894
    if-eqz v1, :cond_8c

    .line 1895
    .line 1896
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 1897
    .line 1898
    .line 1899
    move-result v1

    .line 1900
    if-nez v1, :cond_8c

    .line 1901
    .line 1902
    if-eqz v7, :cond_62

    .line 1903
    .line 1904
    const/4 v1, -0x1

    .line 1905
    if-ne v12, v1, :cond_60

    .line 1906
    .line 1907
    const/4 v2, 0x1

    .line 1908
    const/4 v8, 0x0

    .line 1909
    goto :goto_23

    .line 1910
    :cond_60
    move v8, v12

    .line 1911
    const/4 v2, 0x1

    .line 1912
    :goto_23
    if-eq v12, v2, :cond_61

    .line 1913
    .line 1914
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1915
    .line 1916
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerServiceExt;->getFocusedTaskIdWithoutHomeOrRecents()I

    .line 1917
    .line 1918
    .line 1919
    move-result v2

    .line 1920
    if-eq v2, v1, :cond_61

    .line 1921
    .line 1922
    const/16 v9, 0x64

    .line 1923
    .line 1924
    goto :goto_24

    .line 1925
    :cond_61
    const/4 v9, 0x1

    .line 1926
    :goto_24
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 1927
    .line 1928
    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/WindowManagerServiceExt;->sendTakeScreenshotRunnable(II)V

    .line 1929
    .line 1930
    .line 1931
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1932
    .line 1933
    if-eqz v0, :cond_62

    .line 1934
    .line 1935
    const-string v0, "PKBD0004"

    .line 1936
    .line 1937
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1938
    .line 1939
    .line 1940
    :cond_62
    return-wide v19

    .line 1941
    :sswitch_9
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    .line 1942
    .line 1943
    if-nez v3, :cond_63

    .line 1944
    .line 1945
    const-string/jumbo v3, "persist.service.esc.dialog"

    .line 1946
    .line 1947
    .line 1948
    const-string/jumbo v4, "null"

    .line 1949
    .line 1950
    .line 1951
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v3

    .line 1955
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1956
    .line 1957
    .line 1958
    move-result v3

    .line 1959
    const/4 v4, 0x1

    .line 1960
    xor-int/2addr v3, v4

    .line 1961
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    .line 1962
    .line 1963
    :cond_63
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v3

    .line 1967
    if-eqz v3, :cond_64

    .line 1968
    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 1970
    .line 1971
    .line 1972
    move-result-object v3

    .line 1973
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v3

    .line 1977
    if-eqz v3, :cond_64

    .line 1978
    .line 1979
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v3

    .line 1983
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v3

    .line 1987
    const-string v4, "Test)"

    .line 1988
    .line 1989
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1990
    .line 1991
    .line 1992
    move-result v3

    .line 1993
    if-eqz v3, :cond_64

    .line 1994
    .line 1995
    const/4 v3, 0x1

    .line 1996
    goto :goto_25

    .line 1997
    :cond_64
    const/4 v3, 0x0

    .line 1998
    :goto_25
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mShownEsc:Z

    .line 1999
    .line 2000
    if-nez v4, :cond_65

    .line 2001
    .line 2002
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 2003
    .line 2004
    .line 2005
    move-result v4

    .line 2006
    if-eqz v4, :cond_65

    .line 2007
    .line 2008
    if-nez v3, :cond_65

    .line 2009
    .line 2010
    const/high16 v3, 0x1000000

    .line 2011
    .line 2012
    and-int v3, p3, v3

    .line 2013
    .line 2014
    if-nez v3, :cond_65

    .line 2015
    .line 2016
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 2017
    .line 2018
    const-string/jumbo v4, "settings_new_keyboard_modifier_key"

    .line 2019
    .line 2020
    .line 2021
    invoke-static {v3, v4}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2022
    .line 2023
    .line 2024
    move-result v3

    .line 2025
    if-eqz v3, :cond_65

    .line 2026
    .line 2027
    const-string/jumbo v1, "persist.service.esc.dialog"

    .line 2028
    .line 2029
    .line 2030
    const-string v2, "1"

    .line 2031
    .line 2032
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    .line 2034
    .line 2035
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 2036
    .line 2037
    invoke-virtual {v1}, Landroid/content/Context;->closeSystemDialogs()V

    .line 2038
    .line 2039
    .line 2040
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 2041
    .line 2042
    new-instance v2, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 2043
    .line 2044
    const/4 v3, 0x1

    .line 2045
    invoke-direct {v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 2046
    .line 2047
    .line 2048
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2049
    .line 2050
    .line 2051
    return-wide v19

    .line 2052
    :cond_65
    if-eqz v7, :cond_8c

    .line 2053
    .line 2054
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2055
    .line 2056
    .line 2057
    move-result v2

    .line 2058
    if-eqz v2, :cond_8c

    .line 2059
    .line 2060
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 2061
    .line 2062
    .line 2063
    move-result v2

    .line 2064
    if-nez v2, :cond_8c

    .line 2065
    .line 2066
    if-eqz v16, :cond_66

    .line 2067
    .line 2068
    const-string v2, "PhoneWindowManagerExt"

    .line 2069
    .line 2070
    const-string v3, "Open Task Manager"

    .line 2071
    .line 2072
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    .line 2074
    .line 2075
    new-instance v2, Landroid/content/Intent;

    .line 2076
    .line 2077
    const-string v3, "android.intent.action.MAIN"

    .line 2078
    .line 2079
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2080
    .line 2081
    .line 2082
    const-string v3, "android.intent.category.HOME"

    .line 2083
    .line 2084
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2085
    .line 2086
    .line 2087
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2088
    .line 2089
    .line 2090
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 2091
    .line 2092
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2093
    .line 2094
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2095
    .line 2096
    .line 2097
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2098
    .line 2099
    if-eqz v0, :cond_67

    .line 2100
    .line 2101
    const-string v0, "PKBD0006"

    .line 2102
    .line 2103
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2104
    .line 2105
    .line 2106
    goto :goto_26

    .line 2107
    :cond_66
    const/16 v1, 0x52

    .line 2108
    .line 2109
    const/4 v2, 0x0

    .line 2110
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 2111
    .line 2112
    .line 2113
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2114
    .line 2115
    if-eqz v0, :cond_67

    .line 2116
    .line 2117
    const-string v0, "PKBD0005"

    .line 2118
    .line 2119
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2120
    .line 2121
    .line 2122
    :cond_67
    :goto_26
    return-wide v19

    .line 2123
    :pswitch_10
    :sswitch_a
    const/16 v1, 0x2d

    .line 2124
    .line 2125
    if-ne v5, v1, :cond_68

    .line 2126
    .line 2127
    if-eqz v23, :cond_68

    .line 2128
    .line 2129
    const/4 v8, 0x1

    .line 2130
    goto :goto_27

    .line 2131
    :cond_68
    const/4 v8, 0x0

    .line 2132
    :goto_27
    const/16 v1, 0x44a

    .line 2133
    .line 2134
    if-ne v5, v1, :cond_69

    .line 2135
    .line 2136
    if-nez v13, :cond_6a

    .line 2137
    .line 2138
    :cond_69
    if-eqz v8, :cond_8c

    .line 2139
    .line 2140
    :cond_6a
    const-string v1, "PhoneWindowManagerExt"

    .line 2141
    .line 2142
    const-string v2, "launch quick setting"

    .line 2143
    .line 2144
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    .line 2146
    .line 2147
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2148
    .line 2149
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v1

    .line 2153
    if-eqz v1, :cond_6d

    .line 2154
    .line 2155
    :try_start_a
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 2156
    .line 2157
    if-eqz v2, :cond_6b

    .line 2158
    .line 2159
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 2160
    .line 2161
    invoke-static {v0, v12}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 2162
    .line 2163
    .line 2164
    move-result v0

    .line 2165
    invoke-interface {v1, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanelToType(Ljava/lang/String;I)V

    .line 2166
    .line 2167
    .line 2168
    goto :goto_28

    .line 2169
    :catch_4
    move-exception v0

    .line 2170
    goto :goto_29

    .line 2171
    :cond_6b
    invoke-interface {v1, v4}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V

    .line 2172
    .line 2173
    .line 2174
    :goto_28
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2175
    .line 2176
    if-eqz v0, :cond_6d

    .line 2177
    .line 2178
    if-eqz v8, :cond_6c

    .line 2179
    .line 2180
    const-string v0, "PKBD0014"

    .line 2181
    .line 2182
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2183
    .line 2184
    .line 2185
    goto :goto_2a

    .line 2186
    :cond_6c
    const-string v0, "PKBD0034"

    .line 2187
    .line 2188
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    .line 2189
    .line 2190
    .line 2191
    goto :goto_2a

    .line 2192
    :goto_29
    const-string v1, "PhoneWindowManagerExt"

    .line 2193
    .line 2194
    const-string v2, "Failed to launch Quick Setting, "

    .line 2195
    .line 2196
    invoke-static {v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 2197
    .line 2198
    .line 2199
    :cond_6d
    :goto_2a
    return-wide v19

    .line 2200
    :sswitch_b
    if-eqz v23, :cond_8c

    .line 2201
    .line 2202
    if-eqz v16, :cond_70

    .line 2203
    .line 2204
    const-string v1, "PhoneWindowManagerExt"

    .line 2205
    .line 2206
    const-string/jumbo v3, "window locked by metaShift with L"

    .line 2207
    .line 2208
    .line 2209
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    .line 2211
    .line 2212
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 2213
    .line 2214
    const/4 v3, 0x2

    .line 2215
    if-ne v1, v3, :cond_6e

    .line 2216
    .line 2217
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2218
    .line 2219
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 2220
    .line 2221
    .line 2222
    move-result v1

    .line 2223
    if-nez v1, :cond_6e

    .line 2224
    .line 2225
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2226
    .line 2227
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2228
    .line 2229
    const/4 v3, 0x0

    .line 2230
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    .line 2231
    .line 2232
    .line 2233
    move-result v1

    .line 2234
    if-nez v1, :cond_6e

    .line 2235
    .line 2236
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2237
    .line 2238
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2239
    .line 2240
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2241
    .line 2242
    .line 2243
    move-result-wide v5

    .line 2244
    const/16 v2, 0x15

    .line 2245
    .line 2246
    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2247
    .line 2248
    .line 2249
    :cond_6e
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2250
    .line 2251
    invoke-virtual {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 2252
    .line 2253
    .line 2254
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2255
    .line 2256
    if-eqz v0, :cond_6f

    .line 2257
    .line 2258
    const-string v0, "PKBD0035"

    .line 2259
    .line 2260
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2261
    .line 2262
    .line 2263
    :cond_6f
    return-wide v19

    .line 2264
    :cond_70
    const-string v1, "PhoneWindowManagerExt"

    .line 2265
    .line 2266
    const-string/jumbo v4, "screen is off by meta with L"

    .line 2267
    .line 2268
    .line 2269
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    .line 2271
    .line 2272
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2273
    .line 2274
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2275
    .line 2276
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2277
    .line 2278
    .line 2279
    move-result-wide v4

    .line 2280
    const/4 v6, 0x0

    .line 2281
    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2282
    .line 2283
    .line 2284
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 2285
    .line 2286
    const/4 v3, 0x2

    .line 2287
    if-ne v1, v3, :cond_71

    .line 2288
    .line 2289
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2290
    .line 2291
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2292
    .line 2293
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2294
    .line 2295
    .line 2296
    move-result-wide v3

    .line 2297
    const/4 v6, 0x0

    .line 2298
    const/4 v2, 0x2

    .line 2299
    const/16 v5, 0x19

    .line 2300
    .line 2301
    invoke-virtual/range {v1 .. v6}, Landroid/os/PowerManager;->goToSleep(IJII)V

    .line 2302
    .line 2303
    .line 2304
    :cond_71
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2305
    .line 2306
    if-eqz v0, :cond_72

    .line 2307
    .line 2308
    const-string v0, "PKBD0013"

    .line 2309
    .line 2310
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2311
    .line 2312
    .line 2313
    :cond_72
    return-wide v19

    .line 2314
    :sswitch_c
    if-eqz v23, :cond_8c

    .line 2315
    .line 2316
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 2317
    .line 2318
    const/4 v1, 0x2

    .line 2319
    invoke-virtual {v0, v12, v1, v4}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    .line 2320
    .line 2321
    .line 2322
    move-result v0

    .line 2323
    if-eqz v0, :cond_8c

    .line 2324
    .line 2325
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2326
    .line 2327
    if-eqz v0, :cond_73

    .line 2328
    .line 2329
    const-string v0, "PKBD0010"

    .line 2330
    .line 2331
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2332
    .line 2333
    .line 2334
    :cond_73
    return-wide v19

    .line 2335
    :sswitch_d
    if-eqz v23, :cond_8c

    .line 2336
    .line 2337
    if-nez v24, :cond_8c

    .line 2338
    .line 2339
    const-string v1, "PhoneWindowManagerExt"

    .line 2340
    .line 2341
    const-string v3, "go to home by meta key"

    .line 2342
    .line 2343
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    .line 2345
    .line 2346
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2347
    .line 2348
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->postShortPressOnHome(Landroid/view/KeyEvent;)V

    .line 2349
    .line 2350
    .line 2351
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2352
    .line 2353
    if-eqz v1, :cond_74

    .line 2354
    .line 2355
    const-string v1, "PKBD0008"

    .line 2356
    .line 2357
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 2358
    .line 2359
    invoke-virtual {v0, v5}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutSettingsValue(I)Ljava/lang/String;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v0

    .line 2363
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    .line 2365
    .line 2366
    :cond_74
    return-wide v19

    .line 2367
    :sswitch_e
    if-eqz v23, :cond_8c

    .line 2368
    .line 2369
    if-eqz v16, :cond_8c

    .line 2370
    .line 2371
    const/4 v1, 0x1

    .line 2372
    invoke-virtual {v0, v1, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->sensorToggleBehavior(II)Z

    .line 2373
    .line 2374
    .line 2375
    move-result v0

    .line 2376
    if-nez v0, :cond_75

    .line 2377
    .line 2378
    goto/16 :goto_2f

    .line 2379
    .line 2380
    :cond_75
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2381
    .line 2382
    if-eqz v0, :cond_76

    .line 2383
    .line 2384
    const-string v0, "PKBD0023"

    .line 2385
    .line 2386
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2387
    .line 2388
    .line 2389
    :cond_76
    return-wide v19

    .line 2390
    :sswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCarrierLocked()Z

    .line 2391
    .line 2392
    .line 2393
    move-result v1

    .line 2394
    if-nez v1, :cond_77

    .line 2395
    .line 2396
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2397
    .line 2398
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2399
    .line 2400
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    .line 2401
    .line 2402
    .line 2403
    move-result v0

    .line 2404
    if-eqz v0, :cond_8c

    .line 2405
    .line 2406
    :cond_77
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 2407
    .line 2408
    return-wide v19

    .line 2409
    :sswitch_10
    move-object/from16 v1, p1

    .line 2410
    .line 2411
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 2412
    .line 2413
    const/4 v3, 0x0

    .line 2414
    invoke-virtual {v2, v5, v3, v3}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 2415
    .line 2416
    .line 2417
    move-result v2

    .line 2418
    if-eqz v2, :cond_8c

    .line 2419
    .line 2420
    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    .line 2421
    .line 2422
    .line 2423
    move-result v0

    .line 2424
    goto/16 :goto_1e

    .line 2425
    .line 2426
    :cond_78
    if-nez v7, :cond_8c

    .line 2427
    .line 2428
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2429
    .line 2430
    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 2431
    .line 2432
    if-eqz v1, :cond_8c

    .line 2433
    .line 2434
    invoke-virtual {v0, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDisplayInDexMode(I)Z

    .line 2435
    .line 2436
    .line 2437
    move-result v1

    .line 2438
    if-eqz v1, :cond_8c

    .line 2439
    .line 2440
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 2441
    .line 2442
    .line 2443
    move-result v1

    .line 2444
    if-nez v1, :cond_8c

    .line 2445
    .line 2446
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2447
    .line 2448
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v1

    .line 2452
    if-eqz v1, :cond_79

    .line 2453
    .line 2454
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 2455
    .line 2456
    invoke-static {v0, v12}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 2457
    .line 2458
    .line 2459
    move-result v0

    .line 2460
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2461
    .line 2462
    invoke-virtual {v1, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService$2;->sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V

    .line 2463
    .line 2464
    .line 2465
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2466
    .line 2467
    if-eqz v0, :cond_79

    .line 2468
    .line 2469
    const-string v0, "PKBD0024"

    .line 2470
    .line 2471
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2472
    .line 2473
    .line 2474
    :cond_79
    return-wide v19

    .line 2475
    :cond_7a
    :pswitch_11
    :sswitch_11
    invoke-virtual {v0, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDisplayInDexMode(I)Z

    .line 2476
    .line 2477
    .line 2478
    move-result v1

    .line 2479
    if-eqz v1, :cond_8c

    .line 2480
    .line 2481
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2482
    .line 2483
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2484
    .line 2485
    if-eqz v1, :cond_7b

    .line 2486
    .line 2487
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 2488
    .line 2489
    invoke-static {v0, v12}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 2490
    .line 2491
    .line 2492
    move-result v0

    .line 2493
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2494
    .line 2495
    invoke-virtual {v1, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService$2;->sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V

    .line 2496
    .line 2497
    .line 2498
    :cond_7b
    const/16 v0, 0x3ea

    .line 2499
    .line 2500
    if-ne v5, v0, :cond_8c

    .line 2501
    .line 2502
    return-wide v19

    .line 2503
    :cond_7c
    :sswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 2504
    .line 2505
    .line 2506
    move-result v3

    .line 2507
    and-int/2addr v3, v1

    .line 2508
    if-eqz v3, :cond_7d

    .line 2509
    .line 2510
    goto/16 :goto_2f

    .line 2511
    .line 2512
    :cond_7d
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 2513
    .line 2514
    .line 2515
    move-result v3

    .line 2516
    if-eqz v3, :cond_80

    .line 2517
    .line 2518
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2519
    .line 2520
    const/4 v4, 0x4

    .line 2521
    invoke-virtual {v3, v4, v5}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 2522
    .line 2523
    .line 2524
    move-result v3

    .line 2525
    if-nez v3, :cond_7f

    .line 2526
    .line 2527
    if-eqz v21, :cond_7e

    .line 2528
    .line 2529
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 2530
    .line 2531
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v0

    .line 2535
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2536
    .line 2537
    .line 2538
    move-result-wide v3

    .line 2539
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 2540
    .line 2541
    .line 2542
    move-result v5

    .line 2543
    or-int/2addr v1, v5

    .line 2544
    const/4 v5, 0x0

    .line 2545
    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    .line 2546
    .line 2547
    .line 2548
    move-result-object v1

    .line 2549
    const/high16 v2, -0x80000000

    .line 2550
    .line 2551
    invoke-virtual {v0, v1, v2, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 2552
    .line 2553
    .line 2554
    :cond_7e
    if-nez v21, :cond_8c

    .line 2555
    .line 2556
    move/from16 v0, v22

    .line 2557
    .line 2558
    const/4 v1, 0x1

    .line 2559
    if-le v0, v1, :cond_7f

    .line 2560
    .line 2561
    goto/16 :goto_2f

    .line 2562
    .line 2563
    :cond_7f
    return-wide v19

    .line 2564
    :cond_80
    const/4 v1, 0x1

    .line 2565
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2566
    .line 2567
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 2568
    .line 2569
    .line 2570
    move-result v0

    .line 2571
    if-ne v0, v1, :cond_8c

    .line 2572
    .line 2573
    return-wide v19

    .line 2574
    :cond_81
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 2575
    .line 2576
    .line 2577
    move-result v3

    .line 2578
    and-int/2addr v1, v3

    .line 2579
    if-eqz v1, :cond_82

    .line 2580
    .line 2581
    goto/16 :goto_2f

    .line 2582
    .line 2583
    :cond_82
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 2584
    .line 2585
    .line 2586
    move-result v1

    .line 2587
    if-nez v1, :cond_8c

    .line 2588
    .line 2589
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2590
    .line 2591
    const/4 v3, 0x0

    .line 2592
    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 2593
    .line 2594
    .line 2595
    move-result v0

    .line 2596
    const/4 v1, 0x1

    .line 2597
    if-ne v0, v1, :cond_8c

    .line 2598
    .line 2599
    return-wide v19

    .line 2600
    :cond_83
    move-object/from16 v1, p1

    .line 2601
    .line 2602
    const/4 v3, 0x0

    .line 2603
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    .line 2604
    .line 2605
    if-nez v4, :cond_84

    .line 2606
    .line 2607
    goto :goto_2e

    .line 2608
    :cond_84
    const-string v4, "PhoneWindowManagerExt"

    .line 2609
    .line 2610
    if-eqz v7, :cond_87

    .line 2611
    .line 2612
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 2613
    .line 2614
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2615
    .line 2616
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 2617
    .line 2618
    .line 2619
    move-result-object v3

    .line 2620
    if-eqz v3, :cond_88

    .line 2621
    .line 2622
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 2623
    .line 2624
    .line 2625
    move-result v3

    .line 2626
    if-eqz v3, :cond_88

    .line 2627
    .line 2628
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SKT_PHONE_RELAX_MODE:Z

    .line 2629
    .line 2630
    if-eqz v3, :cond_85

    .line 2631
    .line 2632
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    .line 2633
    .line 2634
    if-nez v3, :cond_88

    .line 2635
    .line 2636
    :cond_85
    const-string/jumbo v3, "ringing: Accept the call!"

    .line 2637
    .line 2638
    .line 2639
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    .line 2641
    .line 2642
    const-class v3, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2643
    .line 2644
    invoke-static {v3}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2645
    .line 2646
    .line 2647
    move-result-object v3

    .line 2648
    check-cast v3, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2649
    .line 2650
    if-nez v3, :cond_86

    .line 2651
    .line 2652
    :goto_2b
    const/4 v3, 0x1

    .line 2653
    goto :goto_2c

    .line 2654
    :cond_86
    const/4 v6, 0x3

    .line 2655
    invoke-virtual {v3, v6}, Lcom/samsung/android/telecom/SemTelecomManager;->acceptRingingCall(I)V

    .line 2656
    .line 2657
    .line 2658
    goto :goto_2b

    .line 2659
    :goto_2c
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 2660
    .line 2661
    const-string v3, "Ignoring HOME; there\'s a ringing incoming call and set anykey mode"

    .line 2662
    .line 2663
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    .line 2665
    .line 2666
    :goto_2d
    const/4 v3, 0x1

    .line 2667
    goto :goto_2e

    .line 2668
    :cond_87
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAcceptCallHomeConsumed:Z

    .line 2669
    .line 2670
    if-eqz v3, :cond_88

    .line 2671
    .line 2672
    const-string v3, "Ignoring HOME; consumed by accept call."

    .line 2673
    .line 2674
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    .line 2676
    .line 2677
    goto :goto_2d

    .line 2678
    :cond_88
    const/4 v3, 0x0

    .line 2679
    :goto_2e
    if-eqz v3, :cond_89

    .line 2680
    .line 2681
    return-wide v19

    .line 2682
    :cond_89
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 2683
    .line 2684
    const/4 v4, 0x0

    .line 2685
    invoke-virtual {v3, v5, v4, v4}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 2686
    .line 2687
    .line 2688
    move-result v3

    .line 2689
    if-eqz v3, :cond_8a

    .line 2690
    .line 2691
    invoke-virtual {v0, v5, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkSystemKeyBeforeDispatching(ILandroid/os/IBinder;)I

    .line 2692
    .line 2693
    .line 2694
    move-result v0

    .line 2695
    goto/16 :goto_1e

    .line 2696
    .line 2697
    :cond_8a
    const/4 v1, 0x3

    .line 2698
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 2699
    .line 2700
    .line 2701
    move-result v1

    .line 2702
    if-nez v1, :cond_8b

    .line 2703
    .line 2704
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2705
    .line 2706
    invoke-virtual {v1, v2, v4}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    .line 2707
    .line 2708
    .line 2709
    move-result v1

    .line 2710
    const/4 v3, 0x1

    .line 2711
    if-ne v1, v3, :cond_8b

    .line 2712
    .line 2713
    return-wide v19

    .line 2714
    :cond_8b
    if-eqz v7, :cond_8c

    .line 2715
    .line 2716
    invoke-virtual {v0, v12}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDisplayInDexMode(I)Z

    .line 2717
    .line 2718
    .line 2719
    move-result v1

    .line 2720
    if-eqz v1, :cond_8c

    .line 2721
    .line 2722
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2723
    .line 2724
    .line 2725
    move-result v1

    .line 2726
    if-eqz v1, :cond_8c

    .line 2727
    .line 2728
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 2729
    .line 2730
    .line 2731
    move-result v1

    .line 2732
    if-nez v1, :cond_8c

    .line 2733
    .line 2734
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 2735
    .line 2736
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;

    .line 2737
    .line 2738
    invoke-direct {v1, v12}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 2739
    .line 2740
    .line 2741
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2742
    .line 2743
    .line 2744
    :cond_8c
    :goto_2f
    const-wide/16 v0, -0x2

    .line 2745
    .line 2746
    return-wide v0

    .line 2747
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2748
    .line 2749
    .line 2750
    .line 2751
    .line 2752
    .line 2753
    .line 2754
    .line 2755
    .line 2756
    .line 2757
    .line 2758
    .line 2759
    .line 2760
    .line 2761
    .line 2762
    .line 2763
    .line 2764
    .line 2765
    .line 2766
    .line 2767
    .line 2768
    .line 2769
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2770
    .line 2771
    .line 2772
    .line 2773
    .line 2774
    .line 2775
    .line 2776
    .line 2777
    .line 2778
    .line 2779
    .line 2780
    .line 2781
    :pswitch_data_2
    .packed-switch 0x43d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2782
    .line 2783
    .line 2784
    .line 2785
    .line 2786
    .line 2787
    .line 2788
    .line 2789
    .line 2790
    .line 2791
    .line 2792
    .line 2793
    .line 2794
    .line 2795
    :pswitch_data_3
    .packed-switch 0x13
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 2796
    .line 2797
    .line 2798
    .line 2799
    .line 2800
    .line 2801
    .line 2802
    .line 2803
    .line 2804
    .line 2805
    .line 2806
    .line 2807
    :pswitch_data_4
    .packed-switch 0x43d
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2808
    .line 2809
    .line 2810
    .line 2811
    .line 2812
    .line 2813
    .line 2814
    .line 2815
    .line 2816
    .line 2817
    .line 2818
    .line 2819
    .line 2820
    .line 2821
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_10
        0x1b -> :sswitch_f
        0x1d -> :sswitch_e
        0x20 -> :sswitch_d
        0x23 -> :sswitch_c
        0x28 -> :sswitch_b
        0x2d -> :sswitch_a
        0x4f -> :sswitch_12
        0x6f -> :sswitch_9
        0x71 -> :sswitch_11
        0x73 -> :sswitch_11
        0x78 -> :sswitch_8
        0x86 -> :sswitch_7
        0x89 -> :sswitch_6
        0xb0 -> :sswitch_5
        0xbb -> :sswitch_4
        0xe0 -> :sswitch_10
        0x3f7 -> :sswitch_3
        0x425 -> :sswitch_2
        0x428 -> :sswitch_1
        0x437 -> :sswitch_0
    .end sparse-switch

    .line 2822
    .line 2823
    .line 2824
    .line 2825
    .line 2826
    .line 2827
    .line 2828
    .line 2829
    .line 2830
    .line 2831
    .line 2832
    .line 2833
    .line 2834
    .line 2835
    .line 2836
    .line 2837
    .line 2838
    .line 2839
    .line 2840
    .line 2841
    .line 2842
    .line 2843
    .line 2844
    .line 2845
    .line 2846
    .line 2847
    .line 2848
    .line 2849
    .line 2850
    .line 2851
    .line 2852
    .line 2853
    .line 2854
    .line 2855
    .line 2856
    .line 2857
    .line 2858
    .line 2859
    .line 2860
    .line 2861
    .line 2862
    .line 2863
    .line 2864
    .line 2865
    .line 2866
    .line 2867
    .line 2868
    .line 2869
    .line 2870
    .line 2871
    .line 2872
    .line 2873
    .line 2874
    .line 2875
    .line 2876
    .line 2877
    .line 2878
    .line 2879
    .line 2880
    .line 2881
    .line 2882
    .line 2883
    .line 2884
    .line 2885
    .line 2886
    .line 2887
    .line 2888
    .line 2889
    .line 2890
    .line 2891
    .line 2892
    .line 2893
    .line 2894
    .line 2895
    .line 2896
    .line 2897
    .line 2898
    .line 2899
    .line 2900
    .line 2901
    .line 2902
    .line 2903
    .line 2904
    .line 2905
    .line 2906
    .line 2907
    :pswitch_data_5
    .packed-switch 0x31
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_b
    .end packed-switch

    .line 2908
    .line 2909
    .line 2910
    .line 2911
    .line 2912
    .line 2913
    .line 2914
    .line 2915
    .line 2916
    .line 2917
    .line 2918
    .line 2919
    .line 2920
    .line 2921
    :pswitch_data_6
    .packed-switch 0x3ea
        :pswitch_11
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 2922
    .line 2923
    .line 2924
    .line 2925
    .line 2926
    .line 2927
    .line 2928
    .line 2929
    .line 2930
    .line 2931
    :pswitch_data_7
    .packed-switch 0x442
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method public final isArchived(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_0
    const-wide v2, 0x100000000L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string p1, " is not archived : "

    .line 53
    .line 54
    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "PhoneWindowManagerExt"

    .line 70
    .line 71
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    :goto_0
    if-eqz p0, :cond_1

    .line 76
    .line 77
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    .line 79
    if-eqz p0, :cond_1

    .line 80
    .line 81
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    .line 82
    .line 83
    if-eqz p0, :cond_1

    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    return p0

    .line 87
    :cond_1
    const/4 p0, 0x0

    .line 88
    return p0
.end method

.method public final isCarrierLocked()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockEnabled(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final isDisplayInDexMode(I)Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne p0, v1, :cond_0

    .line 6
    .line 7
    if-eq p1, v1, :cond_2

    .line 8
    .line 9
    :cond_0
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :cond_2
    :goto_0
    return v0
.end method

.method public final isDoubleTapToWakeUp(I)Z
    .locals 2

    .line 1
    const/16 v0, 0xe0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1
.end method

.method public final isGoogleQuickSearchBoxAsDigitalAssistant()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "role"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/app/role/RoleManager;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string v1, "android.app.role.ASSISTANT"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, ""

    .line 35
    .line 36
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "digital assistant ::"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "PhoneWindowManagerExt"

    .line 51
    .line 52
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const-string v1, "com.google.android.googlequicksearchbox"

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :cond_1
    return v0
.end method

.method public final isInDexMode()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isInteractionControlEnabled(IZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0xe0

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 15
    .line 16
    return p0

    .line 17
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    move v1, v0

    .line 28
    :cond_1
    return v1

    .line 29
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    move v1, v0

    .line 38
    :cond_2
    :goto_0
    return v1

    .line 39
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isKeyguardOccluded(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne p1, v1, :cond_1

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDexKeyguardOccluded:Z

    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isLongPressHomeSearcle()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x65

    .line 9
    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final isQuickLaunchCameraEnabled(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 p1, 0x7d1

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const-string/jumbo p0, "service.camera.client"

    .line 21
    .line 22
    .line 23
    const-string p1, ""

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "com.sec.android.app.camera"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const-string p1, "isCameraClient="

    .line 36
    .line 37
    const-string v0, "PhoneWindowManagerExt"

    .line 38
    .line 39
    invoke-static {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    :goto_0
    const/4 p0, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    :goto_1
    return p0
.end method

.method public final isSamsungKeyboardShown()Z
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    const-class p0, Landroid/view/inputmethod/InputMethodManager;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v0

    .line 22
    :goto_0
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_1
    return v0
.end method

.method public final knoxCustomVolumeKeyAppSwitching(Z)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const-string v4, "PhoneWindowManagerExt"

    .line 29
    .line 30
    if-eqz v2, :cond_6

    .line 31
    .line 32
    iget-boolean v2, v2, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 33
    .line 34
    if-eqz v2, :cond_6

    .line 35
    .line 36
    const-string p0, "Knox Custom: GlobalActions dialog showing; not doing Volume Key app switching"

    .line 37
    .line 38
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogOptionMode()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    const/4 p1, 0x2

    .line 64
    if-ne p0, p1, :cond_2

    .line 65
    .line 66
    move p1, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move p1, v3

    .line 69
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "Knox Custom: getPowerDialogOptionMode() : "

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p0, " returning : "

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v0, "GlobalActions"

    .line 92
    .line 93
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move p1, v1

    .line 98
    :goto_1
    if-eqz p1, :cond_4

    .line 99
    .line 100
    move p0, v3

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move p0, v1

    .line 103
    :goto_2
    if-eqz p0, :cond_5

    .line 104
    .line 105
    const-string p0, "Knox Custom: GlobalActions dialog showing; forward the key for Power option display"

    .line 106
    .line 107
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return v1

    .line 111
    :cond_5
    return v3

    .line 112
    :cond_6
    const-string v0, "Knox Custom: Volume Key app switching starting"

    .line 113
    .line 114
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_12

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_7

    .line 130
    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v5, "Knox Custom: "

    .line 136
    .line 137
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v6, " apps in list"

    .line 148
    .line 149
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    const-string v6, "activity"

    .line 162
    .line 163
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Landroid/app/ActivityManager;

    .line 168
    .line 169
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    new-instance v7, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-eqz v8, :cond_9

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    if-eqz v9, :cond_8

    .line 201
    .line 202
    const-string v9, " available"

    .line 203
    .line 204
    invoke-static {v5, v8, v9, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_8
    const-string v9, " not available"

    .line 212
    .line 213
    invoke-static {v5, v8, v9, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_a

    .line 222
    .line 223
    const-string p0, "Knox Custom: no available apps"

    .line 224
    .line 225
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    goto/16 :goto_6

    .line 229
    .line 230
    :cond_a
    const v0, 0x7fffffff

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 242
    .line 243
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 244
    .line 245
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    const-string v2, " in foreground"

    .line 254
    .line 255
    invoke-static {v5, v0, v2, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const/4 v2, -0x1

    .line 259
    move v8, v2

    .line 260
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    if-ge v1, v9, :cond_c

    .line 265
    .line 266
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    check-cast v9, Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    if-eqz v9, :cond_b

    .line 277
    .line 278
    const-string v8, " found at index "

    .line 279
    .line 280
    invoke-static {v1, v5, v0, v8, v4}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    move v8, v1

    .line 284
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_c
    if-ne v8, v2, :cond_d

    .line 288
    .line 289
    const-string v1, " not found in list; use first"

    .line 290
    .line 291
    invoke-static {v5, v0, v1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :cond_d
    if-eqz p1, :cond_e

    .line 295
    .line 296
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    sub-int/2addr p1, v3

    .line 301
    if-ge v8, p1, :cond_e

    .line 302
    .line 303
    add-int/2addr v8, v3

    .line 304
    goto :goto_5

    .line 305
    :cond_e
    if-lez v8, :cond_f

    .line 306
    .line 307
    sub-int/2addr v8, v3

    .line 308
    goto :goto_5

    .line 309
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    add-int/lit8 v8, p1, -0x1

    .line 314
    .line 315
    :goto_5
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_10

    .line 326
    .line 327
    const-string p0, " already in foreground"

    .line 328
    .line 329
    invoke-static {v5, v0, p0, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_10
    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const-string v1, "Knox Custom: switching to "

    .line 338
    .line 339
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    if-eqz v0, :cond_11

    .line 347
    .line 348
    const/high16 p1, 0x10400000

    .line 349
    .line 350
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    .line 352
    .line 353
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 354
    .line 355
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 356
    .line 357
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .line 359
    .line 360
    goto :goto_6

    .line 361
    :catch_0
    move-exception p0

    .line 362
    const-string p1, "No activity to launch Knox Custom switching."

    .line 363
    .line 364
    invoke-static {v4, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .line 366
    .line 367
    :cond_11
    :goto_6
    const-string p0, "Knox Custom: Volume Key app switching done"

    .line 368
    .line 369
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    return v3

    .line 373
    :cond_12
    :goto_7
    const-string p0, "Knox Custom: no apps in list"

    .line 374
    .line 375
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    return v3

    .line 379
    :cond_13
    :goto_8
    return v1
.end method

.method public launchPowerDoublePressCamera()V
    .locals 2

    .line 1
    const-class p0, Lcom/android/server/GestureLauncherService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/GestureLauncherService;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "PhoneWindowManagerExt"

    .line 13
    .line 14
    const-string v1, "launch double press camera"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final longPressOnHomePolicy()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "PhoneWindowManagerExt"

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "Home long press is blocked because UserSetup isn\'t completed"

    .line 13
    .line 14
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string p0, "Home long press is blocked by Ringing"

    .line 35
    .line 36
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    const/4 v0, 0x3

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    const-string p0, "Home long press is blocked by Interaction control"

    .line 49
    .line 50
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_2
    return v1
.end method

.method public final notifyPenSwitchChanged(JZZ)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p3

    .line 4
    .line 5
    move/from16 v3, p4

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    .line 8
    .line 9
    const-string v4, "PhoneWindowManagerExt"

    .line 10
    .line 11
    if-eqz v0, :cond_1b

    .line 12
    .line 13
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 14
    .line 15
    const/4 v5, 0x5

    .line 16
    if-eq v0, v5, :cond_1b

    .line 17
    .line 18
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 19
    .line 20
    if-ne v2, v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_c

    .line 23
    .line 24
    :cond_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 27
    .line 28
    iget-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 29
    .line 30
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, -0x1

    .line 34
    const/4 v9, 0x1

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string v0, "can not start ScreenOffMemo, the option is disabled"

    .line 38
    .line 39
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    move v10, v7

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 45
    .line 46
    const/4 v10, 0x2

    .line 47
    if-ne v0, v10, :cond_3

    .line 48
    .line 49
    if-ne v2, v9, :cond_3

    .line 50
    .line 51
    const-string v0, "can start ScreenOffMemo, pen attached."

    .line 52
    .line 53
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    move v10, v9

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    if-eqz v0, :cond_4

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v10, "can not start ScreenOffMemo, pen type was wrong. "

    .line 63
    .line 64
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v10, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 68
    .line 69
    invoke-static {v0, v10, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 74
    .line 75
    if-ne v0, v8, :cond_5

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v10, "can not start ScreenOffMemo, pen state was wrong. "

    .line 80
    .line 81
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget v10, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 85
    .line 86
    invoke-static {v0, v10, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 91
    .line 92
    if-ne v0, v10, :cond_6

    .line 93
    .line 94
    const-string v0, "can not start ScreenOffMemo in dual dex mode"

    .line 95
    .line 96
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 103
    .line 104
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 105
    .line 106
    if-eq v2, v9, :cond_2

    .line 107
    .line 108
    if-nez v2, :cond_7

    .line 109
    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v11, "can not start ScreenOffMemo, penState="

    .line 116
    .line 117
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v11, " isAwake="

    .line 124
    .line 125
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :goto_2
    if-nez v2, :cond_a

    .line 140
    .line 141
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 142
    .line 143
    if-eq v0, v8, :cond_a

    .line 144
    .line 145
    if-eqz v6, :cond_8

    .line 146
    .line 147
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->isInternalDisplayOff()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_8

    .line 156
    .line 157
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 160
    .line 161
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v11

    .line 165
    invoke-virtual {v0, v11, v12, v7, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 170
    .line 171
    if-nez v0, :cond_a

    .line 172
    .line 173
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    .line 174
    .line 175
    if-eqz v0, :cond_9

    .line 176
    .line 177
    if-nez v10, :cond_a

    .line 178
    .line 179
    :cond_9
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 182
    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide v11

    .line 187
    const/16 v13, 0x66

    .line 188
    .line 189
    const-string/jumbo v14, "penDetached"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_a
    :goto_3
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    .line 196
    .line 197
    if-eqz v0, :cond_10

    .line 198
    .line 199
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 200
    .line 201
    if-eq v0, v8, :cond_10

    .line 202
    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->isStreamMute(I)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_10

    .line 212
    .line 213
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 214
    .line 215
    if-nez v0, :cond_b

    .line 216
    .line 217
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundFilePath:Ljava/lang/String;

    .line 218
    .line 219
    if-eqz v0, :cond_b

    .line 220
    .line 221
    new-instance v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 222
    .line 223
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 224
    .line 225
    .line 226
    const/4 v12, 0x0

    .line 227
    iput-object v12, v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 228
    .line 229
    iput-object v12, v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 230
    .line 231
    iput-object v12, v11, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v11, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->updatePenSound(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iput-object v11, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 237
    .line 238
    :cond_b
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundInfo:Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 239
    .line 240
    if-eqz v0, :cond_f

    .line 241
    .line 242
    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    .line 243
    .line 244
    if-nez v11, :cond_c

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_c
    if-eqz v2, :cond_d

    .line 248
    .line 249
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_d
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    .line 253
    .line 254
    :goto_4
    const-string v15, "Play pen sound failed, soundId="

    .line 255
    .line 256
    if-nez v12, :cond_e

    .line 257
    .line 258
    invoke-static {v12, v15, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_e
    :try_start_0
    iget v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundStreamId:I

    .line 263
    .line 264
    invoke-virtual {v11, v13}, Landroid/media/SoundPool;->stop(I)V

    .line 265
    .line 266
    .line 267
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .line 269
    const/high16 v19, 0x3f800000    # 1.0f

    .line 270
    .line 271
    const/high16 v11, 0x3f800000    # 1.0f

    .line 272
    .line 273
    const/high16 v16, 0x3f800000    # 1.0f

    .line 274
    .line 275
    const/16 v17, 0x1

    .line 276
    .line 277
    const/16 v18, 0x0

    .line 278
    .line 279
    move v14, v12

    .line 280
    move-object v7, v15

    .line 281
    move v15, v11

    .line 282
    :try_start_1
    invoke-virtual/range {v13 .. v19}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 283
    .line 284
    .line 285
    move-result v11

    .line 286
    iput v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundStreamId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :catch_0
    move-object v7, v15

    .line 290
    :catch_1
    invoke-static {v12, v7, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_f
    const-string/jumbo v0, "mPenSoundInfo is null"

    .line 295
    .line 296
    .line 297
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    :cond_10
    :goto_5
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    .line 301
    .line 302
    if-eqz v0, :cond_15

    .line 303
    .line 304
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 305
    .line 306
    if-eq v0, v8, :cond_15

    .line 307
    .line 308
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    .line 309
    .line 310
    new-instance v7, Landroid/media/AudioAttributes$Builder;

    .line 311
    .line 312
    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-direct {v0, v7}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 323
    .line 324
    .line 325
    move-result-object v16

    .line 326
    iget-object v11, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 327
    .line 328
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 333
    .line 334
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v13

    .line 338
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_OMC_SPEN_VIBRATION:Z

    .line 339
    .line 340
    if-eqz v0, :cond_12

    .line 341
    .line 342
    if-eqz v2, :cond_11

    .line 343
    .line 344
    const/16 v0, 0x3f

    .line 345
    .line 346
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    goto :goto_6

    .line 351
    :cond_11
    const/16 v0, 0x3e

    .line 352
    .line 353
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    goto :goto_6

    .line 358
    :cond_12
    if-eqz v2, :cond_13

    .line 359
    .line 360
    invoke-static {v5}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    goto :goto_6

    .line 365
    :cond_13
    invoke-static {v9}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    :goto_6
    sget-object v5, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 370
    .line 371
    invoke-static {v0, v8, v5}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 372
    .line 373
    .line 374
    move-result-object v14

    .line 375
    if-eqz v2, :cond_14

    .line 376
    .line 377
    const-string v0, "SPEN_ATTACHED"

    .line 378
    .line 379
    :goto_7
    move-object v15, v0

    .line 380
    goto :goto_8

    .line 381
    :cond_14
    const-string v0, "SPEN_DETACHED"

    .line 382
    .line 383
    goto :goto_7

    .line 384
    :goto_8
    invoke-virtual/range {v11 .. v16}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 385
    .line 386
    .line 387
    :cond_15
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 388
    .line 389
    const-string/jumbo v5, "penInsert"

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 393
    .line 394
    .line 395
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 396
    .line 397
    const-string v5, "isScreenOn"

    .line 398
    .line 399
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    .line 401
    .line 402
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 403
    .line 404
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 405
    .line 406
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    const-string v7, "isKeyguardLocked"

    .line 411
    .line 412
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    .line 414
    .line 415
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 416
    .line 417
    const-wide/16 v7, 0x0

    .line 418
    .line 419
    cmp-long v5, p1, v7

    .line 420
    .line 421
    if-nez v5, :cond_16

    .line 422
    .line 423
    move v7, v9

    .line 424
    goto :goto_9

    .line 425
    :cond_16
    const/4 v7, 0x0

    .line 426
    :goto_9
    const-string v5, "isBoot"

    .line 427
    .line 428
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    .line 430
    .line 431
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 432
    .line 433
    const-string v5, "isServiceOn"

    .line 434
    .line 435
    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    .line 437
    .line 438
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 439
    .line 440
    const-string v5, "isReversed"

    .line 441
    .line 442
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    .line 444
    .line 445
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 446
    .line 447
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenInsertIntent:Landroid/content/Intent;

    .line 448
    .line 449
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 450
    .line 451
    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 452
    .line 453
    .line 454
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SMART_CLIP:Z

    .line 455
    .line 456
    if-eqz v0, :cond_18

    .line 457
    .line 458
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 459
    .line 460
    if-nez v0, :cond_17

    .line 461
    .line 462
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 463
    .line 464
    const-string/jumbo v5, "spengestureservice"

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 472
    .line 473
    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 474
    .line 475
    :cond_17
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 476
    .line 477
    if-eqz v0, :cond_18

    .line 478
    .line 479
    invoke-virtual {v0, v2}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setSpenInsertionState(Z)V

    .line 480
    .line 481
    .line 482
    :cond_18
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    .line 483
    .line 484
    if-eqz v0, :cond_1a

    .line 485
    .line 486
    if-eqz v10, :cond_1a

    .line 487
    .line 488
    const-string/jumbo v0, "startService, screenOffMemo"

    .line 489
    .line 490
    .line 491
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 495
    .line 496
    if-eqz v2, :cond_19

    .line 497
    .line 498
    const-string/jumbo v5, "pen_attach"

    .line 499
    .line 500
    .line 501
    goto :goto_a

    .line 502
    :cond_19
    const-string/jumbo v5, "pen_detach"

    .line 503
    .line 504
    .line 505
    :goto_a
    const-string/jumbo v7, "pen_intent_com"

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    .line 510
    .line 511
    :try_start_2
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 512
    .line 513
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 514
    .line 515
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 516
    .line 517
    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 518
    .line 519
    .line 520
    goto :goto_b

    .line 521
    :catch_2
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    :cond_1a
    :goto_b
    const-string/jumbo v0, "notifyPenSwitchChanged, penInsert="

    .line 530
    .line 531
    .line 532
    const-string v5, ", reversed ="

    .line 533
    .line 534
    const-string v7, ", screenOn="

    .line 535
    .line 536
    invoke-static {v0, v2, v5, v3, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v3, ", sound="

    .line 544
    .line 545
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    .line 549
    .line 550
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    const-string v3, ", vibration="

    .line 554
    .line 555
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    .line 559
    .line 560
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v3, ", canStartScreenOffMemo="

    .line 564
    .line 565
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    iput v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 579
    .line 580
    return-void

    .line 581
    :cond_1b
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    const-string/jumbo v3, "notifyPenSwitchChanged ignored, mPenType="

    .line 584
    .line 585
    .line 586
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    iget v3, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenType:I

    .line 590
    .line 591
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    const-string v3, ", mPenState="

    .line 595
    .line 596
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenState:I

    .line 600
    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v1, ", newPenState="

    .line 605
    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .line 618
    .line 619
    return-void
.end method

.method public final onDexModeChangedLw(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "onDexModeChangedLw: called same dexMode="

    .line 6
    .line 7
    .line 8
    const-string v0, "PhoneWindowManagerExt"

    .line 9
    .line 10
    invoke-static {p1, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    filled-new-array {v1, v0}, [Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    move v2, v1

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ge v2, v3, :cond_1

    .line 43
    .line 44
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 45
    .line 46
    if-lez v3, :cond_1

    .line 47
    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/16 v4, 0x72

    .line 59
    .line 60
    invoke-virtual {p0, v3, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleGlobalInteractiveIfNeeded(II)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 69
    .line 70
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final onFlashlightKeyPressed(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onFlashlightKeyPressed, keyCode="

    .line 2
    .line 3
    .line 4
    const-string v1, "PhoneWindowManagerExt"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onFlashlightKeyPressed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

.method public final onKeyguardOccludedChangedLw(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne p1, v2, :cond_6

    .line 9
    .line 10
    const-string v0, "PhoneWindowManagerExt"

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string/jumbo p0, "setKeyguardOccludedLw mKeyguardDelegate is null"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string/jumbo v1, "setKeyguardOccluded occluded="

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isKeyguardOccluded(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, p2, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-ne p1, v2, :cond_3

    .line 44
    .line 45
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDexKeyguardOccluded:Z

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 50
    .line 51
    if-ne p1, v2, :cond_5

    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v2, "setOccluded("

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, ") , dex displayId="

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v1, "KeyguardServiceDelegate"

    .line 81
    .line 82
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-object p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setDexOccluded(Z)V

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 91
    .line 92
    iput-boolean p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dexOccluded:Z

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    invoke-virtual {v0, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 96
    .line 97
    .line 98
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 103
    .line 104
    .line 105
    :goto_1
    return-void

    .line 106
    :cond_6
    if-eqz v1, :cond_7

    .line 107
    .line 108
    iput-boolean p2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 109
    .line 110
    const/4 p0, 0x1

    .line 111
    iput-boolean p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 112
    .line 113
    :cond_7
    return-void
.end method

.method public final performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p2

    .line 3
    .line 4
    move/from16 v2, p5

    .line 5
    .line 6
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return v4

    .line 16
    :cond_0
    const-string v3, "f.b. a="

    .line 17
    .line 18
    const-string v5, " id="

    .line 19
    .line 20
    const-string v6, " he="

    .line 21
    .line 22
    invoke-static {v1, v3, v5, v6, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 27
    .line 28
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, " ksno="

    .line 32
    .line 33
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, " uid="

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move v5, p1

    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v6, " callingPackage="

    .line 55
    .line 56
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v6, " reason="

    .line 60
    .line 61
    const-string v7, " Caller="

    .line 62
    .line 63
    move-object/from16 v8, p3

    .line 64
    .line 65
    move-object/from16 v10, p4

    .line 66
    .line 67
    invoke-static {v3, v8, v6, v10, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x5

    .line 71
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v7, "PhoneWindowManagerExt"

    .line 83
    .line 84
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsEnabled:Z

    .line 90
    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 94
    .line 95
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 96
    .line 97
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 98
    .line 99
    if-nez v3, :cond_2

    .line 100
    .line 101
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_2

    .line 108
    .line 109
    :cond_1
    const-string v0, "haptic disabled by policy"

    .line 110
    .line 111
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return v4

    .line 115
    :cond_2
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 116
    .line 117
    move/from16 v9, p6

    .line 118
    .line 119
    invoke-virtual {v3, v1, v2, v9}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesForHapticFeedback(IZZ)Landroid/os/VibrationAttributes;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const/4 v9, 0x2

    .line 124
    if-eqz v2, :cond_3

    .line 125
    .line 126
    new-instance v11, Landroid/os/VibrationAttributes$Builder;

    .line 127
    .line 128
    invoke-direct {v11, v3}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11, v9, v9}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :cond_3
    move-object v11, v3

    .line 140
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 141
    .line 142
    const/4 v12, -0x1

    .line 143
    const/4 v13, 0x1

    .line 144
    if-eqz v3, :cond_8

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    if-eq v1, v13, :cond_5

    .line 149
    .line 150
    const/16 v2, 0x2713

    .line 151
    .line 152
    if-eq v1, v2, :cond_6

    .line 153
    .line 154
    packed-switch v1, :pswitch_data_0

    .line 155
    .line 156
    .line 157
    packed-switch v1, :pswitch_data_1

    .line 158
    .line 159
    .line 160
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    move v1, v12

    .line 168
    goto :goto_0

    .line 169
    :pswitch_0
    invoke-static {v6}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    goto :goto_0

    .line 174
    :pswitch_1
    const/16 v1, 0x29

    .line 175
    .line 176
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    goto :goto_0

    .line 181
    :cond_5
    :pswitch_2
    const/16 v1, 0xe

    .line 182
    .line 183
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    goto :goto_0

    .line 188
    :cond_6
    :pswitch_3
    invoke-static {v13}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    :goto_0
    if-ne v1, v12, :cond_7

    .line 193
    .line 194
    return v4

    .line 195
    :cond_7
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 196
    .line 197
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 198
    .line 199
    invoke-static {v1, v12, v2}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    :goto_1
    move-object v9, v1

    .line 204
    goto/16 :goto_7

    .line 205
    .line 206
    :cond_8
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 207
    .line 208
    const/16 v6, 0x64

    .line 209
    .line 210
    if-eqz v3, :cond_c

    .line 211
    .line 212
    if-nez v2, :cond_c

    .line 213
    .line 214
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eq v2, v13, :cond_9

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_9
    if-eqz v1, :cond_b

    .line 224
    .line 225
    const v2, 0xc3d4

    .line 226
    .line 227
    .line 228
    if-ne v1, v2, :cond_a

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_a
    const-string v0, "haptic generated by application"

    .line 232
    .line 233
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_b
    :goto_2
    invoke-static {v6}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 242
    .line 243
    invoke-static {v1, v12, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 248
    .line 249
    move v7, p1

    .line 250
    move-object/from16 v8, p3

    .line 251
    .line 252
    move-object/from16 v10, p4

    .line 253
    .line 254
    invoke-virtual/range {v6 .. v11}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 255
    .line 256
    .line 257
    :goto_3
    return v13

    .line 258
    :cond_c
    :goto_4
    const/4 v2, 0x0

    .line 259
    if-eqz v1, :cond_13

    .line 260
    .line 261
    const/16 v3, 0xd

    .line 262
    .line 263
    if-eq v1, v3, :cond_13

    .line 264
    .line 265
    if-eq v1, v13, :cond_13

    .line 266
    .line 267
    const/4 v3, 0x3

    .line 268
    if-eq v1, v3, :cond_13

    .line 269
    .line 270
    invoke-static {v13}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    if-eq v1, v7, :cond_13

    .line 275
    .line 276
    invoke-static {v9}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-ne v1, v7, :cond_d

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_d
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    if-ne v1, v3, :cond_e

    .line 288
    .line 289
    move v4, v6

    .line 290
    goto :goto_6

    .line 291
    :cond_e
    const/16 v3, 0x9

    .line 292
    .line 293
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    if-ne v1, v3, :cond_f

    .line 298
    .line 299
    const/16 v4, 0xfa

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_f
    const/16 v3, 0x8

    .line 303
    .line 304
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-ne v1, v3, :cond_10

    .line 309
    .line 310
    const/16 v4, 0x1f4

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_10
    const/16 v3, 0xb

    .line 314
    .line 315
    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-ne v1, v3, :cond_11

    .line 320
    .line 321
    const/16 v4, 0x5dc

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_11
    const/16 v2, 0xa

    .line 325
    .line 326
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-ne v1, v2, :cond_12

    .line 331
    .line 332
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 333
    .line 334
    const/4 v1, 0x4

    .line 335
    new-array v1, v1, [J

    .line 336
    .line 337
    fill-array-data v1, :array_0

    .line 338
    .line 339
    .line 340
    invoke-static {v1, v12}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    goto :goto_6

    .line 345
    :cond_12
    return v4

    .line 346
    :cond_13
    :goto_5
    const/16 v4, 0x32

    .line 347
    .line 348
    :goto_6
    if-nez v2, :cond_14

    .line 349
    .line 350
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 351
    .line 352
    int-to-long v1, v4

    .line 353
    invoke-static {v1, v2, v12}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    goto/16 :goto_1

    .line 358
    .line 359
    :cond_14
    move-object v9, v2

    .line 360
    :goto_7
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mVibrator:Landroid/os/Vibrator;

    .line 361
    .line 362
    move v7, p1

    .line 363
    move-object/from16 v8, p3

    .line 364
    .line 365
    move-object/from16 v10, p4

    .line 366
    .line 367
    invoke-virtual/range {v6 .. v11}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 368
    .line 369
    .line 370
    return v13

    .line 371
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

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
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public final performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_6

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "SPC_Remote_Controller"

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v1, 0x4

    .line 33
    const/4 v2, 0x2

    .line 34
    const/4 v8, 0x0

    .line 35
    if-eq p1, v1, :cond_4

    .line 36
    .line 37
    const/16 v1, 0x1b

    .line 38
    .line 39
    if-eq p1, v1, :cond_3

    .line 40
    .line 41
    const/16 v1, 0x52

    .line 42
    .line 43
    if-eq p1, v1, :cond_4

    .line 44
    .line 45
    const/16 v1, 0x54

    .line 46
    .line 47
    if-eq p1, v1, :cond_1

    .line 48
    .line 49
    const/16 v1, 0xbb

    .line 50
    .line 51
    if-eq p1, v1, :cond_4

    .line 52
    .line 53
    const/16 v0, 0xcf

    .line 54
    .line 55
    if-eq p1, v0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    const/4 v9, 0x0

    .line 77
    const-string v7, "Search key - Press"

    .line 78
    .line 79
    move-object v3, p0

    .line 80
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "gpio"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsHapticsSupported:Z

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    const-string v0, "keyCode("

    .line 120
    .line 121
    const-string v1, ") - Press"

    .line 122
    .line 123
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    const/4 v9, 0x0

    .line 138
    move-object v3, p0

    .line 139
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->playSoundEffect()V

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_0
    return-void
.end method

.method public final playSoundEffect()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAudioManager()Landroid/media/AudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "PhoneWindowManagerExt"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Couldn\'t get audio manager"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    const-string/jumbo p0, "trigger_restart_min_framework"

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    const/16 p0, 0x66

    .line 35
    .line 36
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, p0, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string p0, "keyguard - disable key sound"

    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final sendBroadcastDoubleClick(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 6
    .line 7
    const-string v1, "PhoneWindowManagerExt"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Can not sendBroadcast double click intent. RecentAnimation is running"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "broadcast double click intent keyCode="

    .line 20
    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v1, "com.samsung.android.action.DOUBLE_CLICK"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "KEYCODE"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 49
    .line 50
    const-string v1, "com.samsung.android.permisson.DOUBLE_CLICK"

    .line 51
    .line 52
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final sendFoldSaLoggingCanceledIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mFoldSaLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "sendThreeFingerGestureKeyEvent keyCode="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "PhoneWindowManagerExt"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p0, p2}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 43
    .line 44
    invoke-virtual {v0, p1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;->sendKeyEventToDesktopTaskbarToType(Landroid/view/KeyEvent;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 49
    .line 50
    const-string p0, "StatusBarManagerService"

    .line 51
    .line 52
    const-string/jumbo p2, "sendThreeFingerGestureKeyEvent"

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 61
    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    :try_start_0
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 68
    .line 69
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    :goto_0
    return-void
.end method

.method public final sensorToggleBehavior(II)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCameraSensorToggleSupported:Z

    .line 7
    .line 8
    const v3, 0x10406c0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsMicSensorToggleSupported:Z

    .line 15
    .line 16
    const v3, 0x10406c1

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v2

    .line 21
    move v3, v0

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->externalKeyboardPolicy()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_4

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    xor-int/lit8 v4, v2, 0x1

    .line 42
    .line 43
    const/4 v5, 0x5

    .line 44
    invoke-virtual {v0, v5, p1, v4, p2}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroupWithConfirmPopup(IIZI)V

    .line 45
    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return v1

    .line 63
    :cond_4
    :goto_1
    return v2
.end method

.method public final setGoogleQuickSearchBoxAsDigitalAssistant()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isGoogleQuickSearchBoxAsDigitalAssistant()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/samsung/android/app/SemRoleManager;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/samsung/android/app/SemRoleManager;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda20;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v5, Landroid/os/UserHandle;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 23
    .line 24
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 25
    .line 26
    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v2, "android.app.role.ASSISTANT"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const-string v3, "com.google.android.googlequicksearchbox"

    .line 39
    .line 40
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/SemRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final showingSearcleToastIfNeeded()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLongPressHomeSearcle()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->longPressOnHomePolicy()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 20
    .line 21
    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    const/16 v2, 0x65

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const v1, 0x1040f32

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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
    const v2, 0x1040c50

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const v1, 0x1040278

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const-string p0, "PhoneWindowManagerExt"

    .line 65
    .line 66
    const-string v0, "The toast message is empty"

    .line 67
    .line 68
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final startGameToolsService(IIZ)Z
    .locals 4

    .line 1
    const-string v0, "com.samsung.android.game.gametools"

    .line 2
    .line 3
    const-string v1, "PhoneWindowManagerExt"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v3, "start service game TOOLS: "

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/content/Intent;

    .line 49
    .line 50
    const-string v2, "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

    .line 51
    .line 52
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string v0, "DEVICE_VID"

    .line 59
    .line 60
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string p1, "DEVICE_PID"

    .line 64
    .line 65
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    if-eqz p3, :cond_0

    .line 69
    .line 70
    const-string p1, "CONNECTED"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const-string p1, "PRESS"

    .line 74
    .line 75
    :goto_0
    const-string p2, "DEVICE_ACTION"

    .line 76
    .line 77
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 83
    .line 84
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x1

    .line 88
    return p0

    .line 89
    :cond_1
    const-string p0, "GameBooster is disabled"

    .line 90
    .line 91
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p2, "GameBooster is not installed, "

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_1
    return v2
.end method

.method public final startLockscreenFingerprintAuth()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "KeyguardServiceDelegate"

    .line 12
    .line 13
    const-string v1, "Start Fingerprint Authentication"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startFingerprintAuthentication()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final startSearcleByHomeKey(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "PhoneWindowManagerExt"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "keyguardOn, can not start Searcle by Home"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string p0, "hasLastInfo, can not start Searcle by Home"

    .line 28
    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 34
    .line 35
    invoke-virtual {v0, v3, v2}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string p0, "hasSystemKeyInfo, can not start Searcle by Home"

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo v2, "startSearcleByHomeKey, down="

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " longPress="

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v1, "startSearcleByHomeKey down="

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "StatusBarManagerService"

    .line 106
    .line 107
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 113
    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 120
    .line 121
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->startSearcleByHomeKey(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    :catch_0
    :goto_0
    return-void
.end method

.method public final updateDoublePressLaunchInfo(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "/"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    array-length v0, p1

    .line 15
    const/4 v1, 0x2

    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Landroid/content/ComponentName;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aget-object v1, p1, v1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aget-object p1, p1, v2

    .line 25
    .line 26
    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final updateDoublePressPowerBehavior()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/16 v2, 0x1a

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/16 v6, 0x450

    .line 22
    .line 23
    if-ne v5, v6, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x68

    .line 26
    .line 27
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    if-ne v3, v5, :cond_1

    .line 33
    .line 34
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 38
    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/16 v7, 0x7d1

    .line 46
    .line 47
    if-ne v5, v7, :cond_2

    .line 48
    .line 49
    const/16 v0, 0x65

    .line 50
    .line 51
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/16 v1, 0x7d2

    .line 63
    .line 64
    if-ne v0, v1, :cond_3

    .line 65
    .line 66
    const/16 v0, 0x69

    .line 67
    .line 68
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v0, 0x1

    .line 72
    if-eq v3, v0, :cond_5

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    if-eq v3, v0, :cond_5

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    if-ne v3, v0, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    if-eqz v4, :cond_6

    .line 82
    .line 83
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    :goto_0
    const/16 v0, 0x6a

    .line 87
    .line 88
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 89
    .line 90
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string/jumbo v1, "updateDoublePressPowerBehavior, behavior="

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 99
    .line 100
    const-string v1, "PhoneWindowManagerExt"

    .line 101
    .line 102
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final updateKeyCustomizationInfoTvMode()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 4
    .line 5
    const/16 v2, 0x7d2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    const/16 v5, 0x1a

    .line 11
    .line 12
    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v6

    .line 22
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeEnabled:Z

    .line 23
    .line 24
    if-eqz v7, :cond_2

    .line 25
    .line 26
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTvModeDoublePressEnabled:Z

    .line 27
    .line 28
    if-eqz v7, :cond_2

    .line 29
    .line 30
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 31
    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string v6, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    .line 36
    .line 37
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    :goto_1
    if-eqz v6, :cond_2

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    const-string v1, "android.intent.action.MAIN"

    .line 50
    .line 51
    const-string v2, "android.intent.category.LAUNCHER"

    .line 52
    .line 53
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDoublePressLaunchComponentName:Landroid/content/ComponentName;

    .line 58
    .line 59
    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 63
    .line 64
    const/16 v4, 0x8

    .line 65
    .line 66
    const/16 v5, 0x7d2

    .line 67
    .line 68
    const/16 v6, 0x1a

    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    move-object v3, v1

    .line 72
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(IIILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public updateSettings()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->updateSettings()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateSingleKeyGestureRule(I)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_4

    .line 7
    .line 8
    aget v4, v0, v2

    .line 9
    .line 10
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 11
    .line 12
    invoke-virtual {v5, v4, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    if-nez v6, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {v5, v4, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v7, 0x4

    .line 24
    if-ne v6, v7, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    and-int/lit8 v6, v4, 0x4

    .line 28
    .line 29
    if-eqz v6, :cond_3

    .line 30
    .line 31
    iget-object v5, v5, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 32
    .line 33
    invoke-virtual {v5, v4, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    move-wide v7, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-wide v7, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    .line 44
    .line 45
    :goto_1
    cmp-long v4, v7, v5

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    if-lez v3, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->addSingleKeyGestureRule(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_5
    const/16 v0, 0x1a

    .line 62
    .line 63
    if-ne p1, v0, :cond_6

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    .line 82
    .line 83
    :cond_7
    :goto_3
    return-void
.end method
