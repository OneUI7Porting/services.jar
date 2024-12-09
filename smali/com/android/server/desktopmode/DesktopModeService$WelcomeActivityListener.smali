.class public final Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mOverlayShown:Z

.field public mShown:Z

.field public mStartPressed:Z

.field public final mStateListener:Lcom/android/server/desktopmode/DesktopModeService$1;

.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mShown:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    .line 12
    .line 13
    new-instance p1, Lcom/android/server/desktopmode/DesktopModeService$1;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p1, v0, p0}, Lcom/android/server/desktopmode/DesktopModeService$1;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStateListener:Lcom/android/server/desktopmode/DesktopModeService$1;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onClickButtonPositive()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mStartPressed:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->finishWelcomeActivity()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 10
    .line 11
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isHdmiConnected()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 24
    .line 25
    const-string/jumbo v3, "hdmi_initial_connection_dialog_shown"

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-boolean v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;

    .line 36
    .line 37
    const-string/jumbo v1, "pogo_initial_connection_dialog_shown"

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setDesktopModeState(IZ)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mStandaloneModeChanger:Lcom/android/server/desktopmode/StandaloneModeChanger;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mDualModeChanger:Lcom/android/server/desktopmode/DualModeChanger;

    .line 13
    .line 14
    :goto_0
    const/4 p2, 0x2

    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/android/server/desktopmode/ModeChanger;->setDesktopModeState(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final showOrDismissOverlay(ZZ)V
    .locals 6

    .line 1
    const/16 v0, 0x70

    .line 2
    .line 3
    const/16 v1, 0x67

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 9
    .line 10
    if-nez v3, :cond_5

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/android/server/desktopmode/CoverStateManager;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v3

    .line 19
    :try_start_0
    iget-object p1, p1, Lcom/android/server/desktopmode/CoverStateManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v4, 0x1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    monitor-exit v3

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ne v5, v4, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/desktopmode/CoverStateManager;->isFlipTypeCover(Lcom/samsung/android/cover/CoverState;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    move v2, v4

    .line 51
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_0
    if-eqz v2, :cond_3

    .line 53
    .line 54
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    sget p0, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 59
    .line 60
    const-string p0, "[DMS]DesktopModeService"

    .line 61
    .line 62
    const-string/jumbo p1, "showOrDismissOverlay(), show=true, isCoverSupportStatePartial="

    .line 63
    .line 64
    .line 65
    const-string v0, ", skip showing external overlay since cover is closed"

    .line 66
    .line 67
    invoke-static {p1, v0, p0, p2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void

    .line 71
    :cond_3
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    sget p1, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 76
    .line 77
    const-string p1, "[DMS]DesktopModeService"

    .line 78
    .line 79
    const-string/jumbo v2, "showOrDismissOverlay(), show=true, isCoverSupportStatePartial="

    .line 80
    .line 81
    .line 82
    const-string v3, ", showing external overlay"

    .line 83
    .line 84
    invoke-static {v2, v3, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 95
    .line 96
    .line 97
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    .line 98
    .line 99
    if-nez p1, :cond_7

    .line 100
    .line 101
    if-eqz p2, :cond_7

    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 111
    .line 112
    .line 113
    move-result-wide p1

    .line 114
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    .line 117
    .line 118
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/CoverStateManager;->disableCoverManager(Z)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0

    .line 134
    :cond_5
    if-nez p1, :cond_7

    .line 135
    .line 136
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 137
    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 141
    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    sget p1, Lcom/android/server/desktopmode/DesktopModeService;->$r8$clinit:I

    .line 145
    .line 146
    const-string p1, "[DMS]DesktopModeService"

    .line 147
    .line 148
    const-string/jumbo v3, "showOrDismissOverlay(), show=false, isCoverSupportStatePartial="

    .line 149
    .line 150
    .line 151
    const-string v4, ", dismissing external overlay"

    .line 152
    .line 153
    invoke-static {v3, v4, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->mOverlayShown:Z

    .line 157
    .line 158
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/android/server/desktopmode/DesktopModeService;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 161
    .line 162
    invoke-virtual {p1, v1, v0}, Lcom/android/server/desktopmode/UiManager;->dismissOverlay(II)V

    .line 163
    .line 164
    .line 165
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    .line 166
    .line 167
    if-nez p1, :cond_7

    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 170
    .line 171
    iget-object p1, p1, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 177
    .line 178
    .line 179
    move-result-wide p1

    .line 180
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 181
    .line 182
    iget-object v0, v0, Lcom/android/server/desktopmode/DesktopModeService;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/CoverStateManager;->disableCoverManager(Z)V

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$WelcomeActivityListener;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 188
    .line 189
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService;->mInjector:Lcom/android/server/desktopmode/Injector;

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .line 196
    .line 197
    :cond_7
    :goto_2
    return-void
.end method
