.class public final Lcom/android/server/desktopmode/DisplayPortStateManager$1;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DisplayPortStateManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDualModeSetDesktopMode(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onDualModeStopLoadingScreen(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isHdmiConnected()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    .line 13
    .line 14
    if-eq v1, p1, :cond_0

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, p1, v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 30
    .line 31
    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final onSetDesktopMode(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetStandaloneModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onStopLoadingScreen(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetStandaloneModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onUserChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget v3, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 15
    .line 16
    const-string/jumbo v4, "hdmi_auto_enter"

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput-boolean v2, v1, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/16 v4, 0x66

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x4

    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    iget v3, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 41
    .line 42
    if-ne v3, v7, :cond_0

    .line 43
    .line 44
    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    move v2, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v2, v5

    .line 51
    :goto_0
    iput-boolean v2, v1, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 54
    .line 55
    iget-object v2, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/16 v4, 0x65

    .line 62
    .line 63
    if-ne v3, v4, :cond_1

    .line 64
    .line 65
    iget v3, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 66
    .line 67
    if-ne v3, v7, :cond_1

    .line 68
    .line 69
    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 70
    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move v6, v5

    .line 75
    :goto_1
    iput-boolean v6, v1, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 78
    .line 79
    iget-object v2, v1, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget v3, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 86
    .line 87
    const-string/jumbo v4, "external_display_mode"

    .line 88
    .line 89
    .line 90
    const-string/jumbo v6, "dual"

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v4, v6, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    iput-boolean v2, v1, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    .line 102
    .line 103
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isHdmiConnected()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput-boolean p1, v1, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 120
    .line 121
    const-string/jumbo v2, "high_resolutions_for_external"

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v2, v5, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_2

    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p1, v1, v5}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    goto :goto_3

    .line 142
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 143
    .line 144
    iget-object v1, p1, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    sget v2, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 151
    .line 152
    const-string/jumbo v3, "high_resolutions_for_external"

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v3, v5, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    iput-boolean v1, p1, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 162
    .line 163
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    .line 164
    .line 165
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetHighResolutionsForExternalEnabledLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    .line 166
    .line 167
    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 170
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    throw p0
.end method
