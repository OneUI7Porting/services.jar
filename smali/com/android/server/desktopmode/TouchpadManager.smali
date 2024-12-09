.class public final Lcom/android/server/desktopmode/TouchpadManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAutoRunSettingChangedListener:Lcom/android/server/desktopmode/TouchpadManager$2;

.field public final mContext:Landroid/content/Context;

.field public mDesktopDisplayId:I

.field public final mHandler:Landroid/os/Handler;

.field public final mInternalUiCallback:Lcom/android/server/desktopmode/TouchpadManager$1;

.field public mIsSPenDetached:Z

.field public mIsSPenEnabled:Z

.field public mIsTouchpadEnabled:Z

.field public final mNavBarModeObserver:Lcom/android/server/desktopmode/TouchpadManager$5;

.field public final mPointerEventListener:Lcom/android/server/desktopmode/TouchpadManager$6;

.field public final mSPenDetachedReceiver:Lcom/android/server/desktopmode/TouchpadManager$4;

.field public final mSPenSettingChangedListener:Lcom/android/server/desktopmode/TouchpadManager$2;

.field public final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static -$$Nest$mupdateTouchpadAvailability(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    const/16 v3, 0x66

    .line 16
    .line 17
    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-string p1, "[DMS]StateManager"

    .line 35
    .line 36
    const-string/jumbo v0, "setTouchpadAvailable(available="

    .line 37
    .line 38
    .line 39
    const-string v2, ")"

    .line 40
    .line 41
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter p1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 48
    .line 49
    iget-boolean v0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 50
    .line 51
    if-eq v0, v1, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 54
    .line 55
    iput-boolean v1, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance v2, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/4 v3, 0x7

    .line 68
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    :goto_1
    monitor-exit p1

    .line 78
    return-void

    .line 79
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsTouchpadEnabled:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mDesktopDisplayId:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/TouchpadManager$1;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mInternalUiCallback:Lcom/android/server/desktopmode/TouchpadManager$1;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager$2;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/TouchpadManager$2;-><init>(Lcom/android/server/desktopmode/TouchpadManager;I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenSettingChangedListener:Lcom/android/server/desktopmode/TouchpadManager$2;

    .line 35
    .line 36
    new-instance v0, Lcom/android/server/desktopmode/TouchpadManager$2;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/TouchpadManager$2;-><init>(Lcom/android/server/desktopmode/TouchpadManager;I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/android/server/desktopmode/TouchpadManager$4;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/TouchpadManager$4;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenDetachedReceiver:Lcom/android/server/desktopmode/TouchpadManager$4;

    .line 48
    .line 49
    new-instance v1, Lcom/android/server/desktopmode/TouchpadManager$5;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/TouchpadManager$5;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mNavBarModeObserver:Lcom/android/server/desktopmode/TouchpadManager$5;

    .line 55
    .line 56
    new-instance v1, Lcom/android/server/desktopmode/TouchpadManager$6;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/TouchpadManager$6;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mPointerEventListener:Lcom/android/server/desktopmode/TouchpadManager$6;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    new-instance p1, Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mHandler:Landroid/os/Handler;

    .line 75
    .line 76
    iput-object p2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 77
    .line 78
    new-instance p1, Lcom/android/server/desktopmode/TouchpadManager$StateListener;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/TouchpadManager$StateListener;-><init>(Lcom/android/server/desktopmode/TouchpadManager;)V

    .line 81
    .line 82
    .line 83
    check-cast p2, Lcom/android/server/desktopmode/StateManager;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 86
    .line 87
    .line 88
    iput-object p4, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 89
    .line 90
    iput-object p5, p0, Lcom/android/server/desktopmode/TouchpadManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 91
    .line 92
    invoke-virtual {p4, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public final updateSPenState()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "[DMS]TouchpadManager"

    .line 6
    .line 7
    const-string/jumbo v2, "updateSPenState()"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 14
    .line 15
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v2, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcConnected()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v4, 0x1

    .line 43
    xor-int/2addr v2, v4

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    const/16 v5, 0x66

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    move v3, v4

    .line 58
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    .line 59
    .line 60
    if-eq v1, v3, :cond_5

    .line 61
    .line 62
    iput-boolean v3, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const-string v1, "[DMS]TouchpadManager"

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string/jumbo v4, "mIsSPenEnabled= "

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v4, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string/jumbo v2, "spen_enabled"

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 101
    .line 102
    check-cast p0, Lcom/android/server/desktopmode/StateManager;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    const-string v0, "[DMS]StateManager"

    .line 110
    .line 111
    const-string/jumbo v1, "setSpenEnabled(enabled="

    .line 112
    .line 113
    .line 114
    const-string v2, ")"

    .line 115
    .line 116
    invoke-static {v1, v2, v0, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 123
    .line 124
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 125
    .line 126
    if-eq v1, v3, :cond_4

    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 129
    .line 130
    iput-boolean v3, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 131
    .line 132
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 133
    .line 134
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 139
    .line 140
    new-instance v3, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    const/4 v4, 0x3

    .line 143
    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catchall_0
    move-exception p0

    .line 151
    goto :goto_1

    .line 152
    :cond_4
    :goto_0
    monitor-exit v0

    .line 153
    goto :goto_2

    .line 154
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    throw p0

    .line 156
    :cond_5
    :goto_2
    return-void
.end method
