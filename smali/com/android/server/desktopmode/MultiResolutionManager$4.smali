.class public final Lcom/android/server/desktopmode/MultiResolutionManager$4;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDualModeStartLoadingScreen(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDualModeDensityChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDualModeDensityChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public final onDualModeStopLoadingScreen(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcOrWirelessDexConnected()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v0, "[DMS]MultiResolutionManager"

    .line 43
    .line 44
    const-string/jumbo v1, "showToastResolutionChanged()"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 55
    .line 56
    const/4 v0, -0x1

    .line 57
    if-eq p1, v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v0, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    .line 66
    .line 67
    const v0, 0x1040475

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-static {p1, v0, v1}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    .line 80
    .line 81
    return-void
.end method

.method public final onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 6
    .line 7
    invoke-static {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mupdateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mhandleReconnection(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    :cond_1
    const/4 v0, 0x3

    .line 35
    if-ne v1, v0, :cond_3

    .line 36
    .line 37
    :cond_2
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    if-eq p1, v0, :cond_3

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    .line 44
    .line 45
    :cond_3
    :goto_0
    return-void
.end method

.method public final onExternalDisplayUpdated(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mupdateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DisplayInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$mhandleReconnection(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onSetDesktopModeInternal(Z)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDefaultDensity()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sget v3, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 16
    .line 17
    const-string/jumbo v4, "standalone_mode_screen_zoom"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 25
    .line 26
    iput v1, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->setForcedDisplayMertics(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onStartLoadingScreen(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDensityChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDensityChangedListener:Lcom/android/server/desktopmode/MultiResolutionManager$1;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final onUserChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 2
    .line 3
    const/16 v0, 0x66

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v1, v2, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$4;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v1, "onUserChanged(), "

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "[DMS]MultiResolutionManager"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateUserSettingDisplayMetrics()V

    .line 41
    .line 42
    .line 43
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDefaultDensity()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sget v3, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 58
    .line 59
    const-string/jumbo v4, "standalone_mode_screen_zoom"

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v4, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 67
    .line 68
    iput v1, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 71
    .line 72
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    iget-boolean p1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    iget-object p1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 85
    .line 86
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 87
    .line 88
    invoke-static {p1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void
.end method
