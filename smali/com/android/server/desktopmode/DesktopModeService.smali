.class public final Lcom/android/server/desktopmode/DesktopModeService;
.super Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAllowPogoInitialDialog:Z

.field public mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

.field public mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

.field public final mContext:Landroid/content/Context;

.field public mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

.field public mCurrentUserId:I

.field public mDexManager:Lcom/samsung/android/knox/dex/DexManager;

.field public mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

.field public mDockManager:Lcom/android/server/desktopmode/DockManager;

.field public mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

.field public mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

.field public mEnteredViaWirelessDex:Z

.field public final mExternalDisplayModeListener:Lcom/android/server/desktopmode/DesktopModeService$3;

.field public final mHandler:Landroid/os/Handler;

.field public mHwManager:Lcom/android/server/desktopmode/HardwareManager;

.field public final mInjector:Lcom/android/server/desktopmode/Injector;

.field public mIsBootComplete:Z

.field public mIsBootInitBlockerRegistered:Z

.field public mIsDesktopModeEnablingOrEnabled:Z

.field public mIsDexSourceEntry:Z

.field public mIsNewDexEnabled:Z

.field public mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

.field public final mLock:Ljava/lang/Object;

.field public mMcfManager:Lcom/android/server/desktopmode/McfManager;

.field public mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

.field public mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field public mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

.field public final mNewDeXSettingObserver:Lcom/android/server/desktopmode/DesktopModeService$2;

.field public mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

.field public final mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

.field public mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public mShowModeChangeScreen:Z

.field public mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

.field public final mStateListener:Lcom/android/server/desktopmode/DesktopModeService$1;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

.field public mUiManager:Lcom/android/server/desktopmode/UiManager;

.field public mUserRequest:I

.field public mUserSetupCompleteObserver:Landroid/database/ContentObserver;

.field public mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

.field public final mWelcomeCompletedSettingChangedListener:Lcom/android/server/desktopmode/DesktopModeService$3;

.field public mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

.field public mWirelessDexSetting:I


