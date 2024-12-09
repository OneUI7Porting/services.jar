.class public final Lcom/android/server/desktopmode/DesktopModeService$LocalService;
.super Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getCurrentUiMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mCurrentUiMode:I

    .line 6
    .line 7
    return p0
.end method

.method public final getDesktopModeKillPolicy()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDexHDMIAutoEnterState()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 10
    .line 11
    const-string/jumbo v1, "knox_hdmi_auto_enter_state"

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x9

    .line 15
    .line 16
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final getModeToModeChangeType()I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x65

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iget v3, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v1, 0x66

    .line 38
    .line 39
    if-ne v0, v1, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    iget v3, p0, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    .line 48
    .line 49
    :cond_1
    :goto_0
    return v3
.end method

.method public final getTouchpadSupportedFeatures()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    .line 12
    .line 13
    instance-of v1, v1, Lcom/android/server/desktopmode/DualModeChanger;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcConnected()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    xor-int/2addr v1, v2

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 50
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    const-string/jumbo p0, "getTouchpadSupportedFeatures(), supportedFeatures="

    .line 55
    .line 56
    .line 57
    const-string v0, "[DMS]DesktopModeService"

    .line 58
    .line 59
    invoke-static {v2, p0, v0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return v2
.end method

.method public final isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 7
    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 11
    .line 12
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->getConfigurationState(Landroid/content/res/Configuration;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    iget v2, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 27
    .line 28
    const/16 v3, 0x1e

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-ne p0, v2, :cond_0

    .line 34
    .line 35
    iget v3, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    if-eq v3, v4, :cond_1

    .line 39
    .line 40
    :cond_0
    if-nez p0, :cond_2

    .line 41
    .line 42
    iget p0, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 43
    .line 44
    if-ne p0, v2, :cond_2

    .line 45
    .line 46
    :cond_1
    move v0, v2

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v2, "isConfigurationChangedFromDeX()="

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, ", config="

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, ", desktopModeState="

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p1, "[DMS]DesktopModeService"

    .line 79
    .line 80
    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_0
    return v0
.end method

.method public final isDesktopModeAvailableEx(ZZ)Z
    .locals 6

    .line 1
    const-string v0, "[DMS]DesktopModeService"

    .line 2
    .line 3
    const-string v1, ")="

    .line 4
    .line 5
    const-string v2, ", checkDesktopDock="

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mPreconditionChecker:Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;

    .line 11
    .line 12
    iget v4, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->$r8$classId:I

    .line 13
    .line 14
    packed-switch v4, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 18
    .line 19
    iget-object v4, v4, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 20
    .line 21
    check-cast v4, Lcom/android/server/desktopmode/StateManager;

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p0, v4, v3}, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->isAllowed(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 32
    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    sget v3, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 36
    .line 37
    const-string/jumbo v3, "isDesktopModeAvailable(checkExternalDisplay="

    .line 38
    .line 39
    .line 40
    invoke-static {v3, p1, v2, p2, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 58
    .line 59
    check-cast v4, Lcom/android/server/desktopmode/StateManager;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnectedOrForced(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    :cond_0
    if-eqz p2, :cond_1

    .line 74
    .line 75
    iget-object v5, v4, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 76
    .line 77
    iget-boolean v5, v5, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    .line 78
    .line 79
    if-nez v5, :cond_1

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcOrWirelessDexConnected()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 88
    .line 89
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 90
    .line 91
    const-string/jumbo v5, "hdmi_auto_enter"

    .line 92
    .line 93
    .line 94
    invoke-static {p0, v5, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_2

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    :cond_2
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 102
    .line 103
    if-eqz p0, :cond_3

    .line 104
    .line 105
    sget p0, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 106
    .line 107
    const-string/jumbo p0, "isDesktopModeAvailableEx(checkExternalDisplay="

    .line 108
    .line 109
    .line 110
    invoke-static {p0, p1, v2, p2, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    move p0, v3

    .line 125
    :cond_4
    :goto_0
    return p0

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isDesktopModeEnablingOrEnabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

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
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 12
    .line 13
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p0, v0, :cond_0

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

.method public final isDesktopModeForPreparing()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(Lcom/android/server/desktopmode/StateManager$InternalState;I)Z

    move-result p0

    return p0
.end method

.method public final isDesktopModeForPreparing(I)Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 4
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopModeForPreparing(Lcom/android/server/desktopmode/StateManager$InternalState;I)Z

    move-result p0

    return p0
.end method

.method public final isExternalDisplayConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

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
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 12
    .line 13
    return p0
.end method

.method public final isForcedInternalScreenModeEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

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
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 12
    .line 13
    return p0
.end method

.method public final isLockTaskModeEnabledAndSecured()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeChanger:Lcom/android/server/desktopmode/ModeChanger;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mIsLockTaskModeEnabledAndSecured:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isModeChangePending()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 4
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isModeChangePending(I)Z
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 6
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 6
    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    new-instance v0, Landroid/content/res/Configuration;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 12
    .line 13
    .line 14
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v1, "onConfigurationChanged(), config="

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "[DMS]StandaloneModeChanger"

    .line 34
    .line 35
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 39
    .line 40
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 47
    .line 48
    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 49
    .line 50
    const/16 v2, 0x1e

    .line 51
    .line 52
    if-ne v1, v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/16 v1, 0x65

    .line 59
    .line 60
    if-ne p1, v1, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    new-instance v1, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v1, p0, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/content/res/Configuration;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public final onDesktopDisplayConfigured(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string/jumbo v0, "onDesktopDisplayConfigured(), added="

    .line 13
    .line 14
    .line 15
    const-string v1, ", mDesktopDisplayId="

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "[DMS]DualModeChanger"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/DualModeChanger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onSecuredAppLaunched(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->onSecuredAppLaunched(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final scheduleUpdateDesktopMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setDexHDMIAutoEnterState(I)I
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string/jumbo v0, "knox_hdmi_auto_enter_state"

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const-string/jumbo v2, "hdmi_auto_enter"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "hdmi_auto_enter_backup"

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-eq p1, v4, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq p1, v1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :try_start_0
    const-string/jumbo v1, "hdmi_initial_connection_dialog_shown"

    .line 29
    .line 30
    .line 31
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 32
    .line 33
    invoke-static {p0, v1, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 37
    .line 38
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 42
    .line 43
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget v2, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 51
    .line 52
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 57
    .line 58
    invoke-static {p0, v3, v1, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 66
    .line 67
    invoke-static {p0, v2, v1, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    const-string/jumbo v1, "false"

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    const-string/jumbo v1, "true"

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget v2, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 94
    .line 95
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 100
    .line 101
    invoke-static {p0, v3, v1, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 111
    .line 112
    invoke-static {p0, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget v2, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 120
    .line 121
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    :goto_1
    const/4 p0, 0x0

    .line 125
    return p0

    .line 126
    :catch_0
    sget p0, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 127
    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string/jumbo v0, "setDexHDMIAutoEnterState(), Failed to setting(value="

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, ")"

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    const-string p1, "[DMS]DesktopModeService"

    .line 149
    .line 150
    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/4 p0, -0x1

    .line 154
    return p0
.end method

.method public final startHome()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$LocalService;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
