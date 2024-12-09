.class public final Lcom/android/server/desktopmode/CoverStateManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAuthComplete:Z

.field public final mBlocker:Lcom/android/server/desktopmode/CoverStateManager$3;

.field public final mContext:Landroid/content/Context;

.field public final mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverManagerDisabled:Z

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public final mCoverStateListener:Lcom/android/server/desktopmode/CoverStateManager$1;

.field public mCoverSupportState:I

.field public mDesktopDockConnected:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public final mIsNfcAuthSystemFeatureEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mScreenMirroringDisabled:Z

.field public final mStateListener:Lcom/android/server/desktopmode/CoverStateManager$2;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;


# direct methods
.method public static -$$Nest$minitializeCoverState(Lcom/android/server/desktopmode/CoverStateManager;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 18
    .line 19
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/desktopmode/CoverStateManager;->updateCoverSupportStateLocked()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverStateListener:Lcom/android/server/desktopmode/CoverStateManager$1;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateListener:Lcom/android/server/desktopmode/CoverStateManager$2;

    .line 47
    .line 48
    check-cast v2, Lcom/android/server/desktopmode/StateManager;

    .line 49
    .line 50
    invoke-virtual {v2, p0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return v1

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/samsung/android/desktopmode/SemDesktopModeManager;Landroid/os/PowerManager;Lcom/android/server/input/InputManagerService;)V
    .locals 8

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
    iput-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/cover/CoverState;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/samsung/android/cover/CoverState;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/desktopmode/CoverStateManager$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/CoverStateManager$1;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverStateListener:Lcom/android/server/desktopmode/CoverStateManager$1;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/desktopmode/CoverStateManager$2;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/CoverStateManager$2;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateListener:Lcom/android/server/desktopmode/CoverStateManager$2;

    .line 43
    .line 44
    new-instance v1, Lcom/android/server/desktopmode/CoverStateManager$3;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/CoverStateManager$3;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlocker:Lcom/android/server/desktopmode/CoverStateManager$3;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 54
    .line 55
    new-instance p2, Lcom/samsung/android/cover/CoverManager;

    .line 56
    .line 57
    invoke-direct {p2, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 61
    .line 62
    iput-object p3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 63
    .line 64
    new-instance p2, Landroid/os/Handler;

    .line 65
    .line 66
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mHandler:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance p3, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;

    .line 72
    .line 73
    invoke-direct {p3, p0}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;-><init>(Lcom/android/server/desktopmode/CoverStateManager;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mIsNfcAuthSystemFeatureEnabled:Z

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 85
    .line 86
    const/16 v2, -0x100

    .line 87
    .line 88
    const/16 v3, 0x1b

    .line 89
    .line 90
    invoke-interface {v1, v0, v2, v3}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v1, 0x1

    .line 95
    if-ne v0, v1, :cond_1

    .line 96
    .line 97
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 98
    .line 99
    new-instance v4, Landroid/content/IntentFilter;

    .line 100
    .line 101
    const-string/jumbo v0, "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_STOPPED"

    .line 102
    .line 103
    .line 104
    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v7, 0x2

    .line 110
    move-object v1, p1

    .line 111
    move-object v2, p3

    .line 112
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 116
    .line 117
    if-eqz v0, :cond_0

    .line 118
    .line 119
    new-instance v1, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;

    .line 120
    .line 121
    invoke-direct {v1, p3}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$1;-><init>(Lcom/android/server/desktopmode/CoverStateManager$Authenticator;)V

    .line 122
    .line 123
    .line 124
    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mDesktopModeServiceCallbacks:Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;

    .line 125
    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    invoke-direct {v0, p3}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/CoverStateManager$Authenticator;)V

    .line 133
    .line 134
    .line 135
    const-wide/16 v1, 0x4e20

    .line 136
    .line 137
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/desktopmode/CoverStateManager$Authenticator;->setAuthComplete()V

    .line 142
    .line 143
    .line 144
    :goto_0
    iput-object p4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 145
    .line 146
    iput-object p5, p0, Lcom/android/server/desktopmode/CoverStateManager;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string/jumbo p2, "com.sec.feature.nfc_authentication_cover"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mIsNfcAuthSystemFeatureEnabled:Z

    .line 160
    .line 161
    return-void
.end method

.method public static coverSupportStateToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const-string v0, "Unknown="

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const-string p0, "COVER_SUPPORT_STATE_NONE"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    const-string p0, "COVER_SUPPORT_STATE_PARTIAL"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    const-string p0, "COVER_SUPPORT_STATE_FULL"

    .line 24
    .line 25
    return-object p0
.end method

.method public static isFlipTypeCover(Lcom/samsung/android/cover/CoverState;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/16 v1, 0xb

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0xf

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x6

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->friendsType:I

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    if-ne p0, v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public final disableCoverManager(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "disableCoverManager()="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    .line 8
    .line 9
    if-eq v2, p1, :cond_1

    .line 10
    .line 11
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v2, "[DMS]CoverStateManager"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, " -> "

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverManager;->disableCoverManager(Z)V

    .line 50
    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 61
    .line 62
    :cond_1
    monitor-exit v1

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "mIsNfcAuthSystemFeatureEnabled="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "mScreenMirroringDisabled="

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "mDesktopDockConnected="

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "mCoverSupportState="

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "mCoverState="

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "mCoverManagerDisabled="

    .line 17
    .line 18
    .line 19
    const-string/jumbo v6, "mAuthComplete="

    .line 20
    .line 21
    .line 22
    const-string v7, "Current CoverStateManager state:"

    .line 23
    .line 24
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 28
    .line 29
    .line 30
    iget-object v7, p0, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v7

    .line 33
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v6, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    .line 39
    .line 40
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean v5, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManagerDisabled:Z

    .line 56
    .line 57
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 73
    .line 74
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    .line 90
    .line 91
    invoke-static {v3}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    .line 111
    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-boolean p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mIsNfcAuthSystemFeatureEnabled:Z

    .line 145
    .line 146
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    throw p0
.end method

.method public final updateCoverSupportStateLocked()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 17
    .line 18
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcOrWirelessDexConnected()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 39
    .line 40
    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v0, v3

    .line 47
    :goto_0
    iget v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    if-eq v4, v0, :cond_6

    .line 51
    .line 52
    iput v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    .line 53
    .line 54
    if-ne v0, v2, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlocker:Lcom/android/server/desktopmode/CoverStateManager$3;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mBlocker:Lcom/android/server/desktopmode/CoverStateManager$3;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 74
    .line 75
    iget v4, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    .line 76
    .line 77
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 83
    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    const-string v6, "[DMS]StateManager"

    .line 87
    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string/jumbo v8, "setCoverState(coverState="

    .line 91
    .line 92
    .line 93
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v8, ", coverSupportState="

    .line 100
    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v8, ")"

    .line 108
    .line 109
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-static {v6, v7}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v6, v0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v6

    .line 122
    :try_start_0
    iget-object v7, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 123
    .line 124
    iget v7, v7, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 125
    .line 126
    if-eq v7, v4, :cond_4

    .line 127
    .line 128
    iget-object v7, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 129
    .line 130
    iput v4, v7, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 131
    .line 132
    move v4, v3

    .line 133
    goto :goto_2

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    move v4, v5

    .line 137
    :goto_2
    iget-object v7, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 138
    .line 139
    iput-object v2, v7, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 140
    .line 141
    iget-object v2, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-eqz v4, :cond_5

    .line 148
    .line 149
    iget-object v4, v0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 150
    .line 151
    new-instance v7, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;

    .line 152
    .line 153
    const/4 v8, 0x2

    .line 154
    invoke-direct {v7, v0, v2, v8}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    .line 159
    .line 160
    :cond_5
    monitor-exit v6

    .line 161
    move v0, v3

    .line 162
    goto :goto_4

    .line 163
    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw p0

    .line 165
    :cond_6
    move v0, v5

    .line 166
    :goto_4
    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    .line 167
    .line 168
    if-eqz v2, :cond_7

    .line 169
    .line 170
    iget v2, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    .line 171
    .line 172
    if-ne v2, v1, :cond_7

    .line 173
    .line 174
    iput-boolean v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    .line 175
    .line 176
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string/jumbo v2, "mirroring_switch_disabled"

    .line 183
    .line 184
    .line 185
    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    .line 190
    .line 191
    if-eqz v1, :cond_8

    .line 192
    .line 193
    iput-boolean v5, p0, Lcom/android/server/desktopmode/CoverStateManager;->mScreenMirroringDisabled:Z

    .line 194
    .line 195
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverStateManager;->mContext:Landroid/content/Context;

    .line 196
    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const-string/jumbo v2, "mirroring_switch_disabled"

    .line 202
    .line 203
    .line 204
    invoke-static {v1, v2, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 205
    .line 206
    .line 207
    :cond_8
    :goto_5
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 208
    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    const-string v1, "[DMS]CoverStateManager"

    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string/jumbo v3, "updateCoverSupportState(), mCoverSupportState="

    .line 216
    .line 217
    .line 218
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverSupportState:I

    .line 222
    .line 223
    invoke-static {v3}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v3, ", mCoverState="

    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget-object v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 236
    .line 237
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v3, ", mAuthComplete="

    .line 241
    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-boolean v3, p0, Lcom/android/server/desktopmode/CoverStateManager;->mAuthComplete:Z

    .line 246
    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v3, ", mDesktopDockConnected="

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-boolean p0, p0, Lcom/android/server/desktopmode/CoverStateManager;->mDesktopDockConnected:Z

    .line 256
    .line 257
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_9
    return v0
.end method
