.class public final Lcom/android/server/desktopmode/WirelessDexManager$StateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/WirelessDexManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDualModeStartLoadingScreen(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsWirelessDexEntered:Z

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerEventListener:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopDisplayId:I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopPointerEventListener:Lcom/android/server/desktopmode/WirelessDexManager$3;

    .line 19
    .line 20
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 21
    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerEventListener:Z

    .line 24
    .line 25
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerIconListener:Z

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconChangedListener:Lcom/android/server/desktopmode/WirelessDexManager$2;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/hardware/input/InputManager;->semUnregisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)V

    .line 34
    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerIconListener:Z

    .line 37
    .line 38
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsWirelessDexEntered:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    .line 41
    .line 42
    const-string p1, ""

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 47
    .line 48
    const/16 p1, 0xcc

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    .line 51
    .line 52
    .line 53
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 54
    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    const-string p0, "[DMS]WirelessDexManager"

    .line 58
    .line 59
    const-string/jumbo p1, "onDualModeStartLoadingScreen() finish"

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public final onDualModeStopLoadingScreen(Z)V
    .locals 6

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsWirelessDexEntered:Z

    .line 18
    .line 19
    iget v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopDisplayId:I

    .line 22
    .line 23
    if-eqz v0, :cond_c

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerEventListener:Z

    .line 35
    .line 36
    iget v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopDisplayId:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopPointerEventListener:Lcom/android/server/desktopmode/WirelessDexManager$3;

    .line 41
    .line 42
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    .line 46
    .line 47
    sget v2, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 48
    .line 49
    const-string/jumbo v3, "wireless_dex_qos_notification_deleted"

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "Address List : "

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v3, "[DMS]WirelessDexManager"

    .line 76
    .line 77
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    const-string v2, ""

    .line 81
    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object v3, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    move-object v3, v2

    .line 103
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_4

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iget-object v3, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 123
    .line 124
    if-nez v0, :cond_7

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    .line 127
    .line 128
    const-string v5, "TIZEN-WFD-SINK"

    .line 129
    .line 130
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    iget v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mFrequencyValue:I

    .line 138
    .line 139
    const/16 v5, 0x1428

    .line 140
    .line 141
    if-lt v0, v5, :cond_6

    .line 142
    .line 143
    const/16 v5, 0x16e9

    .line 144
    .line 145
    if-le v0, v5, :cond_8

    .line 146
    .line 147
    :cond_6
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 148
    .line 149
    const/16 v0, 0xb

    .line 150
    .line 151
    invoke-virtual {v3, p1, v0, v4}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    :goto_2
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 156
    .line 157
    const/16 v0, 0xc

    .line 158
    .line 159
    invoke-virtual {v3, p1, v0, v4}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 160
    .line 161
    .line 162
    :cond_8
    :goto_3
    iget p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    .line 163
    .line 164
    if-ne p1, v1, :cond_9

    .line 165
    .line 166
    iput-boolean v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerIconListener:Z

    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconChangedListener:Lcom/android/server/desktopmode/WirelessDexManager$2;

    .line 171
    .line 172
    invoke-virtual {p1, v0, v4}, Landroid/hardware/input/InputManager;->semRegisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V

    .line 173
    .line 174
    .line 175
    :cond_9
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    .line 176
    .line 177
    iget v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    .line 178
    .line 179
    if-eq v0, v1, :cond_a

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_a
    const/4 v1, 0x0

    .line 183
    :goto_4
    const-string/jumbo v0, "uibc_finger_enabled"

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_b

    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    :cond_b
    iput-object v2, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    .line 206
    .line 207
    :cond_c
    return-void
.end method

.method public final onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isWirelessDexConnected()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mReducedLatency:I

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mFrequencyValue:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mTvTizenVersion:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    .line 21
    .line 22
    const-string/jumbo v0, "uibc_finger_enabled"

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final onUserChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    const-string/jumbo v0, "wireless_dex"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    .line 13
    .line 14
    const-string/jumbo p1, "wireless_dex_scan_device"

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
