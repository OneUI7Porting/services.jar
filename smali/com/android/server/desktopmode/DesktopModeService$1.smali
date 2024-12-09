.class public final Lcom/android/server/desktopmode/DesktopModeService$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mHwManager:Lcom/android/server/desktopmode/HardwareManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v1, "[DMS]HardwareManager"

    .line 21
    .line 22
    const-string/jumbo v2, "initialize()"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, v0, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager;->updateDockStatusLocked()Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->initializeExternalDisplayStatusLocked([Landroid/view/Display;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager;->updateInputDeviceStatusLocked()V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/android/server/desktopmode/HardwareManager;->mResolver:Landroid/content/ContentResolver;

    .line 47
    .line 48
    const-string/jumbo v3, "dock_usbpd_ids"

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/desktopmode/HardwareManager;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 52
    .line 53
    iget v0, v0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 54
    .line 55
    invoke-static {v1, v3, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    .line 64
    .line 65
    iget-object v1, v0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v1

    .line 68
    :try_start_1
    iget-object v2, v0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    sget v3, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 75
    .line 76
    const-string/jumbo v4, "mirroring_switch_disabled"

    .line 77
    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iput-boolean v2, v0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    .line 87
    .line 88
    .line 89
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 95
    .line 96
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 103
    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 109
    .line 110
    iget-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 111
    .line 112
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandleHdmiAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 118
    .line 119
    iget-boolean v2, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 120
    .line 121
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandlePogoAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    .line 129
    .line 130
    new-instance v2, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda2;

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    invoke-direct {v2, v3, p0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    const-wide/16 v3, 0x1388

    .line 137
    .line 138
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 144
    .line 145
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$msetEnterRequestIfStandaloneLastBoot(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 146
    .line 147
    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 151
    .line 152
    const/4 v2, 0x1

    .line 153
    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 159
    .line 160
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 161
    .line 162
    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mrequestTileUpdate(Lcom/android/server/desktopmode/DesktopModeService;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :catchall_0
    move-exception p0

    .line 167
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    throw p0

    .line 169
    :catchall_1
    move-exception p0

    .line 170
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    throw p0

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBootInitBlockerRegistered(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mIsBootInitBlockerRegistered:Z

    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDesktopModeStateChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 8
    .line 9
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexSetting:I

    .line 22
    .line 23
    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    iput v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mWirelessDexSetting:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 30
    .line 31
    const-string/jumbo v2, "wireless_dex"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x2

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mEnteredViaWirelessDex:Z

    .line 46
    .line 47
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mrequestTileUpdate(Lcom/android/server/desktopmode/DesktopModeService;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDockLowChargerPowerChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x3

    .line 19
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 22
    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    filled-new-array {v1}, [I

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDockStateChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexPad()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x3

    .line 16
    filled-new-array {p1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->dismissDialog([I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDualModeStopLoadingScreen(Z)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 7
    .line 8
    iget v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->showOrDismissOverlay(ZZ)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->setDesktopModeState(IZ)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 36
    .line 37
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 38
    .line 39
    const-string/jumbo v2, "welcome_completed"

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    if-nez v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->startWelcomeActivity()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isHdmiConnected()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandleHdmiAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isHdmiConnected()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isHdmiConnected()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_8

    .line 98
    .line 99
    iput-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService;->mShowModeChangeScreen:Z

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isHdmiConnected()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 109
    .line 110
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 111
    .line 112
    const-string/jumbo v5, "hdmi_auto_enter"

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v5, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    if-nez v0, :cond_7

    .line 122
    .line 123
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 124
    .line 125
    .line 126
    :cond_7
    iget-boolean p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 129
    .line 130
    .line 131
    :cond_8
    :goto_2
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onExternalDisplayUpdated(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget v0, v0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 16
    .line 17
    iget p1, p1, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 18
    .line 19
    if-eq v0, p1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda4;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onForcedInternalScreenStateChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLauncherPackageReplaced(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 22
    .line 23
    iget v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mCurrentUserId:I

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->clearSettingsByLauncherDataCleared(Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DesktopModeService;->startHome(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPackageStateChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isPackagesAvailable()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPogoKeyboardConnectionChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$mhandlePogoAutoEnter(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onScheduleUpdateDesktopMode(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onStopLoadingScreen(Z)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/desktopmode/DesktopModeService;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService;->setUserRequest(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
