.class public final Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# static fields
.field public static final DEBUG_INPUT:Z

.field public static final DEBUG_KEYGUARD:Z

.field public static final DEBUG_WAKEUP:Z

.field public static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

.field public mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public mAcquireInProgress:Z

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityManagerService:Landroid/app/IActivityManager;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

.field public mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field public mAltTabConsumedByDeX:Z

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field public volatile mBackKeyHandled:Z

.field public mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

.field public volatile mBootAnimationDismissable:Z

.field public mBootMessageNeedsHiding:Z

.field public mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field public mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

.field public mCameraLensCoverState:I

.field public mCarDockIntent:Landroid/content/Intent;

.field public final mConsumedKeysForDevice:Landroid/util/SparseArray;

.field public mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDefaultDisplay:Landroid/view/Display;

.field public mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public final mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

.field public mDeskDockIntent:Landroid/content/Intent;

.field public volatile mDeviceGoingToSleep:Z

.field public mDexDisplay:Landroid/view/Display;

.field public volatile mDismissImeOnBackKeyPressed:Z

.field public mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

.field public final mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDockReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

.field public mDoublePressOnPowerBehavior:I

.field public mDoublePressOnStemPrimaryBehavior:I

.field public mDoubleTapOnHomeBehavior:I

.field public mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field public mEnableBugReportKeyboardShortcut:Z

.field public mEnableCarDockHomeCapture:Z

.field public volatile mEndCallKeyHandled:Z

.field public final mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

.field public mEndcallBehavior:I

.field public mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public mExtraDisplay:Landroid/view/Display;

.field public mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mExtraDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public final mFallbackActions:Landroid/util/SparseArray;

.field public mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

.field public mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field public mGlobalActionsFactory:Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

.field public mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field public mGoToSleepOnButtonPressTheaterMode:Z

.field public final mHDMIObserver:Lcom/android/server/policy/PhoneWindowManager$2;

.field public mHandleVolumeKeysInWM:Z

.field public mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

.field public mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

.field public mHasFeatureAuto:Z

.field public mHasFeatureHdmiCec:Z

.field public mHasFeatureLeanback:Z

.field public mHasFeatureWatch:Z

.field public mHasSoftInput:Z

.field public mHavePendingMediaKeyRepeatWithWakeLock:Z

.field public mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

.field public mHomeIntent:Landroid/content/Intent;

.field public mIncallBackBehavior:I

.field public mIncallPowerBehavior:I

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public volatile mIsGoingToSleepDefaultDisplay:Z

.field public mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

.field public mKeyguardBound:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field public final mKeyguardDrawnCallback:Lcom/android/server/policy/PhoneWindowManager$1;

.field public mKeyguardDrawnOnce:Z

.field public mKeyguardDrawnTimeout:I

.field public mKeyguardOccludedChanged:Z

.field public mKidsModeEnabled:Z

.field public mLastModifierState:I

.field public mLidKeyboardAccessibility:I

.field public mLidNavigationAccessibility:I

.field public final mLock:Ljava/lang/Object;

.field public mLockAfterDreamingTransitionFinished:Z

.field public mLockNowPending:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockScreenTimeout:I

.field public mLockScreenTimerActive:Z

.field public mLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mLongPressOnBackBehavior:I

.field public mLongPressOnHomeBehavior:I

.field public mLongPressOnPowerAssistantTimeoutMs:J

.field public mLongPressOnPowerBehavior:I

.field public mLongPressOnStemPrimaryBehavior:I

.field public mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

.field public final mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

.field public volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPendingCapsLockToggle:Z

.field public mPendingKeyguardOccluded:Z

.field public mPendingMetaAction:Z

.field public volatile mPendingWakeKey:I

.field public final mPersistentVrModeListener:Lcom/android/server/policy/PhoneWindowManager$3;

.field public volatile mPictureInPictureVisible:Z

.field public mPowerButtonSuppressionDelayMillis:I

.field public mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

.field public volatile mPowerKeyHandled:Z

.field public mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPowerVolUpBehavior:I

.field public mPreloadedRecentApps:Z

.field public mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

.field public mRecentAppsHeldModifiers:I

.field public volatile mRecentsVisible:Z

.field public mRingerToggleChord:I

.field public mSafeMode:Z

.field public final mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field public mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

.field public final mScreenOnListeners:Landroid/util/SparseArray;

.field public mSearchKeyBehavior:I

.field public mSearchKeyTargetActivity:Landroid/content/ComponentName;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mSettingsKeyBehavior:I

.field public mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field public mShortPressOnPowerBehavior:I

.field public mShortPressOnSleepBehavior:I

.field public mShortPressOnStemPrimaryBehavior:I

.field public mShortPressOnWindowBehavior:I

.field public mShouldEarlyShortPressOnPower:Z

.field public mShouldEarlyShortPressOnStemPrimary:Z

.field public mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

.field public mSilenceRingerOnSleepKey:Z

.field public mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

.field public final mSleepTokenLock:Ljava/lang/Object;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mStylusButtonsEnabled:Z

.field public mSupportLongPressPowerWhenNonInteractive:Z

.field public mSupportShortPressPowerWhenDefaultDisplayOn:Z

.field public mSystemBooted:Z

.field public mSystemKeyRequested:Z

.field public mSystemNavigationKeysEnabled:Z

.field public mSystemReady:Z

.field public mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

.field public volatile mTopFocusedDisplayId:I

.field public mTriplePressOnPowerBehavior:I

.field public mTriplePressOnStemPrimaryBehavior:I

.field public mUiMode:I

.field public mUiModeManager:Landroid/app/IUiModeManager;

.field public mUseTvRouting:Z

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mVeryLongPressOnPowerBehavior:I

.field public mVibrator:Landroid/os/Vibrator;

.field public mVrHeadsetHomeIntent:Landroid/content/Intent;

.field public volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

.field public mWakeGestureEnabledSetting:Z

.field public mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field public mWakeOnAssistKeyPress:Z

.field public mWakeOnBackKeyPress:Z

.field public mWakeOnDpadKeyPress:Z

.field public mWakeUpToLastStateTimeout:J

.field public mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

.field public mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;


# direct methods
.method public static -$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 20
    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 30
    .line 31
    const/4 v3, 0x6

    .line 32
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    const-string/jumbo v0, "waitForAllWindowsDrawn"

    .line 40
    .line 41
    .line 42
    const-wide/16 v3, 0x20

    .line 43
    .line 44
    const/4 v1, -0x1

    .line 45
    invoke-static {v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 51
    .line 52
    const/4 v3, 0x7

    .line 53
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-wide/16 v2, 0x3e8

    .line 58
    .line 59
    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw p0

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_4

    .line 67
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v1

    .line 68
    :goto_3
    return-void

    .line 69
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    throw p0
.end method

.method public static -$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "stemPrimaryPress: "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "WindowManager"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    if-ne p1, v0, :cond_7

    .line 29
    .line 30
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 31
    .line 32
    const-string/jumbo v0, "stemPrimaryTriplePressAction: "

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    if-eq p1, v4, :cond_0

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    .line 43
    .line 44
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 45
    .line 46
    iget-object v1, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const-class v5, Landroid/view/accessibility/AccessibilityManager;

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 81
    .line 82
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 87
    .line 88
    iget-object v6, p1, Lcom/android/server/policy/TalkbackShortcutController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const-string v7, "TalkBack"

    .line 99
    .line 100
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_1

    .line 105
    .line 106
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 107
    .line 108
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-nez v6, :cond_2

    .line 113
    .line 114
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 115
    .line 116
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_1

    .line 121
    .line 122
    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    .line 123
    .line 124
    iget-object v1, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 127
    .line 128
    invoke-direct {v2, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    if-nez v2, :cond_4

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-virtual {p1}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    xor-int/2addr v0, v4

    .line 145
    iget-object v1, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v1, v2, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 148
    .line 149
    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    iget-object v0, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_5

    .line 159
    .line 160
    iget-object p1, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string/jumbo v0, "wear_accessibility_gesture_enabled_during_oobe"

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_5
    iget-object p1, p1, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 174
    .line 175
    const/4 v0, 0x7

    .line 176
    invoke-static {p1, v2, v0, v4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 177
    .line 178
    .line 179
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_15

    .line 186
    .line 187
    const-string p1, "Stem primary - Triple Press - Toggle Accessibility"

    .line 188
    .line 189
    const/16 v0, 0x10

    .line 190
    .line 191
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 192
    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :cond_7
    const/4 v0, 0x2

    .line 197
    if-ne p1, v0, :cond_d

    .line 198
    .line 199
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 200
    .line 201
    const-string/jumbo v0, "stemPrimaryDoublePressAction: "

    .line 202
    .line 203
    .line 204
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    if-eq p1, v4, :cond_8

    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_8
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 212
    .line 213
    if-nez p1, :cond_9

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    :goto_1
    if-nez v3, :cond_15

    .line 221
    .line 222
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 223
    .line 224
    if-nez p1, :cond_b

    .line 225
    .line 226
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 227
    .line 228
    if-eqz p1, :cond_a

    .line 229
    .line 230
    const-string p1, "No recent task available! Show wallpaper."

    .line 231
    .line 232
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    .line 236
    .line 237
    .line 238
    goto/16 :goto_2

    .line 239
    .line 240
    :cond_b
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 241
    .line 242
    if-eqz v0, :cond_c

    .line 243
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v3, "Starting task from recents. id="

    .line 247
    .line 248
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 252
    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v3, ", persistentId="

    .line 257
    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 262
    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v3, ", topActivity="

    .line 267
    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v3, ", baseIntent="

    .line 277
    .line 278
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v3, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 282
    .line 283
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    :cond_c
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 294
    .line 295
    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 296
    .line 297
    invoke-interface {p0, v0, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :catch_0
    move-exception p0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string v2, "Failed to start task "

    .line 306
    .line 307
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 311
    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string p1, " from recents"

    .line 316
    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .line 326
    .line 327
    goto/16 :goto_2

    .line 328
    .line 329
    :cond_d
    if-ne p1, v4, :cond_15

    .line 330
    .line 331
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 332
    .line 333
    const-string/jumbo v2, "stemPrimarySinglePressAction: behavior="

    .line 334
    .line 335
    .line 336
    invoke-static {p1, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    if-nez p1, :cond_e

    .line 340
    .line 341
    goto/16 :goto_2

    .line 342
    .line 343
    :cond_e
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 344
    .line 345
    if-eqz v2, :cond_10

    .line 346
    .line 347
    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-eqz v2, :cond_10

    .line 352
    .line 353
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 354
    .line 355
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 356
    .line 357
    if-eqz p0, :cond_f

    .line 358
    .line 359
    const/16 p1, 0x108

    .line 360
    .line 361
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemKeyPressed(I)V

    .line 362
    .line 363
    .line 364
    :cond_f
    const-string/jumbo p0, "stemPrimarySinglePressAction: skip due to keyguard"

    .line 365
    .line 366
    .line 367
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    goto :goto_2

    .line 371
    :cond_10
    if-eq p1, v4, :cond_14

    .line 372
    .line 373
    if-eq p1, v0, :cond_11

    .line 374
    .line 375
    goto :goto_2

    .line 376
    :cond_11
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 377
    .line 378
    if-eqz p1, :cond_13

    .line 379
    .line 380
    new-instance p1, Landroid/content/Intent;

    .line 381
    .line 382
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 383
    .line 384
    .line 385
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 386
    .line 387
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 388
    .line 389
    .line 390
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    if-eqz v0, :cond_12

    .line 401
    .line 402
    const v0, 0x10204000

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 406
    .line 407
    .line 408
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 409
    .line 410
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 411
    .line 412
    .line 413
    goto :goto_2

    .line 414
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    const-string v0, "Could not resolve activity with : "

    .line 417
    .line 418
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 422
    .line 423
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string p0, " name."

    .line 431
    .line 432
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    goto :goto_2

    .line 443
    :cond_13
    const-string/jumbo p0, "mPrimaryShortPressTargetActivity must not be null and correctly specified"

    .line 444
    .line 445
    .line 446
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    goto :goto_2

    .line 450
    :cond_14
    const-string p1, "android.intent.action.ALL_APPS"

    .line 451
    .line 452
    const/high16 v0, 0x10200000

    .line 453
    .line 454
    invoke-static {v0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 459
    .line 460
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 461
    .line 462
    .line 463
    :cond_15
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 7
    .line 8
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 9
    .line 10
    const/16 v0, 0x7d3

    .line 11
    .line 12
    const/16 v1, 0x7da

    .line 13
    .line 14
    filled-new-array {v0, v1}, [I

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 4

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
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 30
    .line 31
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$1;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 42
    .line 43
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 48
    .line 49
    new-instance v1, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 55
    .line 56
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 57
    .line 58
    new-instance v1, Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 64
    .line 65
    new-instance v1, Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 71
    .line 72
    new-instance v1, Lcom/android/internal/policy/LogDecelerateInterpolator;

    .line 73
    .line 74
    const/16 v3, 0x64

    .line 75
    .line 76
    invoke-direct {v1, v3, v0}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 80
    .line 81
    invoke-direct {v1}, Lcom/android/server/policy/DeferredKeyActionExecutor;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 85
    .line 86
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 87
    .line 88
    const/16 v1, 0x320

    .line 89
    .line 90
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 93
    .line 94
    const/16 v1, 0x3e8

    .line 95
    .line 96
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 99
    .line 100
    new-instance v1, Ljava/lang/Object;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSleepTokenLock:Ljava/lang/Object;

    .line 106
    .line 107
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$2;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Lcom/android/server/policy/PhoneWindowManager$2;

    .line 113
    .line 114
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$3;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Lcom/android/server/policy/PhoneWindowManager$3;

    .line 120
    .line 121
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    .line 122
    .line 123
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$4;

    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    invoke-direct {v1, v2, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 130
    .line 131
    new-instance v1, Landroid/util/SparseArray;

    .line 132
    .line 133
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 137
    .line 138
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastModifierState:I

    .line 139
    .line 140
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    .line 147
    .line 148
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    .line 149
    .line 150
    const/4 v1, 0x1

    .line 151
    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    .line 155
    .line 156
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 157
    .line 158
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 159
    .line 160
    .line 161
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 162
    .line 163
    return-void
.end method

.method public static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_0
    const-string p0, "MULTI_PRESS_POWER_SIDE_KEY_BEHAVIOR"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_1
    const-string p0, "MULTI_PRESS_POWER_EMERGENCY_SOS"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_2
    const-string p0, "MULTI_PRESS_POWER_PANIC_CALL"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_3
    const-string p0, "MULTI_PRESS_POWER_QUICK_LAUNCH_CAMERA"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    const-string p0, "MULTI_PRESS_POWER_LAUNCH_TARGET_ACTIVITY"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    const-string p0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const-string p0, "MULTI_PRESS_POWER_THEATER_MODE"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    const-string p0, "MULTI_PRESS_POWER_NOTHING"

    .line 42
    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final applyKeyguardOcclusionChange()I
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 2
    .line 3
    const-string v1, "WindowManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "transition/occluded commit occluded="

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, " changed="

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 26
    .line 27
    invoke-static {v1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string/jumbo v0, "setKeyguardOccluded occluded="

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    const/4 p0, 0x5

    .line 59
    return p0

    .line 60
    :cond_2
    return v0
.end method

.method public final applyLidSwitchState()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "lid_behavior"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final backKeyPress()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2
    .line 3
    const-string v1, "key_back_press"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 33
    .line 34
    and-int/2addr v2, v3

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 53
    .line 54
    const/16 v1, 0x14

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    return v0
.end method

.method public final bindKeyguard()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0
.end method

.method public final checkAddPermission(IZLjava/lang/String;[I)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    .line 4
    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 5
    .line 6
    const/4 v3, -0x8

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    const/4 v5, -0x1

    .line 20
    aput v5, p4, v4

    .line 21
    .line 22
    const/16 v5, 0xbb7

    .line 23
    .line 24
    const/16 v6, 0x7d0

    .line 25
    .line 26
    const/16 v7, 0x3e8

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    if-lt v1, v8, :cond_1

    .line 30
    .line 31
    const/16 v9, 0x63

    .line 32
    .line 33
    if-le v1, v9, :cond_3

    .line 34
    .line 35
    :cond_1
    if-lt v1, v7, :cond_2

    .line 36
    .line 37
    const/16 v9, 0x7cf

    .line 38
    .line 39
    if-le v1, v9, :cond_3

    .line 40
    .line 41
    :cond_2
    if-lt v1, v6, :cond_13

    .line 42
    .line 43
    if-le v1, v5, :cond_3

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_3
    if-lt v1, v6, :cond_12

    .line 48
    .line 49
    if-le v1, v5, :cond_4

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_8

    .line 58
    .line 59
    const/16 v5, 0x7d5

    .line 60
    .line 61
    if-eq v1, v5, :cond_7

    .line 62
    .line 63
    const/16 v5, 0x7db

    .line 64
    .line 65
    if-eq v1, v5, :cond_6

    .line 66
    .line 67
    const/16 v5, 0x7dd

    .line 68
    .line 69
    if-eq v1, v5, :cond_6

    .line 70
    .line 71
    const/16 v5, 0x7e8

    .line 72
    .line 73
    if-eq v1, v5, :cond_6

    .line 74
    .line 75
    const/16 v5, 0x7f3

    .line 76
    .line 77
    if-eq v1, v5, :cond_6

    .line 78
    .line 79
    const/16 v5, 0x7f5

    .line 80
    .line 81
    if-eq v1, v5, :cond_6

    .line 82
    .line 83
    packed-switch v1, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    move v3, v4

    .line 95
    :cond_5
    return v3

    .line 96
    :pswitch_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->createAccessibilityOverlayAppOpEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    const/16 v0, 0x8a

    .line 103
    .line 104
    aput v0, p4, v4

    .line 105
    .line 106
    :cond_6
    :pswitch_1
    return v4

    .line 107
    :cond_7
    const/16 v0, 0x2d

    .line 108
    .line 109
    aput v0, p4, v4

    .line 110
    .line 111
    return v4

    .line 112
    :cond_8
    const/16 v5, 0x18

    .line 113
    .line 114
    aput v5, p4, v4

    .line 115
    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-ne v5, v7, :cond_9

    .line 125
    .line 126
    return v4

    .line 127
    :cond_9
    :try_start_0
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 128
    .line 129
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    .line 130
    .line 131
    .line 132
    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    move-object/from16 v7, p3

    .line 134
    .line 135
    :try_start_1
    invoke-virtual {v5, v7, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    goto :goto_0

    .line 140
    :catch_0
    move-object/from16 v7, p3

    .line 141
    .line 142
    :catch_1
    const/4 v5, 0x0

    .line 143
    :goto_0
    if-eqz v5, :cond_10

    .line 144
    .line 145
    const/16 v6, 0x7f6

    .line 146
    .line 147
    if-eq v1, v6, :cond_a

    .line 148
    .line 149
    iget v1, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 150
    .line 151
    const/16 v6, 0x1a

    .line 152
    .line 153
    if-lt v1, v6, :cond_a

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_a
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    const-string v2, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_b

    .line 165
    .line 166
    return v4

    .line 167
    :cond_b
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 168
    .line 169
    aget v10, p4, v4

    .line 170
    .line 171
    const/4 v13, 0x0

    .line 172
    const-string v14, "check-add"

    .line 173
    .line 174
    move-object/from16 v12, p3

    .line 175
    .line 176
    invoke-virtual/range {v9 .. v14}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_f

    .line 181
    .line 182
    if-eq v1, v8, :cond_f

    .line 183
    .line 184
    const/4 v2, 0x2

    .line 185
    if-eq v1, v2, :cond_d

    .line 186
    .line 187
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_c

    .line 196
    .line 197
    move v3, v4

    .line 198
    :cond_c
    return v3

    .line 199
    :cond_d
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 200
    .line 201
    const/16 v1, 0x17

    .line 202
    .line 203
    if-ge v0, v1, :cond_e

    .line 204
    .line 205
    return v4

    .line 206
    :cond_e
    return v3

    .line 207
    :cond_f
    return v4

    .line 208
    :cond_10
    :goto_1
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_11

    .line 215
    .line 216
    move v3, v4

    .line 217
    :cond_11
    return v3

    .line 218
    :cond_12
    :goto_2
    return v4

    .line 219
    :cond_13
    :goto_3
    const/16 v0, -0xa

    .line 220
    .line 221
    return v0

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x7ee
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createHomeDockIntent()Landroid/content/Intent;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v3, 0x2

    .line 15
    if-ne v0, v3, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v3, 0x6

    .line 19
    if-ne v0, v3, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 22
    .line 23
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v0, v3, :cond_2

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    if-eq v0, v3, :cond_2

    .line 30
    .line 31
    if-ne v0, v2, :cond_4

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    const/4 v2, 0x7

    .line 37
    if-ne v0, v2, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    :goto_0
    move-object v0, v1

    .line 43
    :goto_1
    if-nez v0, :cond_5

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    const v3, 0x10080

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 52
    .line 53
    invoke-virtual {v2, v0, v3, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-eqz p0, :cond_6

    .line 58
    .line 59
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_6
    move-object p0, v1

    .line 63
    :goto_2
    if-eqz p0, :cond_7

    .line 64
    .line 65
    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 66
    .line 67
    if-eqz v2, :cond_7

    .line 68
    .line 69
    const-string v3, "android.dock_home"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_7

    .line 76
    .line 77
    new-instance v1, Landroid/content/Intent;

    .line 78
    .line 79
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 83
    .line 84
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    :cond_7
    return-object v1
.end method

.method public final dismissKeyboardShortcutsMenu()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->dismissKeyboardShortcutsMenu()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :cond_0
    return-void
.end method

.method public final dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    const-string v1, "WindowManager"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "PWM.dismissKeyguardLw"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz p1, :cond_2

    .line 33
    .line 34
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string p1, "Failed to call callback"

    .line 40
    .line 41
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 10

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "mSafeMode="

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 15
    .line 16
    .line 17
    const-string v1, " mSystemReady="

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 25
    .line 26
    .line 27
    const-string v1, " mSystemBooted="

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 33
    .line 34
    const-string v2, "mCameraLensCoverState="

    .line 35
    .line 36
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 40
    .line 41
    const/4 v2, -0x1

    .line 42
    const/4 v3, 0x1

    .line 43
    if-eq v1, v2, :cond_2

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    if-eq v1, v3, :cond_0

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v1, "CAMERA_LENS_COVERED"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v1, "CAMERA_LENS_UNCOVERED"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const-string v1, "CAMERA_LENS_COVER_ABSENT"

    .line 61
    .line 62
    :goto_0
    const-string/jumbo v2, "mWakeGestureEnabledSetting="

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v1, v0, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 69
    .line 70
    const-string/jumbo v2, "mUiMode="

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 77
    .line 78
    invoke-static {v1}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string/jumbo v1, "mEnableCarDockHomeCapture="

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 92
    .line 93
    const-string/jumbo v2, "mLidKeyboardAccessibility="

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 102
    .line 103
    .line 104
    const-string v1, " mLidNavigationAccessibility="

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 112
    .line 113
    .line 114
    const-string v1, " getLidBehavior="

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const-string v2, "lid_behavior"

    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    const/4 v2, 0x2

    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    if-eq v1, v3, :cond_4

    .line 136
    .line 137
    if-eq v1, v2, :cond_3

    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const-string v1, "LID_BEHAVIOR_LOCK"

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    const-string v1, "LID_BEHAVIOR_SLEEP"

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    const-string v1, "LID_BEHAVIOR_NONE"

    .line 151
    .line 152
    :goto_1
    const-string/jumbo v5, "mLongPressOnBackBehavior="

    .line 153
    .line 154
    .line 155
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 159
    .line 160
    if-eqz v1, :cond_7

    .line 161
    .line 162
    if-eq v1, v3, :cond_6

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    goto :goto_2

    .line 169
    :cond_6
    const-string v1, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    const-string v1, "LONG_PRESS_BACK_NOTHING"

    .line 173
    .line 174
    :goto_2
    const-string/jumbo v5, "mLongPressOnHomeBehavior="

    .line 175
    .line 176
    .line 177
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 181
    .line 182
    const/4 v5, 0x4

    .line 183
    const/4 v6, 0x3

    .line 184
    if-eqz v1, :cond_d

    .line 185
    .line 186
    if-eq v1, v3, :cond_c

    .line 187
    .line 188
    if-eq v1, v2, :cond_b

    .line 189
    .line 190
    if-eq v1, v6, :cond_a

    .line 191
    .line 192
    if-eq v1, v5, :cond_9

    .line 193
    .line 194
    const/16 v7, 0x65

    .line 195
    .line 196
    if-eq v1, v7, :cond_8

    .line 197
    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    goto :goto_3

    .line 203
    :cond_8
    const-string v1, "LONG_PRESS_HOME_BIXBY_TOUCH"

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    const-string v1, "LONG_PRESS_HOME_SEARCLE"

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_a
    const-string v1, "LONG_PRESS_HOME_NOTIFICATION_PANEL"

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_b
    const-string v1, "LONG_PRESS_HOME_ASSIST"

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_c
    const-string v1, "LONG_PRESS_HOME_ALL_APPS"

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_d
    const-string v1, "LONG_PRESS_HOME_NOTHING"

    .line 219
    .line 220
    :goto_3
    const-string/jumbo v7, "mDoubleTapOnHomeBehavior="

    .line 221
    .line 222
    .line 223
    invoke-static {p1, v1, v0, v7}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 227
    .line 228
    if-eqz v1, :cond_10

    .line 229
    .line 230
    if-eq v1, v3, :cond_f

    .line 231
    .line 232
    if-eq v1, v2, :cond_e

    .line 233
    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    goto :goto_4

    .line 239
    :cond_e
    const-string v1, "DOUBLE_TAP_HOME_PIP_MENU"

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_f
    const-string v1, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_10
    const-string v1, "DOUBLE_TAP_HOME_NOTHING"

    .line 246
    .line 247
    :goto_4
    const-string/jumbo v7, "mShortPressOnPowerBehavior="

    .line 248
    .line 249
    .line 250
    invoke-static {p1, v1, v0, v7}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 254
    .line 255
    const/4 v7, 0x5

    .line 256
    if-eqz v1, :cond_16

    .line 257
    .line 258
    if-eq v1, v3, :cond_15

    .line 259
    .line 260
    if-eq v1, v2, :cond_14

    .line 261
    .line 262
    if-eq v1, v6, :cond_13

    .line 263
    .line 264
    if-eq v1, v5, :cond_12

    .line 265
    .line 266
    if-eq v1, v7, :cond_11

    .line 267
    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    goto :goto_5

    .line 273
    :cond_11
    const-string v1, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_12
    const-string v1, "SHORT_PRESS_POWER_GO_HOME"

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_13
    const-string v1, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_14
    const-string v1, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_15
    const-string v1, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_16
    const-string v1, "SHORT_PRESS_POWER_NOTHING"

    .line 289
    .line 290
    :goto_5
    const-string/jumbo v8, "mLongPressOnPowerBehavior="

    .line 291
    .line 292
    .line 293
    invoke-static {p1, v1, v0, v8}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 297
    .line 298
    if-eqz v1, :cond_1c

    .line 299
    .line 300
    if-eq v1, v3, :cond_1b

    .line 301
    .line 302
    if-eq v1, v2, :cond_1a

    .line 303
    .line 304
    if-eq v1, v6, :cond_19

    .line 305
    .line 306
    if-eq v1, v5, :cond_18

    .line 307
    .line 308
    if-eq v1, v7, :cond_17

    .line 309
    .line 310
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    goto :goto_6

    .line 315
    :cond_17
    const-string v1, "LONG_PRESS_POWER_ASSISTANT"

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_18
    const-string v1, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_19
    const-string v1, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_1a
    const-string v1, "LONG_PRESS_POWER_SHUT_OFF"

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_1b
    const-string v1, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_1c
    const-string v1, "LONG_PRESS_POWER_NOTHING"

    .line 331
    .line 332
    :goto_6
    const-string/jumbo v5, "mSettingsKeyBehavior="

    .line 333
    .line 334
    .line 335
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    .line 339
    .line 340
    if-eqz v1, :cond_1f

    .line 341
    .line 342
    if-eq v1, v3, :cond_1e

    .line 343
    .line 344
    if-eq v1, v2, :cond_1d

    .line 345
    .line 346
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    goto :goto_7

    .line 351
    :cond_1d
    const-string v1, "SETTINGS_KEY_BEHAVIOR_NOTHING"

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_1e
    const-string v1, "SETTINGS_KEY_BEHAVIOR_NOTIFICATION_PANEL"

    .line 355
    .line 356
    goto :goto_7

    .line 357
    :cond_1f
    const-string v1, "SETTINGS_KEY_BEHAVIOR_SETTINGS_ACTIVITY"

    .line 358
    .line 359
    :goto_7
    const-string/jumbo v5, "mLongPressOnPowerAssistantTimeoutMs="

    .line 360
    .line 361
    .line 362
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-wide v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 366
    .line 367
    const-string/jumbo v1, "mVeryLongPressOnPowerBehavior="

    .line 368
    .line 369
    .line 370
    invoke-static {v7, v8, p1, v0, v1}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 374
    .line 375
    if-eqz v1, :cond_21

    .line 376
    .line 377
    if-eq v1, v3, :cond_20

    .line 378
    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    goto :goto_8

    .line 384
    :cond_20
    const-string v1, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    .line 385
    .line 386
    goto :goto_8

    .line 387
    :cond_21
    const-string v1, "VERY_LONG_PRESS_POWER_NOTHING"

    .line 388
    .line 389
    :goto_8
    const-string/jumbo v5, "mDoublePressOnPowerBehavior="

    .line 390
    .line 391
    .line 392
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 396
    .line 397
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    const-string/jumbo v1, "mTriplePressOnPowerBehavior="

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 414
    .line 415
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    const-string/jumbo v1, "mSupportShortPressPowerWhenDefaultDisplayOn="

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    .line 432
    .line 433
    const-string/jumbo v5, "mPowerVolUpBehavior="

    .line 434
    .line 435
    .line 436
    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 437
    .line 438
    .line 439
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    .line 440
    .line 441
    if-eqz v1, :cond_24

    .line 442
    .line 443
    if-eq v1, v3, :cond_23

    .line 444
    .line 445
    if-eq v1, v2, :cond_22

    .line 446
    .line 447
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    goto :goto_9

    .line 452
    :cond_22
    const-string v1, "POWER_VOLUME_UP_BEHAVIOR_GLOBAL_ACTIONS"

    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_23
    const-string v1, "POWER_VOLUME_UP_BEHAVIOR_MUTE"

    .line 456
    .line 457
    goto :goto_9

    .line 458
    :cond_24
    const-string v1, "POWER_VOLUME_UP_BEHAVIOR_NOTHING"

    .line 459
    .line 460
    :goto_9
    const-string/jumbo v5, "mShortPressOnSleepBehavior="

    .line 461
    .line 462
    .line 463
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 467
    .line 468
    if-eqz v1, :cond_26

    .line 469
    .line 470
    if-eq v1, v3, :cond_25

    .line 471
    .line 472
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    goto :goto_a

    .line 477
    :cond_25
    const-string v1, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    .line 478
    .line 479
    goto :goto_a

    .line 480
    :cond_26
    const-string v1, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    .line 481
    .line 482
    :goto_a
    const-string/jumbo v5, "mShortPressOnWindowBehavior="

    .line 483
    .line 484
    .line 485
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 489
    .line 490
    if-eqz v1, :cond_28

    .line 491
    .line 492
    if-eq v1, v3, :cond_27

    .line 493
    .line 494
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    goto :goto_b

    .line 499
    :cond_27
    const-string v1, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    .line 500
    .line 501
    goto :goto_b

    .line 502
    :cond_28
    const-string v1, "SHORT_PRESS_WINDOW_NOTHING"

    .line 503
    .line 504
    :goto_b
    const-string/jumbo v5, "mShortPressOnStemPrimaryBehavior="

    .line 505
    .line 506
    .line 507
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 511
    .line 512
    if-eqz v1, :cond_2b

    .line 513
    .line 514
    if-eq v1, v3, :cond_2a

    .line 515
    .line 516
    if-eq v1, v2, :cond_29

    .line 517
    .line 518
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    goto :goto_c

    .line 523
    :cond_29
    const-string v1, "SHORT_PRESS_PRIMARY_LAUNCH_TARGET_ACTIVITY"

    .line 524
    .line 525
    goto :goto_c

    .line 526
    :cond_2a
    const-string v1, "SHORT_PRESS_PRIMARY_LAUNCH_ALL_APPS"

    .line 527
    .line 528
    goto :goto_c

    .line 529
    :cond_2b
    const-string v1, "SHORT_PRESS_PRIMARY_NOTHING"

    .line 530
    .line 531
    :goto_c
    const-string/jumbo v5, "mDoublePressOnStemPrimaryBehavior="

    .line 532
    .line 533
    .line 534
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 538
    .line 539
    if-eqz v1, :cond_2d

    .line 540
    .line 541
    if-eq v1, v3, :cond_2c

    .line 542
    .line 543
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    goto :goto_d

    .line 548
    :cond_2c
    const-string v1, "DOUBLE_PRESS_PRIMARY_SWITCH_RECENT_APP"

    .line 549
    .line 550
    goto :goto_d

    .line 551
    :cond_2d
    const-string v1, "DOUBLE_PRESS_PRIMARY_NOTHING"

    .line 552
    .line 553
    :goto_d
    const-string/jumbo v5, "mTriplePressOnStemPrimaryBehavior="

    .line 554
    .line 555
    .line 556
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 560
    .line 561
    if-eqz v1, :cond_2f

    .line 562
    .line 563
    if-eq v1, v3, :cond_2e

    .line 564
    .line 565
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    goto :goto_e

    .line 570
    :cond_2e
    const-string v1, "TRIPLE_PRESS_PRIMARY_TOGGLE_ACCESSIBILITY"

    .line 571
    .line 572
    goto :goto_e

    .line 573
    :cond_2f
    const-string v1, "TRIPLE_PRESS_PRIMARY_NOTHING"

    .line 574
    .line 575
    :goto_e
    const-string/jumbo v5, "mLongPressOnStemPrimaryBehavior="

    .line 576
    .line 577
    .line 578
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 582
    .line 583
    if-eqz v1, :cond_31

    .line 584
    .line 585
    if-eq v1, v3, :cond_30

    .line 586
    .line 587
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    goto :goto_f

    .line 592
    :cond_30
    const-string v1, "LONG_PRESS_PRIMARY_LAUNCH_VOICE_ASSISTANT"

    .line 593
    .line 594
    goto :goto_f

    .line 595
    :cond_31
    const-string v1, "LONG_PRESS_PRIMARY_NOTHING"

    .line 596
    .line 597
    :goto_f
    const-string v5, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    .line 598
    .line 599
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 603
    .line 604
    const-string/jumbo v5, "mHasSoftInput="

    .line 605
    .line 606
    .line 607
    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 608
    .line 609
    .line 610
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 611
    .line 612
    const-string/jumbo v5, "mDismissImeOnBackKeyPressed="

    .line 613
    .line 614
    .line 615
    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 616
    .line 617
    .line 618
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    .line 619
    .line 620
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 621
    .line 622
    .line 623
    const-string v1, " mIncallPowerBehavior="

    .line 624
    .line 625
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 629
    .line 630
    and-int/2addr v1, v2

    .line 631
    if-eqz v1, :cond_32

    .line 632
    .line 633
    const-string v1, "hangup"

    .line 634
    .line 635
    goto :goto_10

    .line 636
    :cond_32
    const-string/jumbo v1, "sleep"

    .line 637
    .line 638
    .line 639
    :goto_10
    const-string/jumbo v5, "mIncallBackBehavior="

    .line 640
    .line 641
    .line 642
    invoke-static {p1, v1, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 646
    .line 647
    and-int/2addr v1, v3

    .line 648
    if-eqz v1, :cond_33

    .line 649
    .line 650
    const-string v1, "hangup"

    .line 651
    .line 652
    goto :goto_11

    .line 653
    :cond_33
    const-string v1, "<nothing>"

    .line 654
    .line 655
    :goto_11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    const-string v1, " mEndcallBehavior="

    .line 659
    .line 660
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 664
    .line 665
    new-instance v5, Ljava/lang/StringBuilder;

    .line 666
    .line 667
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 668
    .line 669
    .line 670
    and-int/lit8 v7, v1, 0x1

    .line 671
    .line 672
    if-eqz v7, :cond_34

    .line 673
    .line 674
    const-string v7, "home|"

    .line 675
    .line 676
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    :cond_34
    and-int/2addr v1, v2

    .line 680
    if-eqz v1, :cond_35

    .line 681
    .line 682
    const-string/jumbo v1, "sleep|"

    .line 683
    .line 684
    .line 685
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    :cond_35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    if-nez v1, :cond_36

    .line 693
    .line 694
    const-string v1, "<nothing>"

    .line 695
    .line 696
    goto :goto_12

    .line 697
    :cond_36
    sub-int/2addr v1, v3

    .line 698
    invoke-virtual {v5, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    :goto_12
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    const-string/jumbo v1, "mDisplayHomeButtonHandlers="

    .line 709
    .line 710
    .line 711
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    move v1, v4

    .line 715
    :goto_13
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 716
    .line 717
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 718
    .line 719
    .line 720
    move-result v5

    .line 721
    if-ge v1, v5, :cond_37

    .line 722
    .line 723
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 724
    .line 725
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 726
    .line 727
    .line 728
    move-result v5

    .line 729
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    const-string v7, "  "

    .line 733
    .line 734
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 738
    .line 739
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v5

    .line 743
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 744
    .line 745
    .line 746
    add-int/lit8 v1, v1, 0x1

    .line 747
    .line 748
    goto :goto_13

    .line 749
    :cond_37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    const-string/jumbo v1, "mKeyguardOccluded="

    .line 753
    .line 754
    .line 755
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 763
    .line 764
    .line 765
    const-string v1, " mKeyguardOccludedChanged="

    .line 766
    .line 767
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 771
    .line 772
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 773
    .line 774
    .line 775
    const-string v1, " mPendingKeyguardOccluded="

    .line 776
    .line 777
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 781
    .line 782
    const-string v5, "mAllowLockscreenWhenOnDisplays="

    .line 783
    .line 784
    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 785
    .line 786
    .line 787
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 788
    .line 789
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    xor-int/2addr v1, v3

    .line 794
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 795
    .line 796
    .line 797
    const-string v1, " mLockScreenTimeout="

    .line 798
    .line 799
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 803
    .line 804
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 805
    .line 806
    .line 807
    const-string v1, " mLockScreenTimerActive="

    .line 808
    .line 809
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 813
    .line 814
    const-string/jumbo v5, "mKidsModeEnabled="

    .line 815
    .line 816
    .line 817
    invoke-static {p1, v0, v5, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 818
    .line 819
    .line 820
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    .line 821
    .line 822
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 823
    .line 824
    .line 825
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 826
    .line 827
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 828
    .line 829
    .line 830
    const-string/jumbo v5, "mHapticTextHandleEnabled="

    .line 831
    .line 832
    .line 833
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    iget-boolean v1, v1, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    .line 837
    .line 838
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 839
    .line 840
    .line 841
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 842
    .line 843
    iget-object v5, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 844
    .line 845
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 846
    .line 847
    .line 848
    move-result v5

    .line 849
    if-nez v5, :cond_38

    .line 850
    .line 851
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    const-string/jumbo v1, "mKeyMapping.size=0"

    .line 855
    .line 856
    .line 857
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    goto :goto_15

    .line 861
    :cond_38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    const-string/jumbo v7, "mKeyMapping={"

    .line 865
    .line 866
    .line 867
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    move v7, v4

    .line 871
    :goto_14
    if-ge v7, v5, :cond_39

    .line 872
    .line 873
    const-string v8, "  "

    .line 874
    .line 875
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    iget-object v8, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 882
    .line 883
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 884
    .line 885
    .line 886
    move-result v8

    .line 887
    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v8

    .line 891
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    const-string v8, "="

    .line 895
    .line 896
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    iget-object v8, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 900
    .line 901
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v8

    .line 905
    check-cast v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 906
    .line 907
    iget-object v8, v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    .line 908
    .line 909
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v8

    .line 913
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    const-string v8, ",dispatchWhenNonInteractive="

    .line 917
    .line 918
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    iget-object v8, v1, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 922
    .line 923
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v8

    .line 927
    check-cast v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 928
    .line 929
    iget-boolean v8, v8, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    .line 930
    .line 931
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 932
    .line 933
    .line 934
    add-int/lit8 v7, v7, 0x1

    .line 935
    .line 936
    goto :goto_14

    .line 937
    :cond_39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    const-string/jumbo v1, "}"

    .line 941
    .line 942
    .line 943
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    :goto_15
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 947
    .line 948
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 949
    .line 950
    .line 951
    const-string v5, "    KeyCombination rules:"

    .line 952
    .line 953
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    iget-object v5, v1, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    .line 957
    .line 958
    new-instance v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda7;

    .line 959
    .line 960
    invoke-direct {v7, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda7;-><init>(Ljava/io/PrintWriter;)V

    .line 961
    .line 962
    .line 963
    invoke-static {v5, v7}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    .line 964
    .line 965
    .line 966
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 967
    .line 968
    if-eqz v5, :cond_3b

    .line 969
    .line 970
    move v5, v4

    .line 971
    :goto_16
    iget-object v7, v1, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 972
    .line 973
    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    .line 974
    .line 975
    .line 976
    move-result v7

    .line 977
    if-ge v5, v7, :cond_3a

    .line 978
    .line 979
    new-instance v7, Ljava/lang/StringBuilder;

    .line 980
    .line 981
    const-string v8, "     mDownTimes keyCode="

    .line 982
    .line 983
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    iget-object v8, v1, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 987
    .line 988
    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 989
    .line 990
    .line 991
    move-result v8

    .line 992
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v7

    .line 999
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    const-string v8, " time="

    .line 1005
    .line 1006
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    iget-object v8, v1, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 1010
    .line 1011
    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 1012
    .line 1013
    .line 1014
    move-result-wide v8

    .line 1015
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v7

    .line 1022
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    add-int/lit8 v5, v5, 0x1

    .line 1026
    .line 1027
    goto :goto_16

    .line 1028
    :cond_3a
    move v5, v4

    .line 1029
    :goto_17
    iget-object v7, v1, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 1030
    .line 1031
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 1032
    .line 1033
    .line 1034
    move-result v7

    .line 1035
    if-ge v5, v7, :cond_3b

    .line 1036
    .line 1037
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    const-string v8, "     mDownKeyEvent event="

    .line 1040
    .line 1041
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    iget-object v8, v1, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 1045
    .line 1046
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v8

    .line 1050
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v7

    .line 1057
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    add-int/lit8 v5, v5, 0x1

    .line 1061
    .line 1062
    goto :goto_17

    .line 1063
    :cond_3b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 1064
    .line 1065
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1066
    .line 1067
    .line 1068
    const-string v5, "    SingleKey rules:"

    .line 1069
    .line 1070
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    move v5, v4

    .line 1074
    :goto_18
    iget-object v7, v1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 1075
    .line 1076
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 1077
    .line 1078
    .line 1079
    move-result v7

    .line 1080
    if-ge v5, v7, :cond_3c

    .line 1081
    .line 1082
    iget-object v7, v1, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 1083
    .line 1084
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v7

    .line 1088
    check-cast v7, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1089
    .line 1090
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    const-string v9, "      "

    .line 1093
    .line 1094
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v7

    .line 1104
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    add-int/lit8 v5, v5, 0x1

    .line 1108
    .line 1109
    goto :goto_18

    .line 1110
    :cond_3c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 1111
    .line 1112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1113
    .line 1114
    .line 1115
    const-string v5, "    Deferred key action executor:"

    .line 1116
    .line 1117
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    iget-object v5, v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 1121
    .line 1122
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 1123
    .line 1124
    .line 1125
    move-result v5

    .line 1126
    if-nez v5, :cond_3d

    .line 1127
    .line 1128
    const-string v1, "      empty"

    .line 1129
    .line 1130
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    goto :goto_1b

    .line 1134
    :cond_3d
    :goto_19
    iget-object v5, v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 1135
    .line 1136
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 1137
    .line 1138
    .line 1139
    move-result v5

    .line 1140
    if-ge v4, v5, :cond_3f

    .line 1141
    .line 1142
    iget-object v5, v1, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 1143
    .line 1144
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v5

    .line 1148
    check-cast v5, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    .line 1149
    .line 1150
    iget-boolean v7, v5, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mExecutable:Z

    .line 1151
    .line 1152
    iget v8, v5, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mKeyCode:I

    .line 1153
    .line 1154
    if-eqz v7, :cond_3e

    .line 1155
    .line 1156
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    const-string v7, "      "

    .line 1159
    .line 1160
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v7

    .line 1167
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    const-string v7, ": executable"

    .line 1171
    .line 1172
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v5

    .line 1179
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    goto :goto_1a

    .line 1183
    :cond_3e
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    const-string v9, "      "

    .line 1186
    .line 1187
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v8

    .line 1194
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    .line 1197
    const-string v8, ": "

    .line 1198
    .line 1199
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    iget-object v5, v5, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    .line 1203
    .line 1204
    check-cast v5, Ljava/util/ArrayList;

    .line 1205
    .line 1206
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1207
    .line 1208
    .line 1209
    move-result v5

    .line 1210
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    const-string v5, " actions queued"

    .line 1214
    .line 1215
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v5

    .line 1222
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    .line 1224
    .line 1225
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    .line 1226
    .line 1227
    goto :goto_19

    .line 1228
    :cond_3f
    :goto_1b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 1229
    .line 1230
    if-eqz v1, :cond_40

    .line 1231
    .line 1232
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    .line 1233
    .line 1234
    monitor-enter v4

    .line 1235
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    const-string v7, "WakeGestureListener"

    .line 1244
    .line 1245
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v5

    .line 1252
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1256
    .line 1257
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    const-string v7, "  "

    .line 1264
    .line 1265
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v5

    .line 1272
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    const-string/jumbo v8, "mTriggerRequested="

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    .line 1285
    .line 1286
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 1287
    .line 1288
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v7

    .line 1295
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    .line 1297
    .line 1298
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    .line 1306
    const-string/jumbo v5, "mSensor="

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    .line 1311
    .line 1312
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 1313
    .line 1314
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v1

    .line 1321
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1322
    .line 1323
    .line 1324
    monitor-exit v4

    .line 1325
    goto :goto_1c

    .line 1326
    :catchall_0
    move-exception p0

    .line 1327
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    throw p0

    .line 1329
    :cond_40
    :goto_1c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 1330
    .line 1331
    if-eqz v1, :cond_41

    .line 1332
    .line 1333
    const-string v4, "    BurnInProtection"

    .line 1334
    .line 1335
    const-string v5, "      mBurnInProtectionActive="

    .line 1336
    .line 1337
    invoke-static {p1, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v4

    .line 1341
    iget-boolean v5, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    .line 1342
    .line 1343
    const-string v7, "      mHorizontalBurnInOffsetsBounds=("

    .line 1344
    .line 1345
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v4

    .line 1349
    iget v5, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    .line 1350
    .line 1351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    .line 1354
    const-string v5, ", "

    .line 1355
    .line 1356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    .line 1358
    .line 1359
    iget v7, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    .line 1360
    .line 1361
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    .line 1364
    const-string v7, ")"

    .line 1365
    .line 1366
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v4

    .line 1373
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    .line 1375
    .line 1376
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1377
    .line 1378
    const-string v8, "      mVerticalBurnInOffsetsBounds=("

    .line 1379
    .line 1380
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    .line 1384
    .line 1385
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    .line 1390
    .line 1391
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    .line 1392
    .line 1393
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v4

    .line 1403
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1407
    .line 1408
    const-string v8, "      mBurnInRadiusMaxSquared="

    .line 1409
    .line 1410
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1411
    .line 1412
    .line 1413
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    .line 1414
    .line 1415
    const-string v9, "      mLastBurnInOffset=("

    .line 1416
    .line 1417
    invoke-static {v4, v8, p1, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v4

    .line 1421
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    .line 1422
    .line 1423
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    .line 1428
    .line 1429
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    .line 1430
    .line 1431
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v4

    .line 1441
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    .line 1443
    .line 1444
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1445
    .line 1446
    const-string v8, "      mOfsetChangeDirections=("

    .line 1447
    .line 1448
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1449
    .line 1450
    .line 1451
    iget v8, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    .line 1452
    .line 1453
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    .line 1458
    .line 1459
    iget v1, v1, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    .line 1460
    .line 1461
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v1

    .line 1471
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    :cond_41
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 1475
    .line 1476
    if-eqz v1, :cond_4a

    .line 1477
    .line 1478
    const-string v4, "    KeyguardServiceDelegate"

    .line 1479
    .line 1480
    const-string v5, "      showing="

    .line 1481
    .line 1482
    invoke-static {p1, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v4

    .line 1486
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1487
    .line 1488
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 1489
    .line 1490
    const-string v7, "      inputRestricted="

    .line 1491
    .line 1492
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v4

    .line 1496
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1497
    .line 1498
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 1499
    .line 1500
    const-string v7, "      occluded="

    .line 1501
    .line 1502
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v4

    .line 1506
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1507
    .line 1508
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 1509
    .line 1510
    const-string v7, "      secure="

    .line 1511
    .line 1512
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v4

    .line 1516
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1517
    .line 1518
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 1519
    .line 1520
    const-string v7, "      dreaming="

    .line 1521
    .line 1522
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v4

    .line 1526
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1527
    .line 1528
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->dreaming:Z

    .line 1529
    .line 1530
    const-string v7, "      systemIsReady="

    .line 1531
    .line 1532
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v4

    .line 1536
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1537
    .line 1538
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    .line 1539
    .line 1540
    const-string v7, "      deviceHasKeyguard="

    .line 1541
    .line 1542
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v4

    .line 1546
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1547
    .line 1548
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 1549
    .line 1550
    const-string v7, "      enabled="

    .line 1551
    .line 1552
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v4

    .line 1556
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1557
    .line 1558
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 1559
    .line 1560
    const-string v7, "      offReason="

    .line 1561
    .line 1562
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v4

    .line 1566
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1567
    .line 1568
    iget v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    .line 1569
    .line 1570
    invoke-static {v5}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v5

    .line 1574
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    .line 1576
    .line 1577
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v4

    .line 1581
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1582
    .line 1583
    .line 1584
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1585
    .line 1586
    const-string v5, "      currentUser="

    .line 1587
    .line 1588
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1589
    .line 1590
    .line 1591
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1592
    .line 1593
    iget v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 1594
    .line 1595
    const-string v7, "      bootCompleted="

    .line 1596
    .line 1597
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v4

    .line 1601
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1602
    .line 1603
    iget-boolean v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 1604
    .line 1605
    const-string v7, "      screenState="

    .line 1606
    .line 1607
    invoke-static {v4, v5, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v4

    .line 1611
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1612
    .line 1613
    iget v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 1614
    .line 1615
    if-eqz v5, :cond_45

    .line 1616
    .line 1617
    if-eq v5, v3, :cond_44

    .line 1618
    .line 1619
    if-eq v5, v2, :cond_43

    .line 1620
    .line 1621
    if-eq v5, v6, :cond_42

    .line 1622
    .line 1623
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v5

    .line 1627
    goto :goto_1d

    .line 1628
    :cond_42
    const-string v5, "SCREEN_STATE_TURNING_OFF"

    .line 1629
    .line 1630
    goto :goto_1d

    .line 1631
    :cond_43
    const-string v5, "SCREEN_STATE_ON"

    .line 1632
    .line 1633
    goto :goto_1d

    .line 1634
    :cond_44
    const-string v5, "SCREEN_STATE_TURNING_ON"

    .line 1635
    .line 1636
    goto :goto_1d

    .line 1637
    :cond_45
    const-string v5, "SCREEN_STATE_OFF"

    .line 1638
    .line 1639
    :goto_1d
    const-string v7, "      interactiveState="

    .line 1640
    .line 1641
    invoke-static {p1, v5, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v4

    .line 1645
    iget-object v5, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 1646
    .line 1647
    iget v5, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 1648
    .line 1649
    if-eqz v5, :cond_49

    .line 1650
    .line 1651
    if-eq v5, v3, :cond_48

    .line 1652
    .line 1653
    if-eq v5, v2, :cond_47

    .line 1654
    .line 1655
    if-eq v5, v6, :cond_46

    .line 1656
    .line 1657
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v2

    .line 1661
    goto :goto_1e

    .line 1662
    :cond_46
    const-string v2, "INTERACTIVE_STATE_GOING_TO_SLEEP"

    .line 1663
    .line 1664
    goto :goto_1e

    .line 1665
    :cond_47
    const-string v2, "INTERACTIVE_STATE_AWAKE"

    .line 1666
    .line 1667
    goto :goto_1e

    .line 1668
    :cond_48
    const-string v2, "INTERACTIVE_STATE_WAKING"

    .line 1669
    .line 1670
    goto :goto_1e

    .line 1671
    :cond_49
    const-string v2, "INTERACTIVE_STATE_SLEEP"

    .line 1672
    .line 1673
    :goto_1e
    invoke-static {v4, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1674
    .line 1675
    .line 1676
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 1677
    .line 1678
    if-eqz v1, :cond_4a

    .line 1679
    .line 1680
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 1681
    .line 1682
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1683
    .line 1684
    .line 1685
    const-string v2, "      KeyguardStateMonitor"

    .line 1686
    .line 1687
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    .line 1689
    .line 1690
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1691
    .line 1692
    const-string v3, "        mIsShowing="

    .line 1693
    .line 1694
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1695
    .line 1696
    .line 1697
    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 1698
    .line 1699
    const-string v4, "        mSimSecure="

    .line 1700
    .line 1701
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v2

    .line 1705
    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 1706
    .line 1707
    const-string v4, "        mInputRestricted="

    .line 1708
    .line 1709
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v2

    .line 1713
    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 1714
    .line 1715
    const-string v4, "        mTrusted="

    .line 1716
    .line 1717
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v2

    .line 1721
    iget-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 1722
    .line 1723
    const-string v4, "        mCurrentUserId="

    .line 1724
    .line 1725
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v2

    .line 1729
    iget v1, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    .line 1730
    .line 1731
    invoke-static {v2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 1732
    .line 1733
    .line 1734
    :cond_4a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1735
    .line 1736
    .line 1737
    const-string v0, "Looper state:"

    .line 1738
    .line 1739
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1740
    .line 1741
    .line 1742
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 1743
    .line 1744
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v0

    .line 1748
    new-instance v1, Landroid/util/PrintWriterPrinter;

    .line 1749
    .line 1750
    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1751
    .line 1752
    .line 1753
    const-string v2, "      "

    .line 1754
    .line 1755
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1756
    .line 1757
    .line 1758
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1759
    .line 1760
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->dump(Ljava/io/PrintWriter;)V

    .line 1761
    .line 1762
    .line 1763
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 9

    .line 1
    const-wide v0, 0x10b00000001L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 11
    .line 12
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 13
    .line 14
    const-wide v3, 0x10e00000002L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 23
    .line 24
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 25
    .line 26
    const-wide v3, 0x10e00000003L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 35
    .line 36
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 37
    .line 38
    const-wide v3, 0x10e00000004L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 47
    .line 48
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 49
    .line 50
    const-wide v5, 0x10800000005L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 59
    .line 60
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 61
    .line 62
    const-wide v5, 0x10800000006L

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 71
    .line 72
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 73
    .line 74
    const-wide v5, 0x10800000007L

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 80
    .line 81
    .line 82
    const-wide v5, 0x1080000000cL

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 92
    .line 93
    .line 94
    const-wide v5, 0x1080000000dL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 100
    .line 101
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 102
    .line 103
    .line 104
    const-wide v5, 0x1080000000eL

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 110
    .line 111
    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 115
    .line 116
    if-eqz p0, :cond_0

    .line 117
    .line 118
    const-wide v5, 0x10b00000014L

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 124
    .line 125
    .line 126
    move-result-wide v5

    .line 127
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 128
    .line 129
    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 130
    .line 131
    const-wide v7, 0x10800000001L

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 140
    .line 141
    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 142
    .line 143
    const-wide v7, 0x10800000002L

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 152
    .line 153
    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 154
    .line 155
    const-wide v7, 0x10800000003L

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 161
    .line 162
    .line 163
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 164
    .line 165
    iget v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 166
    .line 167
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 171
    .line 172
    iget p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 173
    .line 174
    const-wide v2, 0x10e00000005L

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 183
    .line 184
    .line 185
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final enableKeyguard(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final enableScreen(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 25
    .line 26
    const/16 v3, 0xb

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    move v3, v0

    .line 35
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->onScreenOn()V

    .line 41
    .line 42
    .line 43
    :cond_2
    if-eqz v3, :cond_3

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 46
    .line 47
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->enableScreenIfNeeded()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
.end method

.method public final exitKeyguardSecurely(Lcom/android/server/wm/WindowManagerService$3;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final finishedBootAnimation()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedBootAnim()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootAnimFinished:Z

    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public final finishedGoingToSleep(II)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const v0, 0x11170

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "WindowManager"

    .line 16
    .line 17
    const-string v2, "Finished going to sleep... (groupId="

    .line 18
    .line 19
    const-string v3, " why="

    .line 20
    .line 21
    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ")"

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-string/jumbo v0, "screen_timeout"

    .line 51
    .line 52
    .line 53
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 54
    .line 55
    div-int/lit16 v2, v2, 0x3e8

    .line 56
    .line 57
    invoke-static {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter p1

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 74
    .line 75
    .line 76
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 83
    .line 84
    iget v0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 85
    .line 86
    const/4 v2, 0x2

    .line 87
    if-ne v0, v2, :cond_2

    .line 88
    .line 89
    iget p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 90
    .line 91
    or-int/lit8 p2, p2, 0x8

    .line 92
    .line 93
    iput p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    iget-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0, p2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedGoingToSleep(IZ)V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 108
    .line 109
    iput v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 110
    .line 111
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    iget-object p1, p1, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->log()V

    .line 118
    .line 119
    .line 120
    iput v1, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 121
    .line 122
    const/4 p2, 0x0

    .line 123
    iput-object p2, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 124
    .line 125
    :cond_5
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->clearAppLockedUnLockedApp()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catch_0
    move-exception p0

    .line 143
    const-string p1, "PhoneWindowManagerExt"

    .line 144
    .line 145
    const-string p2, " ClearAppLockedUnLockedApp failed , Remote exception "

    .line 146
    .line 147
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .line 149
    .line 150
    :cond_6
    :goto_1
    return-void

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    throw p0
.end method

.method public final finishedWakingUp(II)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Finished waking up... (groupId="

    .line 6
    .line 7
    const-string v1, " why="

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, ")"

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v0, "WindowManager"

    .line 34
    .line 35
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 42
    .line 43
    iget p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    if-ne p2, v0, :cond_2

    .line 47
    .line 48
    iget p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 49
    .line 50
    or-int/2addr p2, v0

    .line 51
    iput p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    const-string p2, "KeyguardServiceDelegate"

    .line 63
    .line 64
    const-string/jumbo v1, "onFinishedWakingUp()"

    .line 65
    .line 66
    .line 67
    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedWakingUp()V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 76
    .line 77
    iput v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 78
    .line 79
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 80
    .line 81
    if-eqz p0, :cond_7

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    .line 86
    .line 87
    if-nez p0, :cond_5

    .line 88
    .line 89
    const/4 p0, -0x1

    .line 90
    iput p0, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_6

    .line 101
    .line 102
    iput v0, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    const/4 p0, 0x1

    .line 106
    iput p0, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 107
    .line 108
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    iput-object p0, p1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 117
    .line 118
    :cond_7
    return-void
.end method

.method public final getAccessibilityShortcutTimeout()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 14
    .line 15
    const-string v3, "accessibility_shortcut_dialog_shown"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string/jumbo v2, "skip_accessibility_shortcut_dialog_timeout_restriction"

    .line 28
    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 31
    .line 32
    invoke-static {v1, v2, v4, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    return-wide v0
.end method

.method public final getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$1;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v2, "hdmi_control"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$1;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 33
    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 35
    .line 36
    return-object p0
.end method

.method public final getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getMaxMultiPressPowerCount()I
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 8
    .line 9
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 21
    .line 22
    const/16 v2, 0x67

    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x5

    .line 27
    return p0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 29
    .line 30
    iget v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 31
    .line 32
    const/16 v3, 0x6a

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    const/4 p0, 0x4

    .line 39
    return p0

    .line 40
    :cond_2
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 52
    .line 53
    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 54
    .line 55
    const/16 v2, 0x66

    .line 56
    .line 57
    if-ne v0, v2, :cond_3

    .line 58
    .line 59
    const/4 p0, 0x3

    .line 60
    return p0

    .line 61
    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 62
    .line 63
    if-eqz v0, :cond_8

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 77
    .line 78
    const/16 v4, 0x68

    .line 79
    .line 80
    if-eq v0, v4, :cond_7

    .line 81
    .line 82
    :cond_4
    iget v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 83
    .line 84
    if-ne v0, v3, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    const/16 v0, 0x1a

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isQuickLaunchCameraEnabled(I)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    .line 101
    .line 102
    if-eqz p0, :cond_8

    .line 103
    .line 104
    iget p0, v2, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 105
    .line 106
    const/16 v0, 0x69

    .line 107
    .line 108
    if-ne p0, v0, :cond_8

    .line 109
    .line 110
    :cond_7
    :goto_0
    const/4 p0, 0x2

    .line 111
    return p0

    .line 112
    :cond_8
    return v1
.end method

.method public final getResolvedLongPressOnPowerBehavior()I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const-string v2, "com.sec.facuifunction.app.ui.UIHardKey"

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :cond_1
    sget-object p0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x3

    .line 43
    if-nez v0, :cond_9

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 55
    .line 56
    const/4 v3, 0x5

    .line 57
    const/4 v4, 0x1

    .line 58
    if-ne v0, v3, :cond_5

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v3, "device_provisioned"

    .line 67
    .line 68
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    return v4

    .line 76
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 77
    .line 78
    const/4 v3, 0x4

    .line 79
    if-ne v0, v3, :cond_8

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v3, -0x2

    .line 88
    const-string v5, "clockwork_long_press_to_assistant_enabled"

    .line 89
    .line 90
    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const-string v3, "WindowManager"

    .line 95
    .line 96
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    const-string v2, "longPressToAssistant = "

    .line 103
    .line 104
    invoke-static {v0, v2, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    if-ne v0, v4, :cond_7

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    return v1

    .line 111
    :cond_8
    :goto_2
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 112
    .line 113
    return p0

    .line 114
    :cond_9
    :goto_3
    return v2
.end method

.method public final getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string/jumbo v1, "statusbar"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 9
    .line 10
    :cond_0
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    return p1
.end method

.method public final getTelecommService()Landroid/telecom/TelecomManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "telecom"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 11
    .line 12
    return-object p0
.end method

.method public final goHome()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "WindowManager"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v0, "Not going home because user setup is in progress."

    .line 13
    .line 14
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    :try_start_0
    const-string/jumbo v4, "persist.sys.uts-test-mode"

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ne v4, v1, :cond_1

    .line 27
    .line 28
    const-string v4, "UTS-TEST-MODE"

    .line 29
    .line 30
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static {v2, v4}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    if-eqz v9, :cond_2

    .line 52
    .line 53
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v9, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    const/4 v14, 0x1

    .line 80
    const/4 v15, 0x0

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    const/16 v17, -0x2

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v12, 0x0

    .line 88
    const/4 v13, 0x0

    .line 89
    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-ne v2, v1, :cond_2

    .line 94
    .line 95
    return v3

    .line 96
    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v8, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    const/4 v13, 0x1

    .line 125
    const/4 v14, 0x0

    .line 126
    const/4 v15, 0x0

    .line 127
    const/16 v16, -0x2

    .line 128
    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v10, 0x0

    .line 131
    const/4 v11, 0x0

    .line 132
    const/4 v12, 0x0

    .line 133
    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 134
    .line 135
    .line 136
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    if-ne v0, v1, :cond_3

    .line 138
    .line 139
    return v3

    .line 140
    :catch_0
    :cond_3
    return v1
.end method

.method public final handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x1

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    move v2, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v2, v3

    .line 54
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 59
    .line 60
    const-string v7, "WindowManager"

    .line 61
    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 65
    .line 66
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 71
    .line 72
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    filled-new-array {v6, v8}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const-string v8, "handleHomeButton in display#%d mHomePressed = %b"

    .line 81
    .line 82
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_2
    const/4 v6, 0x3

    .line 90
    if-nez v2, :cond_b

    .line 91
    .line 92
    iget p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 93
    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 97
    .line 98
    iget-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-eqz p0, :cond_3

    .line 109
    .line 110
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 115
    .line 116
    if-eqz p0, :cond_3

    .line 117
    .line 118
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    :catch_0
    :cond_3
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 122
    .line 123
    if-eqz p0, :cond_4

    .line 124
    .line 125
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLongPressHomeSearcle()Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_4

    .line 134
    .line 135
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 138
    .line 139
    invoke-virtual {p0, v3, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZ)V

    .line 140
    .line 141
    .line 142
    :cond_4
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 143
    .line 144
    iget-boolean p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 145
    .line 146
    if-eqz p0, :cond_6

    .line 147
    .line 148
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 149
    .line 150
    :cond_5
    :goto_1
    move v3, v4

    .line 151
    goto/16 :goto_5

    .line 152
    .line 153
    :cond_6
    if-eqz v5, :cond_7

    .line 154
    .line 155
    const-string p0, "Ignoring HOME; event canceled."

    .line 156
    .line 157
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_7
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 162
    .line 163
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 164
    .line 165
    if-eqz p1, :cond_9

    .line 166
    .line 167
    const/4 v1, 0x2

    .line 168
    if-ne p1, v1, :cond_8

    .line 169
    .line 170
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 171
    .line 172
    if-eqz p0, :cond_9

    .line 173
    .line 174
    :cond_8
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 177
    .line 178
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    .line 182
    .line 183
    iput-object p2, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    .line 184
    .line 185
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 188
    .line 189
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 190
    .line 191
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    int-to-long v0, p2

    .line 196
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_9
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 205
    .line 206
    invoke-virtual {p0, v6, v6}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-eqz p0, :cond_a

    .line 211
    .line 212
    const-string/jumbo p0, "skip single press home, requestedSystemKey"

    .line 213
    .line 214
    .line 215
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    goto/16 :goto_5

    .line 219
    .line 220
    :cond_a
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 223
    .line 224
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    .line 225
    .line 226
    const/4 v1, 0x1

    .line 227
    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_b
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 235
    .line 236
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 237
    .line 238
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    if-eqz p1, :cond_e

    .line 243
    .line 244
    iget v2, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 245
    .line 246
    const/16 v5, 0x7d9

    .line 247
    .line 248
    if-eq v2, v5, :cond_18

    .line 249
    .line 250
    const/16 v5, 0x7f8

    .line 251
    .line 252
    if-ne v2, v5, :cond_c

    .line 253
    .line 254
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 255
    .line 256
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_c

    .line 261
    .line 262
    goto/16 :goto_5

    .line 263
    .line 264
    :cond_c
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 265
    .line 266
    array-length v5, v2

    .line 267
    move v8, v3

    .line 268
    :goto_2
    if-ge v8, v5, :cond_e

    .line 269
    .line 270
    aget v9, v2, v8

    .line 271
    .line 272
    iget v10, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 273
    .line 274
    if-ne v10, v9, :cond_d

    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_e
    if-nez v1, :cond_12

    .line 281
    .line 282
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 283
    .line 284
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 285
    .line 286
    if-eqz p0, :cond_f

    .line 287
    .line 288
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isLongPressHomeSearcle()Z

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    if-eqz p0, :cond_f

    .line 297
    .line 298
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 299
    .line 300
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 301
    .line 302
    invoke-virtual {p0, v4, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZ)V

    .line 303
    .line 304
    .line 305
    :cond_f
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    .line 306
    .line 307
    if-eqz p0, :cond_11

    .line 308
    .line 309
    const/4 p0, 0x0

    .line 310
    iput-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    .line 311
    .line 312
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 313
    .line 314
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 315
    .line 316
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    .line 320
    .line 321
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 322
    .line 323
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 324
    .line 325
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 326
    .line 327
    .line 328
    move-result p0

    .line 329
    if-eqz p0, :cond_10

    .line 330
    .line 331
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 332
    .line 333
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 334
    .line 335
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    .line 336
    .line 337
    const/4 v1, 0x2

    .line 338
    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    .line 343
    .line 344
    goto/16 :goto_4

    .line 345
    .line 346
    :cond_10
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 347
    .line 348
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 349
    .line 350
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    .line 351
    .line 352
    const/4 v1, 0x3

    .line 353
    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    .line 358
    .line 359
    goto/16 :goto_4

    .line 360
    .line 361
    :cond_11
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 362
    .line 363
    iget p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 364
    .line 365
    if-ne p1, v4, :cond_17

    .line 366
    .line 367
    iget p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 368
    .line 369
    if-nez p1, :cond_17

    .line 370
    .line 371
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 372
    .line 373
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    if-eqz p0, :cond_17

    .line 378
    .line 379
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 380
    .line 381
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 382
    .line 383
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 384
    .line 385
    if-eqz p0, :cond_17

    .line 386
    .line 387
    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    and-int/lit16 p1, p1, 0x80

    .line 396
    .line 397
    if-eqz p1, :cond_17

    .line 398
    .line 399
    if-nez p0, :cond_14

    .line 400
    .line 401
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 402
    .line 403
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 404
    .line 405
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 406
    .line 407
    const/4 p1, 0x4

    .line 408
    invoke-virtual {p0, v6, p1}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 409
    .line 410
    .line 411
    move-result p0

    .line 412
    if-eqz p0, :cond_13

    .line 413
    .line 414
    const-string/jumbo p0, "skip long press home, requestedSystemKey"

    .line 415
    .line 416
    .line 417
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    goto :goto_5

    .line 421
    :cond_13
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 422
    .line 423
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 424
    .line 425
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    .line 426
    .line 427
    const/4 v1, 0x4

    .line 428
    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    .line 433
    .line 434
    goto :goto_4

    .line 435
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    const-string p1, "keyguardOn, isShowing="

    .line 438
    .line 439
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 443
    .line 444
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const-string p1, " isInputRestricted="

    .line 452
    .line 453
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 457
    .line 458
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 459
    .line 460
    if-nez p1, :cond_15

    .line 461
    .line 462
    move p1, v3

    .line 463
    goto :goto_3

    .line 464
    :cond_15
    iget-object p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 465
    .line 466
    if-eqz p2, :cond_16

    .line 467
    .line 468
    iget-object v1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 469
    .line 470
    iget-object p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 471
    .line 472
    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 473
    .line 474
    iput-boolean p2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 475
    .line 476
    :cond_16
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 477
    .line 478
    iget-boolean p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 479
    .line 480
    :goto_3
    invoke-static {v7, p0, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 481
    .line 482
    .line 483
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 484
    .line 485
    if-eqz p0, :cond_17

    .line 486
    .line 487
    iget-boolean p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 488
    .line 489
    if-nez p0, :cond_17

    .line 490
    .line 491
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 492
    .line 493
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 494
    .line 495
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showingSearcleToastIfNeeded()V

    .line 496
    .line 497
    .line 498
    :catch_1
    :cond_17
    :goto_4
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 499
    .line 500
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 501
    .line 502
    invoke-virtual {p0, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 503
    .line 504
    .line 505
    move-result p0

    .line 506
    if-eqz p0, :cond_5

    .line 507
    .line 508
    const-string p0, "can dispatching home key event, requestedSystemKey"

    .line 509
    .line 510
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    :cond_18
    :goto_5
    return v3
.end method

.method public final handleKeyGesture(Landroid/view/KeyEvent;ZZI)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/16 v3, 0x19

    .line 8
    .line 9
    const/16 v4, 0x18

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eq v5, v4, :cond_0

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-ne v5, v3, :cond_1

    .line 25
    .line 26
    :cond_0
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 29
    .line 30
    .line 31
    return v10

    .line 32
    :cond_1
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const/4 v11, 0x1

    .line 43
    if-nez v7, :cond_2

    .line 44
    .line 45
    move v7, v11

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v7, v10

    .line 48
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual {v5, v6, v8, v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasRequestedActionBlockKeyEvent(IIZ)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    const/4 v6, -0x1

    .line 57
    if-eq v5, v6, :cond_3

    .line 58
    .line 59
    const-string v0, "WindowManager"

    .line 60
    .line 61
    const-string v1, "handleKeyGesture, blockKeyPolicy"

    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return v5

    .line 67
    :cond_3
    sget-object v5, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_KEY_COMBINATION_ALLOWLIST:Ljava/util/Set;

    .line 68
    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v5, Landroid/util/ArraySet;

    .line 78
    .line 79
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 86
    .line 87
    iget-object v7, v5, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v7

    .line 90
    :try_start_0
    invoke-virtual {v5, v1, v2}, Lcom/android/server/policy/KeyCombinationManager;->interceptKeyLocked(Landroid/view/KeyEvent;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-eqz v5, :cond_4

    .line 96
    .line 97
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 100
    .line 101
    .line 102
    const-string v5, "WindowManager"

    .line 103
    .line 104
    const-string v7, "handleKeyGesture, interceptKey"

    .line 105
    .line 106
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move v5, v11

    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    throw v0

    .line 114
    :cond_4
    move v5, v10

    .line 115
    :goto_1
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-nez v9, :cond_5

    .line 129
    .line 130
    move v9, v11

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    move v9, v10

    .line 133
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    iget-object v13, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 138
    .line 139
    if-eqz v9, :cond_6

    .line 140
    .line 141
    iput-boolean v10, v13, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 142
    .line 143
    :cond_6
    invoke-virtual {v7, v8, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInteractionControlEnabled(IZ)Z

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    const-string v15, "PhoneWindowManagerExt"

    .line 148
    .line 149
    const/4 v6, 0x2

    .line 150
    if-eqz v14, :cond_7

    .line 151
    .line 152
    const-string v3, "interceptKeyTq : Key was blocked by interaction control"

    .line 153
    .line 154
    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :goto_3
    move v4, v6

    .line 158
    :goto_4
    const/4 v3, -0x1

    .line 159
    goto :goto_5

    .line 160
    :cond_7
    if-eqz v5, :cond_9

    .line 161
    .line 162
    :cond_8
    move v4, v11

    .line 163
    goto :goto_4

    .line 164
    :cond_9
    iget-object v5, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 165
    .line 166
    invoke-virtual {v5, v8, v10, v10}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfoWithFocusedWindow(IIZ)Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_b

    .line 171
    .line 172
    const/16 v3, 0x1a

    .line 173
    .line 174
    if-ne v8, v3, :cond_8

    .line 175
    .line 176
    if-eqz v9, :cond_a

    .line 177
    .line 178
    iput-boolean v11, v13, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 179
    .line 180
    :cond_a
    const/4 v3, -0x1

    .line 181
    const/4 v4, -0x1

    .line 182
    goto :goto_5

    .line 183
    :cond_b
    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-nez v5, :cond_c

    .line 188
    .line 189
    const/16 v5, 0x83

    .line 190
    .line 191
    if-lt v8, v5, :cond_c

    .line 192
    .line 193
    const/16 v5, 0x8e

    .line 194
    .line 195
    if-gt v8, v5, :cond_c

    .line 196
    .line 197
    const-string v3, "Ignoring function key - device is not setup. ("

    .line 198
    .line 199
    const-string v4, ")"

    .line 200
    .line 201
    invoke-static {v8, v3, v4, v15}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_c
    if-eq v8, v3, :cond_d

    .line 206
    .line 207
    if-ne v8, v4, :cond_a

    .line 208
    .line 209
    :cond_d
    if-nez v12, :cond_e

    .line 210
    .line 211
    if-nez v9, :cond_a

    .line 212
    .line 213
    :cond_e
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 214
    .line 215
    if-eqz v3, :cond_a

    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_a

    .line 222
    .line 223
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManagerExt;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 224
    .line 225
    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/ProKioskManager;->getVolumeKeyAppState()Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_a

    .line 230
    .line 231
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :goto_5
    if-eq v4, v3, :cond_f

    .line 235
    .line 236
    const-string v0, "WindowManager"

    .line 237
    .line 238
    const-string v1, "handleKeyGesture, beforeInterceptKey policy="

    .line 239
    .line 240
    invoke-static {v4, v1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return v4

    .line 244
    :cond_f
    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 245
    .line 246
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    const-string v13, "SingleKeyGesture"

    .line 254
    .line 255
    const/high16 v14, 0x1000000

    .line 256
    .line 257
    if-nez v0, :cond_26

    .line 258
    .line 259
    iget v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 260
    .line 261
    if-eqz v0, :cond_10

    .line 262
    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eq v0, v3, :cond_11

    .line 268
    .line 269
    :cond_10
    xor-int/lit8 v0, v2, 0x1

    .line 270
    .line 271
    iput-boolean v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 272
    .line 273
    move/from16 v0, p3

    .line 274
    .line 275
    iput-boolean v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    .line 276
    .line 277
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 278
    .line 279
    .line 280
    move-result v15

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v2, "interceptKeyDown, info : "

    .line 284
    .line 285
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_12

    .line 305
    .line 306
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandleLongPressInfo:Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;

    .line 307
    .line 308
    iget v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->mKeyCode:I

    .line 309
    .line 310
    if-ne v15, v2, :cond_12

    .line 311
    .line 312
    const-string v2, "init HandleLongPressInfo"

    .line 313
    .line 314
    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$HandleLongPressInfo;->reset()V

    .line 318
    .line 319
    .line 320
    :cond_12
    iget v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 321
    .line 322
    if-ne v0, v15, :cond_14

    .line 323
    .line 324
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 325
    .line 326
    if-eqz v0, :cond_25

    .line 327
    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    and-int/lit16 v0, v0, 0x80

    .line 333
    .line 334
    if-eqz v0, :cond_25

    .line 335
    .line 336
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 337
    .line 338
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_25

    .line 343
    .line 344
    iget-boolean v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 345
    .line 346
    if-nez v0, :cond_25

    .line 347
    .line 348
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 349
    .line 350
    if-eqz v0, :cond_13

    .line 351
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v2, "Long press key "

    .line 355
    .line 356
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v15}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    :cond_13
    iput-boolean v11, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 374
    .line 375
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 376
    .line 377
    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    .line 379
    .line 380
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 381
    .line 382
    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    .line 384
    .line 385
    new-instance v8, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 386
    .line 387
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 388
    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    new-instance v5, Landroid/view/KeyEvent;

    .line 394
    .line 395
    invoke-direct {v5, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 396
    .line 397
    .line 398
    const/4 v3, 0x1

    .line 399
    const/4 v7, 0x1

    .line 400
    move-object v0, v8

    .line 401
    move-object v1, v2

    .line 402
    move v2, v15

    .line 403
    move/from16 v6, p4

    .line 404
    .line 405
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 406
    .line 407
    .line 408
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 409
    .line 410
    invoke-virtual {v0, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0, v11}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 415
    .line 416
    .line 417
    iget-object v1, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 418
    .line 419
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    .line 421
    .line 422
    goto/16 :goto_a

    .line 423
    .line 424
    :cond_14
    if-nez v0, :cond_15

    .line 425
    .line 426
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 427
    .line 428
    if-eqz v0, :cond_17

    .line 429
    .line 430
    iget v0, v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 431
    .line 432
    if-ne v15, v0, :cond_15

    .line 433
    .line 434
    goto :goto_6

    .line 435
    :cond_15
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 436
    .line 437
    if-eqz v0, :cond_16

    .line 438
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    const-string v2, "Press another key "

    .line 442
    .line 443
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-static {v15}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    :cond_16
    invoke-virtual {v12}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 461
    .line 462
    .line 463
    :cond_17
    :goto_6
    iput v15, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 464
    .line 465
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 466
    .line 467
    const-wide/16 v2, 0x0

    .line 468
    .line 469
    if-nez v0, :cond_1a

    .line 470
    .line 471
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mCustomRules:Landroid/util/SparseArray;

    .line 472
    .line 473
    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 478
    .line 479
    if-eqz v0, :cond_19

    .line 480
    .line 481
    iget v4, v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 482
    .line 483
    if-ne v15, v4, :cond_19

    .line 484
    .line 485
    sget-boolean v4, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 486
    .line 487
    if-eqz v4, :cond_18

    .line 488
    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    const-string v5, "Intercept key by rule "

    .line 492
    .line 493
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-static {v13, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    :cond_18
    iput-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 507
    .line 508
    :cond_19
    iput-wide v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 509
    .line 510
    :cond_1a
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 511
    .line 512
    if-nez v0, :cond_1b

    .line 513
    .line 514
    goto/16 :goto_a

    .line 515
    .line 516
    :cond_1b
    invoke-virtual {v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyDown(Landroid/view/KeyEvent;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 520
    .line 521
    .line 522
    move-result-wide v4

    .line 523
    iget-wide v7, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 524
    .line 525
    sub-long/2addr v4, v7

    .line 526
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 527
    .line 528
    .line 529
    move-result-wide v7

    .line 530
    iput-wide v7, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 531
    .line 532
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 533
    .line 534
    iget-wide v7, v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 535
    .line 536
    cmp-long v9, v7, v2

    .line 537
    .line 538
    if-eqz v9, :cond_1c

    .line 539
    .line 540
    goto :goto_7

    .line 541
    :cond_1c
    sget-wide v7, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 542
    .line 543
    :goto_7
    cmp-long v4, v4, v7

    .line 544
    .line 545
    if-ltz v4, :cond_1d

    .line 546
    .line 547
    iput v11, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 548
    .line 549
    goto :goto_8

    .line 550
    :cond_1d
    iget v4, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 551
    .line 552
    add-int/2addr v4, v11

    .line 553
    iput v4, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 554
    .line 555
    :goto_8
    iput-wide v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 556
    .line 557
    iget v4, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 558
    .line 559
    if-ne v4, v11, :cond_1e

    .line 560
    .line 561
    iput-wide v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    .line 562
    .line 563
    :cond_1e
    if-ne v4, v11, :cond_20

    .line 564
    .line 565
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    if-eqz v0, :cond_1f

    .line 570
    .line 571
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 572
    .line 573
    iget-object v3, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 574
    .line 575
    iget v5, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 576
    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    new-instance v7, Landroid/view/KeyEvent;

    .line 582
    .line 583
    invoke-direct {v7, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 584
    .line 585
    .line 586
    const/4 v9, 0x2

    .line 587
    move-object v2, v0

    .line 588
    move v4, v15

    .line 589
    move/from16 v8, p4

    .line 590
    .line 591
    invoke-direct/range {v2 .. v9}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 592
    .line 593
    .line 594
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 595
    .line 596
    invoke-virtual {v2, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v0, v11}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 601
    .line 602
    .line 603
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 604
    .line 605
    iget-object v3, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 606
    .line 607
    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    .line 608
    .line 609
    .line 610
    move-result-wide v3

    .line 611
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 612
    .line 613
    .line 614
    :cond_1f
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 615
    .line 616
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    if-eqz v0, :cond_25

    .line 621
    .line 622
    new-instance v8, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 623
    .line 624
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 625
    .line 626
    iget v3, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 627
    .line 628
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 629
    .line 630
    .line 631
    move-result v4

    .line 632
    new-instance v5, Landroid/view/KeyEvent;

    .line 633
    .line 634
    invoke-direct {v5, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 635
    .line 636
    .line 637
    const/4 v7, 0x0

    .line 638
    move-object v0, v8

    .line 639
    move-object v1, v2

    .line 640
    move v2, v15

    .line 641
    move/from16 v6, p4

    .line 642
    .line 643
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 644
    .line 645
    .line 646
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 647
    .line 648
    invoke-virtual {v0, v11, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-virtual {v0, v11}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 653
    .line 654
    .line 655
    iget-object v1, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 656
    .line 657
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 658
    .line 659
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    sget-wide v2, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    .line 663
    .line 664
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 665
    .line 666
    .line 667
    goto/16 :goto_a

    .line 668
    .line 669
    :cond_20
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 670
    .line 671
    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    .line 673
    .line 674
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 675
    .line 676
    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    .line 678
    .line 679
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 680
    .line 681
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 682
    .line 683
    .line 684
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    .line 685
    .line 686
    if-eqz v0, :cond_22

    .line 687
    .line 688
    and-int v0, p4, v14

    .line 689
    .line 690
    if-eqz v0, :cond_21

    .line 691
    .line 692
    move v0, v11

    .line 693
    goto :goto_9

    .line 694
    :cond_21
    move v0, v10

    .line 695
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 696
    .line 697
    .line 698
    move-result-wide v4

    .line 699
    if-nez v0, :cond_22

    .line 700
    .line 701
    iget-wide v7, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 702
    .line 703
    cmp-long v0, v7, v2

    .line 704
    .line 705
    if-eqz v0, :cond_22

    .line 706
    .line 707
    iget-wide v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 708
    .line 709
    const-wide/16 v7, 0x32

    .line 710
    .line 711
    add-long/2addr v2, v7

    .line 712
    cmp-long v0, v4, v2

    .line 713
    .line 714
    if-gez v0, :cond_22

    .line 715
    .line 716
    iget v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 717
    .line 718
    sub-int/2addr v0, v11

    .line 719
    iput v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 720
    .line 721
    const-string v0, "interceptKeyDown keyCode="

    .line 722
    .line 723
    const-string v2, ", mKeyReleaseTime("

    .line 724
    .line 725
    invoke-static {v15, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    iget-wide v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 730
    .line 731
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    const-string v2, ") -  eventTime("

    .line 735
    .line 736
    const-string v3, ")="

    .line 737
    .line 738
    invoke-static {v0, v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 739
    .line 740
    .line 741
    iget-wide v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 742
    .line 743
    sub-long/2addr v4, v2

    .line 744
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .line 753
    .line 754
    :cond_22
    iget v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 755
    .line 756
    if-le v0, v11, :cond_23

    .line 757
    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 759
    .line 760
    .line 761
    move-result-wide v2

    .line 762
    iput-wide v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    .line 763
    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    .line 765
    .line 766
    const-string v2, "Trigger multi press, mTriggeredMultiPressTime="

    .line 767
    .line 768
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    iget-wide v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mTriggeredMultiPressTime:J

    .line 772
    .line 773
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .line 782
    .line 783
    :cond_23
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 784
    .line 785
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    .line 786
    .line 787
    .line 788
    move-result v0

    .line 789
    if-le v0, v11, :cond_25

    .line 790
    .line 791
    iget v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 792
    .line 793
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 794
    .line 795
    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    .line 796
    .line 797
    .line 798
    move-result v2

    .line 799
    if-ne v0, v2, :cond_25

    .line 800
    .line 801
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 802
    .line 803
    if-eqz v0, :cond_24

    .line 804
    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    const-string v2, "Trigger multi press "

    .line 808
    .line 809
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 813
    .line 814
    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v2

    .line 818
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    const-string v2, " for it reached the max count "

    .line 822
    .line 823
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    iget v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 827
    .line 828
    invoke-static {v0, v2, v13}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 829
    .line 830
    .line 831
    :cond_24
    new-instance v8, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 832
    .line 833
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 834
    .line 835
    iget v3, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 836
    .line 837
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 838
    .line 839
    .line 840
    move-result v4

    .line 841
    new-instance v5, Landroid/view/KeyEvent;

    .line 842
    .line 843
    invoke-direct {v5, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 844
    .line 845
    .line 846
    const/4 v7, 0x0

    .line 847
    move-object v0, v8

    .line 848
    move-object v1, v2

    .line 849
    move v2, v15

    .line 850
    move v15, v6

    .line 851
    move/from16 v6, p4

    .line 852
    .line 853
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 854
    .line 855
    .line 856
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 857
    .line 858
    invoke-virtual {v0, v15, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    invoke-virtual {v0, v11}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 863
    .line 864
    .line 865
    iget-object v1, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 866
    .line 867
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 868
    .line 869
    .line 870
    :cond_25
    :goto_a
    move v0, v10

    .line 871
    goto/16 :goto_10

    .line 872
    .line 873
    :cond_26
    move v15, v6

    .line 874
    iput v10, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    .line 875
    .line 876
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 877
    .line 878
    if-nez v0, :cond_27

    .line 879
    .line 880
    goto :goto_a

    .line 881
    :cond_27
    iget-boolean v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 882
    .line 883
    if-nez v0, :cond_2a

    .line 884
    .line 885
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 886
    .line 887
    .line 888
    move-result-wide v2

    .line 889
    iget-wide v4, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 890
    .line 891
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 892
    .line 893
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    .line 894
    .line 895
    .line 896
    move-result-wide v6

    .line 897
    add-long/2addr v6, v4

    .line 898
    cmp-long v0, v2, v6

    .line 899
    .line 900
    if-gez v0, :cond_28

    .line 901
    .line 902
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 903
    .line 904
    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    .line 906
    .line 907
    goto :goto_b

    .line 908
    :cond_28
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 909
    .line 910
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    .line 911
    .line 912
    .line 913
    move-result v0

    .line 914
    iput-boolean v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 915
    .line 916
    :goto_b
    iget-wide v4, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 917
    .line 918
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 919
    .line 920
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    .line 922
    .line 923
    sget-wide v6, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    .line 924
    .line 925
    add-long/2addr v4, v6

    .line 926
    cmp-long v0, v2, v4

    .line 927
    .line 928
    if-gez v0, :cond_29

    .line 929
    .line 930
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 931
    .line 932
    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    .line 934
    .line 935
    goto :goto_c

    .line 936
    :cond_29
    iget-boolean v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 937
    .line 938
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 939
    .line 940
    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    .line 941
    .line 942
    .line 943
    move-result v2

    .line 944
    iget-boolean v3, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 945
    .line 946
    or-int/2addr v2, v3

    .line 947
    or-int/2addr v0, v2

    .line 948
    iput-boolean v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 949
    .line 950
    :cond_2a
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 951
    .line 952
    .line 953
    move-result v0

    .line 954
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 955
    .line 956
    iget v3, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 957
    .line 958
    if-ne v0, v3, :cond_2b

    .line 959
    .line 960
    invoke-virtual {v2, v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyUp(Landroid/view/KeyEvent;)V

    .line 961
    .line 962
    .line 963
    :cond_2b
    iget-boolean v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 964
    .line 965
    const/4 v9, 0x0

    .line 966
    if-nez v0, :cond_34

    .line 967
    .line 968
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    if-eqz v0, :cond_2c

    .line 973
    .line 974
    move v0, v10

    .line 975
    move-object v10, v9

    .line 976
    goto/16 :goto_f

    .line 977
    .line 978
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 979
    .line 980
    .line 981
    move-result v0

    .line 982
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 983
    .line 984
    iget v2, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 985
    .line 986
    if-ne v0, v2, :cond_33

    .line 987
    .line 988
    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 989
    .line 990
    iget-object v3, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 991
    .line 992
    iget v4, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 993
    .line 994
    iget v5, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 995
    .line 996
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 997
    .line 998
    .line 999
    move-result v6

    .line 1000
    new-instance v7, Landroid/view/KeyEvent;

    .line 1001
    .line 1002
    invoke-direct {v7, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1003
    .line 1004
    .line 1005
    const/16 v16, 0x0

    .line 1006
    .line 1007
    move-object v2, v0

    .line 1008
    move/from16 v8, p4

    .line 1009
    .line 1010
    move-object v10, v9

    .line 1011
    move/from16 v9, v16

    .line 1012
    .line 1013
    invoke-direct/range {v2 .. v9}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 1014
    .line 1015
    .line 1016
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1017
    .line 1018
    const/4 v3, 0x3

    .line 1019
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    invoke-virtual {v0, v11}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1024
    .line 1025
    .line 1026
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1027
    .line 1028
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1029
    .line 1030
    .line 1031
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1032
    .line 1033
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    .line 1034
    .line 1035
    .line 1036
    move-result v0

    .line 1037
    if-ne v0, v11, :cond_2f

    .line 1038
    .line 1039
    sget-boolean v0, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 1040
    .line 1041
    if-eqz v0, :cond_2d

    .line 1042
    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    const-string/jumbo v2, "press key "

    .line 1046
    .line 1047
    .line 1048
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1052
    .line 1053
    .line 1054
    move-result v2

    .line 1055
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v2

    .line 1059
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v0

    .line 1066
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    .line 1068
    .line 1069
    :cond_2d
    new-instance v8, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 1070
    .line 1071
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1072
    .line 1073
    iget v3, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1074
    .line 1075
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 1076
    .line 1077
    .line 1078
    move-result v4

    .line 1079
    new-instance v5, Landroid/view/KeyEvent;

    .line 1080
    .line 1081
    invoke-direct {v5, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1082
    .line 1083
    .line 1084
    const/4 v6, 0x1

    .line 1085
    const/4 v7, 0x0

    .line 1086
    move-object v0, v8

    .line 1087
    move-object v1, v2

    .line 1088
    move v2, v3

    .line 1089
    move v3, v6

    .line 1090
    move/from16 v6, p4

    .line 1091
    .line 1092
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 1093
    .line 1094
    .line 1095
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1096
    .line 1097
    invoke-virtual {v0, v15, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-virtual {v0, v11}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1102
    .line 1103
    .line 1104
    iget-object v1, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1105
    .line 1106
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1107
    .line 1108
    .line 1109
    iput-object v10, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1110
    .line 1111
    :cond_2e
    :goto_d
    const/4 v0, 0x0

    .line 1112
    goto/16 :goto_10

    .line 1113
    .line 1114
    :cond_2f
    and-int v0, p4, v14

    .line 1115
    .line 1116
    if-eqz v0, :cond_30

    .line 1117
    .line 1118
    move v0, v11

    .line 1119
    goto :goto_e

    .line 1120
    :cond_30
    const/4 v0, 0x0

    .line 1121
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 1122
    .line 1123
    .line 1124
    move-result-wide v2

    .line 1125
    iget-wide v4, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastDownTime:J

    .line 1126
    .line 1127
    sub-long/2addr v2, v4

    .line 1128
    if-nez v0, :cond_31

    .line 1129
    .line 1130
    const-wide/16 v4, 0x12c

    .line 1131
    .line 1132
    cmp-long v4, v2, v4

    .line 1133
    .line 1134
    if-lez v4, :cond_31

    .line 1135
    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    const-string/jumbo v4, "multi-press key "

    .line 1139
    .line 1140
    .line 1141
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1145
    .line 1146
    .line 1147
    move-result v4

    .line 1148
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    .line 1150
    .line 1151
    const-string v4, " count="

    .line 1152
    .line 1153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    iget v4, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1157
    .line 1158
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    const-string v4, " longInterval="

    .line 1162
    .line 1163
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v0

    .line 1173
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    .line 1175
    .line 1176
    new-instance v8, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 1177
    .line 1178
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1179
    .line 1180
    iget v3, v2, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1181
    .line 1182
    iget v4, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1183
    .line 1184
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 1185
    .line 1186
    .line 1187
    move-result v5

    .line 1188
    new-instance v6, Landroid/view/KeyEvent;

    .line 1189
    .line 1190
    invoke-direct {v6, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1191
    .line 1192
    .line 1193
    const/4 v7, 0x0

    .line 1194
    move-object v0, v8

    .line 1195
    move-object v1, v2

    .line 1196
    move v2, v3

    .line 1197
    move v3, v4

    .line 1198
    move v4, v5

    .line 1199
    move-object v5, v6

    .line 1200
    move/from16 v6, p4

    .line 1201
    .line 1202
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 1203
    .line 1204
    .line 1205
    iget-object v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1206
    .line 1207
    invoke-virtual {v0, v15, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    invoke-virtual {v0, v11}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1212
    .line 1213
    .line 1214
    iget-object v1, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1215
    .line 1216
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1217
    .line 1218
    .line 1219
    iput-object v10, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1220
    .line 1221
    goto :goto_d

    .line 1222
    :cond_31
    iget v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1223
    .line 1224
    iget-object v3, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1225
    .line 1226
    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    .line 1227
    .line 1228
    .line 1229
    move-result v3

    .line 1230
    if-ge v2, v3, :cond_32

    .line 1231
    .line 1232
    new-instance v10, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 1233
    .line 1234
    iget-object v3, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1235
    .line 1236
    iget v4, v3, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1237
    .line 1238
    iget v5, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1239
    .line 1240
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 1241
    .line 1242
    .line 1243
    move-result v6

    .line 1244
    new-instance v7, Landroid/view/KeyEvent;

    .line 1245
    .line 1246
    invoke-direct {v7, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 1247
    .line 1248
    .line 1249
    const/4 v9, 0x0

    .line 1250
    move-object v2, v10

    .line 1251
    move/from16 v8, p4

    .line 1252
    .line 1253
    invoke-direct/range {v2 .. v9}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;IIILandroid/view/KeyEvent;II)V

    .line 1254
    .line 1255
    .line 1256
    iget-object v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1257
    .line 1258
    invoke-virtual {v2, v15, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v2

    .line 1262
    invoke-virtual {v2, v11}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1263
    .line 1264
    .line 1265
    iget-object v3, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    .line 1266
    .line 1267
    sget-wide v4, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    .line 1268
    .line 1269
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1270
    .line 1271
    .line 1272
    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 1273
    .line 1274
    .line 1275
    move-result-wide v2

    .line 1276
    iput-wide v2, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mLastUpTime:J

    .line 1277
    .line 1278
    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SKIP_TOO_FAST_DOUBLE_PRESS:Z

    .line 1279
    .line 1280
    if-eqz v2, :cond_2e

    .line 1281
    .line 1282
    if-nez v0, :cond_2e

    .line 1283
    .line 1284
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 1285
    .line 1286
    .line 1287
    move-result-wide v0

    .line 1288
    iput-wide v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyReleaseTime:J

    .line 1289
    .line 1290
    goto/16 :goto_d

    .line 1291
    .line 1292
    :cond_33
    invoke-virtual {v12}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 1293
    .line 1294
    .line 1295
    goto/16 :goto_d

    .line 1296
    .line 1297
    :cond_34
    move-object v10, v9

    .line 1298
    const/4 v0, 0x0

    .line 1299
    :goto_f
    iput-boolean v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    .line 1300
    .line 1301
    iput v0, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1302
    .line 1303
    iput-object v10, v12, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1304
    .line 1305
    :goto_10
    return v0
.end method

.method public final handleShortPressOnHome(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->HOME:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    const-string/jumbo v0, "short press on home"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final hideRecentApps(IZZ)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 25
    .line 26
    iget-object p1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter p1

    .line 31
    :try_start_0
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    :try_start_1
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    .line 58
    .line 59
    invoke-interface {p0, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    :try_start_2
    const-string p0, "StatusBarManagerService"

    .line 66
    .line 67
    const-string p2, "RemoteException for HIDE_RECENT_APPS"

    .line 68
    .line 69
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_0
    :goto_0
    monitor-exit p1

    .line 73
    goto :goto_2

    .line 74
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_1
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 77
    .line 78
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 81
    .line 82
    if-eqz p0, :cond_2

    .line 83
    .line 84
    :try_start_3
    invoke-interface {p0, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 85
    .line 86
    .line 87
    :catch_1
    :cond_2
    :goto_2
    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1

    .line 196
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    .line 2
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 3
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 4
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 5
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 6
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 8
    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 9
    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 10
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/input/InputManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 11
    const-class v3, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/InputManagerService$LocalService;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 12
    const-class v3, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/dreams/DreamManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 13
    const-class v3, Landroid/os/PowerManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 14
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 15
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorPrivacyManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 16
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 17
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 18
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 19
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 20
    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 21
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.leanback"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 22
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 23
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.hdmi.cec"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 24
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 25
    new-instance v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {v6, v3, v4, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 26
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 27
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    .line 28
    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

    .line 29
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 30
    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 31
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 32
    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 33
    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 34
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 35
    const-string v5, "ScreenOff"

    invoke-direct {v4, v3, v5}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 36
    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 37
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111028e

    .line 38
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    const v4, 0x111028c

    .line 39
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    const v4, 0x111028d

    .line 40
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    .line 41
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110169

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 42
    const-string/jumbo v4, "persist.debug.force_burn_in"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v6, -0x1

    if-nez v3, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    if-eqz v4, :cond_2

    .line 43
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    const/4 v4, -0x8

    const/16 v7, 0x8

    const/4 v8, -0x4

    move/from16 v16, v3

    move v12, v4

    move v14, v12

    move v13, v7

    move v15, v8

    goto :goto_1

    .line 44
    :cond_2
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0052

    .line 45
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v7, 0x10e004f

    .line 46
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v8, 0x10e0053

    .line 47
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x10e0051

    .line 48
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const v10, 0x10e0050

    .line 49
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move/from16 v16, v3

    move v12, v4

    move v13, v7

    move v14, v8

    move v15, v9

    .line 50
    :goto_1
    new-instance v3, Lcom/android/server/policy/BurnInProtectionHelper;

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 51
    :cond_3
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 52
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    .line 53
    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 54
    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, v7, v3}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 55
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 56
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 57
    const-string v7, "end_button_behavior"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 58
    const-string v7, "incall_power_button_behavior"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 59
    const-string v7, "incall_back_button_behavior"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 60
    const-string/jumbo v7, "wake_gesture_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 61
    const-string/jumbo v7, "screen_off_timeout"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 62
    const-string v7, "default_input_method"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 63
    const-string/jumbo v7, "volume_hush_gesture"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 64
    const-string/jumbo v7, "system_navigation_keys_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 65
    const-string/jumbo v7, "power_button_short_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    const-string/jumbo v7, "power_button_double_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    const-string/jumbo v7, "power_button_triple_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 68
    const-string/jumbo v7, "power_button_long_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    const-string/jumbo v7, "power_button_long_press_duration_ms"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 70
    const-string/jumbo v7, "power_button_very_long_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 71
    const-string/jumbo v7, "stem_primary_button_short_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 72
    const-string/jumbo v7, "stem_primary_button_double_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 73
    const-string/jumbo v7, "stem_primary_button_triple_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    const-string/jumbo v7, "stem_primary_button_long_press"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 75
    const-string v7, "key_chord_power_volume_up"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    const-string/jumbo v7, "power_button_suppression_delay_after_gesture_wake"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 77
    const-string/jumbo v7, "stylus_buttons_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 78
    const-string/jumbo v7, "nav_bar_kids_mode"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    .line 80
    new-instance v4, Lcom/android/server/policy/ModifierShortcutManager;

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {v4, v6, v7, v8}, Lcom/android/server/policy/ModifierShortcutManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    .line 81
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e0080

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 82
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 83
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v7, 0x10200000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x111016a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 86
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 87
    const-string v8, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 90
    const-string v8, "android.intent.category.DESK_DOCK"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 93
    const-string v3, "android.intent.category.VR_HOME"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    const-string v4, "PhoneWindowManager.mBroadcastWakeLock"

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 99
    const-string/jumbo v3, "ro.debuggable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    .line 100
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 101
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 102
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 103
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110245

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 104
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110248

    .line 106
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    .line 107
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 108
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 109
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 110
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0166

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 111
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040348

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 114
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    if-eqz v3, :cond_4

    .line 115
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x10e0119

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 116
    :cond_4
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040397

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    .line 119
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e014b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 120
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111022b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    .line 121
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 122
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    move v3, v6

    goto :goto_2

    :cond_5
    move v3, v5

    :goto_2
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 123
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x11101ad

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 124
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10e0171

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v7, v3

    iput-wide v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    .line 125
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10e0146

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyBehavior:I

    .line 126
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10403af

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 130
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal;

    .line 132
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    .line 133
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/hardware/display/DisplayManagerInternal;

    .line 134
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040358

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 135
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    .line 136
    :cond_6
    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_3
    move-object v11, v2

    goto :goto_5

    .line 137
    :cond_7
    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3

    .line 138
    :goto_5
    new-instance v2, Lcom/android/server/policy/DisplayFoldController;

    .line 139
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/server/policy/DisplayFoldController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;Landroid/graphics/Rect;Landroid/os/Handler;)V

    .line 140
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    .line 141
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 142
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 149
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const-string v7, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 150
    iput v2, v3, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 151
    :cond_8
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 154
    new-instance v2, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {v2, v3, v7}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/Vibrator;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    .line 156
    new-instance v2, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 157
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    .line 158
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 160
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_9

    .line 161
    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(II)V

    .line 162
    invoke-virtual {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(II)V

    .line 163
    :cond_9
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v3, v0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 164
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    .line 165
    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v4, v1}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 166
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 167
    new-instance v2, Lcom/android/server/policy/TalkbackShortcutController;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/policy/TalkbackShortcutController;-><init>(Landroid/content/Context;)V

    .line 168
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    .line 169
    new-instance v2, Lcom/android/server/policy/WindowWakeUpPolicy;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    .line 170
    sget-object v3, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {v2, v1, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;-><init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V

    .line 171
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    .line 173
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 174
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 175
    new-instance v4, Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-direct {v4, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;-><init>(Landroid/os/Looper;)V

    .line 176
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x10e00b6

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v7, v1

    sput-wide v7, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    .line 177
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    .line 178
    sput-object v3, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 179
    sget-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    sput-wide v1, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultMultiPressTimeout:J

    .line 180
    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 181
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v4, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 182
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 183
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 184
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    if-eq v3, v6, :cond_a

    goto :goto_6

    .line 185
    :cond_a
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {v3}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_7

    .line 186
    :cond_b
    :goto_6
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    if-nez v2, :cond_d

    if-eqz v1, :cond_e

    .line 187
    :cond_d
    :goto_7
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    .line 188
    :cond_e
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    .line 189
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    .line 191
    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 192
    new-instance v5, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;)V

    .line 193
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 194
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 195
    throw v1
.end method

.method public final initKeyCombinationRules()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/policy/KeyCombinationManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;Lcom/android/server/input/InputManagerService$LocalService;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x1110183

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v4, Lcom/android/server/policy/PhoneWindowManagerExt$5;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-direct {v4, v1, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$5;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Lcom/android/server/policy/PhoneWindowManagerExt$5;

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    invoke-direct {v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$5;-><init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 58
    .line 59
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    .line 60
    .line 61
    const/4 v2, 0x3

    .line 62
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 73
    .line 74
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 84
    .line 85
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    .line 86
    .line 87
    const/4 v2, 0x4

    .line 88
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 92
    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 99
    .line 100
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 110
    .line 111
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    .line 112
    .line 113
    const/4 v2, 0x2

    .line 114
    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    return-void
.end method

.method public final initializeHdmiStateInternal()V
    .locals 9

    .line 1
    const-string v0, "WindowManager"

    .line 2
    .line 3
    const-string v1, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    .line 4
    .line 5
    const-string v2, "/sys/devices/virtual/switch/hdmi/state"

    .line 6
    .line 7
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Lcom/android/server/policy/PhoneWindowManager$2;

    .line 16
    .line 17
    const-string v5, "DEVPATH=/devices/virtual/switch/hdmi"

    .line 18
    .line 19
    invoke-virtual {v2, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    .line 24
    .line 25
    const-string v6, "/sys/class/switch/hdmi/state"

    .line 26
    .line 27
    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .line 29
    .line 30
    const/16 v2, 0xf

    .line 31
    .line 32
    :try_start_1
    new-array v2, v2, [C

    .line 33
    .line 34
    invoke-virtual {v5, v2}, Ljava/io/FileReader;->read([C)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-le v6, v3, :cond_0

    .line 39
    .line 40
    new-instance v7, Ljava/lang/String;

    .line 41
    .line 42
    sub-int/2addr v6, v3

    .line 43
    invoke-direct {v7, v2, v4, v6}, Ljava/lang/String;-><init>([CII)V

    .line 44
    .line 45
    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    move v4, v3

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    move-object v2, v5

    .line 56
    goto :goto_3

    .line 57
    :catch_0
    move-exception v2

    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-exception v2

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_3

    .line 67
    :catch_2
    move-exception v5

    .line 68
    move-object v8, v5

    .line 69
    move-object v5, v2

    .line 70
    move-object v2, v8

    .line 71
    goto :goto_1

    .line 72
    :catch_3
    move-exception v5

    .line 73
    move-object v8, v5

    .line 74
    move-object v5, v2

    .line 75
    move-object v2, v8

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .line 109
    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :goto_3
    if-eqz v2, :cond_1

    .line 114
    .line 115
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 116
    .line 117
    .line 118
    :catch_4
    :cond_1
    throw p0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mDrmEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 122
    .line 123
    const-string/jumbo v1, "mdss_mdp/drm/card"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mExtEventObserver:Lcom/android/server/policy/PhoneWindowManagerExt$10;

    .line 132
    .line 133
    const-string v1, "displayport/extcon/extcon"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :catch_5
    :cond_3
    :goto_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 139
    .line 140
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final injectBackGesture(J)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    new-instance v14, Landroid/view/KeyEvent;

    .line 3
    .line 4
    const/16 v12, 0x48

    .line 5
    .line 6
    const/16 v13, 0x101

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x4

    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v10, -0x1

    .line 13
    const/4 v11, 0x0

    .line 14
    move-object v1, v14

    .line 15
    move-wide/from16 v2, p1

    .line 16
    .line 17
    move-wide/from16 v4, p1

    .line 18
    .line 19
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v14, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {v14, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v14}, Landroid/view/KeyEvent;->recycle()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 34

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v1, p3

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    .line 11
    .line 12
    move-result v10

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 18
    .line 19
    .line 20
    move-result v11

    .line 21
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    sget-object v4, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 26
    .line 27
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v4, Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    :cond_0
    const-string v4, "WindowManager"

    .line 40
    .line 41
    const-string v5, "interceptKeyTi keyCode="

    .line 42
    .line 43
    const-string v6, " action="

    .line 44
    .line 45
    invoke-static {v10, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v6, " repeatCount="

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v6, " keyguardOn="

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, " canceled="

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v4, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 100
    .line 101
    invoke-virtual {v4, v8}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    const-wide/16 v12, -0x1

    .line 106
    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    return-wide v12

    .line 110
    :cond_2
    and-int/lit16 v3, v3, 0x400

    .line 111
    .line 112
    const-wide/16 v14, 0x0

    .line 113
    .line 114
    if-nez v3, :cond_7

    .line 115
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    iget-object v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    sget-object v6, Lcom/android/server/policy/KeyCombinationManager;->KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;

    .line 126
    .line 127
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v6, Landroid/util/ArraySet;

    .line 132
    .line 133
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    :goto_0
    move-wide v5, v14

    .line 140
    goto :goto_2

    .line 141
    :cond_3
    iget-object v2, v5, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    .line 142
    .line 143
    monitor-enter v2

    .line 144
    :try_start_0
    iget-object v6, v5, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 145
    .line 146
    invoke-virtual {v6, v10}, Landroid/util/SparseLongArray;->get(I)J

    .line 147
    .line 148
    .line 149
    move-result-wide v17

    .line 150
    cmp-long v6, v17, v14

    .line 151
    .line 152
    if-nez v6, :cond_4

    .line 153
    .line 154
    monitor-exit v2

    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    iget-object v6, v5, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v19

    .line 168
    if-eqz v19, :cond_6

    .line 169
    .line 170
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v19

    .line 174
    move-object/from16 v9, v19

    .line 175
    .line 176
    check-cast v9, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 177
    .line 178
    invoke-virtual {v9, v10}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    .line 179
    .line 180
    .line 181
    move-result v19

    .line 182
    if-eqz v19, :cond_5

    .line 183
    .line 184
    invoke-virtual {v9}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->getKeyInterceptDelayMs()J

    .line 185
    .line 186
    .line 187
    move-result-wide v12

    .line 188
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 189
    .line 190
    .line 191
    move-result-wide v14

    .line 192
    :cond_5
    const-wide/16 v12, -0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_6
    const-wide/16 v12, 0x96

    .line 196
    .line 197
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 198
    .line 199
    .line 200
    move-result-wide v12

    .line 201
    iget-object v5, v5, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 202
    .line 203
    invoke-virtual {v5, v10}, Landroid/util/SparseLongArray;->get(I)J

    .line 204
    .line 205
    .line 206
    move-result-wide v5

    .line 207
    add-long/2addr v5, v12

    .line 208
    monitor-exit v2

    .line 209
    :goto_2
    cmp-long v2, v3, v5

    .line 210
    .line 211
    if-gez v2, :cond_7

    .line 212
    .line 213
    sub-long/2addr v5, v3

    .line 214
    return-wide v5

    .line 215
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    throw v0

    .line 217
    :cond_7
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 218
    .line 219
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Ljava/util/Set;

    .line 224
    .line 225
    if-nez v2, :cond_8

    .line 226
    .line 227
    new-instance v2, Ljava/util/HashSet;

    .line 228
    .line 229
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 230
    .line 231
    .line 232
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 233
    .line 234
    invoke-virtual {v3, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_8
    move-object v9, v2

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 247
    .line 248
    .line 249
    move-result v13

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-nez v4, :cond_9

    .line 259
    .line 260
    const/4 v4, 0x1

    .line 261
    goto :goto_4

    .line 262
    :cond_9
    const/4 v4, 0x0

    .line 263
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    iget-object v14, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 268
    .line 269
    invoke-virtual {v14, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDisplayId(Landroid/view/KeyEvent;)I

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 274
    .line 275
    .line 276
    move-result v15

    .line 277
    if-eqz v4, :cond_a

    .line 278
    .line 279
    if-nez v13, :cond_a

    .line 280
    .line 281
    const/16 v19, 0x1

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_a
    const/16 v19, 0x0

    .line 285
    .line 286
    :goto_5
    iget-boolean v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 287
    .line 288
    if-eqz v5, :cond_b

    .line 289
    .line 290
    invoke-static {v12}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-nez v5, :cond_b

    .line 295
    .line 296
    const/4 v5, 0x0

    .line 297
    iput-boolean v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 298
    .line 299
    :cond_b
    iget-boolean v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 300
    .line 301
    if-eqz v5, :cond_c

    .line 302
    .line 303
    invoke-static {v12}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-nez v5, :cond_c

    .line 308
    .line 309
    invoke-static {v12}, Landroid/view/KeyEvent;->isAltKey(I)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-nez v5, :cond_c

    .line 314
    .line 315
    const/4 v5, 0x0

    .line 316
    iput-boolean v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 317
    .line 318
    :cond_c
    iget-object v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 319
    .line 320
    move-object/from16 v25, v9

    .line 321
    .line 322
    move/from16 v24, v10

    .line 323
    .line 324
    invoke-virtual {v5, v0, v8, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v9

    .line 328
    const-wide/16 v21, -0x1

    .line 329
    .line 330
    cmp-long v5, v9, v21

    .line 331
    .line 332
    if-ltz v5, :cond_e

    .line 333
    .line 334
    const-string v0, "WindowManager"

    .line 335
    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v2, "interceptKeyTi interceptKeyResult="

    .line 339
    .line 340
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    if-nez v5, :cond_d

    .line 354
    .line 355
    const/16 v23, 0x1

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_d
    const/16 v23, 0x0

    .line 359
    .line 360
    :goto_6
    move/from16 v27, v11

    .line 361
    .line 362
    move/from16 v5, v23

    .line 363
    .line 364
    :goto_7
    const-wide/16 v9, 0x0

    .line 365
    .line 366
    goto/16 :goto_38

    .line 367
    .line 368
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_25

    .line 373
    .line 374
    if-nez v2, :cond_25

    .line 375
    .line 376
    iget-object v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 377
    .line 378
    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-nez v5, :cond_25

    .line 383
    .line 384
    iget-object v5, v7, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    .line 385
    .line 386
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 390
    .line 391
    .line 392
    move-result v26

    .line 393
    if-eqz v26, :cond_f

    .line 394
    .line 395
    goto/16 :goto_14

    .line 396
    .line 397
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 398
    .line 399
    .line 400
    move-result v10

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    move/from16 v27, v11

    .line 406
    .line 407
    const/16 v11, 0x54

    .line 408
    .line 409
    if-ne v9, v11, :cond_12

    .line 410
    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-nez v9, :cond_10

    .line 416
    .line 417
    const/4 v9, 0x1

    .line 418
    iput-boolean v9, v5, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 419
    .line 420
    const/4 v9, 0x0

    .line 421
    iput-boolean v9, v5, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_10
    const/4 v9, 0x0

    .line 425
    iput-boolean v9, v5, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 426
    .line 427
    iget-boolean v10, v5, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 428
    .line 429
    if-eqz v10, :cond_11

    .line 430
    .line 431
    iput-boolean v9, v5, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 432
    .line 433
    goto/16 :goto_13

    .line 434
    .line 435
    :cond_11
    :goto_8
    move/from16 v31, v2

    .line 436
    .line 437
    move/from16 v29, v3

    .line 438
    .line 439
    move/from16 v30, v6

    .line 440
    .line 441
    goto/16 :goto_15

    .line 442
    .line 443
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 444
    .line 445
    .line 446
    move-result v11

    .line 447
    if-eqz v11, :cond_13

    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    .line 451
    .line 452
    .line 453
    move-result-object v11

    .line 454
    iget-object v1, v5, Lcom/android/server/policy/ModifierShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 455
    .line 456
    move/from16 v28, v15

    .line 457
    .line 458
    const-string/jumbo v15, "startActivity shortcut, keyCode="

    .line 459
    .line 460
    .line 461
    move/from16 v29, v3

    .line 462
    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    move/from16 v30, v6

    .line 468
    .line 469
    iget-boolean v6, v5, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 470
    .line 471
    move/from16 v31, v2

    .line 472
    .line 473
    const-string v2, "ModifierShortcutManager"

    .line 474
    .line 475
    if-eqz v6, :cond_15

    .line 476
    .line 477
    invoke-virtual {v11, v3}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    if-eqz v6, :cond_14

    .line 482
    .line 483
    const/4 v6, 0x1

    .line 484
    iput-boolean v6, v5, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 485
    .line 486
    const/4 v6, 0x0

    .line 487
    iput-boolean v6, v5, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 488
    .line 489
    move v6, v10

    .line 490
    :goto_9
    move/from16 v32, v14

    .line 491
    .line 492
    const/4 v14, 0x1

    .line 493
    goto :goto_a

    .line 494
    :cond_14
    move/from16 v32, v14

    .line 495
    .line 496
    goto/16 :goto_12

    .line 497
    .line 498
    :cond_15
    const/high16 v6, 0x70000

    .line 499
    .line 500
    and-int/2addr v6, v10

    .line 501
    if-eqz v6, :cond_1c

    .line 502
    .line 503
    const v6, -0x70001

    .line 504
    .line 505
    .line 506
    and-int/2addr v6, v10

    .line 507
    goto :goto_9

    .line 508
    :goto_a
    invoke-static {v6, v14}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 509
    .line 510
    .line 511
    move-result v33

    .line 512
    if-nez v33, :cond_16

    .line 513
    .line 514
    invoke-static {v6}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 515
    .line 516
    .line 517
    move-result v14

    .line 518
    if-nez v14, :cond_16

    .line 519
    .line 520
    const/4 v0, 0x0

    .line 521
    goto :goto_e

    .line 522
    :cond_16
    if-eqz v33, :cond_17

    .line 523
    .line 524
    iget-object v14, v5, Lcom/android/server/policy/ModifierShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 525
    .line 526
    goto :goto_b

    .line 527
    :cond_17
    iget-object v14, v5, Lcom/android/server/policy/ModifierShortcutManager;->mIntentShortcuts:Landroid/util/SparseArray;

    .line 528
    .line 529
    :goto_b
    invoke-virtual {v11, v3, v6}, Landroid/view/KeyCharacterMap;->get(II)I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-eqz v0, :cond_18

    .line 534
    .line 535
    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    check-cast v0, Landroid/content/Intent;

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :cond_18
    const/4 v0, 0x0

    .line 543
    :goto_c
    if-nez v0, :cond_1a

    .line 544
    .line 545
    invoke-virtual {v11, v3}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    .line 546
    .line 547
    .line 548
    move-result v11

    .line 549
    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    .line 550
    .line 551
    .line 552
    move-result v11

    .line 553
    if-eqz v11, :cond_1a

    .line 554
    .line 555
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    check-cast v0, Landroid/content/Intent;

    .line 560
    .line 561
    if-nez v0, :cond_1a

    .line 562
    .line 563
    if-eqz v33, :cond_19

    .line 564
    .line 565
    iget-object v14, v5, Lcom/android/server/policy/ModifierShortcutManager;->mShiftRoleShortcuts:Landroid/util/SparseArray;

    .line 566
    .line 567
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v11

    .line 571
    check-cast v11, Ljava/lang/String;

    .line 572
    .line 573
    goto :goto_d

    .line 574
    :cond_19
    iget-object v14, v5, Lcom/android/server/policy/ModifierShortcutManager;->mRoleShortcuts:Landroid/util/SparseArray;

    .line 575
    .line 576
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v11

    .line 580
    check-cast v11, Ljava/lang/String;

    .line 581
    .line 582
    :goto_d
    if-eqz v11, :cond_1a

    .line 583
    .line 584
    invoke-virtual {v5, v11}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    :cond_1a
    :goto_e
    if-eqz v0, :cond_1b

    .line 589
    .line 590
    const/high16 v11, 0x10000000

    .line 591
    .line 592
    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 593
    .line 594
    .line 595
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v6, " intent="

    .line 604
    .line 605
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    .line 620
    .line 621
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    .line 622
    .line 623
    .line 624
    iget-object v1, v5, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 625
    .line 626
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 627
    .line 628
    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 629
    .line 630
    .line 631
    goto :goto_f

    .line 632
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    const-string v4, "Dropping shortcut key combination because the activity to which it is registered was not found: META+ or SEARCH"

    .line 635
    .line 636
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    :goto_f
    invoke-static {v0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->getLogEventFromIntent(Landroid/content/Intent;)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    new-instance v1, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;

    .line 658
    .line 659
    invoke-direct {v1, v5, v8, v0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/ModifierShortcutManager;Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 660
    .line 661
    .line 662
    iget-object v0, v5, Lcom/android/server/policy/ModifierShortcutManager;->mHandler:Landroid/os/Handler;

    .line 663
    .line 664
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 665
    .line 666
    .line 667
    goto/16 :goto_13

    .line 668
    .line 669
    :cond_1b
    const-string v0, "handleIntentShortcut, keyCode="

    .line 670
    .line 671
    const-string v1, " metaState="

    .line 672
    .line 673
    invoke-static {v3, v6, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    goto :goto_12

    .line 677
    :cond_1c
    move/from16 v32, v14

    .line 678
    .line 679
    sget-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    .line 680
    .line 681
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    check-cast v0, Ljava/lang/String;

    .line 686
    .line 687
    sget-object v1, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 688
    .line 689
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    check-cast v1, Ljava/lang/String;

    .line 694
    .line 695
    if-eqz v0, :cond_1d

    .line 696
    .line 697
    invoke-virtual {v5, v0}, Lcom/android/server/policy/ModifierShortcutManager;->getRoleLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    .line 699
    .line 700
    move-result-object v6

    .line 701
    goto :goto_10

    .line 702
    :cond_1d
    if-eqz v1, :cond_1e

    .line 703
    .line 704
    const-string v6, "android.intent.action.MAIN"

    .line 705
    .line 706
    invoke-static {v6, v1}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    .line 708
    .line 709
    move-result-object v6

    .line 710
    goto :goto_10

    .line 711
    :cond_1e
    const/4 v6, 0x0

    .line 712
    :goto_10
    if-eqz v6, :cond_1f

    .line 713
    .line 714
    const/high16 v11, 0x10000000

    .line 715
    .line 716
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 717
    .line 718
    .line 719
    :try_start_2
    iget-object v4, v5, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 720
    .line 721
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 722
    .line 723
    invoke-virtual {v4, v6, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 724
    .line 725
    .line 726
    goto :goto_11

    .line 727
    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    const-string v9, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    .line 730
    .line 731
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    const-string v3, ", category="

    .line 742
    .line 743
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    const-string v1, " role="

    .line 750
    .line 751
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-static {v4, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    :goto_11
    invoke-static {v6}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->getLogEventFromIntent(Landroid/content/Intent;)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    new-instance v1, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;

    .line 762
    .line 763
    invoke-direct {v1, v5, v8, v0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/ModifierShortcutManager;Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 764
    .line 765
    .line 766
    iget-object v0, v5, Lcom/android/server/policy/ModifierShortcutManager;->mHandler:Landroid/os/Handler;

    .line 767
    .line 768
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 769
    .line 770
    .line 771
    goto :goto_13

    .line 772
    :cond_1f
    :goto_12
    int-to-long v0, v9

    .line 773
    and-int/lit16 v2, v10, 0x1000

    .line 774
    .line 775
    if-eqz v2, :cond_20

    .line 776
    .line 777
    const-wide v2, 0x100000000000L

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    or-long/2addr v0, v2

    .line 783
    :cond_20
    const/4 v2, 0x2

    .line 784
    and-int/lit8 v3, v10, 0x2

    .line 785
    .line 786
    if-eqz v3, :cond_21

    .line 787
    .line 788
    const-wide v2, 0x200000000L

    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    or-long/2addr v0, v2

    .line 794
    :cond_21
    const/4 v2, 0x1

    .line 795
    and-int/lit8 v3, v10, 0x1

    .line 796
    .line 797
    if-eqz v3, :cond_22

    .line 798
    .line 799
    const-wide v2, 0x100000000L

    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    or-long/2addr v0, v2

    .line 805
    :cond_22
    const/high16 v2, 0x10000

    .line 806
    .line 807
    and-int v3, v10, v2

    .line 808
    .line 809
    if-eqz v3, :cond_23

    .line 810
    .line 811
    const-wide/high16 v2, 0x1000000000000L

    .line 812
    .line 813
    or-long/2addr v0, v2

    .line 814
    :cond_23
    iget-object v2, v5, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 815
    .line 816
    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    check-cast v2, Lcom/android/internal/policy/IShortcutService;

    .line 821
    .line 822
    if-eqz v2, :cond_26

    .line 823
    .line 824
    :try_start_3
    invoke-interface {v2, v0, v1}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 825
    .line 826
    .line 827
    goto :goto_13

    .line 828
    :catch_2
    iget-object v2, v5, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 829
    .line 830
    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->delete(J)V

    .line 831
    .line 832
    .line 833
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 834
    .line 835
    .line 836
    const/4 v0, 0x0

    .line 837
    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 838
    .line 839
    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 840
    .line 841
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 842
    .line 843
    if-eqz v0, :cond_24

    .line 844
    .line 845
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 846
    .line 847
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 848
    .line 849
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    invoke-static {v12}, Lcom/android/server/policy/KeyboardShortcutManager;->getSaLoggerEventId(I)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 857
    .line 858
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 859
    .line 860
    invoke-virtual {v1, v12}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutSettingsValue(I)Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    :cond_24
    const/4 v5, 0x1

    .line 868
    goto/16 :goto_7

    .line 869
    .line 870
    :cond_25
    :goto_14
    move/from16 v31, v2

    .line 871
    .line 872
    move/from16 v29, v3

    .line 873
    .line 874
    move/from16 v30, v6

    .line 875
    .line 876
    move/from16 v27, v11

    .line 877
    .line 878
    :goto_15
    move/from16 v32, v14

    .line 879
    .line 880
    move/from16 v28, v15

    .line 881
    .line 882
    :cond_26
    const/4 v0, -0x1

    .line 883
    sparse-switch v12, :sswitch_data_0

    .line 884
    .line 885
    .line 886
    const-wide/16 v9, 0x0

    .line 887
    .line 888
    goto/16 :goto_2e

    .line 889
    .line 890
    :sswitch_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->emojiAndScreenshotKeycodesAvailable()Z

    .line 891
    .line 892
    .line 893
    move-result v0

    .line 894
    if-eqz v0, :cond_27

    .line 895
    .line 896
    if-eqz v4, :cond_27

    .line 897
    .line 898
    if-nez v13, :cond_27

    .line 899
    .line 900
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 901
    .line 902
    const/16 v1, 0x10

    .line 903
    .line 904
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    .line 906
    .line 907
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 908
    .line 909
    const/4 v2, 0x0

    .line 910
    const/4 v3, 0x2

    .line 911
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 912
    .line 913
    .line 914
    move-result-object v1

    .line 915
    const-wide/16 v9, 0x0

    .line 916
    .line 917
    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 918
    .line 919
    .line 920
    goto :goto_16

    .line 921
    :cond_27
    const-wide/16 v9, 0x0

    .line 922
    .line 923
    :cond_28
    :goto_16
    const/4 v5, 0x1

    .line 924
    goto/16 :goto_38

    .line 925
    .line 926
    :sswitch_1
    const/4 v2, 0x0

    .line 927
    const-wide/16 v9, 0x0

    .line 928
    .line 929
    if-eqz v19, :cond_28

    .line 930
    .line 931
    invoke-virtual {v7, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(IZ)V

    .line 932
    .line 933
    .line 934
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->RECENT_APPS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 935
    .line 936
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 937
    .line 938
    .line 939
    goto :goto_16

    .line 940
    :sswitch_2
    const-wide/16 v9, 0x0

    .line 941
    .line 942
    const-string v0, "WindowManager"

    .line 943
    .line 944
    const-string v1, "KEYCODE_STYLUS_BUTTON_* should be handled in interceptKeyBeforeQueueing"

    .line 945
    .line 946
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    .line 948
    .line 949
    goto :goto_16

    .line 950
    :sswitch_3
    const-wide/16 v9, 0x0

    .line 951
    .line 952
    if-nez v4, :cond_28

    .line 953
    .line 954
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->KEYBOARD_BACKLIGHT_TOGGLE:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 955
    .line 956
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 957
    .line 958
    .line 959
    goto :goto_16

    .line 960
    :sswitch_4
    const-wide/16 v9, 0x0

    .line 961
    .line 962
    if-eqz v4, :cond_28

    .line 963
    .line 964
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 965
    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 967
    .line 968
    .line 969
    move-result v1

    .line 970
    iget-object v0, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 971
    .line 972
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 973
    .line 974
    invoke-interface {v0, v1}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->incrementKeyboardBacklight(I)V

    .line 975
    .line 976
    .line 977
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->KEYBOARD_BACKLIGHT_UP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 978
    .line 979
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 980
    .line 981
    .line 982
    goto :goto_16

    .line 983
    :sswitch_5
    const-wide/16 v9, 0x0

    .line 984
    .line 985
    if-eqz v4, :cond_28

    .line 986
    .line 987
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 988
    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 990
    .line 991
    .line 992
    move-result v1

    .line 993
    iget-object v0, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 994
    .line 995
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;

    .line 996
    .line 997
    invoke-interface {v0, v1}, Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;->decrementKeyboardBacklight(I)V

    .line 998
    .line 999
    .line 1000
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->KEYBOARD_BACKLIGHT_DOWN:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1001
    .line 1002
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1003
    .line 1004
    .line 1005
    goto :goto_16

    .line 1006
    :sswitch_6
    const-wide/16 v9, 0x0

    .line 1007
    .line 1008
    const-string v0, "WindowManager"

    .line 1009
    .line 1010
    const-string v1, "KEYCODE_APP_X should be handled in interceptKeyBeforeQueueing"

    .line 1011
    .line 1012
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    .line 1014
    .line 1015
    goto :goto_16

    .line 1016
    :sswitch_7
    const-wide/16 v9, 0x0

    .line 1017
    .line 1018
    if-nez v4, :cond_28

    .line 1019
    .line 1020
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 1021
    .line 1022
    const/16 v1, 0x16

    .line 1023
    .line 1024
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1025
    .line 1026
    .line 1027
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 1028
    .line 1029
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    const/4 v1, 0x1

    .line 1034
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1038
    .line 1039
    .line 1040
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->ALL_APPS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1041
    .line 1042
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1043
    .line 1044
    .line 1045
    goto :goto_16

    .line 1046
    :sswitch_8
    const-wide/16 v9, 0x0

    .line 1047
    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1049
    .line 1050
    .line 1051
    move-result v0

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isSystem()Z

    .line 1053
    .line 1054
    .line 1055
    move-result v1

    .line 1056
    if-nez v1, :cond_29

    .line 1057
    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    const-string v2, "Illegal keycode provided to prepareToSendSystemKeyToApplication: "

    .line 1061
    .line 1062
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    const-string v1, "WindowManager"

    .line 1077
    .line 1078
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    .line 1080
    .line 1081
    :goto_17
    const/4 v0, 0x0

    .line 1082
    goto :goto_19

    .line 1083
    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 1084
    .line 1085
    .line 1086
    move-result v1

    .line 1087
    if-nez v1, :cond_2b

    .line 1088
    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 1090
    .line 1091
    .line 1092
    move-result v1

    .line 1093
    if-nez v1, :cond_2b

    .line 1094
    .line 1095
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1096
    .line 1097
    move-object/from16 v2, p1

    .line 1098
    .line 1099
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v1

    .line 1103
    if-eqz v1, :cond_2a

    .line 1104
    .line 1105
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    .line 1106
    .line 1107
    iget-object v11, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1108
    .line 1109
    iget v14, v1, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    .line 1110
    .line 1111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1112
    .line 1113
    .line 1114
    const-string v12, "android.permission.OVERRIDE_SYSTEM_KEY_BEHAVIOR_IN_FOCUSED_WINDOW"

    .line 1115
    .line 1116
    const/16 v16, 0x0

    .line 1117
    .line 1118
    const/16 v17, 0x0

    .line 1119
    .line 1120
    const/4 v13, -0x1

    .line 1121
    const/4 v15, 0x0

    .line 1122
    invoke-static/range {v11 .. v17}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .line 1124
    .line 1125
    move-result v1

    .line 1126
    if-nez v1, :cond_2a

    .line 1127
    .line 1128
    const/4 v0, 0x1

    .line 1129
    goto :goto_19

    .line 1130
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    .line 1131
    .line 1132
    .line 1133
    move-result-wide v1

    .line 1134
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    .line 1135
    .line 1136
    .line 1137
    goto :goto_17

    .line 1138
    :cond_2b
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 1139
    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 1141
    .line 1142
    .line 1143
    move-result v2

    .line 1144
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v1

    .line 1148
    check-cast v1, Ljava/util/Set;

    .line 1149
    .line 1150
    if-eqz v1, :cond_2c

    .line 1151
    .line 1152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v0

    .line 1156
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v0

    .line 1160
    if-eqz v0, :cond_2c

    .line 1161
    .line 1162
    const/4 v1, 0x1

    .line 1163
    const/16 v20, 0x1

    .line 1164
    .line 1165
    goto :goto_18

    .line 1166
    :cond_2c
    const/4 v1, 0x1

    .line 1167
    const/16 v20, 0x0

    .line 1168
    .line 1169
    :goto_18
    xor-int/lit8 v0, v20, 0x1

    .line 1170
    .line 1171
    :goto_19
    if-eqz v0, :cond_2d

    .line 1172
    .line 1173
    :goto_1a
    const/4 v5, 0x0

    .line 1174
    goto/16 :goto_38

    .line 1175
    .line 1176
    :cond_2d
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1177
    .line 1178
    .line 1179
    goto/16 :goto_16

    .line 1180
    .line 1181
    :sswitch_9
    const-wide/16 v9, 0x0

    .line 1182
    .line 1183
    const-string v0, "WindowManager"

    .line 1184
    .line 1185
    const-string v1, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    .line 1186
    .line 1187
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    .line 1189
    .line 1190
    goto/16 :goto_16

    .line 1191
    .line 1192
    :sswitch_a
    const-wide/16 v9, 0x0

    .line 1193
    .line 1194
    if-eqz v4, :cond_28

    .line 1195
    .line 1196
    const/16 v1, 0xdd

    .line 1197
    .line 1198
    if-ne v12, v1, :cond_2e

    .line 1199
    .line 1200
    const/4 v0, 0x1

    .line 1201
    :cond_2e
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1202
    .line 1203
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v2

    .line 1207
    const-string/jumbo v3, "screen_brightness_mode"

    .line 1208
    .line 1209
    .line 1210
    const/4 v4, -0x3

    .line 1211
    const/4 v5, 0x0

    .line 1212
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 1213
    .line 1214
    .line 1215
    move-result v2

    .line 1216
    if-eqz v2, :cond_2f

    .line 1217
    .line 1218
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1219
    .line 1220
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v2

    .line 1224
    const-string/jumbo v3, "screen_brightness_mode"

    .line 1225
    .line 1226
    .line 1227
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1228
    .line 1229
    .line 1230
    :cond_2f
    if-gez v32, :cond_30

    .line 1231
    .line 1232
    move v14, v5

    .line 1233
    goto :goto_1b

    .line 1234
    :cond_30
    move/from16 v14, v32

    .line 1235
    .line 1236
    :goto_1b
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1237
    .line 1238
    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 1239
    .line 1240
    .line 1241
    move-result v2

    .line 1242
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1243
    .line 1244
    const/4 v4, 0x1

    .line 1245
    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    .line 1246
    .line 1247
    .line 1248
    move-result v3

    .line 1249
    sub-float v4, v3, v2

    .line 1250
    .line 1251
    const/high16 v5, 0x41200000    # 10.0f

    .line 1252
    .line 1253
    div-float/2addr v4, v5

    .line 1254
    int-to-float v0, v0

    .line 1255
    mul-float/2addr v4, v0

    .line 1256
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1257
    .line 1258
    invoke-virtual {v0, v14}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    add-float/2addr v0, v4

    .line 1263
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 1264
    .line 1265
    .line 1266
    move-result v0

    .line 1267
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 1268
    .line 1269
    .line 1270
    move-result v0

    .line 1271
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 1272
    .line 1273
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1274
    .line 1275
    invoke-virtual {v2, v14, v0}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 1276
    .line 1277
    .line 1278
    new-instance v0, Landroid/content/Intent;

    .line 1279
    .line 1280
    const-string v2, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    .line 1281
    .line 1282
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    const/high16 v2, 0x50000

    .line 1286
    .line 1287
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1288
    .line 1289
    .line 1290
    const-string v2, "android.intent.extra.FROM_BRIGHTNESS_KEY"

    .line 1291
    .line 1292
    const/4 v3, 0x1

    .line 1293
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1294
    .line 1295
    .line 1296
    if-nez v14, :cond_31

    .line 1297
    .line 1298
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1299
    .line 1300
    iget v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 1301
    .line 1302
    const/4 v3, 0x2

    .line 1303
    if-ne v2, v3, :cond_31

    .line 1304
    .line 1305
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v2

    .line 1309
    const/4 v3, 0x0

    .line 1310
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v2

    .line 1317
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 1318
    .line 1319
    invoke-virtual {v7, v0, v2, v4, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    .line 1320
    .line 1321
    .line 1322
    goto :goto_1c

    .line 1323
    :cond_31
    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 1324
    .line 1325
    invoke-virtual {v7, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1326
    .line 1327
    .line 1328
    :goto_1c
    const/16 v0, 0xdc

    .line 1329
    .line 1330
    if-eq v12, v0, :cond_33

    .line 1331
    .line 1332
    if-eq v12, v1, :cond_32

    .line 1333
    .line 1334
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->HOME:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1335
    .line 1336
    const/4 v0, 0x0

    .line 1337
    goto :goto_1d

    .line 1338
    :cond_32
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->BRIGHTNESS_UP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1339
    .line 1340
    goto :goto_1d

    .line 1341
    :cond_33
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->BRIGHTNESS_DOWN:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1342
    .line 1343
    :goto_1d
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1344
    .line 1345
    .line 1346
    goto/16 :goto_16

    .line 1347
    .line 1348
    :sswitch_b
    const-wide/16 v9, 0x0

    .line 1349
    .line 1350
    const-string v0, "WindowManager"

    .line 1351
    .line 1352
    const-string v1, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    .line 1353
    .line 1354
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    .line 1356
    .line 1357
    goto/16 :goto_16

    .line 1358
    .line 1359
    :sswitch_c
    const-wide/16 v9, 0x0

    .line 1360
    .line 1361
    if-eqz v19, :cond_68

    .line 1362
    .line 1363
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LANGUAGE_SWITCH:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1364
    .line 1365
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1366
    .line 1367
    .line 1368
    goto/16 :goto_2e

    .line 1369
    .line 1370
    :sswitch_d
    const-wide/16 v9, 0x0

    .line 1371
    .line 1372
    if-nez v31, :cond_28

    .line 1373
    .line 1374
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1375
    .line 1376
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 1377
    .line 1378
    const/4 v1, 0x3

    .line 1379
    invoke-virtual {v0, v12, v1}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 1380
    .line 1381
    .line 1382
    move-result v0

    .line 1383
    if-eqz v0, :cond_34

    .line 1384
    .line 1385
    const-string v0, "WindowManager"

    .line 1386
    .line 1387
    const-string/jumbo v1, "skip single press recent, requestedSystemKey"

    .line 1388
    .line 1389
    .line 1390
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    .line 1392
    .line 1393
    goto/16 :goto_2e

    .line 1394
    .line 1395
    :cond_34
    if-eqz v19, :cond_35

    .line 1396
    .line 1397
    const/4 v1, 0x1

    .line 1398
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 1399
    .line 1400
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v0

    .line 1404
    if-eqz v0, :cond_37

    .line 1405
    .line 1406
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 1407
    .line 1408
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1409
    .line 1410
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1411
    .line 1412
    if-eqz v0, :cond_37

    .line 1413
    .line 1414
    :try_start_4
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1415
    .line 1416
    .line 1417
    goto :goto_1f

    .line 1418
    :cond_35
    if-nez v4, :cond_37

    .line 1419
    .line 1420
    if-nez v30, :cond_37

    .line 1421
    .line 1422
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1423
    .line 1424
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppSwitchKeyConsumed:Z

    .line 1425
    .line 1426
    if-nez v1, :cond_37

    .line 1427
    .line 1428
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 1429
    .line 1430
    .line 1431
    move-result v0

    .line 1432
    if-eqz v0, :cond_36

    .line 1433
    .line 1434
    move/from16 v1, v32

    .line 1435
    .line 1436
    invoke-virtual {v7, v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps(I)V

    .line 1437
    .line 1438
    .line 1439
    goto :goto_1e

    .line 1440
    :cond_36
    const/4 v0, 0x0

    .line 1441
    invoke-virtual {v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps(I)V

    .line 1442
    .line 1443
    .line 1444
    :goto_1e
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->APP_SWITCH:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1445
    .line 1446
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1447
    .line 1448
    .line 1449
    :catch_3
    :cond_37
    :goto_1f
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1450
    .line 1451
    const/16 v1, 0xbb

    .line 1452
    .line 1453
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 1454
    .line 1455
    .line 1456
    move-result v0

    .line 1457
    if-eqz v0, :cond_28

    .line 1458
    .line 1459
    const-string v0, "WindowManager"

    .line 1460
    .line 1461
    const-string v1, "can dispatching recent key event, requestedSystemKey"

    .line 1462
    .line 1463
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    .line 1465
    .line 1466
    goto/16 :goto_1a

    .line 1467
    .line 1468
    :sswitch_e
    const-wide/16 v9, 0x0

    .line 1469
    .line 1470
    if-eqz v19, :cond_28

    .line 1471
    .line 1472
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    .line 1473
    .line 1474
    const/4 v1, 0x1

    .line 1475
    if-ne v0, v1, :cond_38

    .line 1476
    .line 1477
    const/4 v1, 0x0

    .line 1478
    invoke-virtual {v7, v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel(I)V

    .line 1479
    .line 1480
    .line 1481
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_NOTIFICATION_PANEL:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1482
    .line 1483
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1484
    .line 1485
    .line 1486
    goto/16 :goto_16

    .line 1487
    .line 1488
    :cond_38
    if-nez v0, :cond_28

    .line 1489
    .line 1490
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->showSystemSettings()V

    .line 1491
    .line 1492
    .line 1493
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_SYSTEM_SETTINGS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1494
    .line 1495
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1496
    .line 1497
    .line 1498
    goto/16 :goto_16

    .line 1499
    .line 1500
    :sswitch_f
    const-wide/16 v9, 0x0

    .line 1501
    .line 1502
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1503
    .line 1504
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 1505
    .line 1506
    .line 1507
    move-result v0

    .line 1508
    if-eqz v0, :cond_39

    .line 1509
    .line 1510
    goto/16 :goto_2e

    .line 1511
    .line 1512
    :cond_39
    if-eqz v4, :cond_3b

    .line 1513
    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 1515
    .line 1516
    .line 1517
    move-result v0

    .line 1518
    if-eqz v0, :cond_3a

    .line 1519
    .line 1520
    const/4 v1, 0x1

    .line 1521
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 1522
    .line 1523
    const/4 v0, 0x0

    .line 1524
    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 1525
    .line 1526
    goto/16 :goto_16

    .line 1527
    .line 1528
    :cond_3a
    const/4 v0, 0x0

    .line 1529
    const/4 v1, 0x1

    .line 1530
    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 1531
    .line 1532
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 1533
    .line 1534
    goto/16 :goto_16

    .line 1535
    .line 1536
    :cond_3b
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 1537
    .line 1538
    if-eqz v0, :cond_3c

    .line 1539
    .line 1540
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 1541
    .line 1542
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 1543
    .line 1544
    .line 1545
    move-result v1

    .line 1546
    iget-object v0, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 1547
    .line 1548
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 1549
    .line 1550
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->toggleCapsLock(I)V

    .line 1551
    .line 1552
    .line 1553
    const/4 v0, 0x0

    .line 1554
    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 1555
    .line 1556
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_CAPS_LOCK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1557
    .line 1558
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1559
    .line 1560
    .line 1561
    goto/16 :goto_16

    .line 1562
    .line 1563
    :cond_3c
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 1564
    .line 1565
    if-eqz v0, :cond_28

    .line 1566
    .line 1567
    if-nez v30, :cond_3d

    .line 1568
    .line 1569
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsViaA11y()V

    .line 1570
    .line 1571
    .line 1572
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->ACCESSIBILITY_ALL_APPS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1573
    .line 1574
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1575
    .line 1576
    .line 1577
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1578
    .line 1579
    if-eqz v0, :cond_3d

    .line 1580
    .line 1581
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1582
    .line 1583
    const-string v1, "PKBD0024"

    .line 1584
    .line 1585
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1586
    .line 1587
    .line 1588
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1589
    .line 1590
    .line 1591
    :cond_3d
    const/4 v0, 0x0

    .line 1592
    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 1593
    .line 1594
    goto/16 :goto_16

    .line 1595
    .line 1596
    :sswitch_10
    const-wide/16 v9, 0x0

    .line 1597
    .line 1598
    if-nez v4, :cond_68

    .line 1599
    .line 1600
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_CAPS_LOCK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1601
    .line 1602
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1603
    .line 1604
    .line 1605
    goto/16 :goto_2e

    .line 1606
    .line 1607
    :sswitch_11
    move/from16 v1, v32

    .line 1608
    .line 1609
    const-wide/16 v9, 0x0

    .line 1610
    .line 1611
    if-nez v4, :cond_68

    .line 1612
    .line 1613
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 1614
    .line 1615
    if-eqz v0, :cond_68

    .line 1616
    .line 1617
    and-int v0, v29, v0

    .line 1618
    .line 1619
    if-nez v0, :cond_68

    .line 1620
    .line 1621
    const/4 v0, 0x0

    .line 1622
    iput v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 1623
    .line 1624
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1625
    .line 1626
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 1627
    .line 1628
    .line 1629
    move-result v2

    .line 1630
    if-eqz v2, :cond_3e

    .line 1631
    .line 1632
    const/4 v2, 0x1

    .line 1633
    invoke-virtual {v7, v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(IZZ)V

    .line 1634
    .line 1635
    .line 1636
    goto :goto_20

    .line 1637
    :cond_3e
    const/4 v2, 0x1

    .line 1638
    invoke-virtual {v7, v0, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(IZZ)V

    .line 1639
    .line 1640
    .line 1641
    :goto_20
    move v5, v2

    .line 1642
    goto/16 :goto_38

    .line 1643
    .line 1644
    :sswitch_12
    const-wide/16 v9, 0x0

    .line 1645
    .line 1646
    goto/16 :goto_25

    .line 1647
    .line 1648
    :sswitch_13
    const/4 v2, 0x1

    .line 1649
    const-wide/16 v9, 0x0

    .line 1650
    .line 1651
    if-eqz v19, :cond_68

    .line 1652
    .line 1653
    if-nez v31, :cond_68

    .line 1654
    .line 1655
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyBehavior:I

    .line 1656
    .line 1657
    if-eq v0, v2, :cond_3f

    .line 1658
    .line 1659
    goto/16 :goto_2e

    .line 1660
    .line 1661
    :cond_3f
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    .line 1662
    .line 1663
    if-eqz v0, :cond_40

    .line 1664
    .line 1665
    new-instance v0, Landroid/content/Intent;

    .line 1666
    .line 1667
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1668
    .line 1669
    .line 1670
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    .line 1671
    .line 1672
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1673
    .line 1674
    .line 1675
    goto :goto_21

    .line 1676
    :cond_40
    new-instance v0, Landroid/content/Intent;

    .line 1677
    .line 1678
    const-string v1, "android.intent.action.WEB_SEARCH"

    .line 1679
    .line 1680
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1681
    .line 1682
    .line 1683
    :goto_21
    const/high16 v1, 0x10200000

    .line 1684
    .line 1685
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1686
    .line 1687
    .line 1688
    :try_start_5
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 1689
    .line 1690
    invoke-virtual {v7, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1691
    .line 1692
    .line 1693
    goto :goto_22

    .line 1694
    :catch_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1695
    .line 1696
    const-string v2, "Could not resolve activity with : "

    .line 1697
    .line 1698
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v0

    .line 1705
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v0

    .line 1709
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    .line 1711
    .line 1712
    const-string v0, " name."

    .line 1713
    .line 1714
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    .line 1716
    .line 1717
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v0

    .line 1721
    const-string v1, "WindowManager"

    .line 1722
    .line 1723
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    .line 1725
    .line 1726
    :goto_22
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_SEARCH:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1727
    .line 1728
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1729
    .line 1730
    .line 1731
    goto/16 :goto_16

    .line 1732
    .line 1733
    :sswitch_14
    const-wide/16 v9, 0x0

    .line 1734
    .line 1735
    if-nez v4, :cond_28

    .line 1736
    .line 1737
    const/4 v0, 0x0

    .line 1738
    invoke-virtual {v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel(I)V

    .line 1739
    .line 1740
    .line 1741
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_NOTIFICATION_PANEL:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1742
    .line 1743
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1744
    .line 1745
    .line 1746
    goto/16 :goto_16

    .line 1747
    .line 1748
    :sswitch_15
    move/from16 v1, v32

    .line 1749
    .line 1750
    const-wide/16 v9, 0x0

    .line 1751
    .line 1752
    if-eqz v19, :cond_68

    .line 1753
    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 1755
    .line 1756
    .line 1757
    move-result v0

    .line 1758
    if-eqz v0, :cond_68

    .line 1759
    .line 1760
    if-nez v31, :cond_68

    .line 1761
    .line 1762
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1763
    .line 1764
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 1765
    .line 1766
    .line 1767
    move-result v0

    .line 1768
    if-eqz v0, :cond_41

    .line 1769
    .line 1770
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 1771
    .line 1772
    .line 1773
    move-result v0

    .line 1774
    invoke-virtual {v7, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(II)V

    .line 1775
    .line 1776
    .line 1777
    goto :goto_23

    .line 1778
    :cond_41
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 1779
    .line 1780
    .line 1781
    move-result v0

    .line 1782
    const/4 v1, 0x0

    .line 1783
    invoke-virtual {v7, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(II)V

    .line 1784
    .line 1785
    .line 1786
    :goto_23
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->OPEN_SHORTCUT_HELPER:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1787
    .line 1788
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1789
    .line 1790
    .line 1791
    goto/16 :goto_16

    .line 1792
    .line 1793
    :sswitch_16
    const-wide/16 v9, 0x0

    .line 1794
    .line 1795
    invoke-static {}, Lcom/android/server/flags/Flags;->newBugreportKeyboardShortcut()Z

    .line 1796
    .line 1797
    .line 1798
    move-result v0

    .line 1799
    if-eqz v0, :cond_42

    .line 1800
    .line 1801
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    .line 1802
    .line 1803
    if-eqz v0, :cond_42

    .line 1804
    .line 1805
    if-eqz v19, :cond_42

    .line 1806
    .line 1807
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 1808
    .line 1809
    .line 1810
    move-result v0

    .line 1811
    if-eqz v0, :cond_42

    .line 1812
    .line 1813
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 1814
    .line 1815
    .line 1816
    move-result v0

    .line 1817
    if-eqz v0, :cond_42

    .line 1818
    .line 1819
    :try_start_6
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 1820
    .line 1821
    invoke-interface {v0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1822
    .line 1823
    .line 1824
    goto :goto_24

    .line 1825
    :catch_5
    move-exception v0

    .line 1826
    const-string v1, "WindowManager"

    .line 1827
    .line 1828
    const-string v2, "Error taking bugreport"

    .line 1829
    .line 1830
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1831
    .line 1832
    .line 1833
    :goto_24
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TRIGGER_BUG_REPORT:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1834
    .line 1835
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1836
    .line 1837
    .line 1838
    goto/16 :goto_16

    .line 1839
    .line 1840
    :cond_42
    :goto_25
    if-eqz v19, :cond_66

    .line 1841
    .line 1842
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 1843
    .line 1844
    .line 1845
    move-result v0

    .line 1846
    if-eqz v0, :cond_66

    .line 1847
    .line 1848
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->BACK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1849
    .line 1850
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    .line 1854
    .line 1855
    .line 1856
    move-result-wide v0

    .line 1857
    invoke-virtual {v7, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->injectBackGesture(J)V

    .line 1858
    .line 1859
    .line 1860
    goto/16 :goto_16

    .line 1861
    .line 1862
    :sswitch_17
    move/from16 v1, v32

    .line 1863
    .line 1864
    const-wide/16 v9, 0x0

    .line 1865
    .line 1866
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1867
    .line 1868
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 1869
    .line 1870
    .line 1871
    move-result v0

    .line 1872
    if-eqz v0, :cond_43

    .line 1873
    .line 1874
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1875
    .line 1876
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 1877
    .line 1878
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1879
    .line 1880
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1881
    .line 1882
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1883
    .line 1884
    .line 1885
    monitor-enter v2

    .line 1886
    :try_start_7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1887
    .line 1888
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 1889
    .line 1890
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->handleAltTabKeyIfNeededLocked()Z

    .line 1891
    .line 1892
    .line 1893
    move-result v0

    .line 1894
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1895
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1896
    .line 1897
    .line 1898
    if-eqz v0, :cond_43

    .line 1899
    .line 1900
    const/4 v2, 0x1

    .line 1901
    iput-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mAltTabConsumedByDeX:Z

    .line 1902
    .line 1903
    goto/16 :goto_16

    .line 1904
    .line 1905
    :catchall_1
    move-exception v0

    .line 1906
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1907
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1908
    .line 1909
    .line 1910
    throw v0

    .line 1911
    :cond_43
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1912
    .line 1913
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 1914
    .line 1915
    .line 1916
    move-result v0

    .line 1917
    if-eqz v0, :cond_44

    .line 1918
    .line 1919
    goto/16 :goto_2e

    .line 1920
    .line 1921
    :cond_44
    if-eqz v19, :cond_68

    .line 1922
    .line 1923
    if-nez v31, :cond_68

    .line 1924
    .line 1925
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 1926
    .line 1927
    .line 1928
    move-result v0

    .line 1929
    if-eqz v0, :cond_68

    .line 1930
    .line 1931
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 1932
    .line 1933
    .line 1934
    move-result v0

    .line 1935
    if-eqz v0, :cond_45

    .line 1936
    .line 1937
    const/4 v0, 0x0

    .line 1938
    invoke-virtual {v7, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(IZ)V

    .line 1939
    .line 1940
    .line 1941
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->RECENT_APPS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1942
    .line 1943
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1944
    .line 1945
    .line 1946
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 1947
    .line 1948
    if-eqz v0, :cond_28

    .line 1949
    .line 1950
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1951
    .line 1952
    const-string v1, "PKBD0055"

    .line 1953
    .line 1954
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1955
    .line 1956
    .line 1957
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 1958
    .line 1959
    .line 1960
    goto/16 :goto_16

    .line 1961
    .line 1962
    :cond_45
    iget v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 1963
    .line 1964
    if-nez v0, :cond_68

    .line 1965
    .line 1966
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 1967
    .line 1968
    .line 1969
    move-result v0

    .line 1970
    and-int/lit16 v0, v0, -0xc2

    .line 1971
    .line 1972
    const/4 v2, 0x2

    .line 1973
    invoke-static {v0, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 1974
    .line 1975
    .line 1976
    move-result v2

    .line 1977
    const/16 v3, 0x1002

    .line 1978
    .line 1979
    if-nez v2, :cond_46

    .line 1980
    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 1982
    .line 1983
    .line 1984
    move-result v2

    .line 1985
    invoke-static {v2, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 1986
    .line 1987
    .line 1988
    move-result v2

    .line 1989
    if-eqz v2, :cond_68

    .line 1990
    .line 1991
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 1992
    .line 1993
    .line 1994
    iput v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 1995
    .line 1996
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1997
    .line 1998
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 1999
    .line 2000
    .line 2001
    move-result v0

    .line 2002
    if-eqz v0, :cond_47

    .line 2003
    .line 2004
    const/4 v2, 0x1

    .line 2005
    invoke-virtual {v7, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(IZ)V

    .line 2006
    .line 2007
    .line 2008
    goto :goto_26

    .line 2009
    :cond_47
    const/4 v0, 0x0

    .line 2010
    const/4 v2, 0x1

    .line 2011
    invoke-virtual {v7, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(IZ)V

    .line 2012
    .line 2013
    .line 2014
    :goto_26
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->RECENT_APPS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2015
    .line 2016
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2017
    .line 2018
    .line 2019
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2020
    .line 2021
    if-eqz v0, :cond_28

    .line 2022
    .line 2023
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 2024
    .line 2025
    .line 2026
    move-result v0

    .line 2027
    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 2028
    .line 2029
    .line 2030
    move-result v0

    .line 2031
    if-eqz v0, :cond_48

    .line 2032
    .line 2033
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2034
    .line 2035
    const-string v1, "PKBD0007"

    .line 2036
    .line 2037
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2038
    .line 2039
    .line 2040
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2041
    .line 2042
    .line 2043
    goto/16 :goto_16

    .line 2044
    .line 2045
    :cond_48
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2046
    .line 2047
    const-string v1, "PKBD0052"

    .line 2048
    .line 2049
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2050
    .line 2051
    .line 2052
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2053
    .line 2054
    .line 2055
    goto/16 :goto_16

    .line 2056
    .line 2057
    :sswitch_18
    move/from16 v1, v32

    .line 2058
    .line 2059
    const-wide/16 v9, 0x0

    .line 2060
    .line 2061
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2062
    .line 2063
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 2064
    .line 2065
    .line 2066
    move-result v0

    .line 2067
    if-eqz v0, :cond_49

    .line 2068
    .line 2069
    goto/16 :goto_2e

    .line 2070
    .line 2071
    :cond_49
    if-eqz v4, :cond_4b

    .line 2072
    .line 2073
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2074
    .line 2075
    .line 2076
    move-result v0

    .line 2077
    if-eqz v0, :cond_4a

    .line 2078
    .line 2079
    const/4 v1, 0x1

    .line 2080
    iput-boolean v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 2081
    .line 2082
    const/4 v0, 0x0

    .line 2083
    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 2084
    .line 2085
    goto/16 :goto_2e

    .line 2086
    .line 2087
    :cond_4a
    const/4 v0, 0x0

    .line 2088
    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 2089
    .line 2090
    goto/16 :goto_2e

    .line 2091
    .line 2092
    :cond_4b
    const/4 v0, 0x0

    .line 2093
    iget-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mAltTabConsumedByDeX:Z

    .line 2094
    .line 2095
    if-eqz v2, :cond_4c

    .line 2096
    .line 2097
    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mAltTabConsumedByDeX:Z

    .line 2098
    .line 2099
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2100
    .line 2101
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->releaseAltTabKeyConsumer()V

    .line 2102
    .line 2103
    .line 2104
    :cond_4c
    iget v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 2105
    .line 2106
    if-eqz v2, :cond_4e

    .line 2107
    .line 2108
    and-int v2, v29, v2

    .line 2109
    .line 2110
    if-nez v2, :cond_4e

    .line 2111
    .line 2112
    iput v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 2113
    .line 2114
    iget-object v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2115
    .line 2116
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 2117
    .line 2118
    .line 2119
    move-result v2

    .line 2120
    if-eqz v2, :cond_4d

    .line 2121
    .line 2122
    const/4 v2, 0x1

    .line 2123
    invoke-virtual {v7, v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(IZZ)V

    .line 2124
    .line 2125
    .line 2126
    goto/16 :goto_16

    .line 2127
    .line 2128
    :cond_4d
    const/4 v2, 0x1

    .line 2129
    invoke-virtual {v7, v0, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(IZZ)V

    .line 2130
    .line 2131
    .line 2132
    goto/16 :goto_16

    .line 2133
    .line 2134
    :cond_4e
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 2135
    .line 2136
    if-eqz v0, :cond_68

    .line 2137
    .line 2138
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 2139
    .line 2140
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 2141
    .line 2142
    .line 2143
    move-result v1

    .line 2144
    iget-object v0, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 2145
    .line 2146
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 2147
    .line 2148
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->toggleCapsLock(I)V

    .line 2149
    .line 2150
    .line 2151
    const/4 v0, 0x0

    .line 2152
    iput-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 2153
    .line 2154
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_CAPS_LOCK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2155
    .line 2156
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2157
    .line 2158
    .line 2159
    goto/16 :goto_16

    .line 2160
    .line 2161
    :sswitch_19
    move/from16 v1, v32

    .line 2162
    .line 2163
    const/4 v2, 0x2

    .line 2164
    const-wide/16 v9, 0x0

    .line 2165
    .line 2166
    if-eqz v19, :cond_68

    .line 2167
    .line 2168
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2169
    .line 2170
    .line 2171
    move-result v3

    .line 2172
    if-eqz v3, :cond_68

    .line 2173
    .line 2174
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2175
    .line 2176
    .line 2177
    move-result v3

    .line 2178
    if-nez v3, :cond_4f

    .line 2179
    .line 2180
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 2181
    .line 2182
    .line 2183
    move-result v3

    .line 2184
    if-eqz v3, :cond_68

    .line 2185
    .line 2186
    :cond_4f
    const/4 v3, 0x1

    .line 2187
    if-ne v1, v3, :cond_51

    .line 2188
    .line 2189
    :cond_50
    const/4 v2, 0x1

    .line 2190
    goto :goto_27

    .line 2191
    :cond_51
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 2192
    .line 2193
    .line 2194
    move-result v3

    .line 2195
    if-eqz v3, :cond_50

    .line 2196
    .line 2197
    :goto_27
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2198
    .line 2199
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 2200
    .line 2201
    if-ne v1, v0, :cond_52

    .line 2202
    .line 2203
    const/4 v5, 0x0

    .line 2204
    goto :goto_28

    .line 2205
    :cond_52
    move v5, v1

    .line 2206
    :goto_28
    invoke-virtual {v3, v2, v5}, Lcom/android/server/wm/WindowManagerServiceExt;->sendTakeScreenshotRunnable(II)V

    .line 2207
    .line 2208
    .line 2209
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TAKE_SCREENSHOT:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2210
    .line 2211
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2212
    .line 2213
    .line 2214
    goto/16 :goto_16

    .line 2215
    .line 2216
    :sswitch_1a
    move/from16 v1, v32

    .line 2217
    .line 2218
    const-wide/16 v9, 0x0

    .line 2219
    .line 2220
    if-eqz v19, :cond_68

    .line 2221
    .line 2222
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2223
    .line 2224
    .line 2225
    move-result v0

    .line 2226
    if-eqz v0, :cond_68

    .line 2227
    .line 2228
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2229
    .line 2230
    .line 2231
    move-result v0

    .line 2232
    if-eqz v0, :cond_53

    .line 2233
    .line 2234
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 2235
    .line 2236
    .line 2237
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->OPEN_NOTES:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2238
    .line 2239
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2240
    .line 2241
    .line 2242
    goto/16 :goto_16

    .line 2243
    .line 2244
    :cond_53
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2245
    .line 2246
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 2247
    .line 2248
    .line 2249
    move-result v0

    .line 2250
    if-eqz v0, :cond_54

    .line 2251
    .line 2252
    invoke-virtual {v7, v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel(I)V

    .line 2253
    .line 2254
    .line 2255
    goto :goto_29

    .line 2256
    :cond_54
    const/4 v0, 0x0

    .line 2257
    invoke-virtual {v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel(I)V

    .line 2258
    .line 2259
    .line 2260
    :goto_29
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_NOTIFICATION_PANEL:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2261
    .line 2262
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2263
    .line 2264
    .line 2265
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2266
    .line 2267
    if-eqz v0, :cond_28

    .line 2268
    .line 2269
    if-nez v13, :cond_28

    .line 2270
    .line 2271
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2272
    .line 2273
    const-string v1, "PKBD0063"

    .line 2274
    .line 2275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2276
    .line 2277
    .line 2278
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2279
    .line 2280
    .line 2281
    goto/16 :goto_16

    .line 2282
    .line 2283
    :sswitch_1b
    const-wide/16 v9, 0x0

    .line 2284
    .line 2285
    if-eqz v19, :cond_68

    .line 2286
    .line 2287
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2288
    .line 2289
    .line 2290
    move-result v0

    .line 2291
    if-eqz v0, :cond_68

    .line 2292
    .line 2293
    const/4 v0, 0x0

    .line 2294
    invoke-virtual {v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 2295
    .line 2296
    .line 2297
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LOCK_SCREEN:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2298
    .line 2299
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2300
    .line 2301
    .line 2302
    goto/16 :goto_16

    .line 2303
    .line 2304
    :sswitch_1c
    const-wide/16 v9, 0x0

    .line 2305
    .line 2306
    if-eqz v19, :cond_68

    .line 2307
    .line 2308
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2309
    .line 2310
    .line 2311
    move-result v0

    .line 2312
    if-eqz v0, :cond_68

    .line 2313
    .line 2314
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->showSystemSettings()V

    .line 2315
    .line 2316
    .line 2317
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_SYSTEM_SETTINGS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2318
    .line 2319
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2320
    .line 2321
    .line 2322
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2323
    .line 2324
    if-eqz v0, :cond_28

    .line 2325
    .line 2326
    if-nez v13, :cond_28

    .line 2327
    .line 2328
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2329
    .line 2330
    const-string v1, "PKBD0061"

    .line 2331
    .line 2332
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 2333
    .line 2334
    invoke-virtual {v0, v12}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutSettingsValue(I)Ljava/lang/String;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v0

    .line 2338
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    .line 2340
    .line 2341
    goto/16 :goto_16

    .line 2342
    .line 2343
    :sswitch_1d
    move-object/from16 v2, p1

    .line 2344
    .line 2345
    const-wide/16 v9, 0x0

    .line 2346
    .line 2347
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2348
    .line 2349
    .line 2350
    move-result v0

    .line 2351
    if-eqz v0, :cond_68

    .line 2352
    .line 2353
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2354
    .line 2355
    if-eqz v0, :cond_57

    .line 2356
    .line 2357
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    .line 2358
    .line 2359
    .line 2360
    move-result v0

    .line 2361
    if-eqz v0, :cond_56

    .line 2362
    .line 2363
    if-eqz v4, :cond_56

    .line 2364
    .line 2365
    if-nez v13, :cond_56

    .line 2366
    .line 2367
    const/16 v1, 0x24

    .line 2368
    .line 2369
    if-ne v12, v1, :cond_55

    .line 2370
    .line 2371
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2372
    .line 2373
    const-string v2, "PKBD0060"

    .line 2374
    .line 2375
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 2376
    .line 2377
    invoke-virtual {v1, v12}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutSettingsValue(I)Ljava/lang/String;

    .line 2378
    .line 2379
    .line 2380
    move-result-object v1

    .line 2381
    invoke-static {v2, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    .line 2383
    .line 2384
    goto :goto_2a

    .line 2385
    :cond_55
    const/16 v1, 0x42

    .line 2386
    .line 2387
    if-ne v12, v1, :cond_56

    .line 2388
    .line 2389
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2390
    .line 2391
    const-string v2, "PKBD0054"

    .line 2392
    .line 2393
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2394
    .line 2395
    .line 2396
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 2397
    .line 2398
    .line 2399
    :cond_56
    :goto_2a
    move v5, v0

    .line 2400
    goto/16 :goto_38

    .line 2401
    .line 2402
    :cond_57
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    .line 2403
    .line 2404
    .line 2405
    move-result v0

    .line 2406
    goto :goto_2a

    .line 2407
    :sswitch_1e
    const-wide/16 v9, 0x0

    .line 2408
    .line 2409
    if-eqz v19, :cond_68

    .line 2410
    .line 2411
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2412
    .line 2413
    .line 2414
    move-result v0

    .line 2415
    if-eqz v0, :cond_68

    .line 2416
    .line 2417
    const-string v6, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    .line 2418
    .line 2419
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2420
    .line 2421
    .line 2422
    move-result-wide v4

    .line 2423
    const/4 v3, 0x0

    .line 2424
    move-object/from16 v1, p0

    .line 2425
    .line 2426
    move/from16 v2, v28

    .line 2427
    .line 2428
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    .line 2429
    .line 2430
    .line 2431
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_ASSISTANT:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2432
    .line 2433
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2434
    .line 2435
    .line 2436
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2437
    .line 2438
    if-eqz v0, :cond_28

    .line 2439
    .line 2440
    if-nez v13, :cond_28

    .line 2441
    .line 2442
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2443
    .line 2444
    const-string v1, "PKBD0056"

    .line 2445
    .line 2446
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyboardShortcutPolicy:Lcom/android/server/policy/KeyboardShortcutManager;

    .line 2447
    .line 2448
    invoke-virtual {v0, v12}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutSettingsValue(I)Ljava/lang/String;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v0

    .line 2452
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    .line 2454
    .line 2455
    goto/16 :goto_16

    .line 2456
    .line 2457
    :sswitch_1f
    const-wide/16 v9, 0x0

    .line 2458
    .line 2459
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2460
    .line 2461
    if-nez v0, :cond_59

    .line 2462
    .line 2463
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2464
    .line 2465
    if-eqz v0, :cond_58

    .line 2466
    .line 2467
    goto :goto_2b

    .line 2468
    :cond_58
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2469
    .line 2470
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    .line 2471
    .line 2472
    if-eqz v0, :cond_68

    .line 2473
    .line 2474
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 2475
    .line 2476
    .line 2477
    move-result-object v0

    .line 2478
    if-eqz v0, :cond_68

    .line 2479
    .line 2480
    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    .line 2481
    .line 2482
    .line 2483
    move-result v0

    .line 2484
    if-nez v0, :cond_68

    .line 2485
    .line 2486
    goto/16 :goto_16

    .line 2487
    .line 2488
    :cond_59
    :goto_2b
    const-string v1, "WindowManager"

    .line 2489
    .line 2490
    iget-boolean v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 2491
    .line 2492
    if-nez v0, :cond_5a

    .line 2493
    .line 2494
    const/4 v0, 0x0

    .line 2495
    goto :goto_2c

    .line 2496
    :cond_5a
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2497
    .line 2498
    const-class v2, Landroid/hardware/hdmi/HdmiControlManager;

    .line 2499
    .line 2500
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2501
    .line 2502
    .line 2503
    move-result-object v0

    .line 2504
    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 2505
    .line 2506
    :goto_2c
    if-eqz v0, :cond_5c

    .line 2507
    .line 2508
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    .line 2509
    .line 2510
    .line 2511
    move-result v2

    .line 2512
    if-nez v2, :cond_5c

    .line 2513
    .line 2514
    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    .line 2515
    .line 2516
    if-eqz v2, :cond_5c

    .line 2517
    .line 2518
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    .line 2519
    .line 2520
    .line 2521
    move-result-object v0

    .line 2522
    if-eqz v0, :cond_5c

    .line 2523
    .line 2524
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2525
    .line 2526
    .line 2527
    move-result v1

    .line 2528
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 2529
    .line 2530
    .line 2531
    move-result v2

    .line 2532
    if-nez v2, :cond_5b

    .line 2533
    .line 2534
    const/4 v2, 0x1

    .line 2535
    goto :goto_2d

    .line 2536
    :cond_5b
    const/4 v2, 0x0

    .line 2537
    :goto_2d
    invoke-virtual {v0, v1, v2}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    .line 2538
    .line 2539
    .line 2540
    goto/16 :goto_16

    .line 2541
    .line 2542
    :cond_5c
    :try_start_9
    const-string v0, "audio"

    .line 2543
    .line 2544
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2545
    .line 2546
    .line 2547
    move-result-object v0

    .line 2548
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 2549
    .line 2550
    .line 2551
    move-result-object v0

    .line 2552
    if-nez v0, :cond_5d

    .line 2553
    .line 2554
    const-string v2, "WindowManager"

    .line 2555
    .line 2556
    const-string v3, "Unable to find IAudioService interface."

    .line 2557
    .line 2558
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    .line 2560
    .line 2561
    :cond_5d
    iget-boolean v2, v7, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2562
    .line 2563
    iget-object v3, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2564
    .line 2565
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 2566
    .line 2567
    .line 2568
    move-result-object v3

    .line 2569
    invoke-interface {v0, v8, v2, v3, v1}, Landroid/media/IAudioService;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 2570
    .line 2571
    .line 2572
    goto/16 :goto_16

    .line 2573
    .line 2574
    :catch_6
    move-exception v0

    .line 2575
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2576
    .line 2577
    const-string v3, "Error dispatching volume key in handleVolumeKey for event:"

    .line 2578
    .line 2579
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2580
    .line 2581
    .line 2582
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2583
    .line 2584
    .line 2585
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v2

    .line 2589
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2590
    .line 2591
    .line 2592
    goto/16 :goto_16

    .line 2593
    .line 2594
    :sswitch_20
    const-wide/16 v9, 0x0

    .line 2595
    .line 2596
    if-eqz v19, :cond_68

    .line 2597
    .line 2598
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2599
    .line 2600
    .line 2601
    move-result v0

    .line 2602
    if-eqz v0, :cond_68

    .line 2603
    .line 2604
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2605
    .line 2606
    .line 2607
    move-result v0

    .line 2608
    if-eqz v0, :cond_5f

    .line 2609
    .line 2610
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    .line 2611
    .line 2612
    .line 2613
    move-result v0

    .line 2614
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2615
    .line 2616
    .line 2617
    move-result-object v1

    .line 2618
    if-eqz v1, :cond_5e

    .line 2619
    .line 2620
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2621
    .line 2622
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2623
    .line 2624
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2625
    .line 2626
    if-eqz v1, :cond_5e

    .line 2627
    .line 2628
    const/4 v2, 0x0

    .line 2629
    :try_start_a
    invoke-interface {v1, v0, v2}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToStageSplit(IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    .line 2630
    .line 2631
    .line 2632
    :catch_7
    :cond_5e
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SPLIT_SCREEN_NAVIGATION:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2633
    .line 2634
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2635
    .line 2636
    .line 2637
    goto/16 :goto_16

    .line 2638
    .line 2639
    :cond_5f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 2640
    .line 2641
    .line 2642
    move-result v0

    .line 2643
    if-eqz v0, :cond_68

    .line 2644
    .line 2645
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2646
    .line 2647
    .line 2648
    move-result-object v0

    .line 2649
    if-eqz v0, :cond_60

    .line 2650
    .line 2651
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2652
    .line 2653
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2654
    .line 2655
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2656
    .line 2657
    if-eqz v0, :cond_60

    .line 2658
    .line 2659
    const/4 v1, 0x0

    .line 2660
    :try_start_b
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->setSplitscreenFocus(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    .line 2661
    .line 2662
    .line 2663
    :catch_8
    :cond_60
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->CHANGE_SPLITSCREEN_FOCUS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2664
    .line 2665
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2666
    .line 2667
    .line 2668
    goto/16 :goto_16

    .line 2669
    .line 2670
    :sswitch_21
    const-wide/16 v9, 0x0

    .line 2671
    .line 2672
    if-eqz v19, :cond_68

    .line 2673
    .line 2674
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2675
    .line 2676
    .line 2677
    move-result v0

    .line 2678
    if-eqz v0, :cond_68

    .line 2679
    .line 2680
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2681
    .line 2682
    .line 2683
    move-result v0

    .line 2684
    if-eqz v0, :cond_62

    .line 2685
    .line 2686
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    .line 2687
    .line 2688
    .line 2689
    move-result v0

    .line 2690
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2691
    .line 2692
    .line 2693
    move-result-object v1

    .line 2694
    if-eqz v1, :cond_61

    .line 2695
    .line 2696
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2697
    .line 2698
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2699
    .line 2700
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2701
    .line 2702
    if-eqz v1, :cond_61

    .line 2703
    .line 2704
    const/4 v2, 0x1

    .line 2705
    :try_start_c
    invoke-interface {v1, v0, v2}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToStageSplit(IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9

    .line 2706
    .line 2707
    .line 2708
    :catch_9
    :cond_61
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SPLIT_SCREEN_NAVIGATION:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2709
    .line 2710
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2711
    .line 2712
    .line 2713
    goto/16 :goto_16

    .line 2714
    .line 2715
    :cond_62
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 2716
    .line 2717
    .line 2718
    move-result v0

    .line 2719
    if-eqz v0, :cond_64

    .line 2720
    .line 2721
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2722
    .line 2723
    .line 2724
    move-result-object v0

    .line 2725
    if-eqz v0, :cond_63

    .line 2726
    .line 2727
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2728
    .line 2729
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2730
    .line 2731
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2732
    .line 2733
    if-eqz v0, :cond_63

    .line 2734
    .line 2735
    const/4 v1, 0x1

    .line 2736
    :try_start_d
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->setSplitscreenFocus(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a

    .line 2737
    .line 2738
    .line 2739
    :catch_a
    :cond_63
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->CHANGE_SPLITSCREEN_FOCUS:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2740
    .line 2741
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2742
    .line 2743
    .line 2744
    goto/16 :goto_16

    .line 2745
    .line 2746
    :cond_64
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->BACK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2747
    .line 2748
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2749
    .line 2750
    .line 2751
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    .line 2752
    .line 2753
    .line 2754
    move-result-wide v0

    .line 2755
    invoke-virtual {v7, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->injectBackGesture(J)V

    .line 2756
    .line 2757
    .line 2758
    goto/16 :goto_16

    .line 2759
    .line 2760
    :sswitch_22
    const-wide/16 v9, 0x0

    .line 2761
    .line 2762
    if-eqz v19, :cond_68

    .line 2763
    .line 2764
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2765
    .line 2766
    .line 2767
    move-result v0

    .line 2768
    if-eqz v0, :cond_68

    .line 2769
    .line 2770
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2771
    .line 2772
    .line 2773
    move-result v0

    .line 2774
    if-eqz v0, :cond_68

    .line 2775
    .line 2776
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2777
    .line 2778
    .line 2779
    move-result-object v0

    .line 2780
    if-eqz v0, :cond_68

    .line 2781
    .line 2782
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    .line 2783
    .line 2784
    .line 2785
    move-result v1

    .line 2786
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2787
    .line 2788
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2789
    .line 2790
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2791
    .line 2792
    if-eqz v0, :cond_65

    .line 2793
    .line 2794
    :try_start_e
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToDesktop(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b

    .line 2795
    .line 2796
    .line 2797
    :catch_b
    :cond_65
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->DESKTOP_MODE:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2798
    .line 2799
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2800
    .line 2801
    .line 2802
    goto/16 :goto_16

    .line 2803
    .line 2804
    :sswitch_23
    const-wide/16 v9, 0x0

    .line 2805
    .line 2806
    :cond_66
    if-eqz v19, :cond_68

    .line 2807
    .line 2808
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 2809
    .line 2810
    .line 2811
    move-result v0

    .line 2812
    if-eqz v0, :cond_68

    .line 2813
    .line 2814
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 2815
    .line 2816
    .line 2817
    move-result v0

    .line 2818
    if-eqz v0, :cond_68

    .line 2819
    .line 2820
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2821
    .line 2822
    .line 2823
    move-result-object v0

    .line 2824
    if-eqz v0, :cond_68

    .line 2825
    .line 2826
    invoke-virtual {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    .line 2827
    .line 2828
    .line 2829
    move-result v1

    .line 2830
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 2831
    .line 2832
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 2833
    .line 2834
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 2835
    .line 2836
    if-eqz v0, :cond_67

    .line 2837
    .line 2838
    :try_start_f
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->moveFocusedTaskToFullscreen(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_c

    .line 2839
    .line 2840
    .line 2841
    :catch_c
    :cond_67
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->MULTI_WINDOW_NAVIGATION:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2842
    .line 2843
    invoke-virtual {v7, v8, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2844
    .line 2845
    .line 2846
    goto/16 :goto_16

    .line 2847
    .line 2848
    :sswitch_24
    move-object/from16 v2, p1

    .line 2849
    .line 2850
    const-wide/16 v9, 0x0

    .line 2851
    .line 2852
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 2853
    .line 2854
    invoke-virtual {v0, v12}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 2855
    .line 2856
    .line 2857
    move-result v0

    .line 2858
    if-eqz v0, :cond_7c

    .line 2859
    .line 2860
    :cond_68
    :goto_2e
    const/16 v0, 0x1a

    .line 2861
    .line 2862
    if-eq v12, v0, :cond_69

    .line 2863
    .line 2864
    const/16 v0, 0xdf

    .line 2865
    .line 2866
    if-eq v12, v0, :cond_69

    .line 2867
    .line 2868
    const/16 v0, 0xe0

    .line 2869
    .line 2870
    if-eq v12, v0, :cond_69

    .line 2871
    .line 2872
    const/4 v0, 0x1

    .line 2873
    goto :goto_2f

    .line 2874
    :cond_69
    const/4 v0, 0x0

    .line 2875
    :goto_2f
    if-eqz v0, :cond_6c

    .line 2876
    .line 2877
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2878
    .line 2879
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2880
    .line 2881
    iget-object v2, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 2882
    .line 2883
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 2884
    .line 2885
    .line 2886
    move-result v2

    .line 2887
    if-lez v2, :cond_6b

    .line 2888
    .line 2889
    iget-object v2, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 2890
    .line 2891
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2892
    .line 2893
    .line 2894
    move-result-object v2

    .line 2895
    check-cast v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 2896
    .line 2897
    if-eqz v2, :cond_6b

    .line 2898
    .line 2899
    iget-object v2, v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    .line 2900
    .line 2901
    iget-boolean v3, v0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 2902
    .line 2903
    new-instance v4, Landroid/view/KeyEvent;

    .line 2904
    .line 2905
    invoke-direct {v4, v8}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2906
    .line 2907
    .line 2908
    new-instance v5, Landroid/content/Intent;

    .line 2909
    .line 2910
    const-string v6, "android.intent.action.GLOBAL_BUTTON"

    .line 2911
    .line 2912
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2913
    .line 2914
    .line 2915
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2916
    .line 2917
    .line 2918
    move-result-object v2

    .line 2919
    const/high16 v5, 0x10000000

    .line 2920
    .line 2921
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2922
    .line 2923
    .line 2924
    move-result-object v2

    .line 2925
    const-string v5, "android.intent.extra.KEY_EVENT"

    .line 2926
    .line 2927
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2928
    .line 2929
    .line 2930
    move-result-object v2

    .line 2931
    const-string v4, "EXTRA_BEGAN_FROM_NON_INTERACTIVE"

    .line 2932
    .line 2933
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2934
    .line 2935
    .line 2936
    move-result-object v2

    .line 2937
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2938
    .line 2939
    const/4 v4, 0x0

    .line 2940
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2941
    .line 2942
    .line 2943
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 2944
    .line 2945
    .line 2946
    move-result v1

    .line 2947
    const/4 v2, 0x1

    .line 2948
    const/4 v5, 0x0

    .line 2949
    if-ne v1, v2, :cond_6a

    .line 2950
    .line 2951
    iput-boolean v5, v0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 2952
    .line 2953
    :cond_6a
    const/4 v0, 0x1

    .line 2954
    goto :goto_30

    .line 2955
    :cond_6b
    const/4 v4, 0x0

    .line 2956
    const/4 v5, 0x0

    .line 2957
    move v0, v5

    .line 2958
    :goto_30
    if-eqz v0, :cond_6d

    .line 2959
    .line 2960
    goto/16 :goto_16

    .line 2961
    .line 2962
    :cond_6c
    const/4 v4, 0x0

    .line 2963
    const/4 v5, 0x0

    .line 2964
    :cond_6d
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 2965
    .line 2966
    if-eqz v0, :cond_78

    .line 2967
    .line 2968
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2969
    .line 2970
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2971
    .line 2972
    .line 2973
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2974
    .line 2975
    .line 2976
    move-result v0

    .line 2977
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 2978
    .line 2979
    .line 2980
    move-result-object v1

    .line 2981
    if-nez v1, :cond_6e

    .line 2982
    .line 2983
    goto :goto_34

    .line 2984
    :cond_6e
    invoke-virtual {v1}, Landroid/view/InputDevice;->isExternal()Z

    .line 2985
    .line 2986
    .line 2987
    move-result v1

    .line 2988
    if-eqz v1, :cond_6f

    .line 2989
    .line 2990
    goto :goto_34

    .line 2991
    :cond_6f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 2992
    .line 2993
    .line 2994
    move-result v1

    .line 2995
    if-nez v1, :cond_70

    .line 2996
    .line 2997
    const/4 v1, 0x1

    .line 2998
    goto :goto_31

    .line 2999
    :cond_70
    move v1, v5

    .line 3000
    :goto_31
    const/4 v2, 0x4

    .line 3001
    if-ne v0, v2, :cond_71

    .line 3002
    .line 3003
    goto :goto_34

    .line 3004
    :cond_71
    const/high16 v2, 0x1000000

    .line 3005
    .line 3006
    and-int v2, p3, v2

    .line 3007
    .line 3008
    if-eqz v2, :cond_72

    .line 3009
    .line 3010
    const/4 v2, 0x1

    .line 3011
    goto :goto_32

    .line 3012
    :cond_72
    move v2, v5

    .line 3013
    :goto_32
    const/16 v3, 0x18

    .line 3014
    .line 3015
    if-eq v0, v3, :cond_73

    .line 3016
    .line 3017
    const/16 v6, 0x19

    .line 3018
    .line 3019
    if-ne v0, v6, :cond_78

    .line 3020
    .line 3021
    :cond_73
    if-eqz v2, :cond_74

    .line 3022
    .line 3023
    goto :goto_34

    .line 3024
    :cond_74
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    .line 3025
    .line 3026
    .line 3027
    move-result v2

    .line 3028
    if-eqz v1, :cond_76

    .line 3029
    .line 3030
    if-eqz v2, :cond_76

    .line 3031
    .line 3032
    if-ne v0, v3, :cond_75

    .line 3033
    .line 3034
    const-string v0, "HWB1013"

    .line 3035
    .line 3036
    goto :goto_33

    .line 3037
    :cond_75
    const-string v0, "HWB1015"

    .line 3038
    .line 3039
    goto :goto_33

    .line 3040
    :cond_76
    move-object v0, v4

    .line 3041
    :goto_33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3042
    .line 3043
    .line 3044
    move-result v1

    .line 3045
    if-eqz v1, :cond_77

    .line 3046
    .line 3047
    goto :goto_34

    .line 3048
    :cond_77
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 3049
    .line 3050
    .line 3051
    :cond_78
    :goto_34
    const/high16 v0, 0x10000

    .line 3052
    .line 3053
    and-int v0, v29, v0

    .line 3054
    .line 3055
    if-eqz v0, :cond_7d

    .line 3056
    .line 3057
    iget-object v0, v7, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 3058
    .line 3059
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3060
    .line 3061
    .line 3062
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 3063
    .line 3064
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasMetaKeyPass()Z

    .line 3065
    .line 3066
    .line 3067
    move-result v0

    .line 3068
    if-eqz v0, :cond_79

    .line 3069
    .line 3070
    :goto_35
    const/4 v0, 0x1

    .line 3071
    goto :goto_37

    .line 3072
    :cond_79
    const/16 v0, 0x37

    .line 3073
    .line 3074
    if-eq v12, v0, :cond_7a

    .line 3075
    .line 3076
    const/16 v0, 0x38

    .line 3077
    .line 3078
    if-eq v12, v0, :cond_7a

    .line 3079
    .line 3080
    goto :goto_36

    .line 3081
    :cond_7a
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_TOOLBAR_SHORTCUT:Z

    .line 3082
    .line 3083
    if-eqz v0, :cond_7b

    .line 3084
    .line 3085
    goto :goto_35

    .line 3086
    :cond_7b
    :goto_36
    move v0, v5

    .line 3087
    :goto_37
    if-nez v0, :cond_7d

    .line 3088
    .line 3089
    goto/16 :goto_16

    .line 3090
    .line 3091
    :cond_7c
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    .line 3092
    .line 3093
    .line 3094
    move-result v5

    .line 3095
    :cond_7d
    :goto_38
    if-eqz v5, :cond_7e

    .line 3096
    .line 3097
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 3098
    .line 3099
    .line 3100
    move-result v0

    .line 3101
    if-nez v0, :cond_7e

    .line 3102
    .line 3103
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 3104
    .line 3105
    .line 3106
    move-result v0

    .line 3107
    if-nez v0, :cond_7e

    .line 3108
    .line 3109
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3110
    .line 3111
    .line 3112
    move-result-object v0

    .line 3113
    move-object/from16 v2, v25

    .line 3114
    .line 3115
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3116
    .line 3117
    .line 3118
    const-wide/16 v3, -0x1

    .line 3119
    .line 3120
    return-wide v3

    .line 3121
    :cond_7e
    move-object/from16 v2, v25

    .line 3122
    .line 3123
    const-wide/16 v3, -0x1

    .line 3124
    .line 3125
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3126
    .line 3127
    .line 3128
    move-result-object v0

    .line 3129
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 3130
    .line 3131
    .line 3132
    move-result v0

    .line 3133
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    .line 3134
    .line 3135
    .line 3136
    move-result v1

    .line 3137
    const/4 v5, 0x1

    .line 3138
    if-eq v1, v5, :cond_7f

    .line 3139
    .line 3140
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 3141
    .line 3142
    .line 3143
    move-result v1

    .line 3144
    if-eqz v1, :cond_80

    .line 3145
    .line 3146
    :cond_7f
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3147
    .line 3148
    .line 3149
    move-result-object v1

    .line 3150
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3151
    .line 3152
    .line 3153
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 3154
    .line 3155
    .line 3156
    move-result v1

    .line 3157
    if-eqz v1, :cond_80

    .line 3158
    .line 3159
    iget-object v1, v7, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 3160
    .line 3161
    move/from16 v2, v27

    .line 3162
    .line 3163
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3164
    .line 3165
    .line 3166
    :cond_80
    if-eqz v0, :cond_81

    .line 3167
    .line 3168
    move-wide v12, v3

    .line 3169
    goto :goto_39

    .line 3170
    :cond_81
    move-wide v12, v9

    .line 3171
    :goto_39
    return-wide v12

    .line 3172
    nop

    .line 3173
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_24
        0x13 -> :sswitch_23
        0x14 -> :sswitch_22
        0x15 -> :sswitch_21
        0x16 -> :sswitch_20
        0x18 -> :sswitch_1f
        0x19 -> :sswitch_1f
        0x1d -> :sswitch_1e
        0x24 -> :sswitch_1d
        0x25 -> :sswitch_1c
        0x28 -> :sswitch_1b
        0x2a -> :sswitch_1a
        0x2f -> :sswitch_19
        0x39 -> :sswitch_18
        0x3a -> :sswitch_18
        0x3d -> :sswitch_17
        0x42 -> :sswitch_1d
        0x43 -> :sswitch_16
        0x4c -> :sswitch_15
        0x53 -> :sswitch_14
        0x54 -> :sswitch_13
        0x6f -> :sswitch_12
        0x71 -> :sswitch_11
        0x72 -> :sswitch_11
        0x73 -> :sswitch_10
        0x75 -> :sswitch_f
        0x76 -> :sswitch_f
        0xa4 -> :sswitch_1f
        0xb0 -> :sswitch_e
        0xbb -> :sswitch_d
        0xcc -> :sswitch_c
        0xdb -> :sswitch_b
        0xdc -> :sswitch_a
        0xdd -> :sswitch_a
        0xe7 -> :sswitch_9
        0x108 -> :sswitch_8
        0x11c -> :sswitch_7
        0x121 -> :sswitch_6
        0x122 -> :sswitch_6
        0x123 -> :sswitch_6
        0x124 -> :sswitch_6
        0x125 -> :sswitch_6
        0x126 -> :sswitch_6
        0x127 -> :sswitch_6
        0x128 -> :sswitch_6
        0x129 -> :sswitch_6
        0x12a -> :sswitch_6
        0x12b -> :sswitch_6
        0x12c -> :sswitch_6
        0x12d -> :sswitch_6
        0x12e -> :sswitch_6
        0x12f -> :sswitch_6
        0x130 -> :sswitch_6
        0x131 -> :sswitch_5
        0x132 -> :sswitch_4
        0x133 -> :sswitch_3
        0x134 -> :sswitch_2
        0x135 -> :sswitch_2
        0x136 -> :sswitch_2
        0x137 -> :sswitch_2
        0x138 -> :sswitch_1
        0x13e -> :sswitch_0
    .end sparse-switch
.end method

.method public final interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 41

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    const/4 v5, 0x4

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 9
    .line 10
    .line 11
    move-result v7

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move v10, v8

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v10, v9

    .line 23
    :goto_0
    and-int/lit8 v0, v3, 0x1

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v9

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :goto_1
    move v0, v8

    .line 37
    :goto_2
    iget-boolean v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 38
    .line 39
    const/16 v12, 0xe0

    .line 40
    .line 41
    const/16 v13, 0x1a

    .line 42
    .line 43
    const/16 v14, 0xdb

    .line 44
    .line 45
    const/16 v15, 0xb1

    .line 46
    .line 47
    if-nez v11, :cond_a

    .line 48
    .line 49
    if-eqz v10, :cond_4

    .line 50
    .line 51
    if-eq v7, v13, :cond_3

    .line 52
    .line 53
    if-ne v7, v15, :cond_4

    .line 54
    .line 55
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 56
    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_4
    if-eqz v10, :cond_9

    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    if-ne v7, v12, :cond_9

    .line 64
    .line 65
    :cond_5
    if-eq v7, v5, :cond_7

    .line 66
    .line 67
    if-eq v7, v14, :cond_6

    .line 68
    .line 69
    packed-switch v7, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    packed-switch v7, :pswitch_data_1

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :pswitch_0
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :pswitch_1
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_6
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_7
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    .line 86
    .line 87
    :goto_3
    if-eqz v8, :cond_9

    .line 88
    .line 89
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 90
    .line 91
    .line 92
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$1;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 101
    .line 102
    if-nez v0, :cond_8

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_8
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    .line 111
    .line 112
    .line 113
    :cond_9
    :goto_5
    return v9

    .line 114
    :cond_a
    const/high16 v11, 0x20000000

    .line 115
    .line 116
    and-int/2addr v11, v3

    .line 117
    if-eqz v11, :cond_b

    .line 118
    .line 119
    move v4, v8

    .line 120
    goto :goto_6

    .line 121
    :cond_b
    move v4, v9

    .line 122
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 123
    .line 124
    .line 125
    move-result v17

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    const/high16 v18, 0x1000000

    .line 131
    .line 132
    and-int v18, v3, v18

    .line 133
    .line 134
    if-eqz v18, :cond_c

    .line 135
    .line 136
    move/from16 v18, v8

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_c
    move/from16 v18, v9

    .line 140
    .line 141
    :goto_7
    sget-boolean v19, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 142
    .line 143
    const-string v12, "WindowManager"

    .line 144
    .line 145
    const-string v6, " interactive="

    .line 146
    .line 147
    if-nez v19, :cond_d

    .line 148
    .line 149
    sget-object v20, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 150
    .line 151
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    move-object/from16 v8, v20

    .line 156
    .line 157
    check-cast v8, Landroid/util/ArraySet;

    .line 158
    .line 159
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-eqz v8, :cond_10

    .line 164
    .line 165
    :cond_d
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 166
    .line 167
    if-eqz v8, :cond_f

    .line 168
    .line 169
    if-eqz v4, :cond_e

    .line 170
    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_f

    .line 176
    .line 177
    goto :goto_8

    .line 178
    :cond_e
    invoke-virtual {v8}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_f

    .line 183
    .line 184
    :goto_8
    const/4 v8, 0x1

    .line 185
    goto :goto_9

    .line 186
    :cond_f
    const/4 v8, 0x0

    .line 187
    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v13, "interceptKeyTq keycode="

    .line 190
    .line 191
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v13, " keyguardActive="

    .line 204
    .line 205
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v8, " policyFlags="

    .line 212
    .line 213
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    :cond_10
    const/4 v8, -0x1

    .line 231
    if-nez v4, :cond_18

    .line 232
    .line 233
    if-eqz v18, :cond_11

    .line 234
    .line 235
    if-nez v0, :cond_11

    .line 236
    .line 237
    goto :goto_c

    .line 238
    :cond_11
    invoke-virtual {v1, v15}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(I)Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-eqz v9, :cond_12

    .line 243
    .line 244
    iput v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 245
    .line 246
    :goto_a
    const/4 v9, 0x1

    .line 247
    goto :goto_e

    .line 248
    :cond_12
    if-eqz v0, :cond_16

    .line 249
    .line 250
    if-eqz v10, :cond_15

    .line 251
    .line 252
    if-eq v7, v5, :cond_14

    .line 253
    .line 254
    if-eq v7, v14, :cond_13

    .line 255
    .line 256
    packed-switch v7, :pswitch_data_2

    .line 257
    .line 258
    .line 259
    packed-switch v7, :pswitch_data_3

    .line 260
    .line 261
    .line 262
    const/4 v9, 0x1

    .line 263
    goto :goto_b

    .line 264
    :pswitch_2
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 265
    .line 266
    goto :goto_b

    .line 267
    :pswitch_3
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    .line 268
    .line 269
    goto :goto_b

    .line 270
    :cond_13
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    .line 271
    .line 272
    goto :goto_b

    .line 273
    :cond_14
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    .line 274
    .line 275
    :goto_b
    if-nez v9, :cond_16

    .line 276
    .line 277
    :cond_15
    const/4 v0, 0x0

    .line 278
    :cond_16
    if-eqz v0, :cond_17

    .line 279
    .line 280
    if-eqz v10, :cond_17

    .line 281
    .line 282
    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 283
    .line 284
    :cond_17
    const/4 v9, 0x0

    .line 285
    goto :goto_e

    .line 286
    :cond_18
    :goto_c
    if-eqz v4, :cond_1a

    .line 287
    .line 288
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 289
    .line 290
    if-ne v7, v0, :cond_19

    .line 291
    .line 292
    if-nez v10, :cond_19

    .line 293
    .line 294
    const/4 v0, 0x0

    .line 295
    goto :goto_d

    .line 296
    :cond_19
    const/4 v0, 0x1

    .line 297
    :goto_d
    iput v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 298
    .line 299
    move v9, v0

    .line 300
    const/4 v0, 0x0

    .line 301
    goto :goto_e

    .line 302
    :cond_1a
    const/4 v0, 0x0

    .line 303
    goto :goto_a

    .line 304
    :goto_e
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 305
    .line 306
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 314
    .line 315
    .line 316
    move-result v22

    .line 317
    if-nez v22, :cond_1b

    .line 318
    .line 319
    const/4 v5, 0x1

    .line 320
    goto :goto_f

    .line 321
    :cond_1b
    const/4 v5, 0x0

    .line 322
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    move/from16 v23, v9

    .line 327
    .line 328
    const-string v9, "PhoneWindowManagerExt"

    .line 329
    .line 330
    const/16 v25, 0x8

    .line 331
    .line 332
    move/from16 v26, v15

    .line 333
    .line 334
    const/4 v15, 0x3

    .line 335
    if-eq v14, v15, :cond_1f

    .line 336
    .line 337
    const/16 v15, 0x1a

    .line 338
    .line 339
    if-eq v14, v15, :cond_1e

    .line 340
    .line 341
    const/16 v15, 0xbb

    .line 342
    .line 343
    if-eq v14, v15, :cond_1c

    .line 344
    .line 345
    goto :goto_12

    .line 346
    :cond_1c
    iget v5, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 347
    .line 348
    const/4 v8, 0x1

    .line 349
    if-ne v5, v8, :cond_22

    .line 350
    .line 351
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    iget-object v8, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 356
    .line 357
    const/4 v13, 0x0

    .line 358
    invoke-virtual {v8, v5, v13}, Landroid/util/SparseIntArray;->get(II)I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    and-int/lit8 v5, v5, 0x8

    .line 363
    .line 364
    if-eqz v5, :cond_1d

    .line 365
    .line 366
    goto :goto_12

    .line 367
    :cond_1d
    const-string v5, "Recent Key was blocked by LOCK_TASK_MODE_LOCKED"

    .line 368
    .line 369
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    :goto_10
    const/4 v5, 0x2

    .line 373
    goto :goto_13

    .line 374
    :cond_1e
    move v14, v15

    .line 375
    invoke-virtual {v13, v14, v8, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasRequestedActionBlockKeyEvent(IIZ)I

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    const/4 v8, -0x1

    .line 380
    if-eq v5, v8, :cond_22

    .line 381
    .line 382
    goto :goto_13

    .line 383
    :cond_1f
    iget v8, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 384
    .line 385
    const/4 v14, 0x1

    .line 386
    if-ne v8, v14, :cond_21

    .line 387
    .line 388
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    iget-object v14, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 393
    .line 394
    iget-object v14, v14, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 395
    .line 396
    iget-boolean v14, v14, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 397
    .line 398
    if-nez v14, :cond_21

    .line 399
    .line 400
    iget-object v14, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 401
    .line 402
    const/4 v15, 0x0

    .line 403
    invoke-virtual {v14, v8, v15}, Landroid/util/SparseIntArray;->get(II)I

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    const/4 v14, 0x4

    .line 408
    and-int/2addr v8, v14

    .line 409
    if-eqz v8, :cond_20

    .line 410
    .line 411
    goto :goto_11

    .line 412
    :cond_20
    const-string v5, "Home Key was blocked by LOCK_TASK_MODE_LOCKED"

    .line 413
    .line 414
    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    goto :goto_10

    .line 418
    :cond_21
    :goto_11
    if-eqz v4, :cond_22

    .line 419
    .line 420
    if-eqz v5, :cond_22

    .line 421
    .line 422
    iget-object v5, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 423
    .line 424
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 425
    .line 426
    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    if-eqz v5, :cond_22

    .line 431
    .line 432
    const/16 v5, 0x12

    .line 433
    .line 434
    goto :goto_13

    .line 435
    :cond_22
    :goto_12
    const/4 v5, 0x1

    .line 436
    :goto_13
    and-int/lit8 v8, v5, 0x20

    .line 437
    .line 438
    if-eqz v8, :cond_23

    .line 439
    .line 440
    const/4 v8, 0x0

    .line 441
    :goto_14
    const/4 v13, 0x2

    .line 442
    goto :goto_15

    .line 443
    :cond_23
    and-int/lit8 v8, v5, 0x10

    .line 444
    .line 445
    if-eqz v8, :cond_24

    .line 446
    .line 447
    const/4 v8, 0x1

    .line 448
    goto :goto_14

    .line 449
    :cond_24
    move v8, v0

    .line 450
    goto :goto_14

    .line 451
    :goto_15
    and-int/lit8 v0, v5, 0x2

    .line 452
    .line 453
    const-string v5, "KEY("

    .line 454
    .line 455
    const/4 v13, 0x6

    .line 456
    if-eqz v0, :cond_27

    .line 457
    .line 458
    if-eqz v8, :cond_26

    .line 459
    .line 460
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 461
    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 463
    .line 464
    .line 465
    move-result-wide v1

    .line 466
    const-string v3, ")"

    .line 467
    .line 468
    invoke-static {v7, v5, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    iget-boolean v4, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 473
    .line 474
    invoke-virtual {v0, v4}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    if-nez v4, :cond_25

    .line 479
    .line 480
    goto :goto_16

    .line 481
    :cond_25
    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 482
    .line 483
    .line 484
    :cond_26
    :goto_16
    const-string v0, "interceptKeyTq : return condition of policyExt wakeKey"

    .line 485
    .line 486
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    :goto_17
    const/4 v1, 0x0

    .line 490
    return v1

    .line 491
    :cond_27
    const/16 v14, 0x1a

    .line 492
    .line 493
    if-eq v7, v14, :cond_28

    .line 494
    .line 495
    const/16 v0, 0xdf

    .line 496
    .line 497
    if-eq v7, v0, :cond_28

    .line 498
    .line 499
    const/16 v0, 0xe0

    .line 500
    .line 501
    if-eq v7, v0, :cond_28

    .line 502
    .line 503
    const/4 v0, 0x1

    .line 504
    goto :goto_18

    .line 505
    :cond_28
    const/4 v0, 0x0

    .line 506
    :goto_18
    if-eqz v0, :cond_2d

    .line 507
    .line 508
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 509
    .line 510
    iget-object v0, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 511
    .line 512
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    if-eqz v0, :cond_29

    .line 517
    .line 518
    const/4 v0, 0x1

    .line 519
    goto :goto_19

    .line 520
    :cond_29
    const/4 v0, 0x0

    .line 521
    :goto_19
    if-eqz v0, :cond_2d

    .line 522
    .line 523
    if-nez v4, :cond_2b

    .line 524
    .line 525
    if-eqz v8, :cond_2b

    .line 526
    .line 527
    if-eqz v10, :cond_2b

    .line 528
    .line 529
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 530
    .line 531
    iget-object v0, v0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 532
    .line 533
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    check-cast v0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 538
    .line 539
    if-nez v0, :cond_2a

    .line 540
    .line 541
    const/4 v9, 0x0

    .line 542
    goto :goto_1a

    .line 543
    :cond_2a
    iget-boolean v9, v0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    .line 544
    .line 545
    :goto_1a
    if-eqz v9, :cond_2b

    .line 546
    .line 547
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 548
    .line 549
    const/4 v3, 0x1

    .line 550
    iput-boolean v3, v0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 551
    .line 552
    const/4 v3, -0x1

    .line 553
    iput v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 554
    .line 555
    const/16 v21, 0x1

    .line 556
    .line 557
    goto :goto_1b

    .line 558
    :cond_2b
    move/from16 v21, v23

    .line 559
    .line 560
    :goto_1b
    if-eqz v8, :cond_2c

    .line 561
    .line 562
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 563
    .line 564
    .line 565
    :cond_2c
    return v21

    .line 566
    :cond_2d
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    .line 567
    .line 568
    if-nez v0, :cond_2e

    .line 569
    .line 570
    const/16 v14, 0xb1

    .line 571
    .line 572
    const/4 v15, 0x0

    .line 573
    goto :goto_1c

    .line 574
    :cond_2e
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 575
    .line 576
    const-class v15, Landroid/hardware/hdmi/HdmiControlManager;

    .line 577
    .line 578
    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 583
    .line 584
    move-object v15, v0

    .line 585
    const/16 v14, 0xb1

    .line 586
    .line 587
    :goto_1c
    if-ne v7, v14, :cond_30

    .line 588
    .line 589
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 590
    .line 591
    if-eqz v0, :cond_30

    .line 592
    .line 593
    if-eqz v15, :cond_2f

    .line 594
    .line 595
    invoke-virtual {v15}, Landroid/hardware/hdmi/HdmiControlManager;->shouldHandleTvPowerKey()Z

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    if-nez v0, :cond_30

    .line 600
    .line 601
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 602
    .line 603
    .line 604
    move-result-wide v27

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 606
    .line 607
    .line 608
    move-result-wide v29

    .line 609
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 610
    .line 611
    .line 612
    move-result v31

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 614
    .line 615
    .line 616
    move-result v33

    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 618
    .line 619
    .line 620
    move-result v34

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 622
    .line 623
    .line 624
    move-result v35

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    .line 626
    .line 627
    .line 628
    move-result v36

    .line 629
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 630
    .line 631
    .line 632
    move-result v37

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    .line 634
    .line 635
    .line 636
    move-result v38

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 638
    .line 639
    .line 640
    move-result v39

    .line 641
    const/16 v40, 0x0

    .line 642
    .line 643
    const/16 v32, 0x1a

    .line 644
    .line 645
    invoke-static/range {v27 .. v40}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-virtual {v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    return v0

    .line 654
    :cond_30
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 655
    .line 656
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 665
    .line 666
    iget-boolean v14, v14, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 667
    .line 668
    if-eqz v4, :cond_31

    .line 669
    .line 670
    if-eqz v14, :cond_31

    .line 671
    .line 672
    const/4 v14, 0x1

    .line 673
    goto :goto_1d

    .line 674
    :cond_31
    const/4 v14, 0x0

    .line 675
    :goto_1d
    const/16 v13, 0x19

    .line 676
    .line 677
    move/from16 v28, v8

    .line 678
    .line 679
    const/16 v8, 0x18

    .line 680
    .line 681
    if-eq v7, v8, :cond_32

    .line 682
    .line 683
    if-ne v7, v13, :cond_33

    .line 684
    .line 685
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 686
    .line 687
    .line 688
    move-result-object v8

    .line 689
    if-eqz v8, :cond_33

    .line 690
    .line 691
    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 692
    .line 693
    .line 694
    move-result v8

    .line 695
    if-eqz v8, :cond_33

    .line 696
    .line 697
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 698
    .line 699
    invoke-virtual {v8}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    .line 700
    .line 701
    .line 702
    move-result v8

    .line 703
    if-eqz v8, :cond_33

    .line 704
    .line 705
    const-string v8, "interceptKeyTq, interactive value has updated by proximity sensor during inCall"

    .line 706
    .line 707
    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    .line 709
    .line 710
    const/4 v14, 0x0

    .line 711
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 712
    .line 713
    .line 714
    move-result v8

    .line 715
    and-int/lit16 v8, v8, 0x400

    .line 716
    .line 717
    if-nez v8, :cond_34

    .line 718
    .line 719
    invoke-virtual {v1, v2, v14, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGesture(Landroid/view/KeyEvent;ZZI)I

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    const/4 v8, 0x2

    .line 724
    and-int/2addr v0, v8

    .line 725
    if-eqz v0, :cond_34

    .line 726
    .line 727
    const-string v0, "interceptKeyTq : return condition of policyExt handleKeyGesture"

    .line 728
    .line 729
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .line 731
    .line 732
    goto/16 :goto_17

    .line 733
    .line 734
    :cond_34
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 735
    .line 736
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    .line 738
    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 740
    .line 741
    .line 742
    move-result v8

    .line 743
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 744
    .line 745
    .line 746
    move-result v13

    .line 747
    move-object/from16 v30, v5

    .line 748
    .line 749
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 750
    .line 751
    .line 752
    move-result v5

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 754
    .line 755
    .line 756
    move-result v31

    .line 757
    if-nez v31, :cond_35

    .line 758
    .line 759
    move-object/from16 v31, v15

    .line 760
    .line 761
    const/4 v15, 0x1

    .line 762
    goto :goto_1e

    .line 763
    :cond_35
    move-object/from16 v31, v15

    .line 764
    .line 765
    const/4 v15, 0x0

    .line 766
    :goto_1e
    if-eqz v11, :cond_36

    .line 767
    .line 768
    const/4 v11, 0x1

    .line 769
    goto :goto_1f

    .line 770
    :cond_36
    const/4 v11, 0x0

    .line 771
    :goto_1f
    if-nez v19, :cond_37

    .line 772
    .line 773
    sget-object v19, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 774
    .line 775
    move/from16 v32, v14

    .line 776
    .line 777
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 778
    .line 779
    .line 780
    move-result-object v14

    .line 781
    move/from16 v33, v7

    .line 782
    .line 783
    move-object/from16 v7, v19

    .line 784
    .line 785
    check-cast v7, Landroid/util/ArraySet;

    .line 786
    .line 787
    invoke-virtual {v7, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v7

    .line 791
    if-eqz v7, :cond_38

    .line 792
    .line 793
    goto :goto_20

    .line 794
    :cond_37
    move/from16 v33, v7

    .line 795
    .line 796
    move/from16 v32, v14

    .line 797
    .line 798
    :goto_20
    new-instance v7, Ljava/lang/StringBuilder;

    .line 799
    .line 800
    const-string v14, "interceptKeyTq code="

    .line 801
    .line 802
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    const-string v14, " down="

    .line 809
    .line 810
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    const-string v14, " repeatCount="

    .line 817
    .line 818
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    .line 820
    .line 821
    const-string v14, " displayId="

    .line 822
    .line 823
    invoke-static {v13, v5, v14, v6, v7}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 824
    .line 825
    .line 826
    invoke-static {v9, v7, v11}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 827
    .line 828
    .line 829
    :cond_38
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    .line 830
    .line 831
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 832
    .line 833
    if-eqz v5, :cond_39

    .line 834
    .line 835
    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 836
    .line 837
    .line 838
    move-result-object v7

    .line 839
    invoke-virtual {v7}, Lcom/android/server/policy/KeyCombinationManager;->isPowerKeyIntercepted()Z

    .line 840
    .line 841
    .line 842
    move-result v7

    .line 843
    if-eqz v7, :cond_39

    .line 844
    .line 845
    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 846
    .line 847
    .line 848
    move-result-object v7

    .line 849
    iget-object v7, v7, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    .line 850
    .line 851
    const/16 v14, 0x1a

    .line 852
    .line 853
    invoke-virtual {v7, v14}, Landroid/util/SparseLongArray;->get(I)J

    .line 854
    .line 855
    .line 856
    move-result-wide v34

    .line 857
    const-wide/16 v36, 0x0

    .line 858
    .line 859
    cmp-long v7, v34, v36

    .line 860
    .line 861
    if-eqz v7, :cond_39

    .line 862
    .line 863
    const/4 v7, 0x1

    .line 864
    :goto_21
    const/4 v14, 0x3

    .line 865
    goto :goto_22

    .line 866
    :cond_39
    const/4 v7, 0x0

    .line 867
    goto :goto_21

    .line 868
    :goto_22
    if-eq v8, v14, :cond_52

    .line 869
    .line 870
    const/4 v14, 0x4

    .line 871
    if-eq v8, v14, :cond_51

    .line 872
    .line 873
    const-string/jumbo v14, "systemKeyEventRequested ADD_PASS"

    .line 874
    .line 875
    .line 876
    const/4 v3, 0x6

    .line 877
    if-eq v8, v3, :cond_50

    .line 878
    .line 879
    const/16 v3, 0xbb

    .line 880
    .line 881
    if-eq v8, v3, :cond_4e

    .line 882
    .line 883
    const/16 v3, 0x3f7

    .line 884
    .line 885
    if-eq v8, v3, :cond_46

    .line 886
    .line 887
    const/16 v3, 0x419

    .line 888
    .line 889
    if-eq v8, v3, :cond_4b

    .line 890
    .line 891
    const/16 v3, 0x433

    .line 892
    .line 893
    if-eq v8, v3, :cond_49

    .line 894
    .line 895
    const/16 v3, 0x434

    .line 896
    .line 897
    if-eq v8, v3, :cond_49

    .line 898
    .line 899
    const/16 v3, 0x436

    .line 900
    .line 901
    if-eq v8, v3, :cond_47

    .line 902
    .line 903
    const/16 v3, 0x437

    .line 904
    .line 905
    if-eq v8, v3, :cond_46

    .line 906
    .line 907
    const/16 v3, 0x44c

    .line 908
    .line 909
    if-eq v8, v3, :cond_44

    .line 910
    .line 911
    const/16 v3, 0x44d

    .line 912
    .line 913
    if-eq v8, v3, :cond_44

    .line 914
    .line 915
    const/16 v3, 0x65

    .line 916
    .line 917
    packed-switch v8, :pswitch_data_4

    .line 918
    .line 919
    .line 920
    :cond_3a
    move/from16 v24, v4

    .line 921
    .line 922
    goto/16 :goto_2d

    .line 923
    .line 924
    :pswitch_4
    sget-boolean v19, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    .line 925
    .line 926
    if-eqz v19, :cond_3b

    .line 927
    .line 928
    if-nez v15, :cond_3b

    .line 929
    .line 930
    iget-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 931
    .line 932
    if-eqz v15, :cond_3b

    .line 933
    .line 934
    const/4 v15, 0x0

    .line 935
    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 936
    .line 937
    const-string v15, "close_dictation"

    .line 938
    .line 939
    invoke-virtual {v0, v8, v15}, Lcom/android/server/policy/PhoneWindowManagerExt;->callDictation(ILjava/lang/String;)V

    .line 940
    .line 941
    .line 942
    :cond_3b
    if-eqz v5, :cond_3c

    .line 943
    .line 944
    if-nez v13, :cond_3c

    .line 945
    .line 946
    iget v5, v6, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 947
    .line 948
    if-ne v5, v3, :cond_3c

    .line 949
    .line 950
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSamsungKeyboardShown()Z

    .line 951
    .line 952
    .line 953
    move-result v3

    .line 954
    if-nez v3, :cond_3c

    .line 955
    .line 956
    new-instance v3, Lcom/android/server/policy/BixbyService$Params;

    .line 957
    .line 958
    invoke-direct {v3, v2, v11}, Lcom/android/server/policy/BixbyService$Params;-><init>(Landroid/view/KeyEvent;Z)V

    .line 959
    .line 960
    .line 961
    iput-boolean v7, v3, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    .line 962
    .line 963
    new-instance v5, Lcom/android/server/policy/BixbyService$Params;

    .line 964
    .line 965
    invoke-direct {v5, v3}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params;)V

    .line 966
    .line 967
    .line 968
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    .line 969
    .line 970
    invoke-virtual {v3, v5}, Lcom/android/server/policy/BixbyService;->startService(Lcom/android/server/policy/BixbyService$Params;)V

    .line 971
    .line 972
    .line 973
    :cond_3c
    invoke-virtual {v0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 974
    .line 975
    .line 976
    move-result v0

    .line 977
    if-eqz v0, :cond_3e

    .line 978
    .line 979
    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .line 981
    .line 982
    move/from16 v24, v4

    .line 983
    .line 984
    :cond_3d
    :goto_23
    const/4 v0, 0x4

    .line 985
    goto/16 :goto_2e

    .line 986
    .line 987
    :cond_3e
    const-string/jumbo v0, "systemKeyEventRequested REMOVE_PASS"

    .line 988
    .line 989
    .line 990
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    .line 992
    .line 993
    move/from16 v24, v4

    .line 994
    .line 995
    :cond_3f
    :goto_24
    move/from16 v0, v25

    .line 996
    .line 997
    goto/16 :goto_2e

    .line 998
    .line 999
    :pswitch_5
    if-eqz v5, :cond_40

    .line 1000
    .line 1001
    if-eqz v7, :cond_40

    .line 1002
    .line 1003
    if-eqz v15, :cond_40

    .line 1004
    .line 1005
    if-nez v13, :cond_40

    .line 1006
    .line 1007
    iget v5, v6, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1008
    .line 1009
    if-ne v5, v3, :cond_40

    .line 1010
    .line 1011
    new-instance v3, Lcom/android/server/policy/BixbyService$Params;

    .line 1012
    .line 1013
    invoke-direct {v3, v2, v11}, Lcom/android/server/policy/BixbyService$Params;-><init>(Landroid/view/KeyEvent;Z)V

    .line 1014
    .line 1015
    .line 1016
    iput-boolean v7, v3, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    .line 1017
    .line 1018
    new-instance v5, Lcom/android/server/policy/BixbyService$Params;

    .line 1019
    .line 1020
    invoke-direct {v5, v3}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params;)V

    .line 1021
    .line 1022
    .line 1023
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    .line 1024
    .line 1025
    invoke-virtual {v3, v5}, Lcom/android/server/policy/BixbyService;->startService(Lcom/android/server/policy/BixbyService$Params;)V

    .line 1026
    .line 1027
    .line 1028
    :cond_40
    if-eqz v15, :cond_3a

    .line 1029
    .line 1030
    const/4 v3, 0x0

    .line 1031
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->knoxCustomVolumeKeyAppSwitching(Z)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v0

    .line 1035
    if-eqz v0, :cond_3a

    .line 1036
    .line 1037
    move/from16 v24, v4

    .line 1038
    .line 1039
    :cond_41
    :goto_25
    const/4 v0, 0x2

    .line 1040
    goto/16 :goto_2e

    .line 1041
    .line 1042
    :pswitch_6
    if-nez v13, :cond_42

    .line 1043
    .line 1044
    iput-boolean v15, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyPressed:Z

    .line 1045
    .line 1046
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1047
    .line 1048
    const/4 v9, 0x1

    .line 1049
    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1050
    .line 1051
    .line 1052
    if-eqz v15, :cond_42

    .line 1053
    .line 1054
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 1055
    .line 1056
    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v14

    .line 1060
    move/from16 v24, v4

    .line 1061
    .line 1062
    const-wide/16 v3, 0xbb8

    .line 1063
    .line 1064
    invoke-virtual {v8, v14, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1065
    .line 1066
    .line 1067
    goto :goto_26

    .line 1068
    :cond_42
    move/from16 v24, v4

    .line 1069
    .line 1070
    :goto_26
    if-eqz v5, :cond_43

    .line 1071
    .line 1072
    if-eqz v7, :cond_43

    .line 1073
    .line 1074
    if-eqz v15, :cond_43

    .line 1075
    .line 1076
    if-nez v13, :cond_43

    .line 1077
    .line 1078
    iget v3, v6, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1079
    .line 1080
    const/16 v4, 0x65

    .line 1081
    .line 1082
    if-ne v3, v4, :cond_43

    .line 1083
    .line 1084
    new-instance v3, Lcom/android/server/policy/BixbyService$Params;

    .line 1085
    .line 1086
    invoke-direct {v3, v2, v11}, Lcom/android/server/policy/BixbyService$Params;-><init>(Landroid/view/KeyEvent;Z)V

    .line 1087
    .line 1088
    .line 1089
    iput-boolean v7, v3, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    .line 1090
    .line 1091
    new-instance v4, Lcom/android/server/policy/BixbyService$Params;

    .line 1092
    .line 1093
    invoke-direct {v4, v3}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params;)V

    .line 1094
    .line 1095
    .line 1096
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    .line 1097
    .line 1098
    invoke-virtual {v3, v4}, Lcom/android/server/policy/BixbyService;->startService(Lcom/android/server/policy/BixbyService$Params;)V

    .line 1099
    .line 1100
    .line 1101
    :cond_43
    if-eqz v15, :cond_54

    .line 1102
    .line 1103
    const/4 v3, 0x1

    .line 1104
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->knoxCustomVolumeKeyAppSwitching(Z)Z

    .line 1105
    .line 1106
    .line 1107
    move-result v0

    .line 1108
    if-eqz v0, :cond_54

    .line 1109
    .line 1110
    :goto_27
    goto :goto_25

    .line 1111
    :cond_44
    move/from16 v24, v4

    .line 1112
    .line 1113
    if-eqz v15, :cond_41

    .line 1114
    .line 1115
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1116
    .line 1117
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v3

    .line 1121
    const/16 v4, 0x44c

    .line 1122
    .line 1123
    if-ne v8, v4, :cond_45

    .line 1124
    .line 1125
    const v4, 0x10405b2

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v3

    .line 1132
    goto :goto_28

    .line 1133
    :cond_45
    const v4, 0x10405b3

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v3

    .line 1140
    :goto_28
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1141
    .line 1142
    invoke-virtual {v0, v4, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    goto :goto_25

    .line 1146
    :cond_46
    move/from16 v24, v4

    .line 1147
    .line 1148
    goto/16 :goto_2a

    .line 1149
    .line 1150
    :cond_47
    move/from16 v24, v4

    .line 1151
    .line 1152
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SPEN:Z

    .line 1153
    .line 1154
    if-eqz v3, :cond_41

    .line 1155
    .line 1156
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 1157
    .line 1158
    .line 1159
    move-result v3

    .line 1160
    if-eqz v3, :cond_48

    .line 1161
    .line 1162
    goto :goto_27

    .line 1163
    :cond_48
    if-eqz v15, :cond_3d

    .line 1164
    .line 1165
    const-string v3, "Press KEYCODE_DOUBLE_TAP"

    .line 1166
    .line 1167
    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    .line 1169
    .line 1170
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SCREEN_OFF_MEMO:Z

    .line 1171
    .line 1172
    if-eqz v3, :cond_3d

    .line 1173
    .line 1174
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    .line 1175
    .line 1176
    if-eqz v3, :cond_3d

    .line 1177
    .line 1178
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 1179
    .line 1180
    const-string/jumbo v4, "pen_intent_com"

    .line 1181
    .line 1182
    .line 1183
    const-string/jumbo v5, "pen_doubletab"

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    .line 1188
    .line 1189
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1190
    .line 1191
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoIntent:Landroid/content/Intent;

    .line 1192
    .line 1193
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1194
    .line 1195
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1196
    .line 1197
    .line 1198
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_SPEN_SMART_CLIP:Z

    .line 1199
    .line 1200
    if-eqz v3, :cond_3d

    .line 1201
    .line 1202
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 1203
    .line 1204
    if-eqz v0, :cond_3d

    .line 1205
    .line 1206
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->setScreenOffDoubleTabTime()V

    .line 1207
    .line 1208
    .line 1209
    goto/16 :goto_23

    .line 1210
    .line 1211
    :cond_49
    move/from16 v24, v4

    .line 1212
    .line 1213
    if-eqz v15, :cond_41

    .line 1214
    .line 1215
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1216
    .line 1217
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v3

    .line 1221
    const/16 v4, 0x433

    .line 1222
    .line 1223
    if-ne v8, v4, :cond_4a

    .line 1224
    .line 1225
    const v4, 0x1040f34

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v3

    .line 1232
    goto :goto_29

    .line 1233
    :cond_4a
    const v4, 0x1040f33

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v3

    .line 1240
    :goto_29
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1241
    .line 1242
    invoke-virtual {v0, v4, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1243
    .line 1244
    .line 1245
    goto/16 :goto_25

    .line 1246
    .line 1247
    :cond_4b
    move/from16 v24, v4

    .line 1248
    .line 1249
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_DOUBLE_TAP_PREMIUM_WATCH:Z

    .line 1250
    .line 1251
    if-eqz v3, :cond_41

    .line 1252
    .line 1253
    if-eqz v15, :cond_41

    .line 1254
    .line 1255
    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    .line 1256
    .line 1257
    if-nez v3, :cond_4c

    .line 1258
    .line 1259
    goto/16 :goto_25

    .line 1260
    .line 1261
    :cond_4c
    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 1262
    .line 1263
    .line 1264
    move-result v3

    .line 1265
    if-nez v3, :cond_4d

    .line 1266
    .line 1267
    const-string v0, "Can not launch premium watch. UserSetup is not completed."

    .line 1268
    .line 1269
    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    .line 1271
    .line 1272
    goto/16 :goto_25

    .line 1273
    .line 1274
    :cond_4d
    new-instance v3, Landroid/content/Intent;

    .line 1275
    .line 1276
    const-string v4, "android.intent.action.MAIN"

    .line 1277
    .line 1278
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    const/high16 v4, 0x10010000

    .line 1282
    .line 1283
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1284
    .line 1285
    .line 1286
    const-string v4, "com.sec.android.app.premiumwatch/com.sec.android.app.premiumwatch.activity.PremiumWatch"

    .line 1287
    .line 1288
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v4

    .line 1292
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1293
    .line 1294
    .line 1295
    const-string v4, "doubleTap"

    .line 1296
    .line 1297
    const/4 v5, 0x1

    .line 1298
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1299
    .line 1300
    .line 1301
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    const-string v5, "launchDoubleTapPremiumWatch:"

    .line 1304
    .line 1305
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v4

    .line 1315
    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    .line 1317
    .line 1318
    :try_start_0
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 1319
    .line 1320
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1321
    .line 1322
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    .line 1324
    .line 1325
    goto/16 :goto_25

    .line 1326
    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    const-string v3, "No activity to launch Premium watch. "

    .line 1329
    .line 1330
    invoke-static {v9, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1331
    .line 1332
    .line 1333
    goto/16 :goto_25

    .line 1334
    .line 1335
    :goto_2a
    invoke-virtual {v0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1336
    .line 1337
    .line 1338
    move-result v0

    .line 1339
    if-eqz v0, :cond_3d

    .line 1340
    .line 1341
    :goto_2b
    goto/16 :goto_24

    .line 1342
    .line 1343
    :cond_4e
    move/from16 v24, v4

    .line 1344
    .line 1345
    invoke-virtual {v0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 1346
    .line 1347
    .line 1348
    move-result v3

    .line 1349
    if-eqz v3, :cond_4f

    .line 1350
    .line 1351
    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    .line 1353
    .line 1354
    goto/16 :goto_23

    .line 1355
    .line 1356
    :cond_4f
    invoke-virtual {v0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1357
    .line 1358
    .line 1359
    move-result v0

    .line 1360
    if-eqz v0, :cond_54

    .line 1361
    .line 1362
    :goto_2c
    goto :goto_2b

    .line 1363
    :cond_50
    move/from16 v24, v4

    .line 1364
    .line 1365
    invoke-virtual {v0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 1366
    .line 1367
    .line 1368
    move-result v0

    .line 1369
    if-eqz v0, :cond_3f

    .line 1370
    .line 1371
    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    .line 1373
    .line 1374
    goto/16 :goto_23

    .line 1375
    .line 1376
    :cond_51
    move/from16 v24, v4

    .line 1377
    .line 1378
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 1379
    .line 1380
    .line 1381
    move-result v3

    .line 1382
    const/high16 v4, 0x10000000

    .line 1383
    .line 1384
    and-int/2addr v3, v4

    .line 1385
    if-nez v3, :cond_3d

    .line 1386
    .line 1387
    invoke-virtual {v0, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasSingleKeyRule(I)Z

    .line 1388
    .line 1389
    .line 1390
    move-result v0

    .line 1391
    if-eqz v0, :cond_3d

    .line 1392
    .line 1393
    goto :goto_2c

    .line 1394
    :cond_52
    move/from16 v24, v4

    .line 1395
    .line 1396
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 1397
    .line 1398
    if-eqz v3, :cond_54

    .line 1399
    .line 1400
    iget-object v3, v6, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 1401
    .line 1402
    invoke-virtual {v3, v8}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    .line 1403
    .line 1404
    .line 1405
    move-result v3

    .line 1406
    if-eqz v3, :cond_54

    .line 1407
    .line 1408
    if-eqz v15, :cond_53

    .line 1409
    .line 1410
    if-nez v13, :cond_53

    .line 1411
    .line 1412
    const/4 v3, 0x1

    .line 1413
    const/4 v4, 0x0

    .line 1414
    invoke-virtual {v0, v3, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZ)V

    .line 1415
    .line 1416
    .line 1417
    goto :goto_2d

    .line 1418
    :cond_53
    const/4 v4, 0x0

    .line 1419
    if-nez v15, :cond_54

    .line 1420
    .line 1421
    invoke-virtual {v0, v4, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->startSearcleByHomeKey(ZZ)V

    .line 1422
    .line 1423
    .line 1424
    :cond_54
    :goto_2d
    const/4 v0, 0x1

    .line 1425
    :goto_2e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1426
    .line 1427
    const-string v4, "interceptKeyTq interceptKeyResult="

    .line 1428
    .line 1429
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1430
    .line 1431
    .line 1432
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v4

    .line 1436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    .line 1438
    .line 1439
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v3

    .line 1443
    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    .line 1445
    .line 1446
    const/4 v3, 0x2

    .line 1447
    and-int/lit8 v4, v0, 0x2

    .line 1448
    .line 1449
    if-eqz v4, :cond_55

    .line 1450
    .line 1451
    const-string v0, "interceptKeyTq : return condition of policyExt"

    .line 1452
    .line 1453
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .line 1455
    .line 1456
    goto/16 :goto_17

    .line 1457
    .line 1458
    :cond_55
    const/4 v3, 0x4

    .line 1459
    and-int/lit8 v4, v0, 0x4

    .line 1460
    .line 1461
    if-eqz v4, :cond_56

    .line 1462
    .line 1463
    const/4 v9, 0x1

    .line 1464
    goto :goto_2f

    .line 1465
    :cond_56
    and-int/lit8 v0, v0, 0x8

    .line 1466
    .line 1467
    if-eqz v0, :cond_57

    .line 1468
    .line 1469
    const/4 v9, 0x0

    .line 1470
    goto :goto_2f

    .line 1471
    :cond_57
    move/from16 v9, v23

    .line 1472
    .line 1473
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 1474
    .line 1475
    .line 1476
    move-result v0

    .line 1477
    and-int/lit8 v0, v0, 0x40

    .line 1478
    .line 1479
    if-eqz v0, :cond_58

    .line 1480
    .line 1481
    const/4 v0, 0x1

    .line 1482
    goto :goto_30

    .line 1483
    :cond_58
    const/4 v0, 0x0

    .line 1484
    :goto_30
    if-eqz v10, :cond_59

    .line 1485
    .line 1486
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1487
    .line 1488
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 1489
    .line 1490
    if-nez v3, :cond_5a

    .line 1491
    .line 1492
    if-eqz v24, :cond_59

    .line 1493
    .line 1494
    move/from16 v3, p2

    .line 1495
    .line 1496
    goto :goto_31

    .line 1497
    :cond_59
    move/from16 v3, p2

    .line 1498
    .line 1499
    goto :goto_32

    .line 1500
    :cond_5a
    move/from16 v3, p2

    .line 1501
    .line 1502
    const/4 v4, 0x2

    .line 1503
    and-int/lit8 v5, v3, 0x2

    .line 1504
    .line 1505
    if-eqz v5, :cond_5c

    .line 1506
    .line 1507
    :goto_31
    if-eqz v0, :cond_5b

    .line 1508
    .line 1509
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 1510
    .line 1511
    if-eqz v0, :cond_5c

    .line 1512
    .line 1513
    :cond_5b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 1514
    .line 1515
    .line 1516
    move-result v0

    .line 1517
    if-nez v0, :cond_5c

    .line 1518
    .line 1519
    const/4 v8, 0x1

    .line 1520
    goto :goto_33

    .line 1521
    :cond_5c
    :goto_32
    const/4 v8, 0x0

    .line 1522
    :goto_33
    const/16 v4, 0xf

    .line 1523
    .line 1524
    move/from16 v5, v33

    .line 1525
    .line 1526
    const/4 v6, 0x4

    .line 1527
    if-eq v5, v6, :cond_9d

    .line 1528
    .line 1529
    const/4 v0, 0x5

    .line 1530
    if-eq v5, v0, :cond_9c

    .line 1531
    .line 1532
    const/4 v6, 0x6

    .line 1533
    if-eq v5, v6, :cond_96

    .line 1534
    .line 1535
    const/16 v0, 0x4f

    .line 1536
    .line 1537
    if-eq v5, v0, :cond_68

    .line 1538
    .line 1539
    const/16 v0, 0x82

    .line 1540
    .line 1541
    if-eq v5, v0, :cond_68

    .line 1542
    .line 1543
    const/16 v0, 0xa4

    .line 1544
    .line 1545
    if-eq v5, v0, :cond_79

    .line 1546
    .line 1547
    const/16 v6, 0xab

    .line 1548
    .line 1549
    if-eq v5, v6, :cond_81

    .line 1550
    .line 1551
    const/16 v6, 0xb1

    .line 1552
    .line 1553
    if-eq v5, v6, :cond_80

    .line 1554
    .line 1555
    const/16 v6, 0xdb

    .line 1556
    .line 1557
    if-eq v5, v6, :cond_7e

    .line 1558
    .line 1559
    const/16 v6, 0xe7

    .line 1560
    .line 1561
    if-eq v5, v6, :cond_7d

    .line 1562
    .line 1563
    const/16 v6, 0x108

    .line 1564
    .line 1565
    if-eq v5, v6, :cond_7c

    .line 1566
    .line 1567
    const/16 v6, 0x114

    .line 1568
    .line 1569
    if-eq v5, v6, :cond_7a

    .line 1570
    .line 1571
    const/16 v6, 0x7e

    .line 1572
    .line 1573
    if-eq v5, v6, :cond_68

    .line 1574
    .line 1575
    const/16 v6, 0x7f

    .line 1576
    .line 1577
    if-eq v5, v6, :cond_68

    .line 1578
    .line 1579
    packed-switch v5, :pswitch_data_5

    .line 1580
    .line 1581
    .line 1582
    packed-switch v5, :pswitch_data_6

    .line 1583
    .line 1584
    .line 1585
    packed-switch v5, :pswitch_data_7

    .line 1586
    .line 1587
    .line 1588
    packed-switch v5, :pswitch_data_8

    .line 1589
    .line 1590
    .line 1591
    packed-switch v5, :pswitch_data_9

    .line 1592
    .line 1593
    .line 1594
    packed-switch v5, :pswitch_data_a

    .line 1595
    .line 1596
    .line 1597
    packed-switch v5, :pswitch_data_b

    .line 1598
    .line 1599
    .line 1600
    goto :goto_35

    .line 1601
    :pswitch_7
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->emojiAndScreenshotKeycodesAvailable()Z

    .line 1602
    .line 1603
    .line 1604
    move-result v0

    .line 1605
    if-nez v0, :cond_5e

    .line 1606
    .line 1607
    :cond_5d
    :goto_34
    :pswitch_8
    const/4 v9, 0x0

    .line 1608
    :cond_5e
    :goto_35
    const/4 v11, 0x6

    .line 1609
    goto/16 :goto_4f

    .line 1610
    .line 1611
    :pswitch_9
    const-string v0, "Stylus buttons event: "

    .line 1612
    .line 1613
    const-string v6, " received. Should handle event? "

    .line 1614
    .line 1615
    invoke-static {v5, v0, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v0

    .line 1619
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 1620
    .line 1621
    invoke-static {v12, v0, v6}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1622
    .line 1623
    .line 1624
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 1625
    .line 1626
    if-eqz v0, :cond_5d

    .line 1627
    .line 1628
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1629
    .line 1630
    .line 1631
    goto :goto_34

    .line 1632
    :pswitch_a
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SYSTEM_NAVIGATION:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1633
    .line 1634
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 1638
    .line 1639
    .line 1640
    move-result v0

    .line 1641
    const/4 v6, 0x1

    .line 1642
    if-ne v0, v6, :cond_5d

    .line 1643
    .line 1644
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1645
    .line 1646
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1647
    .line 1648
    .line 1649
    move-result v0

    .line 1650
    if-eqz v0, :cond_5f

    .line 1651
    .line 1652
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1653
    .line 1654
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 1655
    .line 1656
    .line 1657
    move-result v6

    .line 1658
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    .line 1659
    .line 1660
    .line 1661
    move-result v0

    .line 1662
    if-nez v0, :cond_5d

    .line 1663
    .line 1664
    :cond_5f
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 1665
    .line 1666
    if-eqz v0, :cond_5d

    .line 1667
    .line 1668
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1669
    .line 1670
    .line 1671
    goto :goto_34

    .line 1672
    :pswitch_b
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->WAKEUP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1673
    .line 1674
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1675
    .line 1676
    .line 1677
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1678
    .line 1679
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    .line 1680
    .line 1681
    .line 1682
    move-result v0

    .line 1683
    if-eqz v0, :cond_61

    .line 1684
    .line 1685
    const-string/jumbo v0, "skip wakeUp by KEYCODE_WAKEUP, requestedSystemKey"

    .line 1686
    .line 1687
    .line 1688
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    .line 1690
    .line 1691
    const/4 v9, 0x1

    .line 1692
    const/4 v11, 0x6

    .line 1693
    :cond_60
    :goto_36
    const/16 v28, 0x0

    .line 1694
    .line 1695
    goto/16 :goto_4f

    .line 1696
    .line 1697
    :cond_61
    const/4 v9, 0x0

    .line 1698
    const/4 v11, 0x6

    .line 1699
    const/16 v28, 0x1

    .line 1700
    .line 1701
    goto/16 :goto_4f

    .line 1702
    .line 1703
    :pswitch_c
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SLEEP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1704
    .line 1705
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1706
    .line 1707
    .line 1708
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1709
    .line 1710
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 1711
    .line 1712
    .line 1713
    move-result v0

    .line 1714
    if-nez v0, :cond_62

    .line 1715
    .line 1716
    const/4 v8, 0x0

    .line 1717
    :cond_62
    if-eqz v10, :cond_64

    .line 1718
    .line 1719
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 1720
    .line 1721
    const/4 v6, 0x1

    .line 1722
    if-ne v0, v6, :cond_63

    .line 1723
    .line 1724
    const/4 v7, 0x0

    .line 1725
    invoke-virtual {v1, v7, v7, v6}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 1726
    .line 1727
    .line 1728
    :cond_63
    :goto_37
    const/4 v11, 0x6

    .line 1729
    goto :goto_38

    .line 1730
    :cond_64
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 1731
    .line 1732
    .line 1733
    move-result-wide v6

    .line 1734
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    .line 1735
    .line 1736
    if-eqz v0, :cond_65

    .line 1737
    .line 1738
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v0

    .line 1742
    if-eqz v0, :cond_65

    .line 1743
    .line 1744
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 1745
    .line 1746
    .line 1747
    move-result v9

    .line 1748
    if-eqz v9, :cond_65

    .line 1749
    .line 1750
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1751
    .line 1752
    .line 1753
    const-string/jumbo v0, "sleepRelease() silence ringer"

    .line 1754
    .line 1755
    .line 1756
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    .line 1758
    .line 1759
    goto :goto_37

    .line 1760
    :cond_65
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 1761
    .line 1762
    if-eqz v0, :cond_66

    .line 1763
    .line 1764
    const/4 v9, 0x1

    .line 1765
    if-eq v0, v9, :cond_66

    .line 1766
    .line 1767
    goto :goto_37

    .line 1768
    :cond_66
    const-string/jumbo v0, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    .line 1769
    .line 1770
    .line 1771
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    .line 1773
    .line 1774
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1775
    .line 1776
    const/4 v9, 0x0

    .line 1777
    const/4 v11, 0x6

    .line 1778
    invoke-virtual {v0, v6, v7, v11, v9}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1779
    .line 1780
    .line 1781
    :goto_38
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1782
    .line 1783
    .line 1784
    :cond_67
    :goto_39
    const/4 v9, 0x0

    .line 1785
    goto :goto_36

    .line 1786
    :cond_68
    :pswitch_d
    const/4 v11, 0x6

    .line 1787
    goto/16 :goto_4c

    .line 1788
    .line 1789
    :pswitch_e
    const/4 v11, 0x6

    .line 1790
    if-eqz v10, :cond_6a

    .line 1791
    .line 1792
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 1793
    .line 1794
    .line 1795
    move-result v0

    .line 1796
    if-nez v0, :cond_6a

    .line 1797
    .line 1798
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SYSTEM_MUTE:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1799
    .line 1800
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1801
    .line 1802
    .line 1803
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 1804
    .line 1805
    const/4 v6, 0x1

    .line 1806
    invoke-virtual {v0, v6, v6}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(II)Z

    .line 1807
    .line 1808
    .line 1809
    move-result v0

    .line 1810
    if-eqz v0, :cond_6a

    .line 1811
    .line 1812
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 1813
    .line 1814
    invoke-virtual {v0, v6, v6}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    .line 1815
    .line 1816
    .line 1817
    move-result v0

    .line 1818
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 1819
    .line 1820
    xor-int/lit8 v9, v0, 0x1

    .line 1821
    .line 1822
    invoke-virtual {v7, v6, v9}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IZ)V

    .line 1823
    .line 1824
    .line 1825
    if-eqz v0, :cond_69

    .line 1826
    .line 1827
    const v0, 0x1040851

    .line 1828
    .line 1829
    .line 1830
    goto :goto_3a

    .line 1831
    :cond_69
    const v0, 0x1040850

    .line 1832
    .line 1833
    .line 1834
    :goto_3a
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1835
    .line 1836
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v7

    .line 1840
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v7

    .line 1844
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1845
    .line 1846
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v0

    .line 1850
    const/4 v9, 0x0

    .line 1851
    invoke-static {v6, v7, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v0

    .line 1855
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1856
    .line 1857
    .line 1858
    :cond_6a
    :goto_3b
    const/4 v9, 0x0

    .line 1859
    goto/16 :goto_4f

    .line 1860
    .line 1861
    :pswitch_f
    const/4 v11, 0x6

    .line 1862
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_POWER:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 1863
    .line 1864
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 1865
    .line 1866
    .line 1867
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 1868
    .line 1869
    .line 1870
    move-result v0

    .line 1871
    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v0

    .line 1875
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1876
    .line 1877
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 1878
    .line 1879
    iget-object v13, v7, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 1880
    .line 1881
    if-eqz v13, :cond_6b

    .line 1882
    .line 1883
    iget v13, v13, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 1884
    .line 1885
    const/16 v14, 0x1a

    .line 1886
    .line 1887
    if-ne v13, v14, :cond_6b

    .line 1888
    .line 1889
    iget v7, v7, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    .line 1890
    .line 1891
    goto :goto_3c

    .line 1892
    :cond_6b
    const/4 v7, 0x0

    .line 1893
    :goto_3c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v6

    .line 1897
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v7

    .line 1901
    filled-new-array {v0, v6, v7}, [Ljava/lang/Object;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v0

    .line 1905
    const v6, 0x11171

    .line 1906
    .line 1907
    .line 1908
    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1909
    .line 1910
    .line 1911
    if-eqz v10, :cond_75

    .line 1912
    .line 1913
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1914
    .line 1915
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 1916
    .line 1917
    .line 1918
    move-result v0

    .line 1919
    if-nez v0, :cond_6d

    .line 1920
    .line 1921
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 1922
    .line 1923
    if-eqz v0, :cond_6c

    .line 1924
    .line 1925
    const/4 v6, 0x1

    .line 1926
    iput-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    .line 1927
    .line 1928
    :cond_6c
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1929
    .line 1930
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1931
    .line 1932
    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v7

    .line 1936
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    .line 1937
    .line 1938
    .line 1939
    move-result-wide v13

    .line 1940
    const-wide/16 v15, 0x2

    .line 1941
    .line 1942
    mul-long/2addr v13, v15

    .line 1943
    invoke-virtual {v6, v13, v14}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1944
    .line 1945
    .line 1946
    if-eqz v0, :cond_6d

    .line 1947
    .line 1948
    const/4 v6, 0x0

    .line 1949
    iput-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    .line 1950
    .line 1951
    :cond_6d
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 1952
    .line 1953
    move/from16 v14, v32

    .line 1954
    .line 1955
    invoke-interface {v0, v14}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    .line 1956
    .line 1957
    .line 1958
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 1959
    .line 1960
    .line 1961
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1962
    .line 1963
    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    .line 1964
    .line 1965
    .line 1966
    move-result v0

    .line 1967
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 1968
    .line 1969
    .line 1970
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1971
    .line 1972
    if-nez v6, :cond_6f

    .line 1973
    .line 1974
    if-nez v0, :cond_6f

    .line 1975
    .line 1976
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 1977
    .line 1978
    invoke-virtual {v6}, Lcom/android/server/policy/KeyCombinationManager;->isPowerKeyIntercepted()Z

    .line 1979
    .line 1980
    .line 1981
    move-result v6

    .line 1982
    if-eqz v6, :cond_6e

    .line 1983
    .line 1984
    goto :goto_3d

    .line 1985
    :cond_6e
    const/4 v6, 0x0

    .line 1986
    goto :goto_3e

    .line 1987
    :cond_6f
    :goto_3d
    const/4 v6, 0x1

    .line 1988
    :goto_3e
    iput-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1989
    .line 1990
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1991
    .line 1992
    if-nez v6, :cond_70

    .line 1993
    .line 1994
    if-nez v14, :cond_72

    .line 1995
    .line 1996
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 1997
    .line 1998
    .line 1999
    goto :goto_40

    .line 2000
    :cond_70
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 2001
    .line 2002
    iget-object v6, v6, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 2003
    .line 2004
    if-eqz v6, :cond_72

    .line 2005
    .line 2006
    iget v6, v6, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 2007
    .line 2008
    const/16 v7, 0x1a

    .line 2009
    .line 2010
    if-ne v7, v6, :cond_71

    .line 2011
    .line 2012
    const/4 v6, 0x1

    .line 2013
    goto :goto_3f

    .line 2014
    :cond_71
    const/4 v6, 0x0

    .line 2015
    :goto_3f
    if-eqz v6, :cond_72

    .line 2016
    .line 2017
    const-string v6, "Skip power key gesture for other policy has handled it."

    .line 2018
    .line 2019
    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    .line 2021
    .line 2022
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 2023
    .line 2024
    invoke-virtual {v6}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    .line 2025
    .line 2026
    .line 2027
    :cond_72
    :goto_40
    if-eqz v0, :cond_74

    .line 2028
    .line 2029
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 2030
    .line 2031
    sget-boolean v6, Lcom/android/server/policy/SingleKeyGestureDetector;->DEBUG:Z

    .line 2032
    .line 2033
    if-eqz v6, :cond_73

    .line 2034
    .line 2035
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2036
    .line 2037
    const-string/jumbo v7, "setBeganFromNonInteractive old="

    .line 2038
    .line 2039
    .line 2040
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2041
    .line 2042
    .line 2043
    iget-boolean v7, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 2044
    .line 2045
    const-string v13, "SingleKeyGesture"

    .line 2046
    .line 2047
    invoke-static {v13, v6, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 2048
    .line 2049
    .line 2050
    :cond_73
    const/4 v6, 0x1

    .line 2051
    iput-boolean v6, v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 2052
    .line 2053
    :cond_74
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2054
    .line 2055
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2056
    .line 2057
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2058
    .line 2059
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 2060
    .line 2061
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 2062
    .line 2063
    if-eqz v0, :cond_78

    .line 2064
    .line 2065
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v6

    .line 2069
    invoke-virtual {v6}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    .line 2070
    .line 2071
    .line 2072
    move-result v6

    .line 2073
    if-eqz v6, :cond_78

    .line 2074
    .line 2075
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/wm/CoverPolicy;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v0

    .line 2079
    if-eqz v0, :cond_78

    .line 2080
    .line 2081
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2082
    .line 2083
    .line 2084
    goto :goto_43

    .line 2085
    :catch_1
    move-exception v0

    .line 2086
    const-string v6, "CoverPolicy"

    .line 2087
    .line 2088
    const-string v7, "CoverManager threw RemoteException"

    .line 2089
    .line 2090
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2091
    .line 2092
    .line 2093
    goto :goto_43

    .line 2094
    :cond_75
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 2095
    .line 2096
    .line 2097
    if-nez v17, :cond_77

    .line 2098
    .line 2099
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 2100
    .line 2101
    if-eqz v0, :cond_76

    .line 2102
    .line 2103
    goto :goto_41

    .line 2104
    :cond_76
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 2105
    .line 2106
    .line 2107
    move-result v0

    .line 2108
    and-int/lit16 v0, v0, 0x80

    .line 2109
    .line 2110
    if-nez v0, :cond_77

    .line 2111
    .line 2112
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2113
    .line 2114
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2115
    .line 2116
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    .line 2118
    .line 2119
    new-instance v7, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    .line 2120
    .line 2121
    const/4 v13, 0x0

    .line 2122
    invoke-direct {v7, v13, v6}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 2123
    .line 2124
    .line 2125
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2126
    .line 2127
    .line 2128
    goto :goto_42

    .line 2129
    :cond_77
    :goto_41
    const/4 v13, 0x0

    .line 2130
    :goto_42
    iput-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 2131
    .line 2132
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2133
    .line 2134
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 2135
    .line 2136
    .line 2137
    move-result v0

    .line 2138
    if-eqz v0, :cond_78

    .line 2139
    .line 2140
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2141
    .line 2142
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2143
    .line 2144
    .line 2145
    :cond_78
    :goto_43
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    .line 2146
    .line 2147
    if-eqz v0, :cond_60

    .line 2148
    .line 2149
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2150
    .line 2151
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    .line 2152
    .line 2153
    .line 2154
    goto/16 :goto_36

    .line 2155
    .line 2156
    :cond_79
    :pswitch_10
    const/4 v11, 0x6

    .line 2157
    const/16 v6, 0x18

    .line 2158
    .line 2159
    goto/16 :goto_45

    .line 2160
    .line 2161
    :cond_7a
    const/4 v11, 0x6

    .line 2162
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->SLEEP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2163
    .line 2164
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2165
    .line 2166
    .line 2167
    if-nez v10, :cond_7b

    .line 2168
    .line 2169
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2170
    .line 2171
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    .line 2172
    .line 2173
    .line 2174
    :cond_7b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 2175
    .line 2176
    .line 2177
    goto/16 :goto_39

    .line 2178
    .line 2179
    :cond_7c
    const/4 v11, 0x6

    .line 2180
    if-eqz v10, :cond_a1

    .line 2181
    .line 2182
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 2183
    .line 2184
    .line 2185
    move-result v0

    .line 2186
    if-nez v0, :cond_a1

    .line 2187
    .line 2188
    if-nez v9, :cond_a1

    .line 2189
    .line 2190
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    .line 2191
    .line 2192
    .line 2193
    move-result-wide v6

    .line 2194
    invoke-virtual {v1, v5, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    .line 2195
    .line 2196
    .line 2197
    goto/16 :goto_4f

    .line 2198
    .line 2199
    :cond_7d
    const/4 v11, 0x6

    .line 2200
    if-nez v10, :cond_6a

    .line 2201
    .line 2202
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2203
    .line 2204
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2205
    .line 2206
    .line 2207
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2208
    .line 2209
    const/16 v6, 0xc

    .line 2210
    .line 2211
    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 2212
    .line 2213
    .line 2214
    move-result-object v0

    .line 2215
    const/4 v6, 0x1

    .line 2216
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2217
    .line 2218
    .line 2219
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2220
    .line 2221
    .line 2222
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_VOICE_ASSISTANT:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2223
    .line 2224
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2225
    .line 2226
    .line 2227
    goto/16 :goto_3b

    .line 2228
    .line 2229
    :cond_7e
    const/4 v11, 0x6

    .line 2230
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 2231
    .line 2232
    .line 2233
    move-result v0

    .line 2234
    if-lez v0, :cond_7f

    .line 2235
    .line 2236
    const/4 v0, 0x1

    .line 2237
    goto :goto_44

    .line 2238
    :cond_7f
    const/4 v0, 0x0

    .line 2239
    :goto_44
    if-eqz v10, :cond_6a

    .line 2240
    .line 2241
    if-nez v0, :cond_6a

    .line 2242
    .line 2243
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2244
    .line 2245
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 2246
    .line 2247
    .line 2248
    move-result v6

    .line 2249
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2250
    .line 2251
    .line 2252
    move-result-wide v13

    .line 2253
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2254
    .line 2255
    .line 2256
    move-result-object v7

    .line 2257
    const/16 v9, 0x17

    .line 2258
    .line 2259
    const/4 v13, 0x0

    .line 2260
    invoke-virtual {v0, v9, v6, v13, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v0

    .line 2264
    const/4 v6, 0x1

    .line 2265
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2266
    .line 2267
    .line 2268
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2269
    .line 2270
    .line 2271
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->LAUNCH_ASSISTANT:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2272
    .line 2273
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2274
    .line 2275
    .line 2276
    goto/16 :goto_3b

    .line 2277
    .line 2278
    :cond_80
    const/4 v11, 0x6

    .line 2279
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->TOGGLE_POWER:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2280
    .line 2281
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2282
    .line 2283
    .line 2284
    if-eqz v10, :cond_67

    .line 2285
    .line 2286
    if-eqz v31, :cond_67

    .line 2287
    .line 2288
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/hdmi/HdmiControlManager;->toggleAndFollowTvPower()V

    .line 2289
    .line 2290
    .line 2291
    goto/16 :goto_39

    .line 2292
    .line 2293
    :cond_81
    const/4 v11, 0x6

    .line 2294
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2295
    .line 2296
    const/4 v6, 0x1

    .line 2297
    if-ne v0, v6, :cond_a1

    .line 2298
    .line 2299
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 2300
    .line 2301
    if-eqz v0, :cond_a1

    .line 2302
    .line 2303
    if-nez v10, :cond_6a

    .line 2304
    .line 2305
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 2306
    .line 2307
    if-eqz v0, :cond_82

    .line 2308
    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2310
    .line 2311
    const-string/jumbo v6, "showPictureInPictureMenu event="

    .line 2312
    .line 2313
    .line 2314
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2315
    .line 2316
    .line 2317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2318
    .line 2319
    .line 2320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v0

    .line 2324
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    .line 2326
    .line 2327
    :cond_82
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2328
    .line 2329
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2330
    .line 2331
    .line 2332
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2333
    .line 2334
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v0

    .line 2338
    const/4 v6, 0x1

    .line 2339
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2340
    .line 2341
    .line 2342
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2343
    .line 2344
    .line 2345
    goto/16 :goto_3b

    .line 2346
    .line 2347
    :goto_45
    if-eq v5, v6, :cond_85

    .line 2348
    .line 2349
    const/16 v6, 0x19

    .line 2350
    .line 2351
    if-eq v5, v6, :cond_84

    .line 2352
    .line 2353
    if-eq v5, v0, :cond_83

    .line 2354
    .line 2355
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->HOME:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2356
    .line 2357
    const/4 v14, 0x0

    .line 2358
    goto :goto_46

    .line 2359
    :cond_83
    sget-object v14, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->VOLUME_MUTE:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2360
    .line 2361
    goto :goto_46

    .line 2362
    :cond_84
    sget-object v14, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->VOLUME_DOWN:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2363
    .line 2364
    goto :goto_46

    .line 2365
    :cond_85
    sget-object v14, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->VOLUME_UP:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2366
    .line 2367
    :goto_46
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2368
    .line 2369
    .line 2370
    move-result v0

    .line 2371
    if-eqz v0, :cond_86

    .line 2372
    .line 2373
    goto :goto_47

    .line 2374
    :cond_86
    invoke-virtual {v1, v2, v14}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2375
    .line 2376
    .line 2377
    :goto_47
    const/high16 v6, -0x80000000

    .line 2378
    .line 2379
    if-eqz v10, :cond_92

    .line 2380
    .line 2381
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 2382
    .line 2383
    .line 2384
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2385
    .line 2386
    const-class v7, Landroid/app/NotificationManager;

    .line 2387
    .line 2388
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v0

    .line 2392
    check-cast v0, Landroid/app/NotificationManager;

    .line 2393
    .line 2394
    if-eqz v0, :cond_87

    .line 2395
    .line 2396
    iget-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2397
    .line 2398
    if-nez v7, :cond_87

    .line 2399
    .line 2400
    invoke-virtual {v0}, Landroid/app/NotificationManager;->silenceNotificationSound()V

    .line 2401
    .line 2402
    .line 2403
    :cond_87
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 2404
    .line 2405
    .line 2406
    move-result-object v7

    .line 2407
    if-eqz v7, :cond_8d

    .line 2408
    .line 2409
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2410
    .line 2411
    if-nez v0, :cond_8d

    .line 2412
    .line 2413
    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 2414
    .line 2415
    .line 2416
    move-result v0

    .line 2417
    if-eqz v0, :cond_8d

    .line 2418
    .line 2419
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2420
    .line 2421
    const/16 v6, 0x18

    .line 2422
    .line 2423
    if-eq v5, v6, :cond_89

    .line 2424
    .line 2425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2426
    .line 2427
    .line 2428
    :cond_88
    const/4 v0, 0x0

    .line 2429
    goto :goto_48

    .line 2430
    :cond_89
    iget-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    .line 2431
    .line 2432
    if-eqz v6, :cond_88

    .line 2433
    .line 2434
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 2435
    .line 2436
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2437
    .line 2438
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 2439
    .line 2440
    if-eqz v0, :cond_88

    .line 2441
    .line 2442
    const/4 v0, 0x1

    .line 2443
    :goto_48
    if-eqz v0, :cond_8b

    .line 2444
    .line 2445
    const-string/jumbo v0, "ringing: Accept the call (volume up)"

    .line 2446
    .line 2447
    .line 2448
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    .line 2450
    .line 2451
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2452
    .line 2453
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2454
    .line 2455
    .line 2456
    const-class v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2457
    .line 2458
    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2459
    .line 2460
    .line 2461
    move-result-object v0

    .line 2462
    check-cast v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2463
    .line 2464
    if-nez v0, :cond_8a

    .line 2465
    .line 2466
    goto/16 :goto_3b

    .line 2467
    .line 2468
    :cond_8a
    invoke-virtual {v0, v5}, Lcom/samsung/android/telecom/SemTelecomManager;->acceptRingingCall(I)V

    .line 2469
    .line 2470
    .line 2471
    goto/16 :goto_3b

    .line 2472
    .line 2473
    :cond_8b
    const-string v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    .line 2474
    .line 2475
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    .line 2477
    .line 2478
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2479
    .line 2480
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2481
    .line 2482
    .line 2483
    const-class v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2484
    .line 2485
    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v0

    .line 2489
    check-cast v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 2490
    .line 2491
    if-nez v0, :cond_8c

    .line 2492
    .line 2493
    goto/16 :goto_3b

    .line 2494
    .line 2495
    :cond_8c
    invoke-virtual {v0, v5}, Lcom/samsung/android/telecom/SemTelecomManager;->silenceRinger(I)V

    .line 2496
    .line 2497
    .line 2498
    goto/16 :goto_3b

    .line 2499
    .line 2500
    :cond_8d
    :try_start_2
    const-string v0, "audio"

    .line 2501
    .line 2502
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2503
    .line 2504
    .line 2505
    move-result-object v0

    .line 2506
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v0

    .line 2510
    if-nez v0, :cond_8e

    .line 2511
    .line 2512
    const-string v13, "Unable to find IAudioService interface."

    .line 2513
    .line 2514
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    .line 2516
    .line 2517
    :cond_8e
    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    .line 2518
    .line 2519
    .line 2520
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2521
    goto :goto_49

    .line 2522
    :catch_2
    move-exception v0

    .line 2523
    const-string v13, "Error getting AudioService in interceptKeyBeforeQueueing."

    .line 2524
    .line 2525
    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2526
    .line 2527
    .line 2528
    const/4 v0, 0x0

    .line 2529
    :goto_49
    if-eqz v7, :cond_8f

    .line 2530
    .line 2531
    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 2532
    .line 2533
    .line 2534
    move-result v7

    .line 2535
    if-nez v7, :cond_90

    .line 2536
    .line 2537
    :cond_8f
    const/4 v7, 0x3

    .line 2538
    if-ne v0, v7, :cond_91

    .line 2539
    .line 2540
    :cond_90
    const/4 v0, 0x1

    .line 2541
    goto :goto_4a

    .line 2542
    :cond_91
    const/4 v0, 0x0

    .line 2543
    :goto_4a
    if-eqz v0, :cond_92

    .line 2544
    .line 2545
    if-nez v9, :cond_92

    .line 2546
    .line 2547
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2548
    .line 2549
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 2550
    .line 2551
    .line 2552
    move-result-object v0

    .line 2553
    const/4 v7, 0x0

    .line 2554
    invoke-virtual {v0, v2, v6, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 2555
    .line 2556
    .line 2557
    goto/16 :goto_4f

    .line 2558
    .line 2559
    :cond_92
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2560
    .line 2561
    if-nez v0, :cond_94

    .line 2562
    .line 2563
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2564
    .line 2565
    if-eqz v0, :cond_93

    .line 2566
    .line 2567
    goto :goto_4b

    .line 2568
    :cond_93
    if-nez v9, :cond_a1

    .line 2569
    .line 2570
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2571
    .line 2572
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 2573
    .line 2574
    .line 2575
    move-result-object v0

    .line 2576
    const/4 v7, 0x1

    .line 2577
    invoke-virtual {v0, v2, v6, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 2578
    .line 2579
    .line 2580
    goto/16 :goto_4f

    .line 2581
    .line 2582
    :cond_94
    :goto_4b
    const/4 v9, 0x1

    .line 2583
    goto/16 :goto_4f

    .line 2584
    .line 2585
    :goto_4c
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->MEDIA_KEY:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2586
    .line 2587
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2588
    .line 2589
    .line 2590
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2591
    .line 2592
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 2593
    .line 2594
    .line 2595
    move-result-object v0

    .line 2596
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    .line 2597
    .line 2598
    .line 2599
    move-result v0

    .line 2600
    if-eqz v0, :cond_95

    .line 2601
    .line 2602
    const/4 v9, 0x0

    .line 2603
    :cond_95
    if-nez v9, :cond_a1

    .line 2604
    .line 2605
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2606
    .line 2607
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2608
    .line 2609
    .line 2610
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2611
    .line 2612
    new-instance v6, Landroid/view/KeyEvent;

    .line 2613
    .line 2614
    invoke-direct {v6, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2615
    .line 2616
    .line 2617
    const/4 v7, 0x3

    .line 2618
    invoke-virtual {v0, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2619
    .line 2620
    .line 2621
    move-result-object v0

    .line 2622
    const/4 v6, 0x1

    .line 2623
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2624
    .line 2625
    .line 2626
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2627
    .line 2628
    .line 2629
    goto/16 :goto_4f

    .line 2630
    .line 2631
    :cond_96
    move v11, v6

    .line 2632
    const/4 v7, 0x3

    .line 2633
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2634
    .line 2635
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 2636
    .line 2637
    invoke-virtual {v0, v5, v7}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 2638
    .line 2639
    .line 2640
    move-result v0

    .line 2641
    if-eqz v0, :cond_97

    .line 2642
    .line 2643
    goto/16 :goto_4f

    .line 2644
    .line 2645
    :cond_97
    if-eqz v10, :cond_9a

    .line 2646
    .line 2647
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v0

    .line 2651
    if-eqz v0, :cond_98

    .line 2652
    .line 2653
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    .line 2654
    .line 2655
    .line 2656
    move-result v0

    .line 2657
    goto :goto_4d

    .line 2658
    :cond_98
    const/4 v0, 0x0

    .line 2659
    :goto_4d
    if-eqz v24, :cond_99

    .line 2660
    .line 2661
    if-nez v0, :cond_99

    .line 2662
    .line 2663
    const/4 v6, 0x0

    .line 2664
    iput-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 2665
    .line 2666
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2667
    .line 2668
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 2669
    .line 2670
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2671
    .line 2672
    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v7

    .line 2676
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    .line 2677
    .line 2678
    .line 2679
    move-result-wide v13

    .line 2680
    invoke-virtual {v0, v6, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2681
    .line 2682
    .line 2683
    const/4 v6, 0x1

    .line 2684
    goto/16 :goto_3b

    .line 2685
    .line 2686
    :cond_99
    const/4 v6, 0x1

    .line 2687
    iput-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 2688
    .line 2689
    goto/16 :goto_3b

    .line 2690
    .line 2691
    :cond_9a
    const/4 v6, 0x1

    .line 2692
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 2693
    .line 2694
    if-nez v0, :cond_6a

    .line 2695
    .line 2696
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2697
    .line 2698
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Lcom/android/server/policy/PhoneWindowManager$4;

    .line 2699
    .line 2700
    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2701
    .line 2702
    .line 2703
    if-nez v17, :cond_6a

    .line 2704
    .line 2705
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2706
    .line 2707
    and-int/2addr v0, v6

    .line 2708
    if-eqz v0, :cond_9b

    .line 2709
    .line 2710
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    .line 2711
    .line 2712
    .line 2713
    move-result v0

    .line 2714
    if-eqz v0, :cond_9b

    .line 2715
    .line 2716
    goto/16 :goto_3b

    .line 2717
    .line 2718
    :cond_9b
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2719
    .line 2720
    const/4 v6, 0x2

    .line 2721
    and-int/2addr v0, v6

    .line 2722
    if-eqz v0, :cond_6a

    .line 2723
    .line 2724
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2725
    .line 2726
    .line 2727
    move-result-wide v6

    .line 2728
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2729
    .line 2730
    const/4 v9, 0x0

    .line 2731
    const/4 v13, 0x4

    .line 2732
    invoke-virtual {v0, v6, v7, v13, v9}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2733
    .line 2734
    .line 2735
    goto/16 :goto_39

    .line 2736
    .line 2737
    :cond_9c
    const/4 v11, 0x6

    .line 2738
    if-eqz v10, :cond_a1

    .line 2739
    .line 2740
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 2741
    .line 2742
    .line 2743
    move-result-object v0

    .line 2744
    if-eqz v0, :cond_a1

    .line 2745
    .line 2746
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 2747
    .line 2748
    .line 2749
    move-result v6

    .line 2750
    if-eqz v6, :cond_a1

    .line 2751
    .line 2752
    const-string v6, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    .line 2753
    .line 2754
    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    .line 2756
    .line 2757
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 2758
    .line 2759
    .line 2760
    goto/16 :goto_3b

    .line 2761
    .line 2762
    :cond_9d
    const/4 v11, 0x6

    .line 2763
    sget-object v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->BACK:Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;

    .line 2764
    .line 2765
    invoke-virtual {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 2766
    .line 2767
    .line 2768
    if-eqz v10, :cond_9e

    .line 2769
    .line 2770
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2771
    .line 2772
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->moveFocusToAdjacentEmbeddedActivityIfNeeded()Z

    .line 2773
    .line 2774
    .line 2775
    const/4 v6, 0x0

    .line 2776
    iput-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 2777
    .line 2778
    goto :goto_4f

    .line 2779
    :cond_9e
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2780
    .line 2781
    if-eqz v0, :cond_9f

    .line 2782
    .line 2783
    const/4 v0, 0x1

    .line 2784
    goto :goto_4e

    .line 2785
    :cond_9f
    const/4 v0, 0x0

    .line 2786
    :goto_4e
    if-nez v0, :cond_a0

    .line 2787
    .line 2788
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 2789
    .line 2790
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->backKeyPress()Z

    .line 2791
    .line 2792
    .line 2793
    move-result v6

    .line 2794
    or-int/2addr v0, v6

    .line 2795
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 2796
    .line 2797
    :cond_a0
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 2798
    .line 2799
    if-eqz v0, :cond_a1

    .line 2800
    .line 2801
    goto/16 :goto_3b

    .line 2802
    .line 2803
    :cond_a1
    :goto_4f
    if-eqz v8, :cond_a3

    .line 2804
    .line 2805
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2806
    .line 2807
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 2808
    .line 2809
    if-nez v0, :cond_a2

    .line 2810
    .line 2811
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2812
    .line 2813
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->performSystemKeyFeedback(Landroid/view/KeyEvent;)V

    .line 2814
    .line 2815
    .line 2816
    goto :goto_50

    .line 2817
    :cond_a2
    const-string v0, "Virtual Key - Press"

    .line 2818
    .line 2819
    const/4 v6, 0x1

    .line 2820
    const/4 v7, 0x0

    .line 2821
    invoke-virtual {v1, v6, v0, v7}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 2822
    .line 2823
    .line 2824
    :cond_a3
    :goto_50
    if-eqz v28, :cond_a8

    .line 2825
    .line 2826
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2827
    .line 2828
    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->isDoubleTapToWakeUp(I)Z

    .line 2829
    .line 2830
    .line 2831
    move-result v0

    .line 2832
    if-eqz v0, :cond_a7

    .line 2833
    .line 2834
    if-eqz v10, :cond_a8

    .line 2835
    .line 2836
    and-int/lit16 v0, v3, 0x800

    .line 2837
    .line 2838
    if-eqz v0, :cond_a4

    .line 2839
    .line 2840
    move v13, v4

    .line 2841
    goto :goto_51

    .line 2842
    :cond_a4
    move v13, v11

    .line 2843
    :goto_51
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 2844
    .line 2845
    .line 2846
    move-result-object v0

    .line 2847
    if-eqz v0, :cond_a5

    .line 2848
    .line 2849
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 2850
    .line 2851
    .line 2852
    move-result-object v0

    .line 2853
    goto :goto_52

    .line 2854
    :cond_a5
    const-string v0, ""

    .line 2855
    .line 2856
    :goto_52
    const-string v3, "):"

    .line 2857
    .line 2858
    move-object/from16 v4, v30

    .line 2859
    .line 2860
    invoke-static {v5, v4, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2861
    .line 2862
    .line 2863
    move-result-object v0

    .line 2864
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 2865
    .line 2866
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 2867
    .line 2868
    .line 2869
    move-result-wide v4

    .line 2870
    iget-boolean v2, v3, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 2871
    .line 2872
    invoke-virtual {v3, v2}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    .line 2873
    .line 2874
    .line 2875
    move-result v2

    .line 2876
    if-nez v2, :cond_a6

    .line 2877
    .line 2878
    goto :goto_53

    .line 2879
    :cond_a6
    invoke-virtual {v3, v4, v5, v13, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 2880
    .line 2881
    .line 2882
    goto :goto_53

    .line 2883
    :cond_a7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    .line 2884
    .line 2885
    .line 2886
    :cond_a8
    :goto_53
    if-eqz v9, :cond_a9

    .line 2887
    .line 2888
    move/from16 v2, v26

    .line 2889
    .line 2890
    const/4 v3, -0x1

    .line 2891
    if-eq v2, v3, :cond_a9

    .line 2892
    .line 2893
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    .line 2894
    .line 2895
    if-eq v2, v0, :cond_a9

    .line 2896
    .line 2897
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2898
    .line 2899
    const-string v3, "Attempting to move non-focused display "

    .line 2900
    .line 2901
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2902
    .line 2903
    .line 2904
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2905
    .line 2906
    .line 2907
    const-string v3, " to top because a key is targeting it"

    .line 2908
    .line 2909
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2910
    .line 2911
    .line 2912
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2913
    .line 2914
    .line 2915
    move-result-object v0

    .line 2916
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    .line 2918
    .line 2919
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2920
    .line 2921
    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->moveDisplayToTopIfAllowed(I)V

    .line 2922
    .line 2923
    .line 2924
    :cond_a9
    return v9

    .line 2925
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2926
    .line 2927
    .line 2928
    .line 2929
    .line 2930
    .line 2931
    .line 2932
    .line 2933
    .line 2934
    .line 2935
    .line 2936
    .line 2937
    .line 2938
    .line 2939
    :pswitch_data_1
    .packed-switch 0x134
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2940
    .line 2941
    .line 2942
    .line 2943
    .line 2944
    .line 2945
    .line 2946
    .line 2947
    .line 2948
    .line 2949
    .line 2950
    .line 2951
    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 2952
    .line 2953
    .line 2954
    .line 2955
    .line 2956
    .line 2957
    .line 2958
    .line 2959
    .line 2960
    .line 2961
    .line 2962
    .line 2963
    .line 2964
    .line 2965
    :pswitch_data_3
    .packed-switch 0x134
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2966
    .line 2967
    .line 2968
    .line 2969
    .line 2970
    .line 2971
    .line 2972
    .line 2973
    .line 2974
    .line 2975
    .line 2976
    .line 2977
    :pswitch_data_4
    .packed-switch 0x18
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 2978
    .line 2979
    .line 2980
    .line 2981
    .line 2982
    .line 2983
    .line 2984
    .line 2985
    .line 2986
    .line 2987
    :pswitch_data_5
    .packed-switch 0x18
        :pswitch_10
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 2988
    .line 2989
    .line 2990
    .line 2991
    .line 2992
    .line 2993
    .line 2994
    .line 2995
    .line 2996
    .line 2997
    :pswitch_data_6
    .packed-switch 0x55
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 2998
    .line 2999
    .line 3000
    .line 3001
    .line 3002
    .line 3003
    .line 3004
    .line 3005
    .line 3006
    .line 3007
    .line 3008
    .line 3009
    .line 3010
    .line 3011
    .line 3012
    .line 3013
    .line 3014
    .line 3015
    :pswitch_data_7
    .packed-switch 0xde
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 3016
    .line 3017
    .line 3018
    .line 3019
    .line 3020
    .line 3021
    .line 3022
    .line 3023
    .line 3024
    .line 3025
    :pswitch_data_8
    .packed-switch 0x118
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 3026
    .line 3027
    .line 3028
    .line 3029
    .line 3030
    .line 3031
    .line 3032
    .line 3033
    .line 3034
    .line 3035
    .line 3036
    .line 3037
    :pswitch_data_9
    .packed-switch 0x121
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 3038
    .line 3039
    .line 3040
    .line 3041
    .line 3042
    .line 3043
    .line 3044
    .line 3045
    .line 3046
    .line 3047
    .line 3048
    .line 3049
    .line 3050
    .line 3051
    .line 3052
    .line 3053
    .line 3054
    .line 3055
    .line 3056
    .line 3057
    .line 3058
    .line 3059
    .line 3060
    .line 3061
    .line 3062
    .line 3063
    .line 3064
    .line 3065
    .line 3066
    .line 3067
    .line 3068
    .line 3069
    .line 3070
    .line 3071
    .line 3072
    .line 3073
    :pswitch_data_a
    .packed-switch 0x134
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 3074
    .line 3075
    .line 3076
    .line 3077
    .line 3078
    .line 3079
    .line 3080
    .line 3081
    .line 3082
    .line 3083
    .line 3084
    .line 3085
    :pswitch_data_b
    .packed-switch 0x139
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public final interceptUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move v2, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v3

    .line 20
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getModifiers()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    move v8, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v8, v3

    .line 42
    :goto_1
    const/16 v9, 0x6e

    .line 43
    .line 44
    const-string v10, "WindowManager"

    .line 45
    .line 46
    if-eq v7, v9, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    if-nez v8, :cond_4

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    if-nez v7, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v7}, Landroid/view/InputDevice;->getVendorId()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    invoke-virtual {v7}, Landroid/view/InputDevice;->getProductId()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-virtual {v6, v8, v7, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->startGameToolsService(IIZ)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_4

    .line 71
    .line 72
    const-string p0, "Handled key. keyCode="

    .line 73
    .line 74
    invoke-static {v0, p0, v10}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v4

    .line 78
    :cond_4
    :goto_2
    const/16 v6, 0x36

    .line 79
    .line 80
    if-eq v0, v6, :cond_10

    .line 81
    .line 82
    const/16 v6, 0x3e

    .line 83
    .line 84
    const/4 v7, -0x1

    .line 85
    if-eq v0, v6, :cond_e

    .line 86
    .line 87
    const/16 p1, 0x6f

    .line 88
    .line 89
    if-eq v0, p1, :cond_b

    .line 90
    .line 91
    const/16 p1, 0x78

    .line 92
    .line 93
    if-eq v0, p1, :cond_8

    .line 94
    .line 95
    const/16 p1, 0x108

    .line 96
    .line 97
    if-eq v0, p1, :cond_5

    .line 98
    .line 99
    goto/16 :goto_6

    .line 100
    .line 101
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_6

    .line 106
    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v0, "Illegal keycode provided to handleUnhandledSystemKey: "

    .line 110
    .line 111
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v10, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_7

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_7

    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    .line 157
    .line 158
    .line 159
    return v4

    .line 160
    :cond_8
    if-eqz v2, :cond_11

    .line 161
    .line 162
    if-nez v1, :cond_11

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->getDisplayId(Landroid/view/KeyEvent;)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 171
    .line 172
    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 173
    .line 174
    if-ne p1, v7, :cond_9

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_9
    move v3, p1

    .line 178
    :goto_4
    invoke-virtual {p2, v4, v3}, Lcom/android/server/wm/WindowManagerServiceExt;->sendTakeScreenshotRunnable(II)V

    .line 179
    .line 180
    .line 181
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 182
    .line 183
    if-eqz p1, :cond_a

    .line 184
    .line 185
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    const-string p0, "PKBD0051"

    .line 191
    .line 192
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_a
    return v4

    .line 196
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_c

    .line 201
    .line 202
    return v3

    .line 203
    :cond_c
    if-eqz v2, :cond_11

    .line 204
    .line 205
    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_11

    .line 210
    .line 211
    if-nez v1, :cond_11

    .line 212
    .line 213
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->closeSystemDialogs()V

    .line 216
    .line 217
    .line 218
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 219
    .line 220
    if-eqz p1, :cond_d

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 223
    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    const-string p0, "PKBD0001"

    .line 228
    .line 229
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_d
    return v4

    .line 233
    :cond_e
    if-eqz v2, :cond_11

    .line 234
    .line 235
    if-nez v1, :cond_11

    .line 236
    .line 237
    and-int/lit16 v0, v5, -0xc2

    .line 238
    .line 239
    const/16 v1, 0x1000

    .line 240
    .line 241
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_11

    .line 246
    .line 247
    and-int/lit16 v0, v5, 0xc1

    .line 248
    .line 249
    if-eqz v0, :cond_f

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_f
    move v7, v4

    .line 253
    :goto_5
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    .line 254
    .line 255
    invoke-direct {v0, p1, p2, v7}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;-><init>(Landroid/os/IBinder;Landroid/view/KeyEvent;I)V

    .line 256
    .line 257
    .line 258
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 259
    .line 260
    const/16 p1, 0x19

    .line 261
    .line 262
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    .line 268
    .line 269
    return v4

    .line 270
    :cond_10
    if-eqz v2, :cond_11

    .line 271
    .line 272
    const/16 p1, 0x1002

    .line 273
    .line 274
    invoke-static {v5, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_11

    .line 279
    .line 280
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    invoke-virtual {p1, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_11

    .line 291
    .line 292
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 293
    .line 294
    const/16 p1, 0x11

    .line 295
    .line 296
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    .line 302
    .line 303
    return v4

    .line 304
    :cond_11
    :goto_6
    return v3
.end method

.method public final isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    .line 1
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    .line 3
    const/16 p1, 0x7f8

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isKeyguardOccluded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 10
    .line 11
    return p0
.end method

.method public final isKeyguardSecure(I)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-boolean p1, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 29
    .line 30
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 31
    .line 32
    return p0
.end method

.method public final isKeyguardShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

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
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method public final isKeyguardTrustedLw()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 14
    .line 15
    :cond_1
    return v0
.end method

.method public final isScreenOn(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 5
    .line 6
    iget p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDexDisplay:Landroid/view/Display;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne p1, v0, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 35
    .line 36
    return p0

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 38
    .line 39
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 40
    .line 41
    return p0
.end method

.method public final isUserSetupComplete()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "user_setup_complete"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string/jumbo v4, "tv_user_setup_complete"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    :goto_1
    move v2, v1

    .line 42
    :cond_1
    and-int/2addr v0, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 45
    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v4, "android.car.SETUP_WIZARD_IN_PROGRESS"

    .line 55
    .line 56
    invoke-static {p0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    :goto_2
    return v0
.end method

.method public final keyguardOn()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    move p0, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 21
    .line 22
    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 23
    .line 24
    iput-boolean v1, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 25
    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 29
    .line 30
    :goto_0
    if-eqz p0, :cond_3

    .line 31
    .line 32
    :cond_2
    const/4 v0, 0x1

    .line 33
    :cond_3
    return v0
.end method

.method public final launchAllAppsAction()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.ALL_APPS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "android.intent.action.MAIN"

    .line 13
    .line 14
    const-string v2, "android.intent.category.HOME"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    const/high16 v3, 0x100000

    .line 23
    .line 24
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 25
    .line 26
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 33
    .line 34
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final launchAllAppsViaA11y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Lcom/android/server/AccessibilityManagerInternal;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/AccessibilityManagerInternal;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/AccessibilityManagerInternal;->performSystemAction()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method public final launchAssistAction(IIJLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "assist"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, -0x2

    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    if-eqz p5, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    :cond_2
    const-string p1, "android.intent.extra.TIME"

    .line 35
    .line 36
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    const-string p1, "invocation_type"

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-class p2, Landroid/app/SearchManager;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/app/SearchManager;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    :try_start_0
    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public final launchHomeFromHotKey(IZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p3, :cond_b

    .line 9
    .line 10
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 11
    .line 12
    iget-object v2, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 13
    .line 14
    iget-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    :cond_0
    move p3, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-ne p1, v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-boolean p3, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mDexKeyguardOccluded:Z

    .line 30
    .line 31
    if-nez p3, :cond_0

    .line 32
    .line 33
    move p3, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    :goto_0
    if-eqz p3, :cond_3

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    if-ne p1, v4, :cond_8

    .line 43
    .line 44
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v2, -0x1

    .line 50
    if-ne p1, v2, :cond_4

    .line 51
    .line 52
    iget-object p3, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 53
    .line 54
    invoke-virtual {p3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    if-ne p1, v4, :cond_5

    .line 60
    .line 61
    iget-boolean p3, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mDexKeyguardOccluded:Z

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    if-nez p1, :cond_7

    .line 65
    .line 66
    iget-object p3, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 67
    .line 68
    iget-boolean v2, p3, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 69
    .line 70
    if-eqz v2, :cond_6

    .line 71
    .line 72
    iget-boolean p3, p3, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    invoke-virtual {p3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    goto :goto_1

    .line 80
    :cond_7
    move p3, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    :goto_1
    if-nez p3, :cond_b

    .line 87
    .line 88
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 89
    .line 90
    iget-object v2, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 91
    .line 92
    if-eqz v2, :cond_9

    .line 93
    .line 94
    iget-object v3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 95
    .line 96
    iget-object v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 97
    .line 98
    iget-boolean v2, v2, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 99
    .line 100
    iput-boolean v2, v3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 101
    .line 102
    :cond_9
    iget-object p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 103
    .line 104
    iget-boolean p3, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->inputRestricted:Z

    .line 105
    .line 106
    if-eqz p3, :cond_b

    .line 107
    .line 108
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 109
    .line 110
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    .line 111
    .line 112
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p3, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 116
    .line 117
    if-eqz p0, :cond_a

    .line 118
    .line 119
    new-instance p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;

    .line 120
    .line 121
    invoke-direct {p1}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardExitDelegate;->mOnKeyguardExitResult:Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 127
    .line 128
    .line 129
    :cond_a
    return-void

    .line 130
    :cond_b
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 131
    .line 132
    if-eqz p3, :cond_e

    .line 133
    .line 134
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-interface {p3}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    :catch_0
    if-eqz p2, :cond_c

    .line 142
    .line 143
    const-string p2, "dreams"

    .line 144
    .line 145
    invoke-static {p2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {p2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-eqz p2, :cond_c

    .line 154
    .line 155
    :try_start_1
    invoke-interface {p2}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    .line 158
    :catch_1
    :cond_c
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-eqz p2, :cond_d

    .line 165
    .line 166
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(IZZ)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_d
    invoke-virtual {p0, v1, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(IZZ)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_e
    const-string/jumbo p3, "startDockOrHome"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(Ljava/lang/String;ZZI)V

    .line 178
    .line 179
    .line 180
    :goto_2
    return-void
.end method

.method public final lockNow(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.DEVICE_POWER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 19
    .line 20
    iput-object p1, v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    const-string p1, "WindowManager"

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "lockNow, pid "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " , uid"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 65
    .line 66
    monitor-enter p1

    .line 67
    const/4 v0, 0x1

    .line 68
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 69
    .line 70
    monitor-exit p1

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;->getIntValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x0

    .line 12
    const/16 v1, 0x1a

    .line 13
    .line 14
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final logKeyboardSystemsEventOnActionUp(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->logKeyboardSystemsEvent(Landroid/view/KeyEvent;Lcom/android/server/input/KeyboardMetricsCollector$KeyboardLogEvent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 2
    .line 3
    if-ne v0, p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x11101c7

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_5

    .line 26
    .line 27
    if-nez p3, :cond_5

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :goto_0
    if-eqz v0, :cond_3

    .line 40
    .line 41
    new-instance v0, Landroid/content/Intent;

    .line 42
    .line 43
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 57
    .line 58
    const-wide/32 v2, 0xf4240

    .line 59
    .line 60
    .line 61
    div-long/2addr p1, v2

    .line 62
    iget-boolean v2, v1, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/4 v2, 0x5

    .line 72
    const-string v3, "CAMERA_COVER"

    .line 73
    .line 74
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 78
    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 83
    .line 84
    return-void
.end method

.method public final okToAnimate(Z)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4
    .line 5
    iget-boolean p1, p1, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final performHapticFeedback(ILjava/lang/String;Z)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move v2, p1

    .line 15
    move-object v4, p2

    .line 16
    move v5, p3

    .line 17
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final postShortPressOnHome(Landroid/view/KeyEvent;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final powerMultiPressAction(JZILandroid/view/KeyEvent;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x1a

    .line 7
    .line 8
    const-string v4, "PhoneWindowManagerExt"

    .line 9
    .line 10
    packed-switch p4, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string/jumbo p5, "powerMultiPress behavior was wrong. "

    .line 14
    .line 15
    .line 16
    invoke-static {p4, p5, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p5, 0x1

    .line 20
    const-string p6, "WindowManager"

    .line 21
    .line 22
    if-eq p4, p5, :cond_7

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    if-eq p4, v0, :cond_5

    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    if-eq p4, p1, :cond_0

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_0
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string p1, "Executing the double press power action."

    .line 37
    .line 38
    invoke-static {p6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 42
    .line 43
    if-eqz p1, :cond_b

    .line 44
    .line 45
    new-instance p1, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    move v2, p5

    .line 78
    :cond_2
    const/high16 p2, 0x10200000

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    sget-object p2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 95
    .line 96
    if-eqz p0, :cond_b

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string p2, "Could not resolve activity with : "

    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p0, " name."

    .line 120
    .line 121
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    const-string p4, "Starting brightness boost."

    .line 133
    .line 134
    invoke-static {p6, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    if-nez p3, :cond_6

    .line 138
    .line 139
    invoke-virtual {p0, v3, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(IJZ)V

    .line 140
    .line 141
    .line 142
    :cond_6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 143
    .line 144
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 149
    .line 150
    .line 151
    move-result p4

    .line 152
    if-nez p4, :cond_8

    .line 153
    .line 154
    const-string p0, "Ignoring toggling theater mode - device not setup."

    .line 155
    .line 156
    invoke-static {p6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_8
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 163
    .line 164
    .line 165
    move-result-object p4

    .line 166
    const-string/jumbo v0, "theater_mode_on"

    .line 167
    .line 168
    .line 169
    invoke-static {p4, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result p4

    .line 173
    if-ne p4, p5, :cond_9

    .line 174
    .line 175
    move p4, p5

    .line 176
    goto :goto_0

    .line 177
    :cond_9
    move p4, v2

    .line 178
    :goto_0
    if-eqz p4, :cond_a

    .line 179
    .line 180
    const-string p4, "Toggling theater mode off."

    .line 181
    .line 182
    invoke-static {p6, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 188
    .line 189
    .line 190
    move-result-object p4

    .line 191
    invoke-static {p4, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    .line 193
    .line 194
    if-nez p3, :cond_b

    .line 195
    .line 196
    invoke-virtual {p0, v3, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(IJZ)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_a
    const-string p4, "Toggling theater mode on."

    .line 201
    .line 202
    invoke-static {p6, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 208
    .line 209
    .line 210
    move-result-object p4

    .line 211
    invoke-static {p4, v0, p5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    .line 213
    .line 214
    iget-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 215
    .line 216
    if-eqz p4, :cond_b

    .line 217
    .line 218
    if-eqz p3, :cond_b

    .line 219
    .line 220
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 221
    .line 222
    const/4 p3, 0x4

    .line 223
    invoke-virtual {p0, p1, p2, p3, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 224
    .line 225
    .line 226
    :cond_b
    :goto_1
    return-void

    .line 227
    :pswitch_0
    invoke-virtual {v1, p5, p6}, Lcom/android/server/policy/KeyCustomizationManager;->launchMultiPressAction(Landroid/view/KeyEvent;I)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_9

    .line 231
    .line 232
    :pswitch_1
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    .line 233
    .line 234
    if-eqz p0, :cond_1b

    .line 235
    .line 236
    const/16 p0, 0x8

    .line 237
    .line 238
    invoke-virtual {v1, p0, v3}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    const/16 p1, 0x7d2

    .line 243
    .line 244
    if-ne p0, p1, :cond_1b

    .line 245
    .line 246
    const-string p0, "Launch TvMode by power key double press"

    .line 247
    .line 248
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    invoke-static {v0, p5, p3}, Lcom/android/server/policy/SideKeyDoublePress;->launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_9

    .line 255
    .line 256
    :pswitch_2
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 257
    .line 258
    if-eqz p0, :cond_1b

    .line 259
    .line 260
    const-string p0, "Launch target app by side key double press"

    .line 261
    .line 262
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    invoke-static {v0, p5, p3}, Lcom/android/server/policy/SideKeyDoublePress;->launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_9

    .line 269
    .line 270
    :pswitch_3
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 271
    .line 272
    if-nez p0, :cond_c

    .line 273
    .line 274
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 275
    .line 276
    if-eqz p0, :cond_1b

    .line 277
    .line 278
    :cond_c
    new-instance p0, Landroid/content/Intent;

    .line 279
    .line 280
    const-string p1, "com.android.systemui.action.LAUNCH_EMERGENCY"

    .line 281
    .line 282
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    const/high16 p2, 0x100000

    .line 292
    .line 293
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    const/4 p2, 0x0

    .line 298
    if-eqz p1, :cond_11

    .line 299
    .line 300
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result p3

    .line 304
    if-eqz p3, :cond_d

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    :cond_e
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result p5

    .line 315
    if-eqz p5, :cond_10

    .line 316
    .line 317
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p5

    .line 321
    check-cast p5, Landroid/content/pm/ResolveInfo;

    .line 322
    .line 323
    if-eqz p5, :cond_e

    .line 324
    .line 325
    iget-object p6, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 326
    .line 327
    if-nez p6, :cond_f

    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_f
    const-string v1, "com.samsung.android.emergency"

    .line 331
    .line 332
    iget-object p6, p6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result p6

    .line 338
    if-eqz p6, :cond_e

    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    move-object p5, p1

    .line 346
    check-cast p5, Landroid/content/pm/ResolveInfo;

    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_11
    :goto_3
    move-object p5, p2

    .line 350
    :goto_4
    if-nez p5, :cond_12

    .line 351
    .line 352
    const-string p0, "Couldn\'t find an app to process the emergency intent."

    .line 353
    .line 354
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    :goto_5
    move-object p0, p2

    .line 358
    goto :goto_6

    .line 359
    :cond_12
    iget-object p1, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 360
    .line 361
    if-nez p1, :cond_13

    .line 362
    .line 363
    const-string p0, "activityInfo is null, Can not update the emergency intent."

    .line 364
    .line 365
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_13
    new-instance p2, Landroid/content/ComponentName;

    .line 370
    .line 371
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 372
    .line 373
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 374
    .line 375
    invoke-direct {p2, p3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 379
    .line 380
    .line 381
    const/high16 p1, 0x10000000

    .line 382
    .line 383
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 384
    .line 385
    .line 386
    :goto_6
    if-nez p0, :cond_14

    .line 387
    .line 388
    const-string p0, "Can not launch emergency SOS, the intent is null"

    .line 389
    .line 390
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    goto/16 :goto_9

    .line 394
    .line 395
    :cond_14
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 396
    .line 397
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    sget-object p2, Lcom/android/server/policy/KeyCombinationManager;->HW_KEY_LIST_EXCEPT_POWER:[I

    .line 405
    .line 406
    array-length p3, p2

    .line 407
    move p5, v2

    .line 408
    :goto_7
    if-ge p5, p3, :cond_16

    .line 409
    .line 410
    aget p6, p2, p5

    .line 411
    .line 412
    iget-object v1, p1, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 413
    .line 414
    invoke-virtual {v1, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    if-nez v1, :cond_15

    .line 419
    .line 420
    add-int/lit8 p5, p5, 0x1

    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_15
    move v2, p6

    .line 424
    :cond_16
    if-eqz v2, :cond_17

    .line 425
    .line 426
    const-string p0, "Can not launch emergency SOS, other key is pressed "

    .line 427
    .line 428
    invoke-static {v2, p0, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    goto :goto_9

    .line 432
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string p2, "launch emergency SOS, behavior="

    .line 435
    .line 436
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-static {p4}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p2

    .line 443
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 454
    .line 455
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 456
    .line 457
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 458
    .line 459
    .line 460
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 461
    .line 462
    if-eqz p0, :cond_1b

    .line 463
    .line 464
    const/16 p0, 0x66

    .line 465
    .line 466
    if-ne p4, p0, :cond_18

    .line 467
    .line 468
    const-string p0, "HWB1003"

    .line 469
    .line 470
    goto :goto_8

    .line 471
    :cond_18
    const-string p0, "HWB1005"

    .line 472
    .line 473
    :goto_8
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    goto :goto_9

    .line 477
    :pswitch_4
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 478
    .line 479
    if-eqz p0, :cond_1a

    .line 480
    .line 481
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->isQuickLaunchCameraEnabled(I)Z

    .line 482
    .line 483
    .line 484
    move-result p0

    .line 485
    if-eqz p0, :cond_1a

    .line 486
    .line 487
    const-string p0, "Launch camera by power key double press"

    .line 488
    .line 489
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressLaunchPolicy(I)Z

    .line 493
    .line 494
    .line 495
    move-result p0

    .line 496
    if-nez p0, :cond_19

    .line 497
    .line 498
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchPowerDoublePressCamera()V

    .line 499
    .line 500
    .line 501
    :cond_19
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastDoubleClick(I)V

    .line 502
    .line 503
    .line 504
    goto :goto_9

    .line 505
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    const-string p1, "Can not launch camera, maybe behavior was wrong. "

    .line 508
    .line 509
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuickLaunchCameraBehavior:I

    .line 513
    .line 514
    invoke-static {p0, p1, v4}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 515
    .line 516
    .line 517
    :cond_1b
    :goto_9
    return-void

    .line 518
    nop

    .line 519
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final powerPress(JIILandroid/view/KeyEvent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move/from16 v7, p3

    .line 6
    .line 7
    move-object/from16 v6, p5

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v7, v1, :cond_2

    .line 11
    .line 12
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v5, "SideFpsEventHandler"

    .line 18
    .line 19
    const-string/jumbo v8, "notifyPowerPressed"

    .line 20
    .line 21
    .line 22
    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v5, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    iget-object v5, v4, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    iget-object v5, v4, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-class v8, Landroid/hardware/fingerprint/FingerprintManager;

    .line 40
    .line 41
    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    .line 46
    .line 47
    iput-object v5, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 48
    .line 49
    :cond_0
    iget-object v4, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->onPowerPressed()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 58
    .line 59
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 60
    .line 61
    const/4 v5, 0x5

    .line 62
    const/4 v8, 0x2

    .line 63
    const/4 v9, 0x3

    .line 64
    if-eqz v4, :cond_8

    .line 65
    .line 66
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 67
    .line 68
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 69
    .line 70
    if-nez v4, :cond_8

    .line 71
    .line 72
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 73
    .line 74
    iget-object v10, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 75
    .line 76
    if-eq v7, v8, :cond_5

    .line 77
    .line 78
    if-eq v7, v9, :cond_4

    .line 79
    .line 80
    if-eq v7, v5, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    sget-boolean v10, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_QUINTUPLE_PRESS_EMERGENCY_SOS:Z

    .line 84
    .line 85
    if-eqz v10, :cond_7

    .line 86
    .line 87
    iget v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 88
    .line 89
    const/16 v10, 0x67

    .line 90
    .line 91
    if-ne v4, v10, :cond_7

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 95
    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    iget v4, v10, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 99
    .line 100
    const/16 v10, 0x66

    .line 101
    .line 102
    if-ne v4, v10, :cond_7

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 106
    .line 107
    if-eqz v4, :cond_6

    .line 108
    .line 109
    iget v4, v10, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 110
    .line 111
    const/16 v11, 0x68

    .line 112
    .line 113
    if-eq v4, v11, :cond_8

    .line 114
    .line 115
    :cond_6
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    .line 116
    .line 117
    if-eqz v4, :cond_7

    .line 118
    .line 119
    iget v4, v10, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 120
    .line 121
    const/16 v10, 0x65

    .line 122
    .line 123
    if-ne v4, v10, :cond_7

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    :goto_1
    const-string v0, "WindowManager"

    .line 127
    .line 128
    const-string v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    .line 129
    .line 130
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_8
    :goto_2
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 135
    .line 136
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 137
    .line 138
    const/16 v10, 0x1a

    .line 139
    .line 140
    if-ne v7, v1, :cond_12

    .line 141
    .line 142
    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 143
    .line 144
    iget-object v13, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 145
    .line 146
    iget-object v14, v13, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 147
    .line 148
    iget-boolean v14, v14, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 149
    .line 150
    if-eqz v6, :cond_10

    .line 151
    .line 152
    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManager;->getKeyCombinationManager()Lcom/android/server/policy/KeyCombinationManager;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    invoke-virtual {v15, v6}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    if-nez v15, :cond_10

    .line 161
    .line 162
    iget v15, v13, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 163
    .line 164
    and-int/2addr v15, v8

    .line 165
    if-nez v15, :cond_a

    .line 166
    .line 167
    :cond_9
    const/4 v14, 0x0

    .line 168
    goto :goto_4

    .line 169
    :cond_a
    if-eqz v4, :cond_b

    .line 170
    .line 171
    if-nez v14, :cond_b

    .line 172
    .line 173
    :goto_3
    move v14, v1

    .line 174
    goto :goto_4

    .line 175
    :cond_b
    sget-boolean v14, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 176
    .line 177
    if-eqz v14, :cond_9

    .line 178
    .line 179
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    invoke-virtual {v14}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-eqz v14, :cond_9

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :goto_4
    invoke-virtual {v13}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    if-nez v13, :cond_c

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_c
    invoke-virtual {v13}, Landroid/telecom/TelecomManager;->isRinging()Z

    .line 198
    .line 199
    .line 200
    move-result v15

    .line 201
    const-string v11, "PhoneWindowManagerExt"

    .line 202
    .line 203
    if-eqz v15, :cond_e

    .line 204
    .line 205
    const-string/jumbo v13, "silenceRinger"

    .line 206
    .line 207
    .line 208
    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    const-class v11, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 212
    .line 213
    invoke-static {v11}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    check-cast v11, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 218
    .line 219
    if-nez v11, :cond_d

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_d
    invoke-virtual {v11, v10}, Lcom/samsung/android/telecom/SemTelecomManager;->silenceRinger(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_e
    if-eqz v14, :cond_10

    .line 227
    .line 228
    invoke-virtual {v13}, Landroid/telecom/TelecomManager;->isInCall()Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    if-eqz v13, :cond_10

    .line 233
    .line 234
    const-string v0, "endCall"

    .line 235
    .line 236
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    const-class v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 240
    .line 241
    invoke-static {v0}, Lcom/samsung/android/server/util/SafetySystemService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Lcom/samsung/android/telecom/SemTelecomManager;

    .line 246
    .line 247
    if-nez v0, :cond_f

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_f
    invoke-virtual {v0, v10}, Lcom/samsung/android/telecom/SemTelecomManager;->endCall(I)V

    .line 251
    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_10
    :goto_5
    sget-boolean v11, Lcom/samsung/android/rune/InputRune;->PWM_FINGERPRINT_SIDE_TOUCH:Z

    .line 255
    .line 256
    if-eqz v11, :cond_12

    .line 257
    .line 258
    iget-boolean v11, v12, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakeAndUnlockTriggered:Z

    .line 259
    .line 260
    if-nez v11, :cond_11

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_11
    :goto_6
    const-string v0, "WindowManager"

    .line 264
    .line 265
    const-string v1, "consumed by powerPress, interactive="

    .line 266
    .line 267
    invoke-static {v1, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_12
    :goto_7
    const-string v11, "WindowManager"

    .line 272
    .line 273
    new-instance v12, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string/jumbo v13, "powerPress: eventTime="

    .line 276
    .line 277
    .line 278
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v13, " interactive="

    .line 285
    .line 286
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v13, " count="

    .line 293
    .line 294
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v13, " mShortPressOnPowerBehavior="

    .line 301
    .line 302
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 306
    .line 307
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v13, " systemKeyRequested="

    .line 311
    .line 312
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget-boolean v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 316
    .line 317
    invoke-static {v11, v12, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 318
    .line 319
    .line 320
    if-ne v7, v8, :cond_17

    .line 321
    .line 322
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 323
    .line 324
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 328
    .line 329
    if-nez v8, :cond_13

    .line 330
    .line 331
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_HIGH:Z

    .line 332
    .line 333
    if-nez v8, :cond_13

    .line 334
    .line 335
    iget-boolean v8, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCustomBugreportWriterEnabled:Z

    .line 336
    .line 337
    if-nez v8, :cond_13

    .line 338
    .line 339
    iget-boolean v8, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    .line 340
    .line 341
    if-eqz v8, :cond_16

    .line 342
    .line 343
    :cond_13
    iget-boolean v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyPressed:Z

    .line 344
    .line 345
    if-eqz v5, :cond_16

    .line 346
    .line 347
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 348
    .line 349
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    .line 350
    .line 351
    const-string v3, "PhoneWindowManagerExt"

    .line 352
    .line 353
    if-eqz v2, :cond_14

    .line 354
    .line 355
    new-instance v2, Landroid/content/Intent;

    .line 356
    .line 357
    const-string v4, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 358
    .line 359
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const-string v4, "ERRNAME"

    .line 363
    .line 364
    const-string v5, "User pressed h/w key for logging"

    .line 365
    .line 366
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    const-string v4, "ERRCODE"

    .line 370
    .line 371
    const/16 v6, -0x83

    .line 372
    .line 373
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    .line 375
    .line 376
    const-string v4, "ERRMSG"

    .line 377
    .line 378
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    .line 380
    .line 381
    const-string v4, "lockScreen"

    .line 382
    .line 383
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    .line 385
    .line 386
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 387
    .line 388
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 389
    .line 390
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 391
    .line 392
    .line 393
    const-string/jumbo v0, "sendBroadcast to issuetracker."

    .line 394
    .line 395
    .line 396
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    goto/16 :goto_d

    .line 400
    .line 401
    :cond_14
    const-string v1, "dumpstate.is_running"

    .line 402
    .line 403
    const-string v2, "0"

    .line 404
    .line 405
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    const-string v2, "1"

    .line 410
    .line 411
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_15

    .line 416
    .line 417
    const-string v0, "Running dump due to requestCustomFullBugreport."

    .line 418
    .line 419
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    goto/16 :goto_d

    .line 423
    .line 424
    :cond_15
    const-string v1, "Called requestCustomFullBugreport, reason=key_combination"

    .line 425
    .line 426
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 430
    .line 431
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda8;

    .line 432
    .line 433
    const/4 v2, 0x1

    .line 434
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda8;-><init>(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    .line 439
    .line 440
    goto/16 :goto_d

    .line 441
    .line 442
    :cond_16
    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 443
    .line 444
    move-object/from16 v1, p0

    .line 445
    .line 446
    move-wide/from16 v2, p1

    .line 447
    .line 448
    move-object/from16 v6, p5

    .line 449
    .line 450
    move/from16 v7, p3

    .line 451
    .line 452
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_d

    .line 456
    .line 457
    :cond_17
    if-ne v7, v9, :cond_18

    .line 458
    .line 459
    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 460
    .line 461
    move-object/from16 v1, p0

    .line 462
    .line 463
    move-wide/from16 v2, p1

    .line 464
    .line 465
    move-object/from16 v6, p5

    .line 466
    .line 467
    move/from16 v7, p3

    .line 468
    .line 469
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_d

    .line 473
    .line 474
    :cond_18
    const/4 v8, 0x4

    .line 475
    if-ne v7, v8, :cond_19

    .line 476
    .line 477
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 478
    .line 479
    iget v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuadruplePressOnPowerBehavior:I

    .line 480
    .line 481
    move-object/from16 v1, p0

    .line 482
    .line 483
    move-wide/from16 v2, p1

    .line 484
    .line 485
    move-object/from16 v6, p5

    .line 486
    .line 487
    move/from16 v7, p3

    .line 488
    .line 489
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_d

    .line 493
    .line 494
    :cond_19
    if-ne v7, v5, :cond_1a

    .line 495
    .line 496
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 497
    .line 498
    iget v5, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mQuintuplePressOnPowerBehavior:I

    .line 499
    .line 500
    move-object/from16 v1, p0

    .line 501
    .line 502
    move-wide/from16 v2, p1

    .line 503
    .line 504
    move-object/from16 v6, p5

    .line 505
    .line 506
    move/from16 v7, p3

    .line 507
    .line 508
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZILandroid/view/KeyEvent;I)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_d

    .line 512
    .line 513
    :cond_1a
    if-le v7, v9, :cond_1b

    .line 514
    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    .line 516
    .line 517
    .line 518
    move-result v5

    .line 519
    if-gt v7, v5, :cond_1b

    .line 520
    .line 521
    const-string v0, "WindowManager"

    .line 522
    .line 523
    const-string v1, "No behavior defined for power press count "

    .line 524
    .line 525
    invoke-static {v7, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_d

    .line 529
    .line 530
    :cond_1b
    if-ne v7, v1, :cond_2d

    .line 531
    .line 532
    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    .line 533
    .line 534
    const-string v6, "WindowManager"

    .line 535
    .line 536
    if-eqz v5, :cond_1d

    .line 537
    .line 538
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 539
    .line 540
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    .line 541
    .line 542
    .line 543
    move-result v4

    .line 544
    invoke-static {v4}, Landroid/view/Display;->isOnState(I)Z

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 549
    .line 550
    iget-boolean v5, v5, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromDefaultDisplayOn:Z

    .line 551
    .line 552
    if-eqz v4, :cond_1c

    .line 553
    .line 554
    if-nez v5, :cond_1f

    .line 555
    .line 556
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string v1, "Ignoring short press of power button because the default display is not on. defaultDisplayOn="

    .line 559
    .line 560
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    const-string v1, ", beganFromDefaultDisplayOn="

    .line 567
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .line 580
    .line 581
    goto/16 :goto_d

    .line 582
    .line 583
    :cond_1d
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 584
    .line 585
    iget-boolean v5, v5, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 586
    .line 587
    if-eqz v4, :cond_2c

    .line 588
    .line 589
    if-eqz v5, :cond_1e

    .line 590
    .line 591
    goto/16 :goto_c

    .line 592
    .line 593
    :cond_1e
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    .line 594
    .line 595
    iget-object v4, v4, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 596
    .line 597
    if-eqz v4, :cond_1f

    .line 598
    .line 599
    invoke-virtual {v4, v1}, Landroid/hardware/fingerprint/FingerprintManager;->onPowerPressed(Z)V

    .line 600
    .line 601
    .line 602
    :cond_1f
    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemKeyRequested:Z

    .line 603
    .line 604
    if-nez v4, :cond_2b

    .line 605
    .line 606
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 607
    .line 608
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 609
    .line 610
    invoke-virtual {v4, v10, v9}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 611
    .line 612
    .line 613
    move-result v4

    .line 614
    if-eqz v4, :cond_20

    .line 615
    .line 616
    goto/16 :goto_b

    .line 617
    .line 618
    :cond_20
    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 619
    .line 620
    packed-switch v4, :pswitch_data_0

    .line 621
    .line 622
    .line 623
    goto/16 :goto_d

    .line 624
    .line 625
    :pswitch_0
    const/4 v5, 0x7

    .line 626
    if-eq v4, v5, :cond_21

    .line 627
    .line 628
    const/4 v4, 0x0

    .line 629
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 630
    .line 631
    .line 632
    goto/16 :goto_d

    .line 633
    .line 634
    :cond_21
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 635
    .line 636
    if-nez v4, :cond_22

    .line 637
    .line 638
    const-class v4, Landroid/service/dreams/DreamManagerInternal;

    .line 639
    .line 640
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    check-cast v4, Landroid/service/dreams/DreamManagerInternal;

    .line 645
    .line 646
    iput-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 647
    .line 648
    :cond_22
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 649
    .line 650
    if-eqz v4, :cond_24

    .line 651
    .line 652
    invoke-virtual {v4, v1}, Landroid/service/dreams/DreamManagerInternal;->canStartDreaming(Z)Z

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-nez v1, :cond_23

    .line 657
    .line 658
    goto :goto_8

    .line 659
    :cond_23
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 660
    .line 661
    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 663
    .line 664
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 665
    .line 666
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    .line 667
    .line 668
    .line 669
    move-result v2

    .line 670
    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    .line 671
    .line 672
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-virtual {v4}, Landroid/service/dreams/DreamManagerInternal;->requestDream()V

    .line 674
    .line 675
    .line 676
    goto/16 :goto_d

    .line 677
    .line 678
    :catchall_0
    move-exception v0

    .line 679
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    throw v0

    .line 681
    :cond_24
    :goto_8
    const-string v1, "WindowManager"

    .line 682
    .line 683
    const-string v4, "Can\'t start dreaming when attempting to dream from short power press (isScreenOn=true)"

    .line 684
    .line 685
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    const/4 v1, 0x0

    .line 689
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 690
    .line 691
    .line 692
    goto/16 :goto_d

    .line 693
    .line 694
    :pswitch_1
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 695
    .line 696
    if-eqz v4, :cond_28

    .line 697
    .line 698
    iget-object v5, v4, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 699
    .line 700
    iget-boolean v6, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 701
    .line 702
    if-eqz v6, :cond_28

    .line 703
    .line 704
    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 705
    .line 706
    iget-object v4, v4, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 707
    .line 708
    if-eqz v4, :cond_27

    .line 709
    .line 710
    iget-object v4, v4, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 711
    .line 712
    iget-object v7, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 713
    .line 714
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 715
    .line 716
    .line 717
    move-result v6

    .line 718
    if-nez v6, :cond_26

    .line 719
    .line 720
    iget-boolean v4, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 721
    .line 722
    if-eqz v4, :cond_25

    .line 723
    .line 724
    goto :goto_9

    .line 725
    :cond_25
    const/4 v1, 0x0

    .line 726
    :cond_26
    :goto_9
    iput-boolean v1, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 727
    .line 728
    :cond_27
    iget-boolean v1, v5, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 729
    .line 730
    if-eqz v1, :cond_28

    .line 731
    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    if-eqz v1, :cond_29

    .line 737
    .line 738
    :cond_28
    const/4 v4, 0x0

    .line 739
    goto :goto_a

    .line 740
    :cond_29
    const/4 v1, 0x0

    .line 741
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 742
    .line 743
    .line 744
    goto/16 :goto_d

    .line 745
    .line 746
    :goto_a
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 747
    .line 748
    .line 749
    goto/16 :goto_d

    .line 750
    .line 751
    :pswitch_2
    const/4 v4, 0x0

    .line 752
    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    .line 753
    .line 754
    if-eqz v2, :cond_2a

    .line 755
    .line 756
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    const/16 v1, 0x11

    .line 761
    .line 762
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideAllInputMethods(I)V

    .line 763
    .line 764
    .line 765
    goto :goto_d

    .line 766
    :cond_2a
    invoke-virtual {v0, v4, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 767
    .line 768
    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    if-eqz v1, :cond_2d

    .line 774
    .line 775
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 776
    .line 777
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 778
    .line 779
    if-eqz v0, :cond_2d

    .line 780
    .line 781
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onShortPowerPressedGoHome()V

    .line 782
    .line 783
    .line 784
    goto :goto_d

    .line 785
    :pswitch_3
    const/4 v2, 0x0

    .line 786
    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 787
    .line 788
    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    if-eqz v1, :cond_2d

    .line 794
    .line 795
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 796
    .line 797
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 798
    .line 799
    if-eqz v0, :cond_2d

    .line 800
    .line 801
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onShortPowerPressedGoHome()V

    .line 802
    .line 803
    .line 804
    goto :goto_d

    .line 805
    :pswitch_4
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    if-eqz v2, :cond_2d

    .line 810
    .line 811
    const/4 v4, 0x0

    .line 812
    invoke-virtual {v0, v4, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    .line 813
    .line 814
    .line 815
    goto :goto_d

    .line 816
    :pswitch_5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 817
    .line 818
    .line 819
    goto :goto_d

    .line 820
    :pswitch_6
    const/4 v4, 0x0

    .line 821
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(IJ)Z

    .line 822
    .line 823
    .line 824
    goto :goto_d

    .line 825
    :cond_2b
    :goto_b
    const-string v0, "WindowManager"

    .line 826
    .line 827
    const-string/jumbo v1, "skip single press power, requestedSystemKey"

    .line 828
    .line 829
    .line 830
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    .line 832
    .line 833
    return-void

    .line 834
    :cond_2c
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 835
    .line 836
    const-string v1, "Ignoring short press of power button because the device is not interactive. interactive="

    .line 837
    .line 838
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    const-string v1, ", beganFromNonInteractive="

    .line 845
    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .line 858
    .line 859
    :cond_2d
    :goto_d
    return-void

    .line 860
    nop

    .line 861
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readConfigurationDependentBehaviors()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_SEARCLE:Z

    .line 8
    .line 9
    const/16 v2, 0x65

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_BIXBY_TOUCH_CHN:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const v1, 0x10e00ce

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 32
    .line 33
    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-ltz v1, :cond_2

    .line 37
    .line 38
    if-le v1, v2, :cond_3

    .line 39
    .line 40
    :cond_2
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 41
    .line 42
    :cond_3
    const v1, 0x10e009b

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    if-ltz v1, :cond_4

    .line 53
    .line 54
    if-le v1, v2, :cond_5

    .line 55
    .line 56
    :cond_4
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 57
    .line 58
    :cond_5
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    .line 62
    const-string v4, "android.software.picture_in_picture"

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 72
    .line 73
    :cond_6
    const v1, 0x10e0149

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    .line 81
    .line 82
    if-ltz v0, :cond_7

    .line 83
    .line 84
    if-le v0, v2, :cond_8

    .line 85
    .line 86
    :cond_7
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    .line 87
    .line 88
    :cond_8
    return-void
.end method

.method public final screenTurnedOff(IZ)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WindowManager"

    .line 6
    .line 7
    const-string v1, "Display"

    .line 8
    .line 9
    const-string v2, " turned off..."

    .line 10
    .line 11
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    if-nez p1, :cond_6

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSleepTokenLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    const/4 p1, 0x0

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lcom/android/window/flags/Flags;->skipSleepingWhenSwitchingDisplay()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 37
    .line 38
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->acquire(IZ)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff()V

    .line 44
    .line 45
    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter p2

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    const-string v2, "KeyguardServiceDelegate"

    .line 59
    .line 60
    const-string/jumbo v3, "onScreenTurnedOff()"

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOff()V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 72
    .line 73
    iput p1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 74
    .line 75
    :cond_4
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 82
    .line 83
    if-nez p2, :cond_5

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 89
    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    throw p0

    .line 97
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    throw p0

    .line 99
    :cond_6
    const/4 p2, 0x1

    .line 100
    if-ne p1, v0, :cond_7

    .line 101
    .line 102
    invoke-virtual {p0, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(IZ)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-ne p1, v0, :cond_8

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(IZ)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff()V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 133
    .line 134
    .line 135
    :cond_8
    :goto_2
    return-void
.end method

.method public final screenTurnedOn(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WindowManager"

    .line 6
    .line 7
    const-string v1, "Display "

    .line 8
    .line 9
    const-string v2, " turned on..."

    .line 10
    .line 11
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->onScreenTurnedOn(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    if-eqz p1, :cond_3

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    const-string v2, "KeyguardServiceDelegate"

    .line 51
    .line 52
    const-string/jumbo v3, "onScreenTurnedOn()"

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 64
    .line 65
    iput v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 66
    .line 67
    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchFinished()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 74
    .line 75
    if-nez p1, :cond_6

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, v1, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p0
.end method

.method public final screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 13
    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const-string p2, "KeyguardServiceDelegate"

    .line 21
    .line 22
    const-string/jumbo v0, "onScreenTurningOff()"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOff()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 34
    .line 35
    const/4 p2, 0x3

    .line 36
    iput p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 37
    .line 38
    :cond_2
    monitor-exit p1

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final screenTurningOn(ILcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "WindowManager"

    .line 6
    .line 7
    const-string v2, "Display "

    .line 8
    .line 9
    const-string v3, " turning on..."

    .line 10
    .line 11
    invoke-static {p1, v2, v3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->onScreenTurningOn(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    const-wide/16 v2, 0x20

    .line 37
    .line 38
    if-nez p1, :cond_6

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSleepTokenLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v4

    .line 43
    :try_start_0
    const-string/jumbo p1, "screenTurningOn"

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->release(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurningOn(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter p1

    .line 65
    :try_start_1
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    iget-object p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 70
    .line 71
    iget-boolean p2, p2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 76
    .line 77
    const/4 v0, 0x6

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 82
    .line 83
    const-class v1, Lcom/android/server/SystemServiceManager;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/android/server/SystemServiceManager;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    .line 98
    .line 99
    int-to-long v1, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const-wide/16 v1, 0x1388

    .line 102
    .line 103
    :goto_0
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    .line 105
    .line 106
    const-string p2, "WindowManager"

    .line 107
    .line 108
    const-string/jumbo v0, "screenTurningOn(+), before calling onScreenTurningOn to KeyguardDelegate"

    .line 109
    .line 110
    .line 111
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 117
    .line 118
    invoke-virtual {p2, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 119
    .line 120
    .line 121
    const-string p2, "WindowManager"

    .line 122
    .line 123
    const-string/jumbo v0, "screenTurningOn(-), after calling onScreenTurningOn to KeyguardDelegate"

    .line 124
    .line 125
    .line 126
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    if-eqz v0, :cond_5

    .line 133
    .line 134
    const-string p2, "WindowManager"

    .line 135
    .line 136
    const-string/jumbo v0, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    .line 137
    .line 138
    .line 139
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_5
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 143
    .line 144
    const/4 v0, 0x5

    .line 145
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 146
    .line 147
    .line 148
    :goto_1
    monitor-exit p1

    .line 149
    goto :goto_4

    .line 150
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    throw p0

    .line 152
    :catchall_1
    move-exception p0

    .line 153
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    throw p0

    .line 155
    :cond_6
    const/4 v0, 0x2

    .line 156
    if-ne p1, v0, :cond_7

    .line 157
    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(IZ)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    .line 163
    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-ne p1, v0, :cond_8

    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(IZ)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayPolicy;->screenTurningOn(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    .line 185
    .line 186
    .line 187
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    .line 188
    .line 189
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    const-string/jumbo p2, "waitForAllWindowsDrawn"

    .line 193
    .line 194
    .line 195
    invoke-static {v2, v3, p2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 201
    .line 202
    const/4 v2, 0x7

    .line 203
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const-wide/16 v1, 0x3e8

    .line 208
    .line 209
    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    .line 210
    .line 211
    .line 212
    :goto_4
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 213
    .line 214
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 215
    .line 216
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 217
    .line 218
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 219
    .line 220
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    .line 221
    .line 222
    const/4 v1, 0x0

    .line 223
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 230
    .line 231
    new-instance p2, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;

    .line 232
    .line 233
    const/4 v0, 0x0

    .line 234
    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    .line 239
    .line 240
    return-void
.end method

.method public final sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setCurrentUserLw(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 15
    .line 16
    iput p1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 34
    .line 35
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public final setDeferredKeyActionsExecutableAsync(IJ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2
    .line 3
    const/16 v0, 0x1b

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setSwitchingUser(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setSwitchingUser(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final shouldDispatchInputWhenNonInteractive(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move v2, v1

    .line 12
    :goto_1
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_2
    if-eqz p1, :cond_5

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ne p1, v1, :cond_3

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_4

    .line 37
    .line 38
    return v1

    .line 39
    :cond_4
    if-eqz v2, :cond_5

    .line 40
    .line 41
    const-string p0, "dreams"

    .line 42
    .line 43
    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-eqz p0, :cond_5

    .line 52
    .line 53
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    if-eqz p0, :cond_5

    .line 58
    .line 59
    return v1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    const-string p1, "WindowManager"

    .line 62
    .line 63
    const-string v1, "RemoteException when checking if dreaming"

    .line 64
    .line 65
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    :cond_5
    :goto_3
    return v0
.end method

.method public final shouldEnableWakeGestureLp()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "lid_behavior"

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 28
    .line 29
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    move p0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p0, v1

    .line 45
    :goto_0
    monitor-exit v0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    move v1, v2

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0

    .line 53
    :cond_2
    :goto_1
    return v1
.end method

.method public final showDismissibleKeyguard()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->showDismissibleKeyguard()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final showGlobalActions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final showGlobalActionsInternal(I)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_LONG_PRESS:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "show Global Action, type="

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq p1, v2, :cond_2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "KEY_COMBINATION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v2, "LONG_PRESS"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v2, "DEFAULT"

    .line 35
    .line 36
    :goto_0
    const-string v3, "WindowManager"

    .line 37
    .line 38
    invoke-static {v0, v2, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/policy/GlobalActions;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "device_provisioned"

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    move v3, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_5
    move v3, v5

    .line 79
    :goto_1
    iget-object v4, v2, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 80
    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 92
    .line 93
    iget v4, v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 94
    .line 95
    and-int/lit8 v4, v4, 0x8

    .line 96
    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_6
    iput-boolean v0, v2, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 101
    .line 102
    iput-boolean v3, v2, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 103
    .line 104
    iput-boolean v1, v2, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 105
    .line 106
    iget-boolean v0, v2, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    iget-object v0, v2, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/statusbar/StatusBarManagerService$3;

    .line 111
    .line 112
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 115
    .line 116
    if-eqz v1, :cond_8

    .line 117
    .line 118
    :try_start_0
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 121
    .line 122
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showGlobalActionsMenu(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 127
    .line 128
    .line 129
    iget-object v0, v2, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    .line 130
    .line 131
    iget-boolean v3, v2, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 132
    .line 133
    iget-boolean v2, v2, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    .line 134
    .line 135
    invoke-virtual {v0, v3, v2, v1, p1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->show(ZZZI)V

    .line 136
    .line 137
    .line 138
    :catch_0
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 139
    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    invoke-virtual {p0, v0, v1, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final showRecentApps(IZ)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v2, p1}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    iget-object v4, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 33
    .line 34
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    :try_start_1
    iget-object v4, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lcom/android/internal/statusbar/IStatusBar;

    .line 59
    .line 60
    invoke-interface {v4, p2}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p2, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 64
    .line 65
    iget-object p2, p2, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eq v4, p1, :cond_0

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    .line 104
    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    invoke-interface {v1, v0, v3}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :catch_0
    :try_start_2
    const-string p1, "StatusBarManagerService"

    .line 114
    .line 115
    const-string p2, "RemoteException for SHOW_RECENT_APPS"

    .line 116
    .line 117
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_1
    monitor-exit v2

    .line 121
    goto :goto_3

    .line 122
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    throw p0

    .line 124
    :cond_2
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 125
    .line 126
    iget-object p1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    :try_start_3
    invoke-interface {p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V

    .line 133
    .line 134
    .line 135
    iget-object p1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_4

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    check-cast p2, Ljava/util/Map$Entry;

    .line 158
    .line 159
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Ljava/lang/Integer;

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_3

    .line 170
    .line 171
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    check-cast p2, Lcom/android/internal/statusbar/IStatusBar;

    .line 176
    .line 177
    if-eqz p2, :cond_3

    .line 178
    .line 179
    invoke-interface {p2, v0, v3}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :catch_1
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final showSystemSettings()V
    .locals 2

    .line 1
    const-string v0, "android.settings.SETTINGS"

    .line 2
    .line 3
    const/high16 v1, 0x4000000

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "com.android.settings/.homepage.SettingsHomepageActivity"

    .line 10
    .line 11
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final sleepDefaultDisplayFromPowerButton(IJ)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v2, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    .line 11
    .line 12
    if-eq v2, v1, :cond_0

    .line 13
    .line 14
    const/16 v3, 0x10

    .line 15
    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    const/16 v3, 0x11

    .line 19
    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 27
    .line 28
    if-lez v4, :cond_1

    .line 29
    .line 30
    iget-wide v5, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    .line 31
    .line 32
    int-to-long v7, v4

    .line 33
    add-long/2addr v5, v7

    .line 34
    cmp-long v4, v2, v5

    .line 35
    .line 36
    if-gez v4, :cond_1

    .line 37
    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p1, "Sleep from power button suppressed. Time since gesture: "

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-wide p1, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    .line 46
    .line 47
    sub-long/2addr v2, p1

    .line 48
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string/jumbo p1, "ms"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "WindowManager"

    .line 62
    .line 63
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return p0

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 69
    .line 70
    invoke-virtual {p0, p2, p3, v1, p1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    return p0
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V
    .locals 0

    if-nez p4, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Not starting activity because user setup is in progress: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    :goto_1
    return-void
.end method

.method public final startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final startDockOrHome(Ljava/lang/String;ZZI)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    const-string v0, "homekey"

    .line 9
    .line 10
    invoke-static {v0, p4}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindowsInDisplay(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    const-string p3, "dreams"

    .line 16
    .line 17
    invoke-static {p3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {p3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    :try_start_1
    invoke-interface {p3}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    .line 30
    :catch_1
    :cond_0
    iget-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    .line 31
    .line 32
    if-nez p3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-nez p3, :cond_1

    .line 39
    .line 40
    const-string p0, "WindowManager"

    .line 41
    .line 42
    const-string p1, "Not going home because user setup is in progress."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 49
    .line 50
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-boolean p3, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    if-eqz p3, :cond_2

    .line 57
    .line 58
    sget-object p3, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object p3, v0

    .line 62
    :goto_0
    if-eqz p3, :cond_5

    .line 63
    .line 64
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    const-string v1, "ActivityManagerPerformance"

    .line 69
    .line 70
    const-string v2, "isHomeKeyPressed() called"

    .line 71
    .line 72
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v3, "isHomeKeyPressed() Trace\n"

    .line 82
    .line 83
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    new-instance v1, Ljava/lang/Exception;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_3
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 113
    .line 114
    if-nez v1, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    const/4 v1, 0x1

    .line 118
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p3, v0, v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_1
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 123
    .line 124
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string/jumbo v1, "startDockOrHome, Callers="

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/16 v1, 0xa

    .line 136
    .line 137
    const-string v2, "PhoneWindowManagerExt"

    .line 138
    .line 139
    invoke-static {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 143
    .line 144
    new-instance v1, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;

    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-direct {v1, v2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    if-eqz p3, :cond_7

    .line 158
    .line 159
    if-eqz p2, :cond_6

    .line 160
    .line 161
    :try_start_2
    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    .line 162
    .line 163
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    :cond_6
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 167
    .line 168
    invoke-virtual {p0, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catch_2
    :cond_7
    sget-boolean p3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 173
    .line 174
    if-eqz p3, :cond_8

    .line 175
    .line 176
    const-string p3, "WindowManager"

    .line 177
    .line 178
    const-string/jumbo v0, "startDockOrHome: startReason= "

    .line 179
    .line 180
    .line 181
    invoke-static {v0, p1, p3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 185
    .line 186
    invoke-virtual {p3, p4}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 191
    .line 192
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 193
    .line 194
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 195
    .line 196
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 197
    .line 198
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 199
    .line 200
    .line 201
    monitor-enter p3

    .line 202
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 205
    .line 206
    const/4 v4, 0x1

    .line 207
    move-object v1, p1

    .line 208
    move v3, p4

    .line 209
    move v5, p2

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(Ljava/lang/String;IIZZ)Z

    .line 211
    .line 212
    .line 213
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :catchall_0
    move-exception p0

    .line 219
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 221
    .line 222
    .line 223
    throw p0
.end method

.method public final startedEarlyWakingUp(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "startedEarlyWakingUp reason="

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "KeyguardServiceDelegate"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startedEarlyWakingUp(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final startedGoingToSleep(II)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WindowManager"

    .line 6
    .line 7
    const-string v1, "Started going to sleep... (groupId="

    .line 8
    .line 9
    const-string v2, " why="

    .line 10
    .line 11
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ")"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSleepTokenLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p1

    .line 44
    const/4 v0, 0x1

    .line 45
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 48
    .line 49
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 55
    .line 56
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lcom/android/window/flags/Flags;->skipSleepingWhenSwitchingDisplay()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->acquire(IZ)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 76
    .line 77
    iget v0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    if-ne v0, v2, :cond_3

    .line 81
    .line 82
    iget p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 83
    .line 84
    or-int/lit8 p2, p2, 0x4

    .line 85
    .line 86
    iput p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    iget-object v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {v0, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedGoingToSleep(I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 105
    .line 106
    iput p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->offReason:I

    .line 107
    .line 108
    const/4 p2, 0x3

    .line 109
    iput p2, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 110
    .line 111
    :cond_5
    :goto_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 112
    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 123
    .line 124
    if-eqz p0, :cond_6

    .line 125
    .line 126
    iput-boolean v1, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    .line 127
    .line 128
    :cond_6
    return-void

    .line 129
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    throw p0
.end method

.method public final startedWakingUp(II)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WindowManager"

    .line 6
    .line 7
    const-string v1, "Started waking up... (groupId="

    .line 8
    .line 9
    const-string v2, " why="

    .line 10
    .line 11
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ")"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const p1, 0x11170

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v1

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 63
    .line 64
    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 72
    .line 73
    iget v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mLastDexMode:I

    .line 74
    .line 75
    const/4 v3, 0x2

    .line 76
    if-ne v2, v3, :cond_2

    .line 77
    .line 78
    iget v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 79
    .line 80
    or-int/2addr v2, v0

    .line 81
    iput v2, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPendingDualModeInteractive:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    const-string v2, "KeyguardServiceDelegate"

    .line 93
    .line 94
    const-string/jumbo v3, "onStartedWakingUp()"

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 101
    .line 102
    invoke-virtual {v2, p2, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp(IZ)V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 106
    .line 107
    iput v0, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    .line 108
    .line 109
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 110
    .line 111
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWakingUpReason:I

    .line 112
    .line 113
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 114
    .line 115
    if-eqz v1, :cond_9

    .line 116
    .line 117
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 118
    .line 119
    if-eqz v1, :cond_9

    .line 120
    .line 121
    iput-boolean v0, v1, Lcom/android/server/wm/TspStateController;->mAwake:Z

    .line 122
    .line 123
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_SIP_MODE:Z

    .line 124
    .line 125
    const-string v3, "0"

    .line 126
    .line 127
    const-string v4, "1"

    .line 128
    .line 129
    if-eqz v2, :cond_6

    .line 130
    .line 131
    iget-boolean v2, v1, Lcom/android/server/wm/TspStateController;->mImeWindowVisible:Z

    .line 132
    .line 133
    if-eqz v2, :cond_5

    .line 134
    .line 135
    move-object v2, v4

    .line 136
    goto :goto_1

    .line 137
    :cond_5
    move-object v2, v3

    .line 138
    :goto_1
    const/4 v5, 0x5

    .line 139
    invoke-virtual {v1, v5, v2, p1}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    :cond_6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_NOTE_MODE:Z

    .line 143
    .line 144
    if-eqz v2, :cond_8

    .line 145
    .line 146
    iget-object v2, v1, Lcom/android/server/wm/TspStateController;->mFocusedWindow:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v2, :cond_8

    .line 149
    .line 150
    iget-boolean v2, v1, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    .line 151
    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    move-object v3, v4

    .line 155
    :cond_7
    const/4 v2, 0x6

    .line 156
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 157
    .line 158
    .line 159
    :cond_8
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    .line 160
    .line 161
    if-eqz p1, :cond_9

    .line 162
    .line 163
    iget-boolean p1, v1, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    .line 164
    .line 165
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/TspStateController;->setOrientation(ZZ)V

    .line 166
    .line 167
    .line 168
    :cond_9
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    .line 169
    .line 170
    if-eqz p1, :cond_b

    .line 171
    .line 172
    const/16 p1, 0x6f

    .line 173
    .line 174
    if-ne p2, p1, :cond_a

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_a
    const/4 p1, 0x7

    .line 181
    if-ne p2, p1, :cond_b

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendFoldSaLoggingCanceledIfNeeded()V

    .line 184
    .line 185
    .line 186
    :cond_b
    :goto_2
    return-void

    .line 187
    :catchall_0
    move-exception p0

    .line 188
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    throw p0
.end method

.method public final systemBooted()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v2, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 24
    .line 25
    iput-boolean v1, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_7

    .line 30
    .line 31
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "android.hardware.fingerprint"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v2, v0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 58
    .line 59
    new-instance v3, Lcom/android/server/policy/SideFpsEventHandler$2;

    .line 60
    .line 61
    invoke-direct {v3, v0, v2}, Lcom/android/server/policy/SideFpsEventHandler$2;-><init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(II)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/4 v3, 0x2

    .line 85
    if-ne v2, v3, :cond_3

    .line 86
    .line 87
    move v2, v1

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move v2, v0

    .line 90
    :goto_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 91
    .line 92
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 93
    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    move v3, v1

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move v3, v0

    .line 99
    :goto_3
    if-nez v2, :cond_6

    .line 100
    .line 101
    if-eqz v3, :cond_5

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;Z)V

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 112
    .line 113
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 114
    .line 115
    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(ILcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn(I)V

    .line 119
    .line 120
    .line 121
    :goto_5
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-eqz v2, :cond_8

    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    and-int/2addr v2, v1

    .line 137
    if-ne v2, v1, :cond_7

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_7
    move v1, v0

    .line 141
    :goto_6
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUpSupported:Z

    .line 142
    .line 143
    :cond_8
    return-void

    .line 144
    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    throw p0
.end method

.method public final systemReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 13
    .line 14
    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    .line 15
    .line 16
    :goto_0
    const-class v0, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerService$LocalService;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Lcom/android/server/policy/PhoneWindowManager$3;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    const-string/jumbo v0, "uimode"

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 65
    .line 66
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 67
    .line 68
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    :catch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v0

    .line 82
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSettings()V

    .line 92
    .line 93
    .line 94
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 99
    .line 100
    iget-object v3, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 101
    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 108
    .line 109
    iput-boolean v2, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    .line 122
    .line 123
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 124
    .line 125
    const-class p0, Lcom/android/server/GestureLauncherService;

    .line 126
    .line 127
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    check-cast p0, Lcom/android/server/GestureLauncherService;

    .line 132
    .line 133
    return-void

    .line 134
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    throw p0
.end method

.method public final toggleKeyboardShortcutsMenu(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p0, p2}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 22
    .line 23
    iget-object p2, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p2

    .line 28
    :try_start_0
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    :try_start_1
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/internal/statusbar/IStatusBar;

    .line 55
    .line 56
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->toggleKeyboardShortcutsMenu(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p2

    .line 63
    goto :goto_2

    .line 64
    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw p0

    .line 66
    :cond_1
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 67
    .line 68
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 71
    .line 72
    if-eqz p0, :cond_2

    .line 73
    .line 74
    :try_start_3
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->toggleKeyboardShortcutsMenu(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 75
    .line 76
    .line 77
    :catch_1
    :cond_2
    :goto_2
    return-void
.end method

.method public final toggleNotificationPanel(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final toggleRecentApps(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string/jumbo v1, "toggleRecentApps displayId="

    .line 11
    .line 12
    .line 13
    const-string v2, "WindowManager"

    .line 14
    .line 15
    invoke-static {p1, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->isInDexMode()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;->toggleRecentAppsToType(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService$2;->toggleRecentApps()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateLockScreenTimeout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string p0, "WindowManager"

    .line 9
    .line 10
    const-string v1, "lockNow pending, ignore updating lockscreen timeout"

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_4

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 29
    .line 30
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 39
    .line 40
    iget-object v4, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    iget-object v4, v4, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 48
    .line 49
    iget-object v6, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 50
    .line 51
    invoke-virtual {v6, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    iget-boolean v3, v4, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v3, v2

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    move v3, v5

    .line 65
    :goto_1
    iput-boolean v3, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 66
    .line 67
    :cond_3
    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    move v2, v5

    .line 72
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 73
    .line 74
    if-eq v1, v2, :cond_6

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 88
    .line 89
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 90
    .line 91
    int-to-long v4, v4

    .line 92
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 104
    .line 105
    :cond_6
    monitor-exit v0

    .line 106
    return-void

    .line 107
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0
.end method

.method public final updateScreenOffSleepToken(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->acquire(IZ)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->release(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final updateSettings(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    const-string v1, "end_button_behavior"

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, -0x2

    .line 26
    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 31
    .line 32
    const-string v1, "incall_power_button_behavior"

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 40
    .line 41
    const-string v1, "incall_back_button_behavior"

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 49
    .line 50
    const-string/jumbo v1, "system_navigation_keys_enabled"

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ne v1, v2, :cond_1

    .line 58
    .line 59
    move v1, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v1, v4

    .line 62
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 63
    .line 64
    const-string/jumbo v1, "volume_hush_gesture"

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 72
    .line 73
    const-string/jumbo v1, "power_button_suppression_delay_after_gesture_wake"

    .line 74
    .line 75
    .line 76
    const/16 v5, 0x320

    .line 77
    .line 78
    invoke-static {p1, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const v5, 0x1110288

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto/16 :goto_b

    .line 104
    .line 105
    :cond_2
    :goto_1
    const-string/jumbo v1, "wake_gesture_enabled"

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    move v1, v2

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move v1, v4

    .line 117
    :goto_2
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 118
    .line 119
    if-eq v5, v1, :cond_4

    .line 120
    .line 121
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 124
    .line 125
    .line 126
    :cond_4
    const-string/jumbo v1, "screen_off_timeout"

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 134
    .line 135
    const-string v1, "default_input_method"

    .line 136
    .line 137
    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-lez v1, :cond_5

    .line 148
    .line 149
    move v1, v2

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    move v1, v4

    .line 152
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 153
    .line 154
    if-eq v5, v1, :cond_6

    .line 155
    .line 156
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 157
    .line 158
    move v1, v2

    .line 159
    goto :goto_4

    .line 160
    :cond_6
    move v1, v4

    .line 161
    :goto_4
    const-string/jumbo v5, "power_button_short_press"

    .line 162
    .line 163
    .line 164
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const v7, 0x10e014a

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 182
    .line 183
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    .line 184
    .line 185
    if-eqz v5, :cond_7

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_7
    const-string/jumbo v5, "power_button_double_press"

    .line 189
    .line 190
    .line 191
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    const v7, 0x10e0099

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 209
    .line 210
    :goto_5
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TRIPLE_PRESS_PANIC_CALL:Z

    .line 211
    .line 212
    if-eqz v5, :cond_8

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_8
    const-string/jumbo v5, "power_button_triple_press"

    .line 216
    .line 217
    .line 218
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    const v7, 0x10e0160

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 236
    .line 237
    :goto_6
    const-string/jumbo v5, "power_button_long_press"

    .line 238
    .line 239
    .line 240
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 241
    .line 242
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    const v7, 0x10e00cf

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    const-string/jumbo v6, "power_button_very_long_press"

    .line 258
    .line 259
    .line 260
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 261
    .line 262
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    const v8, 0x10e0166

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 278
    .line 279
    if-ne v7, v5, :cond_9

    .line 280
    .line 281
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 282
    .line 283
    if-eq v7, v6, :cond_a

    .line 284
    .line 285
    :cond_9
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 286
    .line 287
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 288
    .line 289
    :cond_a
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    const-string/jumbo v6, "power_button_long_press_duration_ms"

    .line 296
    .line 297
    .line 298
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 299
    .line 300
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    const v8, 0x10e00d0

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    int-to-long v7, v7

    .line 312
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 313
    .line 314
    .line 315
    move-result-wide v5

    .line 316
    iput-wide v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 317
    .line 318
    const-string v5, "key_chord_power_volume_up"

    .line 319
    .line 320
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 321
    .line 322
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    const v7, 0x10e00c0

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    .line 338
    .line 339
    const-string/jumbo v5, "stem_primary_button_short_press"

    .line 340
    .line 341
    .line 342
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 343
    .line 344
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    const v7, 0x10e014c

    .line 349
    .line 350
    .line 351
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 360
    .line 361
    const-string/jumbo v5, "stem_primary_button_double_press"

    .line 362
    .line 363
    .line 364
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 365
    .line 366
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    const v7, 0x10e009a

    .line 371
    .line 372
    .line 373
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 382
    .line 383
    const-string/jumbo v5, "stem_primary_button_triple_press"

    .line 384
    .line 385
    .line 386
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 387
    .line 388
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    const v7, 0x10e0161

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 404
    .line 405
    const-string/jumbo v5, "stem_primary_button_long_press"

    .line 406
    .line 407
    .line 408
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 409
    .line 410
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    const v7, 0x10e00d1

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 426
    .line 427
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 428
    .line 429
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    const v6, 0x1110220

    .line 434
    .line 435
    .line 436
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    .line 441
    .line 442
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 443
    .line 444
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    const v6, 0x1110221

    .line 449
    .line 450
    .line 451
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    .line 456
    .line 457
    const-string/jumbo v5, "stylus_buttons_enabled"

    .line 458
    .line 459
    .line 460
    invoke-static {p1, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    if-ne v5, v2, :cond_b

    .line 465
    .line 466
    move v5, v2

    .line 467
    goto :goto_7

    .line 468
    :cond_b
    move v5, v4

    .line 469
    :goto_7
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    .line 470
    .line 471
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 472
    .line 473
    iget-object v6, v6, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 474
    .line 475
    iget-object v6, v6, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 476
    .line 477
    invoke-interface {v6, v5}, Lcom/android/server/input/NativeInputManagerService;->setStylusButtonMotionEventsEnabled(Z)V

    .line 478
    .line 479
    .line 480
    const-string/jumbo v5, "nav_bar_kids_mode"

    .line 481
    .line 482
    .line 483
    invoke-static {p1, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 484
    .line 485
    .line 486
    move-result p1

    .line 487
    if-ne p1, v2, :cond_c

    .line 488
    .line 489
    move p1, v2

    .line 490
    goto :goto_8

    .line 491
    :cond_c
    move p1, v4

    .line 492
    :goto_8
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    .line 493
    .line 494
    if-eq v3, p1, :cond_d

    .line 495
    .line 496
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    .line 497
    .line 498
    move v3, v2

    .line 499
    goto :goto_9

    .line 500
    :cond_d
    move v3, v4

    .line 501
    :goto_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    if-eqz v3, :cond_10

    .line 503
    .line 504
    const/4 v0, 0x0

    .line 505
    if-eqz p1, :cond_f

    .line 506
    .line 507
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 508
    .line 509
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    const v3, 0x1110210

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    if-eqz p1, :cond_e

    .line 521
    .line 522
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 523
    .line 524
    const/16 v0, 0x8

    .line 525
    .line 526
    filled-new-array {v4, v0}, [I

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    const/4 v3, 0x6

    .line 531
    filled-new-array {v3, v3}, [I

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {p1, v2, v0, v3}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    .line 536
    .line 537
    .line 538
    goto :goto_a

    .line 539
    :cond_e
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 540
    .line 541
    invoke-virtual {p1, v2, v0, v0}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    .line 542
    .line 543
    .line 544
    goto :goto_a

    .line 545
    :cond_f
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 546
    .line 547
    invoke-virtual {p1, v4, v0, v0}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    .line 548
    .line 549
    .line 550
    :cond_10
    :goto_a
    if-eqz v1, :cond_11

    .line 551
    .line 552
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 553
    .line 554
    invoke-interface {p0, v2, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->updateRotation(ZZ)V

    .line 555
    .line 556
    .line 557
    :cond_11
    return-void

    .line 558
    :goto_b
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    throw p0
.end method

.method public final updateWakeGestureListenerLp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mListener:Lcom/android/server/policy/WakeGestureListener$1;

    .line 26
    .line 27
    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v0

    .line 34
    goto :goto_3

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mListener:Lcom/android/server/policy/WakeGestureListener$1;

    .line 56
    .line 57
    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    goto :goto_4

    .line 63
    :cond_2
    :goto_2
    monitor-exit v0

    .line 64
    :goto_3
    return-void

    .line 65
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    throw p0
.end method

.method public final wakeUpFromWakeKey(IJZ)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const/16 v1, 0x1a

    if-ne p1, v1, :cond_0

    .line 6
    iget-boolean v2, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromKey:Z

    .line 8
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_7

    .line 9
    :cond_1
    iget-object v2, v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v2, p2, p3, p1, p4}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromKey(JIZ)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_3

    :cond_2
    if-ne p1, v1, :cond_3

    move p4, v3

    goto :goto_1

    :cond_3
    const/4 p4, 0x6

    :goto_1
    if-ne p1, v1, :cond_4

    .line 11
    const-string v2, "POWER"

    goto :goto_2

    .line 12
    :cond_4
    const-string v2, "KEY("

    const-string v4, ")"

    .line 13
    invoke-static {p1, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    :goto_2
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    :goto_3
    const/4 p2, 0x3

    const/4 p3, 0x0

    if-eq p1, p2, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_4

    :cond_5
    move p4, p3

    goto :goto_5

    :cond_6
    :goto_4
    move p4, v3

    .line 15
    :goto_5
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_7

    goto :goto_7

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 17
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    iget-wide v0, v0, Landroid/os/PowerManager$WakeData;->sleepDurationRealtime:J

    .line 18
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v2, :cond_8

    .line 19
    const-string/jumbo v2, "shouldWakeUpWithHomeIntent: sleepDurationRealtime= "

    const-string v4, " mWakeUpToLastStateTimeout= "

    .line 20
    invoke-static {v2, v0, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21
    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WindowManager"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_8
    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_a

    if-eqz p4, :cond_a

    if-ne p1, p2, :cond_9

    move p2, v3

    goto :goto_6

    :cond_9
    move p2, p3

    .line 23
    :goto_6
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Wake from "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(Ljava/lang/String;ZZI)V

    :cond_a
    :goto_7
    return-void
.end method

.method public final wakeUpFromWakeKey(Landroid/view/KeyEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(IJZ)V

    return-void
.end method
