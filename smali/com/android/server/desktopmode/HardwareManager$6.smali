.class public final Lcom/android/server/desktopmode/HardwareManager$6;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/HardwareManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/HardwareManager$6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$6;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v2, "onReceive(), action="

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "[DMS]HardwareManager"

    .line 33
    .line 34
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const-string/jumbo v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 47
    .line 48
    const-string/jumbo v0, "status"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdatePogoKeyboardStatus(Lcom/android/server/desktopmode/HardwareManager;Z)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 62
    .line 63
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/HardwareManager$6;->updateWiredChargingStatus(Lcom/android/server/desktopmode/StateManager$InternalState;Landroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    const-string/jumbo v0, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 99
    .line 100
    if-eqz p2, :cond_5

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-eqz p2, :cond_5

    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    sget-object v1, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 117
    .line 118
    const-string v1, "[DMS]HardwareManager"

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string/jumbo v3, "minorClass="

    .line 123
    .line 124
    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, ", reason="

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_2
    const/16 v1, 0x13

    .line 151
    .line 152
    if-ne p1, v1, :cond_5

    .line 153
    .line 154
    const/16 p1, 0x580

    .line 155
    .line 156
    if-ne p2, p1, :cond_5

    .line 157
    .line 158
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/android/server/desktopmode/HardwareManager;->mLock:Ljava/lang/Object;

    .line 161
    .line 162
    monitor-enter p1

    .line 163
    :try_start_0
    iget-object p2, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 164
    .line 165
    const/4 v1, 0x1

    .line 166
    iput-boolean v1, p2, Lcom/android/server/desktopmode/HardwareManager;->mIsBtMouseDeepSleep:Z

    .line 167
    .line 168
    if-eqz v0, :cond_3

    .line 169
    .line 170
    sget-object p2, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 171
    .line 172
    const-string p2, "[DMS]HardwareManager"

    .line 173
    .line 174
    const-string/jumbo v0, "mIsBtMouseDeepSleep=true"

    .line 175
    .line 176
    .line 177
    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    goto :goto_1

    .line 183
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 184
    .line 185
    iget-boolean p2, p0, Lcom/android/server/desktopmode/HardwareManager;->mIsMouseConnected:Z

    .line 186
    .line 187
    if-nez p2, :cond_4

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager;->updateInputDeviceStatusLocked()V

    .line 190
    .line 191
    .line 192
    :cond_4
    monitor-exit p1

    .line 193
    goto :goto_2

    .line 194
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    throw p0

    .line 196
    :cond_5
    :goto_2
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateWiredChargingStatus(Lcom/android/server/desktopmode/StateManager$InternalState;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "plugged"

    .line 5
    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p2, v0, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne p2, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :cond_2
    :goto_0
    iget-boolean p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 21
    .line 22
    if-eq p1, v0, :cond_4

    .line 23
    .line 24
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    sget-object p1, Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Ljava/util/Map;

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo p2, "isWiredCharging="

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "[DMS]HardwareManager"

    .line 46
    .line 47
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 53
    .line 54
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StateManager;->setWiredCharging(Z)V

    .line 57
    .line 58
    .line 59
    :cond_4
    return-void
.end method
