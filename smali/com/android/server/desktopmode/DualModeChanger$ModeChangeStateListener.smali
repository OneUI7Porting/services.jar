.class public final Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 12
    .line 13
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onNavBarGestureEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "onNavBarGestureEnabled(), state="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "[DMS]DualModeChanger"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateTouchpadNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onSpenEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateSpenNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTouchpadAvailabilityChanged(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "onTouchpadAvailabilityChanged(), state="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "[DMS]DualModeChanger"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateTouchpadNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateNavBarIcon(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 34
    .line 35
    const/16 v1, 0x12c

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 40
    .line 41
    sget v2, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 42
    .line 43
    const-string/jumbo v3, "touchpad_auto_run"

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v0, v3, v4, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/server/desktopmode/TouchpadManager;->mInternalUiCallback:Lcom/android/server/desktopmode/TouchpadManager$1;

    .line 58
    .line 59
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 63
    .line 64
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 65
    .line 66
    const-string/jumbo v2, "how_to_open_touchpad_shown"

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v2, v4, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->canShowTouchpadNotification(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    const/16 p1, 0x9

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 p1, 0x7

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v4, p1, v1}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 92
    .line 93
    const/4 p1, 0x1

    .line 94
    invoke-static {p0, v2, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_1
    return-void
.end method

.method public final onTouchpadEnabled(Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "onTouchpadEnabled(), state="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "[DMS]DualModeChanger"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateTouchpadNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateSpenNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mupdateNavBarIcon(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
