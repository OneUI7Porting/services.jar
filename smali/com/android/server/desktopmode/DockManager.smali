.class public final Lcom/android/server/desktopmode/DockManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

.field public mDockChargerPower:I

.field public mDockChargerSupport:I

.field public final mDockControlLibError:Landroid/util/SparseBooleanArray;

.field public mDockVersion:Ljava/lang/String;

.field public mDockVersionExtra:Ljava/lang/String;

.field public final mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

.field public mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

.field public final mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$3;

.field public mLastDockVersion:Ljava/lang/String;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mStateListener:Lcom/android/server/desktopmode/DockManager$1;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public static -$$Nest$mrequestUpdateDockLibStatus(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo v0, "requestUpdateDockLibStatus, reason - "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "[DMS]DockManager"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 21
    .line 22
    const/16 p1, 0x96

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static -$$Nest$mupdateDockVersionToSettings(Lcom/android/server/desktopmode/DockManager;Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "/sys/class/dp_sec/dex_ver"

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "."

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "/sys/class/sec/ccic/acc_device_version"

    .line 28
    .line 29
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Utils;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 69
    .line 70
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 77
    .line 78
    :goto_0
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string/jumbo v0, "updateDockVersionToSettings(), mDockVersion = "

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v0, "[DMS]DockManager"

    .line 100
    .line 101
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mResolver:Landroid/content/ContentResolver;

    .line 105
    .line 106
    const-string/jumbo v0, "dock_version"

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public static -$$Nest$smdockControlErrorToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown="

    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    const-string p0, "SET_FAST_CHARGING_UVDM_FAILED"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_1
    const-string p0, "CHARGING_MODE_UPDATE_UVDM_FAILED"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_2
    const-string p0, "CONNECTED_POWER_CHARGER_INFO_UPDATE_UVDM_FAILED"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_3
    const-string p0, "SET_FAST_CHARGING_DEX_BUSY"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_4
    const-string p0, "CONNECTED_POWER_CHARGER_INFO_UPDATE_DEX_BUSY"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_5
    const-string p0, "FAN_LEVEL_CONTROL_DEX_BUSY"

    .line 27
    .line 28
    :goto_0
    return-object p0

    .line 29
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersion:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockVersionExtra:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockVersion:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mISDCDeviceController:Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/desktopmode/DockManager;->mControlResponseListener:Lcom/android/server/desktopmode/DockManager$3;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerPower:I

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/desktopmode/DockManager;->mDockChargerSupport:I

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/desktopmode/DockManager$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DockManager$1;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/android/server/desktopmode/DockManager;->mResolver:Landroid/content/ContentResolver;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/android/server/desktopmode/DockManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 36
    .line 37
    check-cast p3, Lcom/android/server/desktopmode/StateManager;

    .line 38
    .line 39
    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 40
    .line 41
    .line 42
    new-instance p3, Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p3, p0, p2}, Lcom/android/server/desktopmode/DockManager$DockHandler;-><init>(Lcom/android/server/desktopmode/DockManager;Landroid/os/Looper;)V

    .line 49
    .line 50
    .line 51
    iput-object p3, p0, Lcom/android/server/desktopmode/DockManager;->mHandler:Lcom/android/server/desktopmode/DockManager$DockHandler;

    .line 52
    .line 53
    new-instance p2, Lcom/android/server/desktopmode/DockManager$3;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance p3, Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p3, p2, Lcom/android/server/desktopmode/DockManager$3;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    const/16 v0, 0x64

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/16 v1, 0xc8

    .line 72
    .line 73
    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager$3;->msgStateToString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const/16 v0, 0x65

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "MSG_DOCK_RESPONSE_UNDEFINED"

    .line 87
    .line 88
    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    const/16 v0, 0x66

    .line 92
    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "MSG_DOCK_ERROR_UNDEFINED"

    .line 98
    .line 99
    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const/16 v0, 0x67

    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "MSG_DOCK_VERSION_UNDEFINED"

    .line 109
    .line 110
    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const/16 v0, 0x68

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, "MSG_DOCK_EXTRA_UNDEFINED"

    .line 120
    .line 121
    invoke-virtual {p3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    iput-object p2, p0, Lcom/android/server/desktopmode/DockManager;->mLastDockControlLibMsgState:Lcom/android/server/desktopmode/DockManager$3;

    .line 125
    .line 126
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 127
    .line 128
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object p2, p0, Lcom/android/server/desktopmode/DockManager;->mDockControlLibError:Landroid/util/SparseBooleanArray;

    .line 132
    .line 133
    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 134
    .line 135
    const-string p3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 136
    .line 137
    invoke-static {p2, p3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    new-instance v1, Lcom/android/server/desktopmode/DockManager$2;

    .line 142
    .line 143
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/DockManager$2;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    .line 144
    .line 145
    .line 146
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 147
    .line 148
    const/4 v6, 0x2

    .line 149
    const/4 v4, 0x0

    .line 150
    const/4 v5, 0x0

    .line 151
    move-object v0, p1

    .line 152
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 153
    .line 154
    .line 155
    return-void
.end method
