.class public final Lcom/android/server/desktopmode/TouchpadManager$StateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDualModeStartLoadingScreen(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "navigation_mode"

    .line 15
    .line 16
    .line 17
    const/4 v3, -0x2

    .line 18
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x1

    .line 24
    if-gt v4, v1, :cond_0

    .line 25
    .line 26
    move v1, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v0

    .line 29
    :goto_0
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/android/server/desktopmode/StateManager;->setNavBarGestureEnabled(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mNavBarModeObserver:Lcom/android/server/desktopmode/TouchpadManager$5;

    .line 45
    .line 46
    invoke-virtual {p1, v1, v5, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 51
    .line 52
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$mupdateTouchpadAvailability(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenSettingChangedListener:Lcom/android/server/desktopmode/TouchpadManager$2;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mNavBarModeObserver:Lcom/android/server/desktopmode/TouchpadManager$5;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 77
    .line 78
    .line 79
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenDetachedReceiver:Lcom/android/server/desktopmode/TouchpadManager$4;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mPointerEventListener:Lcom/android/server/desktopmode/TouchpadManager$6;

    .line 93
    .line 94
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 95
    .line 96
    .line 97
    iget v2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mDesktopDisplayId:I

    .line 98
    .line 99
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string/jumbo v1, "touchpad_enabled"

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 115
    .line 116
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/StateManager;->setTouchpadEnabled(Z)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mTouchpadRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    .line 125
    .line 126
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    .line 127
    .line 128
    if-eqz p1, :cond_3

    .line 129
    .line 130
    iput-boolean v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenDetached:Z

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/android/server/desktopmode/TouchpadManager;->updateSPenState()V

    .line 133
    .line 134
    .line 135
    :cond_3
    return-void
.end method

.method public final onDualModeStopLoadingScreen(Z)V
    .locals 8

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$StateListener;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

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
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$mupdateTouchpadAvailability(Lcom/android/server/desktopmode/TouchpadManager;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenSettingChangedListener:Lcom/android/server/desktopmode/TouchpadManager$2;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 21
    .line 22
    .line 23
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 30
    .line 31
    new-instance v4, Landroid/content/IntentFilter;

    .line 32
    .line 33
    const-string/jumbo v0, "com.samsung.pen.INSERT"

    .line 34
    .line 35
    .line 36
    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    const/4 v5, 0x0

    .line 41
    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mSPenDetachedReceiver:Lcom/android/server/desktopmode/TouchpadManager$4;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/desktopmode/TouchpadManager;->mPointerEventListener:Lcom/android/server/desktopmode/TouchpadManager$6;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 53
    .line 54
    .line 55
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 56
    .line 57
    iput v0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mDesktopDisplayId:I

    .line 58
    .line 59
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    iget v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 71
    .line 72
    const/4 v1, 0x2

    .line 73
    if-ne v0, v1, :cond_1

    .line 74
    .line 75
    iget-boolean p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 76
    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    sget-object p1, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    .line 82
    .line 83
    const p1, 0x104046a

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void
.end method
