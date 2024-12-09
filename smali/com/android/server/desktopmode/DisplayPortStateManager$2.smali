.class public final Lcom/android/server/desktopmode/DisplayPortStateManager$2;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DisplayPortStateManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 7
    .line 8
    const-string/jumbo p1, "hdmi_auto_enter"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 16
    .line 17
    const-string/jumbo p1, "external_display_mode"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 25
    .line 26
    const-string/jumbo p1, "high_resolutions_for_external"

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "dual"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    .line 21
    .line 22
    if-eq v1, p1, :cond_0

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 40
    .line 41
    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0

    .line 47
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v0

    .line 56
    :try_start_1
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    .line 59
    .line 60
    if-eq v1, p1, :cond_1

    .line 61
    .line 62
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    .line 63
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->-$$Nest$msetHighResolutionsForExternalEnabledLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    throw p0

    .line 74
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v0

    .line 83
    :try_start_2
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    .line 84
    .line 85
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    .line 86
    .line 87
    if-eq v1, p1, :cond_2

    .line 88
    .line 89
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    .line 90
    .line 91
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    .line 92
    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    iget-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 96
    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, p1, v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 105
    .line 106
    .line 107
    :cond_2
    monitor-exit v0

    .line 108
    return-void

    .line 109
    :catchall_2
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    throw p0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
