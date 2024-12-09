.class public final Lcom/android/server/desktopmode/WirelessDexManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mConnectedDeviceName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mDesktopDisplayId:I

.field public final mDesktopPointerEventListener:Lcom/android/server/desktopmode/WirelessDexManager$3;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mFrequencyValue:I

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsLowLatencyMode:Z

.field public mIsPointerEventListener:Z

.field public mIsPointerIconListener:Z

.field public mIsWirelessDexEntered:Z

.field public mMotionEventStartTime:J

.field public final mPointerIconChangedListener:Lcom/android/server/desktopmode/WirelessDexManager$2;

.field public mPointerIconSync:I

.field public mReducedLatency:I

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mRunnableDisableLowLatencyMode:Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;

.field public final mRunnableEnableLowLatencyMode:Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;

.field public final mSemWifiDisplayParameterListener:Lcom/android/server/desktopmode/WirelessDexManager$1;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public mTvTizenVersion:Ljava/lang/String;

.field public final mUiManager:Lcom/android/server/desktopmode/UiManager;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/UiManager;Landroid/hardware/display/DisplayManager;Landroid/hardware/input/InputManager;Lcom/android/server/ServiceThread;Lcom/android/server/wm/WindowManagerService;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsLowLatencyMode:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerEventListener:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsPointerIconListener:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mIsWirelessDexEntered:Z

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mReducedLatency:I

    .line 15
    .line 16
    iput v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconSync:I

    .line 17
    .line 18
    iput v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopDisplayId:I

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mFrequencyValue:I

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mConnectedDeviceName:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mRunnableEnableLowLatencyMode:Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mRunnableDisableLowLatencyMode:Lcom/android/server/desktopmode/WirelessDexManager$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    new-instance v0, Lcom/android/server/desktopmode/WirelessDexManager$1;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/WirelessDexManager$1;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/android/server/desktopmode/WirelessDexManager$2;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/WirelessDexManager$2;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mPointerIconChangedListener:Lcom/android/server/desktopmode/WirelessDexManager$2;

    .line 53
    .line 54
    new-instance v1, Lcom/android/server/desktopmode/WirelessDexManager$3;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/WirelessDexManager$3;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDesktopPointerEventListener:Lcom/android/server/desktopmode/WirelessDexManager$3;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mResolver:Landroid/content/ContentResolver;

    .line 68
    .line 69
    iput-object p4, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p4, v0, v1}, Landroid/hardware/display/DisplayManager;->semRegisterWifiDisplayParameterListener(Landroid/hardware/display/SemWifiDisplayParameterListener;Landroid/os/Handler;)V

    .line 73
    .line 74
    .line 75
    iput-object p5, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 76
    .line 77
    iput-object p7, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 80
    .line 81
    new-instance p4, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;

    .line 82
    .line 83
    invoke-direct {p4, p0}, Lcom/android/server/desktopmode/WirelessDexManager$StateListener;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    .line 84
    .line 85
    .line 86
    check-cast p2, Lcom/android/server/desktopmode/StateManager;

    .line 87
    .line 88
    invoke-virtual {p2, p4}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 89
    .line 90
    .line 91
    new-instance p2, Landroid/os/Handler;

    .line 92
    .line 93
    invoke-virtual {p6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mHandler:Landroid/os/Handler;

    .line 101
    .line 102
    iput-object p3, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 103
    .line 104
    new-instance v1, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/WirelessDexManager$Receiver;-><init>(Lcom/android/server/desktopmode/WirelessDexManager;)V

    .line 107
    .line 108
    .line 109
    const-string p0, "android.intent.action.HDMI_PLUGGED"

    .line 110
    .line 111
    const-string/jumbo p2, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 112
    .line 113
    .line 114
    invoke-static {p0, p2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x2

    .line 123
    move-object v0, p1

    .line 124
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]WirelessDexManager"

    .line 6
    .line 7
    const-string/jumbo v1, "disconnect()"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x3

    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final setWifiDisplayParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "setWifiDisplayParameters(key="

    .line 6
    .line 7
    .line 8
    const-string v1, ", value="

    .line 9
    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "[DMS]WirelessDexManager"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 22
    .line 23
    invoke-direct {v0, p1, p2}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/desktopmode/WirelessDexManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 27
    .line 28
    const-string/jumbo p1, "setparams"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManager;->semRequestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