# direct methods
.method public static -$$Nest$mhandleHdmiAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x5

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 16
    .line 17
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 18
    .line 19
    const-string/jumbo v2, "hdmi_auto_enter"

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {p1, v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 38
    .line 39
    sget v2, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 40
    .line 41
    const-string/jumbo v3, "hdmi_initial_connection_dialog_shown"

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static {p1, v3, v4, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    new-instance p1, Lcom/android/server/desktopmode/DesktopModeService$6;

    .line 52
    .line 53
    invoke-direct {p1, p0, v4, v3}, Lcom/android/server/desktopmode/DesktopModeService$6;-><init>(Lcom/android/server/desktopmode/DesktopModeService;ZLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 57
    .line 58
    invoke-virtual {p0, v4, v0, p1}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-eqz v1, :cond_3

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    filled-new-array {v0}, [I

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method

.method public static -$$Nest$mhandlePogoAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x4

    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 17
    .line 18
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 19
    .line 20
    const-string/jumbo v2, "pogo_auto_enter"

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {p1, v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 33
    .line 34
    sget-object v3, Lcom/android/server/desktopmode/DesktopModeSettings;->DEX_MODE_DEFAULT_VALUE:Ljava/lang/String;

    .line 35
    .line 36
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 37
    .line 38
    const-string/jumbo v5, "dex_mode"

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v5, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string/jumbo v3, "new"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 53
    .line 54
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 55
    .line 56
    const-string/jumbo v5, "welcome_completed"

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    invoke-static {v3, v5, v6, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->updateNewDexMode(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    if-eqz v3, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    .line 91
    .line 92
    if-nez v1, :cond_5

    .line 93
    .line 94
    if-nez p1, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 97
    .line 98
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 99
    .line 100
    const-string/jumbo v2, "pogo_initial_connection_dialog_shown"

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v2, v6, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_5

    .line 108
    .line 109
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mAllowPogoInitialDialog:Z

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    if-nez v3, :cond_5

    .line 114
    .line 115
    new-instance p1, Lcom/android/server/desktopmode/DesktopModeService$6;

    .line 116
    .line 117
    invoke-direct {p1, p0, v4, v2}, Lcom/android/server/desktopmode/DesktopModeService$6;-><init>(Lcom/android/server/desktopmode/DesktopModeService;ZLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 121
    .line 122
    invoke-virtual {p0, v6, v0, p1}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    filled-new-array {v0}, [I

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    .line 134
    .line 135
    .line 136
    :cond_5
    :goto_0
    return-void
.end method

.method public static -$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/desktopmode/WirelessDexManager;->disconnect()V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public static -$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/BlockerManager;->getDefaultBlockerInfo(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v0, v0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 14
    .line 15
    check-cast v0, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    monitor-exit v1

    .line 40
    move-object v1, v2

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    const/4 v0, 0x1

    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const-string v2, "[DMS]DesktopModeService"

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v4, "isAllowed(showToast="

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, "), blocked by "

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    if-eqz p2, :cond_4

    .line 79
    .line 80
    :try_start_1
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    iget-object v2, v1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    .line 83
    .line 84
    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->onBlocked()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {p2, v2, v0}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v0, "(enter) State="

    .line 94
    .line 95
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, ", blocked by "

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string p2, "[DMS]State"

    .line 114
    .line 115
    const/16 v0, 0x57

    .line 116
    .line 117
    invoke-static {v0, p2, p1}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    sget-object p2, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catch_0
    move-exception p1

    .line 128
    const-string p2, "[DMS]DesktopModeService"

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, "Failed to get blocking message from blocker "

    .line 133
    .line 134
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {p2, v0, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootInitBlockerRegistered:Z

    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    if-nez p1, :cond_5

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 153
    .line 154
    .line 155
    :cond_5
    :goto_2
    return v0

    .line 156
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    throw p0
.end method

.method public static -$$Nest$mrequestTileUpdate(Lcom/android/server/desktopmode/DesktopModeService;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x4

    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v2, 0x3

    .line 20
    if-ne p1, v2, :cond_1

    .line 21
    .line 22
    :cond_0
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move p1, v0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 26
    .line 27
    const-string/jumbo v3, "new_dex"

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ne v2, v1, :cond_2

    .line 35
    .line 36
    move v0, v1

    .line 37
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeEnablingOrEnabled:Z

    .line 38
    .line 39
    if-ne v1, p1, :cond_3

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsNewDexEnabled:Z

    .line 42
    .line 43
    if-eq v1, v0, :cond_4

    .line 44
    .line 45
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeEnablingOrEnabled:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsNewDexEnabled:Z

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    new-instance v0, Landroid/content/ComponentName;

    .line 52
    .line 53
    const-string/jumbo v1, "com.sec.android.desktopmode.uiservice"

    .line 54
    .line 55
    .line 56
    const-string/jumbo v2, "com.sec.android.desktopmode.uiservice.DesktopModeTile"

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    new-instance p1, Landroid/content/ComponentName;

    .line 68
    .line 69
    const-string/jumbo v0, "com.sec.android.desktopmode.uiservice.DesktopDisplayDesktopModeTile"

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0, p1}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method public static -$$Nest$msetEnterRequestIfStandaloneLastBoot(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string/jumbo v3, "display_type"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v3, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x65

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const-string v0, "[DMS]DesktopModeService"

    .line 18
    .line 19
    const-string v1, "Request to enter standalone mode, since the standalone mode was enabled on last boot"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 37
    .line 38
    invoke-static {v0, v3, p1, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/desktopmode/Injector;Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/IStateManager;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1, p0}, Lcom/android/server/desktopmode/DesktopModeService$1;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$2;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mNewDeXSettingObserver:Lcom/android/server/desktopmode/DesktopModeService$2;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$3;

    .line 26
    .line 27
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeCompletedSettingChangedListener:Lcom/android/server/desktopmode/DesktopModeService$3;

    .line 31
    .line 32
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$3;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mExternalDisplayModeListener:Lcom/android/server/desktopmode/DesktopModeService$3;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mAllowPogoInitialDialog:Z

    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDexSourceEntry:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootInitBlockerRegistered:Z

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mShowModeChangeScreen:Z

    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsDesktopModeEnablingOrEnabled:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsNewDexEnabled:Z

    .line 56
    .line 57
    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 58
    .line 59
    const/16 v1, -0x2710

    .line 60
    .line 61
    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    new-instance v1, Landroid/os/Handler;

    .line 68
    .line 69
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    iput-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 83
    .line 84
    iput-object p4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 85
    .line 86
    iput-object p5, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 87
    .line 88
    check-cast p5, Lcom/android/server/desktopmode/StateManager;

    .line 89
    .line 90
    invoke-virtual {p5, v0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 91
    .line 92
    .line 93
    sget-boolean p3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 94
    .line 95
    if-eqz p3, :cond_0

    .line 96
    .line 97
    new-instance p3, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

    .line 98
    .line 99
    const/4 p4, 0x1

    .line 100
    invoke-direct {p3, p0, p4}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    new-instance p3, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

    .line 105
    .line 106
    const/4 p4, 0x0

    .line 107
    invoke-direct {p3, p0, p4}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;-><init>(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    iput-object p3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

    .line 111
    .line 112
    const-class p3, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 113
    .line 114
    new-instance p4, Lcom/android/server/desktopmode/DesktopModeService$LocalService;

    .line 115
    .line 116
    invoke-direct {p4, p0}, Lcom/android/server/desktopmode/DesktopModeService$LocalService;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {p3, p4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Lcom/android/server/desktopmode/DesktopModeService$Receiver;

    .line 126
    .line 127
    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 128
    .line 129
    .line 130
    new-instance v3, Landroid/content/IntentFilter;

    .line 131
    .line 132
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string p0, "android.intent.action.ACTION_SHUTDOWN"

    .line 136
    .line 137
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string/jumbo p0, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string/jumbo p0, "com.samsung.android.desktopmode.action.DEX_RUNNING_NOTIFICATION_PRESSED"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string/jumbo p0, "com.sec.android.app.secsetupwizard.FOTA_SUW_COMPLETE"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 159
    .line 160
    const/4 v4, 0x0

    .line 161
    const/4 v5, 0x0

    .line 162
    const/4 v6, 0x2

    .line 163
    move-object v0, p2

    .line 164
    move-object v1, p1

    .line 165
    move-object v2, p0

    .line 166
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    new-instance v3, Landroid/content/IntentFilter;

    .line 170
    .line 171
    const-string/jumbo p3, "com.samsung.android.desktopmode.action.DESKTOP_MODE_UPDATE_REQUEST"

    .line 172
    .line 173
    .line 174
    invoke-direct {v3, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    .line 178
    .line 179
    const/4 v5, 0x0

    .line 180
    const/4 v6, 0x2

    .line 181
    move-object v0, p2

    .line 182
    move-object v1, p1

    .line 183
    move-object v2, p0

    .line 184
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public static isDesktopModeForPreparing(Lcom/android/server/desktopmode/StateManager$InternalState;I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, p1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/4 p1, 0x3

    .line 19
    const/16 v0, 0x1e

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    const/16 p1, 0x14

    .line 28
    .line 29
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :cond_2
    :goto_0
    return v1
.end method

.method public static isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public static userRequestToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Unknown="

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "EXIT_REQUEST"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const-string p0, "ENTER_REQUEST"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    const-string p0, "NO_REQUEST"

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public final varargs dismissDialog([I)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 9
    .line 10
    invoke-virtual {v4, v1, v3}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "[DMS]DesktopModeService"

    .line 5
    .line 6
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    if-eqz p3, :cond_6

    .line 15
    .line 16
    array-length v1, p3

    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    const-string v1, "-a"

    .line 20
    .line 21
    aget-object v2, p3, v0

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 31
    .line 32
    if-eqz p1, :cond_12

    .line 33
    .line 34
    aget-object p1, p3, v0

    .line 35
    .line 36
    const-string/jumbo p3, "off"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-nez p3, :cond_5

    .line 44
    .line 45
    const-string/jumbo p3, "toggle"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string/jumbo p0, "settings"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_4

    .line 63
    .line 64
    const-string/jumbo p0, "resolution"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_4

    .line 72
    .line 73
    const-string/jumbo p0, "ui"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const-string p0, "Unknown argument: "

    .line 84
    .line 85
    const-string p3, "; USAGE: [on|off|toggle|dblist]"

    .line 86
    .line 87
    invoke-static {p2, p0, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_9

    .line 91
    .line 92
    :cond_4
    :goto_0
    const-string p0, "Please enter below instead:"

    .line 93
    .line 94
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string p3, "  cmd desktopmode "

    .line 100
    .line 101
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    .line 117
    .line 118
    invoke-virtual {p0, p2, p1}, Lcom/android/server/desktopmode/HardwareManager;->command(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    const-string p0, "Please enter below next time:"

    .line 122
    .line 123
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string p3, "  cmd desktopmode "

    .line 129
    .line 130
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_9

    .line 137
    .line 138
    :cond_6
    :goto_2
    new-instance p3, Landroid/util/IndentingPrintWriter;

    .line 139
    .line 140
    const-string v1, "  "

    .line 141
    .line 142
    invoke-direct {p3, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string p2, "DesktopModeService (dumpsys desktopmode):"

    .line 146
    .line 147
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string p2, "[DMS]StateStart"

    .line 151
    .line 152
    const-string v1, "=========================================================================="

    .line 153
    .line 154
    const/16 v2, 0x56

    .line 155
    .line 156
    invoke-static {v2, p2, v1}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object p2, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    .line 164
    .line 165
    invoke-virtual {p2, p3}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    .line 166
    .line 167
    .line 168
    const-string p2, "[DMS]StateEnd"

    .line 169
    .line 170
    invoke-static {v2, p2, v1}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string p2, "[DMS]SavedLogsStart"

    .line 178
    .line 179
    invoke-static {v2, p2, v1}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sget-object p2, Lcom/android/server/desktopmode/Log;->SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    .line 187
    .line 188
    invoke-virtual {p2, p3}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    .line 189
    .line 190
    .line 191
    const-string p2, "[DMS]SavedLogsEnd"

    .line 192
    .line 193
    invoke-static {v2, p2, v1}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 201
    .line 202
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 206
    .line 207
    .line 208
    move-result-wide v1

    .line 209
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 210
    .line 211
    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 212
    .line 213
    const-string/jumbo v4, "dumpApp"

    .line 214
    .line 215
    .line 216
    :try_start_0
    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    const/4 v5, 0x0

    .line 221
    invoke-virtual {p2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    if-eqz p2, :cond_7

    .line 226
    .line 227
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :catch_0
    move-exception p2

    .line 236
    const-string v3, "[DMS]DesktopModeSettings"

    .line 237
    .line 238
    const-string v4, "Failed to dump"

    .line 239
    .line 240
    invoke-static {v3, v4, p2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 255
    .line 256
    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string/jumbo v1, "mCurrentUserId="

    .line 260
    .line 261
    .line 262
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 266
    .line 267
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    new-instance p2, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v1, "Configuration="

    .line 280
    .line 281
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    new-instance p2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string/jumbo v1, "mUserRequest="

    .line 307
    .line 308
    .line 309
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 313
    .line 314
    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->userRequestToString(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    new-instance p2, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string/jumbo v1, "welcomeCompleted="

    .line 331
    .line 332
    .line 333
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 337
    .line 338
    sget v2, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 339
    .line 340
    const-string/jumbo v3, "welcome_completed"

    .line 341
    .line 342
    .line 343
    invoke-static {v1, v3, v0, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v1, "DISPLAY_SIZE_FORCED="

    .line 360
    .line 361
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 365
    .line 366
    const-string/jumbo v2, "display_size_forced"

    .line 367
    .line 368
    .line 369
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    const-string v1, "DISPLAY_DENSITY_FORCED="

    .line 386
    .line 387
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 391
    .line 392
    const-string/jumbo v2, "display_density_forced"

    .line 393
    .line 394
    .line 395
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    new-instance p2, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v1, "SCREEN_OFF_TIMEOUT="

    .line 412
    .line 413
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 417
    .line 418
    const-string/jumbo v2, "screen_off_timeout"

    .line 419
    .line 420
    .line 421
    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 422
    .line 423
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    new-instance p2, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    const-string v1, "SHOW_IME_WITH_HARD_KEYBOARD="

    .line 440
    .line 441
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 445
    .line 446
    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    .line 447
    .line 448
    .line 449
    iget v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 450
    .line 451
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p2

    .line 462
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 466
    .line 467
    .line 468
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 469
    .line 470
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    const-string v1, "Current StandaloneModeChanger state:"

    .line 474
    .line 475
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 479
    .line 480
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string/jumbo v2, "mCurrentUiMode="

    .line 484
    .line 485
    .line 486
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget v2, p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    .line 490
    .line 491
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    const-string/jumbo v2, "mIsLockTaskModeEnabledAndSecured="

    .line 504
    .line 505
    .line 506
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    iget-boolean v2, p2, Lcom/android/server/desktopmode/ModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    .line 510
    .line 511
    const-string/jumbo v3, "mStandaloneModeEnabled="

    .line 512
    .line 513
    .line 514
    invoke-static {v1, v2, p3, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    iget-boolean v2, p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->mStandaloneModeEnabled:Z

    .line 519
    .line 520
    const-string/jumbo v3, "mTopTaskId="

    .line 521
    .line 522
    .line 523
    invoke-static {v1, v2, p3, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    iget v2, p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->mTopTaskId:I

    .line 528
    .line 529
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_STANDALONE_MODE_WALLPAPER:Z

    .line 540
    .line 541
    if-eqz v1, :cond_8

    .line 542
    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    const-string/jumbo v2, "mWallpaperShown="

    .line 546
    .line 547
    .line 548
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    iget-boolean p2, p2, Lcom/android/server/desktopmode/StandaloneModeChanger;->mWallpaperShown:Z

    .line 552
    .line 553
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object p2

    .line 560
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    :cond_8
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 564
    .line 565
    .line 566
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 567
    .line 568
    .line 569
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 570
    .line 571
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    const-string v1, "Current DualModeChanger state:"

    .line 575
    .line 576
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 580
    .line 581
    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    const-string/jumbo v2, "mDesktopDisplayId="

    .line 585
    .line 586
    .line 587
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    iget v2, p2, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 591
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    const-string/jumbo v2, "mDualModeEnabled="

    .line 605
    .line 606
    .line 607
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    iget-boolean v2, p2, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    .line 611
    .line 612
    const-string/jumbo v3, "mModeToModeChangeInfo="

    .line 613
    .line 614
    .line 615
    invoke-static {v1, v2, p3, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    iget-object v2, p2, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 620
    .line 621
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    const-string/jumbo v2, "mPrevDesktopDisplayId="

    .line 634
    .line 635
    .line 636
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget v2, p2, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    .line 640
    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    const-string/jumbo v2, "mTopTaskId="

    .line 654
    .line 655
    .line 656
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    iget v2, p2, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 660
    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    const-string/jumbo v2, "mTopTaskIdValid="

    .line 674
    .line 675
    .line 676
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    iget-boolean v2, p2, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 680
    .line 681
    const-string/jumbo v3, "mTouchpadRequestedByNotification="

    .line 682
    .line 683
    .line 684
    invoke-static {v1, v2, p3, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    iget-boolean p2, p2, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    .line 689
    .line 690
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object p2

    .line 697
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 701
    .line 702
    .line 703
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 704
    .line 705
    .line 706
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 707
    .line 708
    check-cast p2, Lcom/android/server/desktopmode/StateManager;

    .line 709
    .line 710
    const-string/jumbo v1, "mStateListeners="

    .line 711
    .line 712
    .line 713
    const-string/jumbo v2, "mState="

    .line 714
    .line 715
    .line 716
    iget-object v3, p2, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 717
    .line 718
    monitor-enter v3

    .line 719
    :try_start_1
    const-string v4, "Current StateManager state:"

    .line 720
    .line 721
    invoke-virtual {p3, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 725
    .line 726
    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    iget-object v2, p2, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 733
    .line 734
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    invoke-virtual {p3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    .line 745
    .line 746
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    iget-object p2, p2, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 750
    .line 751
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object p2

    .line 758
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 762
    .line 763
    .line 764
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 765
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 766
    .line 767
    .line 768
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

    .line 769
    .line 770
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    const-string/jumbo v1, "mPackageState="

    .line 774
    .line 775
    .line 776
    const-class v2, Lcom/android/server/desktopmode/PackageStateManager;

    .line 777
    .line 778
    const-string v2, "Current PackageStateManager state:"

    .line 779
    .line 780
    invoke-virtual {p3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 784
    .line 785
    .line 786
    iget-object v2, p2, Lcom/android/server/desktopmode/PackageStateManager;->mLock:Ljava/lang/Object;

    .line 787
    .line 788
    monitor-enter v2

    .line 789
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    iget-object p2, p2, Lcom/android/server/desktopmode/PackageStateManager;->mPackageState:Ljava/util/Map;

    .line 795
    .line 796
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object p2

    .line 803
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 807
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 808
    .line 809
    .line 810
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 811
    .line 812
    .line 813
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 814
    .line 815
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 816
    .line 817
    iget v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 818
    .line 819
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 820
    .line 821
    .line 822
    const-string p2, "Current DesktopModeSettings state:"

    .line 823
    .line 824
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 828
    .line 829
    .line 830
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 831
    .line 832
    .line 833
    move-result-wide v3

    .line 834
    const-string p2, "Current user ("

    .line 835
    .line 836
    const-string v5, ") settings="

    .line 837
    .line 838
    invoke-static {v2, p2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    move-result-object p2

    .line 842
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(ILandroid/content/ContentResolver;)Landroid/os/Bundle;

    .line 843
    .line 844
    .line 845
    move-result-object v5

    .line 846
    invoke-static {v5}, Lcom/android/server/desktopmode/Utils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v5

    .line 850
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object p2

    .line 857
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    if-eqz v2, :cond_9

    .line 861
    .line 862
    new-instance p2, Ljava/lang/StringBuilder;

    .line 863
    .line 864
    const-string v2, "System user (0) settings"

    .line 865
    .line 866
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(ILandroid/content/ContentResolver;)Landroid/os/Bundle;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object p2

    .line 884
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    :cond_9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 891
    .line 892
    .line 893
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 894
    .line 895
    .line 896
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 897
    .line 898
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 899
    .line 900
    .line 901
    const-string v1, "Current UiManager state:"

    .line 902
    .line 903
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 907
    .line 908
    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    .line 910
    .line 911
    const-string/jumbo v2, "external overlay="

    .line 912
    .line 913
    .line 914
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    const/16 v2, 0x67

    .line 918
    .line 919
    invoke-virtual {p2, v2}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    .line 920
    .line 921
    .line 922
    move-result v2

    .line 923
    invoke-static {v2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v1

    .line 934
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    .line 938
    .line 939
    const-string/jumbo v2, "internal overlay="

    .line 940
    .line 941
    .line 942
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    const/16 v2, 0x66

    .line 946
    .line 947
    invoke-virtual {p2, v2}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    .line 948
    .line 949
    .line 950
    move-result p2

    .line 951
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object p2

    .line 955
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object p2

    .line 962
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 966
    .line 967
    .line 968
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 969
    .line 970
    .line 971
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 972
    .line 973
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    .line 975
    .line 976
    const-string/jumbo v1, "mListeners ("

    .line 977
    .line 978
    .line 979
    const-string v2, "Current SemDesktopModeStateNotifier state:"

    .line 980
    .line 981
    invoke-virtual {p3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 985
    .line 986
    .line 987
    iget-object v3, p2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInnerLock:Ljava/lang/Object;

    .line 988
    .line 989
    monitor-enter v3

    .line 990
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 991
    .line 992
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 993
    .line 994
    .line 995
    iget-object v1, p2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    .line 996
    .line 997
    check-cast v1, Landroid/util/ArrayMap;

    .line 998
    .line 999
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 1000
    .line 1001
    .line 1002
    move-result v1

    .line 1003
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    const-string v1, "):"

    .line 1007
    .line 1008
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1019
    .line 1020
    .line 1021
    iget-object p2, p2, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    .line 1022
    .line 1023
    check-cast p2, Landroid/util/ArrayMap;

    .line 1024
    .line 1025
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 1026
    .line 1027
    .line 1028
    move-result-object p2

    .line 1029
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1030
    .line 1031
    .line 1032
    move-result-object p2

    .line 1033
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 1034
    .line 1035
    .line 1036
    move-result v1

    .line 1037
    if-eqz v1, :cond_a

    .line 1038
    .line 1039
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v1

    .line 1043
    check-cast v1, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;

    .line 1044
    .line 1045
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1046
    .line 1047
    .line 1048
    goto :goto_4

    .line 1049
    :catchall_0
    move-exception p0

    .line 1050
    goto/16 :goto_b

    .line 1051
    .line 1052
    :cond_a
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1053
    .line 1054
    .line 1055
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1056
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1060
    .line 1061
    .line 1062
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    .line 1063
    .line 1064
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1065
    .line 1066
    .line 1067
    const-string/jumbo v1, "mBlockers ("

    .line 1068
    .line 1069
    .line 1070
    const-string v2, "Current BlockerManager state:"

    .line 1071
    .line 1072
    invoke-virtual {p3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1076
    .line 1077
    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    const-string v3, "DefaultBlocker="

    .line 1081
    .line 1082
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    iget-object v3, p2, Lcom/android/server/desktopmode/BlockerManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 1086
    .line 1087
    check-cast v3, Lcom/android/server/desktopmode/StateManager;

    .line 1088
    .line 1089
    invoke-virtual {v3}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v3

    .line 1093
    invoke-virtual {p2, v3}, Lcom/android/server/desktopmode/BlockerManager;->getDefaultBlockerInfo(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v3

    .line 1097
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v2

    .line 1104
    invoke-virtual {p3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    iget-object v2, p2, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 1108
    .line 1109
    monitor-enter v2

    .line 1110
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    iget-object v1, p2, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 1116
    .line 1117
    check-cast v1, Landroid/util/ArrayMap;

    .line 1118
    .line 1119
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 1120
    .line 1121
    .line 1122
    move-result v1

    .line 1123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    .line 1126
    const-string v1, "):"

    .line 1127
    .line 1128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v1

    .line 1135
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1139
    .line 1140
    .line 1141
    iget-object p2, p2, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 1142
    .line 1143
    check-cast p2, Landroid/util/ArrayMap;

    .line 1144
    .line 1145
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p2

    .line 1149
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1150
    .line 1151
    .line 1152
    move-result-object p2

    .line 1153
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 1154
    .line 1155
    .line 1156
    move-result v1

    .line 1157
    if-eqz v1, :cond_b

    .line 1158
    .line 1159
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v1

    .line 1163
    check-cast v1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    .line 1164
    .line 1165
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1166
    .line 1167
    .line 1168
    goto :goto_5

    .line 1169
    :catchall_1
    move-exception p0

    .line 1170
    goto/16 :goto_a

    .line 1171
    .line 1172
    :cond_b
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1173
    .line 1174
    .line 1175
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1176
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1180
    .line 1181
    .line 1182
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    .line 1183
    .line 1184
    invoke-virtual {p2, p3}, Lcom/android/server/desktopmode/HardwareManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1188
    .line 1189
    .line 1190
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    .line 1191
    .line 1192
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1193
    .line 1194
    .line 1195
    const-string v1, "Current TouchpadManager state:"

    .line 1196
    .line 1197
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1201
    .line 1202
    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    const-string/jumbo v2, "mIsSPenDetached="

    .line 1206
    .line 1207
    .line 1208
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    iget-boolean v2, p2, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    .line 1212
    .line 1213
    const-string/jumbo v3, "mIsSPenEnabled="

    .line 1214
    .line 1215
    .line 1216
    invoke-static {v1, v2, p3, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v1

    .line 1220
    iget-boolean v2, p2, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    .line 1221
    .line 1222
    const-string/jumbo v3, "mIsTouchpadEnabled="

    .line 1223
    .line 1224
    .line 1225
    invoke-static {v1, v2, p3, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v1

    .line 1229
    iget-boolean p2, p2, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    .line 1230
    .line 1231
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object p2

    .line 1238
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1245
    .line 1246
    .line 1247
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    .line 1248
    .line 1249
    invoke-virtual {p2, p3}, Lcom/android/server/desktopmode/CoverStateManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1253
    .line 1254
    .line 1255
    invoke-static {p3}, Lcom/android/server/desktopmode/ToastManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1259
    .line 1260
    .line 1261
    sget-object p2, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KEEP_POLICY_PACKAGES:Ljava/util/Set;

    .line 1262
    .line 1263
    const-string p2, "Current DesktopModeKillPolicyManager state:"

    .line 1264
    .line 1265
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1269
    .line 1270
    .line 1271
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    const-string v1, "KEEP_POLICY_PACKAGES ("

    .line 1274
    .line 1275
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    sget-object v1, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KEEP_POLICY_PACKAGES:Ljava/util/Set;

    .line 1279
    .line 1280
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 1281
    .line 1282
    .line 1283
    move-result v1

    .line 1284
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    const-string v1, ")"

    .line 1288
    .line 1289
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object p2

    .line 1296
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1300
    .line 1301
    const-string v2, "KILL_POLICY_PACKAGES ("

    .line 1302
    .line 1303
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1304
    .line 1305
    .line 1306
    sget-object v2, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KILL_POLICY_PACKAGES:Ljava/util/Set;

    .line 1307
    .line 1308
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 1309
    .line 1310
    .line 1311
    move-result v2

    .line 1312
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object p2

    .line 1322
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1329
    .line 1330
    .line 1331
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 1332
    .line 1333
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1334
    .line 1335
    .line 1336
    const-string v1, "Current MultiResolutionManager state:"

    .line 1337
    .line 1338
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1342
    .line 1343
    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    const-string/jumbo v2, "mIsForcedSupportAllResolution="

    .line 1347
    .line 1348
    .line 1349
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1350
    .line 1351
    .line 1352
    iget-boolean v2, p2, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    .line 1353
    .line 1354
    const-string/jumbo v3, "mDisplayRemovedOnEnablingDesktopMode="

    .line 1355
    .line 1356
    .line 1357
    invoke-static {v1, v2, p3, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v1

    .line 1361
    iget-boolean v2, p2, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    .line 1362
    .line 1363
    const-string/jumbo v3, "mStandaloneModeDisplayMetrics="

    .line 1364
    .line 1365
    .line 1366
    invoke-static {v1, v2, p3, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v1

    .line 1370
    iget-object v2, p2, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 1371
    .line 1372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v1

    .line 1379
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    .line 1381
    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1383
    .line 1384
    const-string/jumbo v2, "mCustomDisplayMetrics="

    .line 1385
    .line 1386
    .line 1387
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1388
    .line 1389
    .line 1390
    iget-object v2, p2, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 1391
    .line 1392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v1

    .line 1399
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    const-string/jumbo v2, "mUserSettingResolution="

    .line 1405
    .line 1406
    .line 1407
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1408
    .line 1409
    .line 1410
    iget-object v2, p2, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 1411
    .line 1412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v1

    .line 1419
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1423
    .line 1424
    const-string/jumbo v2, "mMaxSupportedResolution="

    .line 1425
    .line 1426
    .line 1427
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1428
    .line 1429
    .line 1430
    iget-object v2, p2, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 1431
    .line 1432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v1

    .line 1439
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    .line 1441
    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    const-string/jumbo v2, "mSelectedDisplayMetrics="

    .line 1445
    .line 1446
    .line 1447
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    iget-object v2, p2, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 1451
    .line 1452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v1

    .line 1459
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    .line 1461
    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1463
    .line 1464
    const-string/jumbo v2, "mLastDualModeMaxSupportedResolution="

    .line 1465
    .line 1466
    .line 1467
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    iget-object p2, p2, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 1471
    .line 1472
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object p2

    .line 1479
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1486
    .line 1487
    .line 1488
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    .line 1489
    .line 1490
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1491
    .line 1492
    .line 1493
    const-string v1, "Current DockManager state:"

    .line 1494
    .line 1495
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    .line 1497
    .line 1498
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1499
    .line 1500
    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1502
    .line 1503
    const-string/jumbo v2, "mDockVersion="

    .line 1504
    .line 1505
    .line 1506
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1507
    .line 1508
    .line 1509
    iget-object v2, p2, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 1510
    .line 1511
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    .line 1513
    .line 1514
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v1

    .line 1518
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    .line 1520
    .line 1521
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1522
    .line 1523
    const-string/jumbo v2, "mDockVersionExtra="

    .line 1524
    .line 1525
    .line 1526
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    iget-object v2, p2, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    .line 1530
    .line 1531
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v1

    .line 1538
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    .line 1540
    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    const-string/jumbo v2, "mDockChargerPower="

    .line 1544
    .line 1545
    .line 1546
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1547
    .line 1548
    .line 1549
    iget v2, p2, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    .line 1550
    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v1

    .line 1558
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    const-string/jumbo v2, "mDockChargerSupport="

    .line 1564
    .line 1565
    .line 1566
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1567
    .line 1568
    .line 1569
    iget v2, p2, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    .line 1570
    .line 1571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v1

    .line 1578
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    .line 1580
    .line 1581
    const-string v1, "Last DockManager state:"

    .line 1582
    .line 1583
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1587
    .line 1588
    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1590
    .line 1591
    const-string/jumbo v2, "mLastDockVersion="

    .line 1592
    .line 1593
    .line 1594
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1595
    .line 1596
    .line 1597
    iget-object v2, p2, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    .line 1598
    .line 1599
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    .line 1601
    .line 1602
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v1

    .line 1606
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1607
    .line 1608
    .line 1609
    move v1, v0

    .line 1610
    :goto_6
    iget-object v2, p2, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$3;

    .line 1611
    .line 1612
    iget-object v3, v2, Lcom/android/server/desktopmode/DockManager$3;->this$0:Ljava/lang/Object;

    .line 1613
    .line 1614
    check-cast v3, Landroid/util/ArrayMap;

    .line 1615
    .line 1616
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 1617
    .line 1618
    .line 1619
    move-result v3

    .line 1620
    if-ge v1, v3, :cond_c

    .line 1621
    .line 1622
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1623
    .line 1624
    const-string/jumbo v4, "mLastDockControlLibMsgState="

    .line 1625
    .line 1626
    .line 1627
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1628
    .line 1629
    .line 1630
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1631
    .line 1632
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1633
    .line 1634
    .line 1635
    iget-object v5, v2, Lcom/android/server/desktopmode/DockManager$3;->this$0:Ljava/lang/Object;

    .line 1636
    .line 1637
    check-cast v5, Landroid/util/ArrayMap;

    .line 1638
    .line 1639
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v5

    .line 1643
    check-cast v5, Ljava/lang/Integer;

    .line 1644
    .line 1645
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1646
    .line 1647
    .line 1648
    move-result v5

    .line 1649
    packed-switch v5, :pswitch_data_0

    .line 1650
    .line 1651
    .line 1652
    const-string v6, "Unknown="

    .line 1653
    .line 1654
    invoke-static {v5, v6}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v5

    .line 1658
    goto :goto_7

    .line 1659
    :pswitch_0
    const-string v5, "MSG_TYPE_EXTRA"

    .line 1660
    .line 1661
    goto :goto_7

    .line 1662
    :pswitch_1
    const-string v5, "MSG_TYPE_VERSION"

    .line 1663
    .line 1664
    goto :goto_7

    .line 1665
    :pswitch_2
    const-string v5, "MSG_TYPE_ERROR"

    .line 1666
    .line 1667
    goto :goto_7

    .line 1668
    :pswitch_3
    const-string v5, "MSG_TYPE_RESPONSE"

    .line 1669
    .line 1670
    goto :goto_7

    .line 1671
    :pswitch_4
    const-string v5, "MSG_TYPE_REQUEST"

    .line 1672
    .line 1673
    :goto_7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    .line 1675
    .line 1676
    const-string v5, ", "

    .line 1677
    .line 1678
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    .line 1680
    .line 1681
    iget-object v2, v2, Lcom/android/server/desktopmode/DockManager$3;->this$0:Ljava/lang/Object;

    .line 1682
    .line 1683
    check-cast v2, Landroid/util/ArrayMap;

    .line 1684
    .line 1685
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v2

    .line 1689
    check-cast v2, Ljava/lang/String;

    .line 1690
    .line 1691
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    .line 1693
    .line 1694
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v2

    .line 1698
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v2

    .line 1705
    invoke-virtual {p3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    .line 1707
    .line 1708
    add-int/2addr v1, p1

    .line 1709
    goto :goto_6

    .line 1710
    :cond_c
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1711
    .line 1712
    .line 1713
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1714
    .line 1715
    .line 1716
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1717
    .line 1718
    .line 1719
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 1720
    .line 1721
    invoke-virtual {p2, p3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1722
    .line 1723
    .line 1724
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 1725
    .line 1726
    if-eqz p2, :cond_11

    .line 1727
    .line 1728
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1729
    .line 1730
    .line 1731
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 1732
    .line 1733
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1734
    .line 1735
    .line 1736
    const-string v1, "Current WirelessDexManager state:"

    .line 1737
    .line 1738
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    .line 1740
    .line 1741
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1742
    .line 1743
    .line 1744
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1745
    .line 1746
    const-string/jumbo v2, "mFrequencyValue="

    .line 1747
    .line 1748
    .line 1749
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1750
    .line 1751
    .line 1752
    iget v2, p2, Lcom/android/server/desktopmode/WirelessDexManager;->mFrequencyValue:I

    .line 1753
    .line 1754
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1755
    .line 1756
    .line 1757
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v1

    .line 1761
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    .line 1763
    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1765
    .line 1766
    const-string/jumbo v2, "mIsLowLatencyMode="

    .line 1767
    .line 1768
    .line 1769
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1770
    .line 1771
    .line 1772
    iget-boolean v2, p2, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    .line 1773
    .line 1774
    const-string/jumbo v3, "mIsWirelessDexEntered="

    .line 1775
    .line 1776
    .line 1777
    invoke-static {v1, v2, p3, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v1

    .line 1781
    iget-boolean v2, p2, Lcom/android/server/desktopmode/WirelessDexManager;->mIsWirelessDexEntered:Z

    .line 1782
    .line 1783
    const-string/jumbo v3, "mPointerIconSync="

    .line 1784
    .line 1785
    .line 1786
    invoke-static {v1, v2, p3, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v1

    .line 1790
    iget v2, p2, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    .line 1791
    .line 1792
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1793
    .line 1794
    .line 1795
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v1

    .line 1799
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1800
    .line 1801
    .line 1802
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1803
    .line 1804
    const-string/jumbo v2, "mReducedLatency="

    .line 1805
    .line 1806
    .line 1807
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1808
    .line 1809
    .line 1810
    iget v2, p2, Lcom/android/server/desktopmode/WirelessDexManager;->mReducedLatency:I

    .line 1811
    .line 1812
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1813
    .line 1814
    .line 1815
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v1

    .line 1819
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1820
    .line 1821
    .line 1822
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1823
    .line 1824
    const-string/jumbo v2, "mTvTizenVersion="

    .line 1825
    .line 1826
    .line 1827
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1828
    .line 1829
    .line 1830
    iget-object p2, p2, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    .line 1831
    .line 1832
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    .line 1834
    .line 1835
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1836
    .line 1837
    .line 1838
    move-result-object p2

    .line 1839
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    .line 1841
    .line 1842
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1843
    .line 1844
    .line 1845
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 1846
    .line 1847
    if-eqz p2, :cond_d

    .line 1848
    .line 1849
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1850
    .line 1851
    .line 1852
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 1853
    .line 1854
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1855
    .line 1856
    .line 1857
    const-string v1, "Current BleAdvertiserServiceManager state:"

    .line 1858
    .line 1859
    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1863
    .line 1864
    .line 1865
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1866
    .line 1867
    const-string/jumbo v2, "mBound="

    .line 1868
    .line 1869
    .line 1870
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1871
    .line 1872
    .line 1873
    iget-boolean p2, p2, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->mBound:Z

    .line 1874
    .line 1875
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1876
    .line 1877
    .line 1878
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1879
    .line 1880
    .line 1881
    move-result-object p2

    .line 1882
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    .line 1884
    .line 1885
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1886
    .line 1887
    .line 1888
    :cond_d
    iget-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMcfManager:Lcom/android/server/desktopmode/McfManager;

    .line 1889
    .line 1890
    if-eqz p2, :cond_11

    .line 1891
    .line 1892
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1893
    .line 1894
    .line 1895
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMcfManager:Lcom/android/server/desktopmode/McfManager;

    .line 1896
    .line 1897
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1898
    .line 1899
    .line 1900
    const-string p2, "Current McfManager state:"

    .line 1901
    .line 1902
    invoke-virtual {p3, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1906
    .line 1907
    .line 1908
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1909
    .line 1910
    const-string/jumbo v1, "isBleAvailable="

    .line 1911
    .line 1912
    .line 1913
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1914
    .line 1915
    .line 1916
    iget-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 1917
    .line 1918
    if-eqz v1, :cond_e

    .line 1919
    .line 1920
    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    .line 1921
    .line 1922
    .line 1923
    move-result p1

    .line 1924
    goto :goto_8

    .line 1925
    :cond_e
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v1

    .line 1929
    if-eqz v1, :cond_f

    .line 1930
    .line 1931
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    .line 1932
    .line 1933
    .line 1934
    move-result v1

    .line 1935
    if-eqz v1, :cond_f

    .line 1936
    .line 1937
    goto :goto_8

    .line 1938
    :cond_f
    move p1, v0

    .line 1939
    :goto_8
    const-string/jumbo v0, "mBleScannerState="

    .line 1940
    .line 1941
    .line 1942
    invoke-static {p2, p1, p3, v0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    .line 1944
    .line 1945
    move-result-object p1

    .line 1946
    iget-object p2, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 1947
    .line 1948
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    .line 1950
    .line 1951
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1952
    .line 1953
    .line 1954
    move-result-object p1

    .line 1955
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    .line 1957
    .line 1958
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1959
    .line 1960
    const-string/jumbo p2, "mBleStartScanReason="

    .line 1961
    .line 1962
    .line 1963
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1964
    .line 1965
    .line 1966
    iget p2, p0, Lcom/android/server/desktopmode/McfManager;->mBleStartScanReason:I

    .line 1967
    .line 1968
    invoke-static {p2}, Lcom/android/server/desktopmode/McfManager;->bleStartScanReasonToString(I)Ljava/lang/String;

    .line 1969
    .line 1970
    .line 1971
    move-result-object p2

    .line 1972
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    .line 1974
    .line 1975
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1976
    .line 1977
    .line 1978
    move-result-object p1

    .line 1979
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1980
    .line 1981
    .line 1982
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1983
    .line 1984
    const-string/jumbo p2, "mBleAdvertiserServiceTimeout="

    .line 1985
    .line 1986
    .line 1987
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1988
    .line 1989
    .line 1990
    iget-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    .line 1991
    .line 1992
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1996
    .line 1997
    .line 1998
    move-result-object p1

    .line 1999
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2000
    .line 2001
    .line 2002
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2003
    .line 2004
    const-string/jumbo p2, "mWakeLockTimeout="

    .line 2005
    .line 2006
    .line 2007
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2008
    .line 2009
    .line 2010
    iget-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLockTimeout:J

    .line 2011
    .line 2012
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2016
    .line 2017
    .line 2018
    move-result-object p1

    .line 2019
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2020
    .line 2021
    .line 2022
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2023
    .line 2024
    const-string/jumbo p2, "mLastBleScanFailedErrorCode="

    .line 2025
    .line 2026
    .line 2027
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2028
    .line 2029
    .line 2030
    iget p2, p0, Lcom/android/server/desktopmode/McfManager;->mLastBleScanFailedErrorCode:I

    .line 2031
    .line 2032
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2033
    .line 2034
    .line 2035
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2036
    .line 2037
    .line 2038
    move-result-object p1

    .line 2039
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    .line 2041
    .line 2042
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2043
    .line 2044
    if-eqz p1, :cond_10

    .line 2045
    .line 2046
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2047
    .line 2048
    const-string/jumbo p2, "mLastBleScanResult="

    .line 2049
    .line 2050
    .line 2051
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2052
    .line 2053
    .line 2054
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mLastBleScanResult:Ljava/lang/String;

    .line 2055
    .line 2056
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    .line 2058
    .line 2059
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2060
    .line 2061
    .line 2062
    move-result-object p0

    .line 2063
    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    .line 2065
    .line 2066
    :cond_10
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2067
    .line 2068
    .line 2069
    :cond_11
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2070
    .line 2071
    .line 2072
    :cond_12
    :goto_9
    return-void

    .line 2073
    :goto_a
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2074
    throw p0

    .line 2075
    :goto_b
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2076
    throw p0

    .line 2077
    :catchall_2
    move-exception p0

    .line 2078
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2079
    throw p0

    .line 2080
    :catchall_3
    move-exception p0

    .line 2081
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2082
    throw p0

    .line 2083
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final finishWelcomeActivity()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]DesktopModeService"

    .line 6
    .line 7
    const-string/jumbo v1, "finishWelcomeActivity()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 14
    .line 15
    const/16 v0, 0x12d

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final getDesktopModeKillPolicy()Landroid/os/Bundle;
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KEEP_POLICY_PACKAGES:Ljava/util/Set;

    .line 2
    .line 3
    const-string/jumbo p0, "name"

    .line 4
    .line 5
    .line 6
    const-string v0, "DeX"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KILL_POLICY_PACKAGES:Ljava/util/Set;

    .line 13
    .line 14
    check-cast v0, Ljava/io/Serializable;

    .line 15
    .line 16
    const-string/jumbo v1, "kill_packages"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/android/server/desktopmode/DesktopModeKillPolicyManager;->KEEP_POLICY_PACKAGES:Ljava/util/Set;

    .line 23
    .line 24
    check-cast v0, Ljava/io/Serializable;

    .line 25
    .line 26
    const-string/jumbo v1, "keep_packages"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "skip_sdk_version_check"

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v1, "getDesktopModeKillPolicy(), args="

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "[DMS_POLICY]DesktopModeKillPolicyManager"

    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-object p0
.end method

.method public final getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 10
    .line 11
    return-object p0
.end method

.method public final initializeStates()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$2;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$2;-><init>(Lcom/android/server/desktopmode/DesktopModeService;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 20
    .line 21
    const-string/jumbo v1, "user_setup_complete"

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 42
    .line 43
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const-string v0, "[DMS]StateManager"

    .line 53
    .line 54
    const-string/jumbo v1, "notifyBootCompleted()"

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;

    .line 66
    .line 67
    invoke-direct {v2, p0}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/StateManager;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    monitor-exit v0

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0

    .line 78
    :cond_3
    :goto_0
    return-void
.end method

.method public injectServices(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/desktopmode/BlockerManager;Lcom/android/server/desktopmode/EmergencyModeBlocker;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/HardwareManager;Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/CoverStateManager;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/PackageStateManager;Landroid/app/StatusBarManager;Lcom/android/server/desktopmode/BootInitBlocker;Lcom/android/server/desktopmode/DisplayPortStateManager;Lcom/android/server/desktopmode/WirelessDexManager;Lcom/android/server/desktopmode/BleAdvertiserServiceManager;Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StandaloneModeChanger;Lcom/android/server/desktopmode/McfManager;Lcom/samsung/android/knox/dex/DexManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p15

    move-object v3, p1

    .line 1
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, p3

    .line 2
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object v3, p4

    .line 3
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    move-object v3, p5

    .line 4
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    move-object v3, p6

    .line 5
    iput-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 6
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 7
    iget-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeCompletedSettingChangedListener:Lcom/android/server/desktopmode/DesktopModeService$3;

    invoke-virtual {p7, v3}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 8
    iget-object v3, v0, Lcom/android/server/desktopmode/DesktopModeService;->mExternalDisplayModeListener:Lcom/android/server/desktopmode/DesktopModeService$3;

    invoke-virtual {p7, v3}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 9
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "new_dex"

    .line 11
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/desktopmode/DesktopModeService;->mNewDeXSettingObserver:Lcom/android/server/desktopmode/DesktopModeService$2;

    .line 12
    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    move-object v1, p8

    .line 13
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    move-object v1, p9

    .line 14
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    move-object/from16 v1, p10

    .line 15
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    move-object/from16 v1, p11

    .line 16
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    move-object/from16 v1, p12

    .line 17
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDockManager:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v1, p13

    .line 18
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mPackageStateManager:Lcom/android/server/desktopmode/PackageStateManager;

    move-object/from16 v1, p14

    .line 19
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mStatusBarManager:Landroid/app/StatusBarManager;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    move-object/from16 v4, p20

    .line 21
    iput-object v4, v0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 22
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    if-eqz v2, :cond_3

    .line 23
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "[DMS]BootInitBlocker"

    const-string/jumbo v4, "registerBlocker"

    invoke-static {v1, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_2
    iget-object v1, v2, Lcom/android/server/desktopmode/BootInitBlocker;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v4, v2, Lcom/android/server/desktopmode/BootInitBlocker;->mBlocker:Lcom/android/server/desktopmode/BootInitBlocker$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 25
    iget-object v1, v2, Lcom/android/server/desktopmode/BootInitBlocker;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/StateManager;->notifyBootInitBlockerRegistered(Z)V

    .line 26
    new-instance v3, Lcom/android/server/desktopmode/BootInitBlocker$1;

    invoke-direct {v3, v2}, Lcom/android/server/desktopmode/BootInitBlocker$1;-><init>(Lcom/android/server/desktopmode/BootInitBlocker;)V

    .line 27
    invoke-virtual {v1, v3}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    :cond_3
    move-object/from16 v1, p16

    .line 28
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDisplayPortStateManager:Lcom/android/server/desktopmode/DisplayPortStateManager;

    move-object/from16 v1, p17

    .line 29
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexManager:Lcom/android/server/desktopmode/WirelessDexManager;

    move-object/from16 v1, p18

    .line 30
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    move-object/from16 v1, p21

    .line 31
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mMcfManager:Lcom/android/server/desktopmode/McfManager;

    move-object/from16 v1, p22

    .line 32
    iput-object v1, v0, Lcom/android/server/desktopmode/DesktopModeService;->mDexManager:Lcom/samsung/android/knox/dex/DexManager;

    return-void
.end method

.method public final isAllowed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p0, v1}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final isDesktopDockConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final isDesktopMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final isDeviceConnected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcOrWirelessDexConnected()Z

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

.method public final isSystemReady()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    .line 2
    .line 3
    const-string v1, "[DMS]DesktopModeService"

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isUserSetupComplete()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 20
    .line 21
    const/16 v2, -0x2710

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Landroid/content/Intent;

    .line 32
    .line 33
    const-string v3, "android.intent.action.MAIN"

    .line 34
    .line 35
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v3, "android.intent.category.HOME"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const-string v3, "android.intent.category.DEFAULT"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const/high16 v3, 0x10000

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 69
    .line 70
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 71
    .line 72
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 73
    .line 74
    const-string/jumbo v3, "com.sec.android.app.SecSetupWizard"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    const-string/jumbo v0, "isFotaSuwCompleted()=false"

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 p0, 0x1

    .line 91
    return p0

    .line 92
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo v2, "isSystemReady(), mIsBootComplete="

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootComplete:Z

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, ", isFactoryBinary="

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v2, ", mCurrentUserId="

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/4 p0, 0x0

    .line 135
    return p0
.end method

.method public final isUserSetupComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 4
    .line 5
    const-string/jumbo v1, "user_setup_complete"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    :cond_0
    if-nez v2, :cond_1

    .line 17
    .line 18
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const-string p0, "[DMS]DesktopModeService"

    .line 23
    .line 24
    const-string/jumbo v0, "isUserSetupComplete()=false"

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return v2
.end method

.method public final onSecuredAppLaunched(ILjava/lang/String;)V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onSecuredAppLaunched, taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DMS]DesktopModeService"

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 5
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v1, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DualModeChanger;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onSecuredAppLaunched(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->onSecuredAppLaunched(ILjava/lang/String;)V

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x7d0

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 22
    .line 23
    const-string p1, "Caller must be shell"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/desktopmode/Shell;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/os/ShellCommand;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/android/server/desktopmode/Shell;->mResolver:Landroid/content/ContentResolver;

    .line 43
    .line 44
    iput-object v2, v0, Lcom/android/server/desktopmode/Shell;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 45
    .line 46
    iput-object v3, v0, Lcom/android/server/desktopmode/Shell;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 47
    .line 48
    iput-object v4, v0, Lcom/android/server/desktopmode/Shell;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    .line 49
    .line 50
    move-object v1, p0

    .line 51
    move-object v2, p1

    .line 52
    move-object v3, p2

    .line 53
    move-object v4, p3

    .line 54
    move-object v5, p4

    .line 55
    move-object v6, p5

    .line 56
    move-object v7, p6

    .line 57
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method public final onUserChanged(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "[DMS]DesktopModeService"

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "onUserChanged(), userId and mCurrentUserId are same("

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ")"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v1, "[DMS]DesktopModeService"

    .line 36
    .line 37
    const-string/jumbo v2, "onUserChanged(), userId="

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v2, v1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const-string v1, "[DMS]DesktopModeService"

    .line 46
    .line 47
    const-string/jumbo v2, "setCurrentUserId(), userId="

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v2, v1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 56
    .line 57
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    const-string v0, "[DMS]StateManager"

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v3, "setCurrentUserId(userId="

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, ")"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object v0, v1, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 90
    .line 91
    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v2, v1, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 93
    .line 94
    iget v2, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 95
    .line 96
    if-eq v2, p1, :cond_4

    .line 97
    .line 98
    iget-object v2, v1, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 99
    .line 100
    iput p1, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 101
    .line 102
    iget-object p1, v1, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object v2, v1, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 109
    .line 110
    new-instance v3, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/16 v4, 0x8

    .line 113
    .line 114
    invoke-direct {v3, v1, p1, v4}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    throw p0
.end method

.method public final registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const/4 v8, 0x0

    .line 24
    :try_start_1
    new-instance v9, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/desktopmode/BlockerManager;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    iget-object v2, p0, Lcom/android/server/desktopmode/BlockerManager;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    move-object v2, v9

    .line 45
    move-object v3, p0

    .line 46
    move-object v4, p1

    .line 47
    move-object v5, p2

    .line 48
    invoke-direct/range {v2 .. v7}, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;-><init>(Lcom/android/server/desktopmode/BlockerManager;Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v9, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 55
    .line 56
    check-cast p1, Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-virtual {p1, v1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/desktopmode/BlockerManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 62
    .line 63
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 64
    .line 65
    invoke-virtual {p0, v8}, Lcom/android/server/desktopmode/StateManager;->notifyScheduleUpdateDesktopMode(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_2
    monitor-exit v0

    .line 69
    const/4 v8, 0x1

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    monitor-exit v0

    .line 74
    :goto_0
    return v8

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw p0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 78
    .line 79
    const-string p1, "Only the system may call registerBlocker()"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public final registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :cond_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x3e8

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string p0, "[DMS]DesktopModeService"

    .line 26
    .line 27
    const-string/jumbo p1, "registerDesktopLauncher() is blocked!!"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    :goto_1
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInnerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v6

    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v8, 0x0

    .line 11
    :try_start_1
    new-instance v9, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x64

    .line 18
    .line 19
    if-le v0, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :cond_0
    move-object v3, p2

    .line 26
    iget-object p2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object p2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    move-object v0, v9

    .line 45
    move-object v1, p0

    .line 46
    move-object v2, p1

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;-><init>(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    .line 51
    .line 52
    invoke-static {v9, p1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->enforceRegisterLimitLocked(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v7, v9, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    .line 59
    .line 60
    check-cast p0, Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {p0, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_2
    monitor-exit v6

    .line 66
    const/4 v8, 0x1

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception p0

    .line 71
    const-string p1, "[DMS]SemDesktopModeStateNotifier"

    .line 72
    .line 73
    const-string p2, "Failed to register DesktopModeListener"

    .line 74
    .line 75
    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    monitor-exit v6

    .line 79
    :goto_0
    return v8

    .line 80
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw p0
.end method

.method public final scheduleUpdateDesktopMode(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.desktopmode.permission.BIND_DESKTOP_MODE_UI_SERVICE"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo v0, "command"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/16 v0, 0x3e8

    .line 21
    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 25
    .line 26
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mLauncherInterface:Lcom/samsung/android/desktopmode/IDesktopModeLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    :try_start_1
    invoke-interface {v2, p1}, Lcom/samsung/android/desktopmode/IDesktopModeLauncher;->sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    monitor-exit v0

    .line 65
    return-object p0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception p1

    .line 69
    const-string v2, "[DMS]DesktopModeService"

    .line 70
    .line 71
    const-string/jumbo v3, "sendMessage(), Failed to communicate with launcher. Starting again..."

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v3, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    .line 78
    .line 79
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda2;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-direct {v2, v3, p0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const-string p0, "[DMS]DesktopModeService"

    .line 90
    .line 91
    const-string/jumbo p1, "sendMessage(), mLauncherInterface == null"

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    monitor-exit v0

    .line 98
    goto :goto_2

    .line 99
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    throw p0

    .line 101
    :cond_2
    :goto_2
    return-object v1
.end method

.method public final setUserRequest(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v0, "userRequest="

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/desktopmode/DesktopModeService;->userRequestToString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "[DMS]DesktopModeService"

    .line 25
    .line 26
    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final startConnectivityActivity(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]DesktopModeService"

    .line 6
    .line 7
    const-string/jumbo v1, "startConnectivityActivity()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/content/ComponentName;

    .line 19
    .line 20
    const-string/jumbo v2, "com.sec.android.desktopmode.uiservice"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "com.sec.android.desktopmode.uiservice.activity.connectivity.ConnectivityActivity"

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/high16 v1, 0x14200000

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    iget p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 42
    .line 43
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v1, v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final startHome(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 2
    .line 3
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x65

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->startHome(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, 0x66

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 31
    .line 32
    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->startHome(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final startWelcomeActivity()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]DesktopModeService"

    .line 6
    .line 7
    const-string/jumbo v1, "startWelcomeActivity()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 14
    .line 15
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 16
    .line 17
    const-string/jumbo v2, "skip_welcome_screen"

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 28
    .line 29
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 30
    .line 31
    const-string/jumbo v2, "welcome_shown"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 53
    .line 54
    const/16 v1, 0x12d

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWelcomeActivityListener:Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    .line 57
    .line 58
    invoke-virtual {v0, v3, v1, p0}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 63
    .line 64
    const-string/jumbo v0, "welcome_completed"

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method

.method public final unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mBlockerManager:Lcom/android/server/desktopmode/BlockerManager;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast v1, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object v2, p1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    .line 37
    .line 38
    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/desktopmode/BlockerManager;->mBlockers:Ljava/util/Map;

    .line 46
    .line 47
    check-cast p1, Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/4 v1, 0x1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/desktopmode/BlockerManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 57
    .line 58
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/StateManager;->notifyScheduleUpdateDesktopMode(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :goto_0
    monitor-exit v0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    monitor-exit v0

    .line 69
    :goto_1
    return v1

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 73
    .line 74
    const-string p1, "Only the system may call unregisterBlocker()"

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0
.end method

.method public final unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mInnerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->mListeners:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p0, Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    :goto_0
    return p1

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final updateDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const-string v2, ")"

    .line 6
    .line 7
    const-string/jumbo v4, "welcome_completed"

    .line 8
    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x2

    .line 12
    const/16 v7, 0x66

    .line 13
    .line 14
    const/4 v8, 0x4

    .line 15
    const/4 v9, 0x1

    .line 16
    const/4 v10, 0x0

    .line 17
    const-string v11, "[DMS]DesktopModeService"

    .line 18
    .line 19
    const-string v12, ", isModeChangeLocked="

    .line 20
    .line 21
    const-string/jumbo v13, "updateDesktopMode(), enter="

    .line 22
    .line 23
    .line 24
    move-object/from16 v14, p0

    .line 25
    .line 26
    iget-object v14, v14, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

    .line 27
    .line 28
    iget v15, v14, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->$r8$classId:I

    .line 29
    .line 30
    packed-switch v15, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    sget-boolean v15, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 34
    .line 35
    if-eqz v15, :cond_0

    .line 36
    .line 37
    invoke-static {v13, v12, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    iget-boolean v13, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 42
    .line 43
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    invoke-static {v11, v12}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v11, v14, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 54
    .line 55
    invoke-virtual {v11}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    if-eqz v12, :cond_24

    .line 60
    .line 61
    iget-boolean v12, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 62
    .line 63
    if-eqz v12, :cond_1

    .line 64
    .line 65
    goto/16 :goto_b

    .line 66
    .line 67
    :cond_1
    iget-object v12, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 68
    .line 69
    iget-object v13, v11, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    sget v14, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 76
    .line 77
    const-string/jumbo v15, "external_display_mode"

    .line 78
    .line 79
    .line 80
    const-string/jumbo v3, "dual"

    .line 81
    .line 82
    .line 83
    invoke-static {v13, v15, v3, v14}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const/16 v13, 0x65

    .line 92
    .line 93
    if-nez v1, :cond_6

    .line 94
    .line 95
    iget v14, v11, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 96
    .line 97
    if-eq v14, v6, :cond_4

    .line 98
    .line 99
    iget-object v14, v11, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 100
    .line 101
    check-cast v14, Lcom/android/server/desktopmode/StateManager;

    .line 102
    .line 103
    invoke-virtual {v14}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    iget-object v14, v14, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 108
    .line 109
    iget v14, v14, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 110
    .line 111
    const/4 v15, 0x3

    .line 112
    if-eq v14, v15, :cond_3

    .line 113
    .line 114
    if-ne v14, v8, :cond_2

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    move v14, v10

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    :goto_0
    move v14, v9

    .line 120
    :goto_1
    invoke-static {v11, v0, v14}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    if-nez v14, :cond_6

    .line 125
    .line 126
    :cond_4
    invoke-virtual {v12, v8, v10, v13}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    iget-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 133
    .line 134
    invoke-virtual {v3, v0, v10, v5}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_7

    .line 138
    .line 139
    :cond_5
    invoke-virtual {v12, v8, v10, v7}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_14

    .line 144
    .line 145
    iget-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 146
    .line 147
    invoke-virtual {v3, v0, v10, v5}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_7

    .line 151
    .line 152
    :cond_6
    iget-object v14, v11, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 153
    .line 154
    sget v15, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 155
    .line 156
    invoke-static {v14, v4, v10, v15}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    sget-boolean v14, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 161
    .line 162
    if-eqz v14, :cond_7

    .line 163
    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    if-eqz v14, :cond_7

    .line 169
    .line 170
    iput-boolean v9, v11, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 171
    .line 172
    :cond_7
    iget v14, v11, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 173
    .line 174
    if-eq v14, v9, :cond_9

    .line 175
    .line 176
    iget-boolean v14, v11, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 177
    .line 178
    if-eqz v14, :cond_8

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_8
    move v14, v10

    .line 182
    goto :goto_3

    .line 183
    :cond_9
    :goto_2
    move v14, v9

    .line 184
    :goto_3
    invoke-static {v11, v0, v14}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    if-eqz v14, :cond_14

    .line 189
    .line 190
    if-nez v4, :cond_a

    .line 191
    .line 192
    iget v4, v11, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 193
    .line 194
    if-ne v4, v9, :cond_a

    .line 195
    .line 196
    invoke-virtual {v11}, Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_12

    .line 206
    .line 207
    invoke-virtual {v12, v8, v10, v13}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    const/16 v13, 0x73

    .line 212
    .line 213
    const/16 v14, 0x67

    .line 214
    .line 215
    if-eqz v4, :cond_c

    .line 216
    .line 217
    if-nez v3, :cond_b

    .line 218
    .line 219
    iget-boolean v4, v11, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 220
    .line 221
    if-eqz v4, :cond_c

    .line 222
    .line 223
    :cond_b
    iget-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 224
    .line 225
    invoke-virtual {v3, v14, v13, v5}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 226
    .line 227
    .line 228
    iget-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 229
    .line 230
    new-instance v5, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 231
    .line 232
    iget-boolean v4, v11, Lcom/android/server/desktopmode/DesktopModeService;->mShowModeChangeScreen:Z

    .line 233
    .line 234
    invoke-direct {v5, v6, v4}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;-><init>(IZ)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v0, v10, v5}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :cond_c
    invoke-virtual {v12, v6, v10, v10}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_e

    .line 247
    .line 248
    const/16 v4, 0xa

    .line 249
    .line 250
    invoke-virtual {v12, v6, v4, v7}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_d

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_d
    invoke-virtual {v12, v8, v10, v7}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_14

    .line 262
    .line 263
    if-nez v3, :cond_14

    .line 264
    .line 265
    iget-boolean v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 266
    .line 267
    if-nez v3, :cond_14

    .line 268
    .line 269
    iget-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 270
    .line 271
    invoke-virtual {v3, v14, v13, v5}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 272
    .line 273
    .line 274
    iget-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 275
    .line 276
    new-instance v5, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 277
    .line 278
    iget-boolean v4, v11, Lcom/android/server/desktopmode/DesktopModeService;->mShowModeChangeScreen:Z

    .line 279
    .line 280
    invoke-direct {v5, v9, v4}, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;-><init>(IZ)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v0, v10, v5}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_e
    :goto_4
    iget-boolean v4, v11, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 288
    .line 289
    if-nez v4, :cond_11

    .line 290
    .line 291
    iget v4, v11, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 292
    .line 293
    if-ne v4, v9, :cond_f

    .line 294
    .line 295
    if-nez v3, :cond_11

    .line 296
    .line 297
    :cond_f
    iget-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 298
    .line 299
    if-eqz v3, :cond_10

    .line 300
    .line 301
    iget v7, v3, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    .line 302
    .line 303
    if-ne v7, v6, :cond_10

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_10
    if-ne v4, v9, :cond_15

    .line 307
    .line 308
    iget-object v4, v11, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 309
    .line 310
    iput-object v4, v11, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    .line 311
    .line 312
    invoke-virtual {v4, v0, v9, v3}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    .line 313
    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_11
    :goto_5
    iget-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 317
    .line 318
    iput-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    .line 319
    .line 320
    iget-object v4, v11, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 321
    .line 322
    invoke-virtual {v3, v0, v9, v4}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    .line 323
    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_12
    iget v3, v12, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 327
    .line 328
    if-ne v3, v6, :cond_13

    .line 329
    .line 330
    iget v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 331
    .line 332
    if-ne v3, v9, :cond_13

    .line 333
    .line 334
    iget-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 335
    .line 336
    iput-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    .line 337
    .line 338
    iget-object v4, v11, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 339
    .line 340
    invoke-virtual {v3, v0, v9, v4}, Lcom/android/server/desktopmode/StandaloneModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    .line 341
    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_13
    invoke-virtual {v12, v8, v10, v7}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-eqz v3, :cond_14

    .line 349
    .line 350
    invoke-virtual {v11, v10}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 351
    .line 352
    .line 353
    iget-object v3, v11, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 354
    .line 355
    invoke-virtual {v3, v0, v10, v5}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_14
    :goto_6
    move v9, v10

    .line 360
    :cond_15
    :goto_7
    iput-object v5, v11, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 361
    .line 362
    goto/16 :goto_a

    .line 363
    .line 364
    :pswitch_0
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 365
    .line 366
    iget-object v14, v14, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 367
    .line 368
    if-eqz v3, :cond_16

    .line 369
    .line 370
    invoke-static {v13, v12, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    iget-boolean v12, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 375
    .line 376
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v12, ", mUserRequest="

    .line 380
    .line 381
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    iget v12, v14, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 385
    .line 386
    invoke-static {v12}, Lcom/android/server/desktopmode/DesktopModeService;->userRequestToString(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-static {v11, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :cond_16
    invoke-virtual {v14}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-eqz v3, :cond_1f

    .line 405
    .line 406
    iget-boolean v3, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 407
    .line 408
    if-eqz v3, :cond_17

    .line 409
    .line 410
    goto/16 :goto_8

    .line 411
    .line 412
    :cond_17
    iget-object v3, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 413
    .line 414
    if-eqz v1, :cond_22

    .line 415
    .line 416
    invoke-virtual {v3, v6, v10, v10}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 417
    .line 418
    .line 419
    move-result v8

    .line 420
    if-nez v8, :cond_18

    .line 421
    .line 422
    const/16 v8, 0xa

    .line 423
    .line 424
    invoke-virtual {v3, v6, v8, v7}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-eqz v3, :cond_1f

    .line 429
    .line 430
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    if-eqz v3, :cond_1f

    .line 435
    .line 436
    invoke-static {v14, v0, v9}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-eqz v3, :cond_1f

    .line 441
    .line 442
    iget-object v3, v14, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 443
    .line 444
    sget v6, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 445
    .line 446
    const-string/jumbo v7, "hdmi_auto_enter"

    .line 447
    .line 448
    .line 449
    invoke-static {v3, v7, v10, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    iget-object v6, v14, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 454
    .line 455
    sget v7, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 456
    .line 457
    invoke-static {v6, v4, v10, v7}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    iget-object v7, v14, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 462
    .line 463
    sget v8, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 464
    .line 465
    const-string/jumbo v12, "welcome_shown"

    .line 466
    .line 467
    .line 468
    invoke-static {v7, v12, v10, v8}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 469
    .line 470
    .line 471
    move-result v7

    .line 472
    iget v8, v14, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 473
    .line 474
    if-ne v8, v9, :cond_19

    .line 475
    .line 476
    if-nez v6, :cond_20

    .line 477
    .line 478
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcConnected()Z

    .line 479
    .line 480
    .line 481
    move-result v8

    .line 482
    if-nez v8, :cond_20

    .line 483
    .line 484
    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 485
    .line 486
    if-eqz v8, :cond_1a

    .line 487
    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 489
    .line 490
    .line 491
    move-result v12

    .line 492
    if-eqz v12, :cond_1a

    .line 493
    .line 494
    if-eqz v6, :cond_1a

    .line 495
    .line 496
    goto :goto_9

    .line 497
    :cond_1a
    if-nez v6, :cond_1c

    .line 498
    .line 499
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexStationConnectedWithFlipCover()Z

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    if-nez v5, :cond_1b

    .line 504
    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcConnected()Z

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    if-eqz v5, :cond_1c

    .line 510
    .line 511
    :cond_1b
    iget-object v3, v14, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 512
    .line 513
    invoke-static {v3, v4, v9}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 514
    .line 515
    .line 516
    goto :goto_a

    .line 517
    :cond_1c
    if-nez v6, :cond_1e

    .line 518
    .line 519
    if-eqz v7, :cond_1d

    .line 520
    .line 521
    iget-boolean v4, v14, Lcom/android/server/desktopmode/DesktopModeService;->mIsDexSourceEntry:Z

    .line 522
    .line 523
    if-nez v4, :cond_1d

    .line 524
    .line 525
    if-nez v3, :cond_1d

    .line 526
    .line 527
    if-eqz v8, :cond_1e

    .line 528
    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 530
    .line 531
    .line 532
    move-result v3

    .line 533
    if-eqz v3, :cond_1e

    .line 534
    .line 535
    :cond_1d
    invoke-virtual {v14}, Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V

    .line 536
    .line 537
    .line 538
    goto :goto_a

    .line 539
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    const-string/jumbo v4, "updateDesktopMode(welcomeCompleted=true, userRequest="

    .line 542
    .line 543
    .line 544
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    iget v4, v14, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 548
    .line 549
    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->userRequestToString(I)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    invoke-static {v11, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    :cond_1f
    :goto_8
    move v9, v10

    .line 567
    goto :goto_a

    .line 568
    :cond_20
    :goto_9
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 569
    .line 570
    if-eqz v3, :cond_21

    .line 571
    .line 572
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    if-eqz v3, :cond_21

    .line 577
    .line 578
    iput-boolean v9, v14, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 579
    .line 580
    :cond_21
    iget-object v3, v14, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 581
    .line 582
    invoke-virtual {v3, v0, v9, v5}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    .line 583
    .line 584
    .line 585
    goto :goto_a

    .line 586
    :cond_22
    iput-boolean v10, v14, Lcom/android/server/desktopmode/DesktopModeService;->mIsDexSourceEntry:Z

    .line 587
    .line 588
    if-nez p3, :cond_23

    .line 589
    .line 590
    iget v4, v14, Lcom/android/server/desktopmode/DesktopModeService;->mUserRequest:I

    .line 591
    .line 592
    if-eq v4, v6, :cond_23

    .line 593
    .line 594
    invoke-static/range {p1 .. p1}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    .line 595
    .line 596
    .line 597
    move-result v4

    .line 598
    if-eqz v4, :cond_23

    .line 599
    .line 600
    invoke-static {v14, v0, v10}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misAllowedInternal(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    if-nez v4, :cond_1f

    .line 605
    .line 606
    :cond_23
    invoke-virtual {v14}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v3, v8, v10, v7}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    if-eqz v3, :cond_1f

    .line 614
    .line 615
    iget-object v3, v14, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 616
    .line 617
    invoke-virtual {v3, v0, v10, v5}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V

    .line 618
    .line 619
    .line 620
    :goto_a
    move v10, v9

    .line 621
    :cond_24
    :goto_b
    sget-object v3, Lcom/android/server/desktopmode/Log;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 622
    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    const-string v4, "("

    .line 626
    .line 627
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    if-eqz v1, :cond_25

    .line 631
    .line 632
    const-string/jumbo v1, "enter"

    .line 633
    .line 634
    .line 635
    goto :goto_c

    .line 636
    :cond_25
    const-string/jumbo v1, "exit"

    .line 637
    .line 638
    .line 639
    :goto_c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    if-eqz v10, :cond_26

    .line 643
    .line 644
    const-string v2, ", successful)"

    .line 645
    .line 646
    :cond_26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    const-string v1, " State="

    .line 650
    .line 651
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    const/16 v1, 0x44

    .line 662
    .line 663
    const-string v2, "[DMS]State"

    .line 664
    .line 665
    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    sget-object v1, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    .line 670
    .line 671
    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    .line 672
    .line 673
    .line 674
    return-void

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateNewDexMode(I)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_NEW_DEX:Z

    .line 2
    .line 3
    const-string v1, "[DMS]DesktopModeService"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "updateNewDexMode Failed : New Dex Feature Not Supported"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 19
    .line 20
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const p1, 0x1040472

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p0, p1, v2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 45
    .line 46
    iget-boolean v3, v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    .line 47
    .line 48
    if-nez v3, :cond_9

    .line 49
    .line 50
    iget-boolean v3, v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEmergencyModeEnabledInSettings:Z

    .line 51
    .line 52
    if-nez v3, :cond_9

    .line 53
    .line 54
    iget-boolean v3, v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mMpsmEnabledInSettings:Z

    .line 55
    .line 56
    if-nez v3, :cond_9

    .line 57
    .line 58
    iget-boolean v0, v0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mLimitAppsAndHomeScreenEnabledInSettings:Z

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const-string/jumbo v1, "role"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/app/role/RoleManager;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const-string v4, "android.app.role.HOME"

    .line 85
    .line 86
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v0, v4, v5}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    move-object v3, v0

    .line 106
    check-cast v3, Ljava/lang/String;

    .line 107
    .line 108
    :goto_0
    const-string/jumbo v0, "com.sec.android.app.launcher"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_6

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    const p1, 0x10408e9

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p0, p1, v2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_6
    const-string/jumbo v0, "new_dex"

    .line 131
    .line 132
    .line 133
    if-eq p1, v2, :cond_8

    .line 134
    .line 135
    const/4 v2, 0x2

    .line 136
    if-eq p1, v2, :cond_7

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_7
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 140
    .line 141
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_8
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 146
    .line 147
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    .line 149
    .line 150
    :goto_1
    return-void

    .line 151
    :cond_9
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v0, "New Dex Blocked, name = "

    .line 154
    .line 155
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEmergencyModeBlocker:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->onBlocked()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {p1, p0, v2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    return-void
.end method
