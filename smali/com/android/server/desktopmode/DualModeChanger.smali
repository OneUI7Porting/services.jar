.class public final Lcom/android/server/desktopmode/DualModeChanger;
.super Lcom/android/server/desktopmode/ModeChanger;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

.field public mDesktopDisplayContext:Landroid/content/Context;

.field public mDesktopDisplayId:I

.field public mDisplayUnsupportDialogShown:Z

.field public mDualModeEnabled:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLoadingScreenAnimationComplete:Z

.field public mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mPrevDesktopDisplayId:I

.field public mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

.field public final mStabilizerModeChangedListener:Lcom/android/server/desktopmode/DualModeChanger$1;

.field public mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mTopTaskId:I

.field public mTopTaskIdValid:Z

.field public final mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

.field public mTouchpadRequestedByNotification:Z

.field public final mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/DualModeChanger$1;

.field public mWallpaperShown:Z


# direct methods
.method public static -$$Nest$mcollapsePanelsToDisplay(Lcom/android/server/desktopmode/DualModeChanger;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string p1, "[DMS]DualModeChanger"

    .line 19
    .line 20
    const-string/jumbo v0, "collapsePanelsToDisplay failed."

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_1
    return-void
.end method

.method public static -$$Nest$mupdateNavBarIcon(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 5
    .line 6
    const-string v1, "[DMS]DualModeChanger"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v3, "updateNavBarIcon(), state="

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x1110226

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    const-string p0, "Skip updateNavBarIcon"

    .line 46
    .line 47
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-boolean p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 54
    .line 55
    const-string v1, "[DMS]UiManager"

    .line 56
    .line 57
    const/16 v2, 0x190

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v0, "showNavBarIcon(), type="

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 89
    .line 90
    .line 91
    new-instance p1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/16 v0, 0x9

    .line 94
    .line 95
    invoke-direct {p1, p0, v0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 99
    .line 100
    invoke-virtual {p0, p1, v2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(Ljava/lang/Runnable;I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string/jumbo v0, "removeNavBarIcon(), type="

    .line 112
    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 132
    .line 133
    .line 134
    new-instance p1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    const/16 v0, 0xa

    .line 137
    .line 138
    invoke-direct {p1, p0, v0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 142
    .line 143
    invoke-virtual {p0, p1, v2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(Ljava/lang/Runnable;I)V

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_0
    return-void
.end method

.method public static -$$Nest$mupdateSpenNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v1, "updateSpenNotification(), state="

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "[DMS]DualModeChanger"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 31
    .line 32
    const/16 v1, 0xcb

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-boolean p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public static -$$Nest$mupdateTouchpadNotification(Lcom/android/server/desktopmode/DualModeChanger;Lcom/android/server/desktopmode/StateManager$InternalState;)V
    .locals 2

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v1, "updateTouchpadNotification(), state="

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "[DMS]DualModeChanger"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DualModeChanger;->canShowTouchpadNotification(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_SPEN:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    const/16 p1, 0xca

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/16 p1, 0xc9

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->showNotification(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/16 p1, 0xc8

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->removeNotification(I)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/ServiceThread;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/samsung/android/multiwindow/MultiWindowManager;Lcom/android/server/desktopmode/CoverStateManager;Landroid/app/KeyguardManager;Lcom/android/server/desktopmode/TouchpadManager;Landroid/os/PowerManager;Landroid/os/PowerManagerInternal;)V
    .locals 13

    move-object v12, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/android/server/desktopmode/ModeChanger;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Lcom/samsung/android/multiwindow/MultiWindowManager;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mDualModeEnabled:Z

    .line 3
    iput-boolean v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 4
    iput-boolean v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 5
    iput-boolean v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mDisplayUnsupportDialogShown:Z

    .line 6
    iput-boolean v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    .line 7
    iput-boolean v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    const/4 v0, -0x1

    .line 8
    iput v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 9
    iput v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    .line 10
    iput v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 11
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$1;-><init>(Lcom/android/server/desktopmode/DualModeChanger;I)V

    iput-object v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/DualModeChanger$1;

    .line 12
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$1;-><init>(Lcom/android/server/desktopmode/DualModeChanger;I)V

    iput-object v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mStabilizerModeChangedListener:Lcom/android/server/desktopmode/DualModeChanger$1;

    .line 13
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;

    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeHandler;-><init>(Lcom/android/server/desktopmode/DualModeChanger;Landroid/os/Looper;)V

    iput-object v0, v12, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p5

    .line 14
    iput-object v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p14

    .line 15
    iput-object v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    move-object/from16 v0, p15

    .line 16
    iput-object v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v0, p16

    .line 17
    iput-object v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    move-object/from16 v0, p17

    .line 18
    iput-object v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p18

    .line 19
    iput-object v0, v12, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v0, p7

    .line 20
    iput-object v0, v12, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final canShowTouchpadNotification(Lcom/android/server/desktopmode/StateManager$InternalState;)Z
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const v1, 0x1110226

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    iget-boolean v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 17
    .line 18
    iget-boolean p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 19
    .line 20
    const-string/jumbo v2, "canShowTouchpadNotification navBarGestureEnabled="

    .line 21
    .line 22
    .line 23
    const-string v3, ", hasNavigationBar="

    .line 24
    .line 25
    const-string v4, ", isTouchpadAvailable="

    .line 26
    .line 27
    invoke-static {v2, v0, v3, p0, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, ", isTouchpadEnabled="

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "[DMS]DualModeChanger"

    .line 47
    .line 48
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    if-nez p0, :cond_1

    .line 54
    .line 55
    :cond_0
    if-eqz v1, :cond_1

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p0, 0x0

    .line 62
    :goto_0
    return p0
.end method

.method public final scheduleStopLoadingScreenIfPossible(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 10
    .line 11
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string/jumbo v1, "scheduleStopLoadingScreenIfPossible(), enter="

    .line 16
    .line 17
    .line 18
    const-string v2, ", mWallpaperShown="

    .line 19
    .line 20
    invoke-static {v1, v2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", mLoadingScreenAnimationComplete="

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", desktopModeState="

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "[DMS]DualModeChanger"

    .line 52
    .line 53
    invoke-static {v2, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    const/4 v2, 0x4

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v2, v1

    .line 70
    :goto_0
    const/16 v3, 0x32

    .line 71
    .line 72
    const/16 v4, 0x66

    .line 73
    .line 74
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v1, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method

.method public final setDesktopDisplayId(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mPrevDesktopDisplayId:I

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/desktopmode/StateManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "[DMS]StateManager"

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v3, "setDesktopDisplayId(displayId="

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ")"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v1, v0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v2, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 47
    .line 48
    iget v2, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 49
    .line 50
    if-eq v2, p1, :cond_1

    .line 51
    .line 52
    iget-object v2, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 53
    .line 54
    iput p1, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 55
    .line 56
    iget-object v2, v0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v3, v0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    new-instance v4, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;

    .line 65
    .line 66
    const/4 v5, 0x3

    .line 67
    invoke-direct {v4, v0, v2, v5}, Lcom/android/server/desktopmode/StateManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/StateManager$InternalState;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    const/4 v0, -0x1

    .line 78
    if-eq p1, v0, :cond_2

    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 83
    .line 84
    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 p1, 0x0

    .line 90
    :goto_1
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayContext:Landroid/content/Context;

    .line 91
    .line 92
    return-void

    .line 93
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    throw p0
.end method

.method public final setDesktopMode(Lcom/android/server/desktopmode/StateManager$InternalState;ZLcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 10
    .line 11
    const-string v5, "[DMS]DualModeChanger"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string/jumbo v6, "setDesktopMode(), enter="

    .line 16
    .line 17
    .line 18
    const-string v7, ", isModeChangeLocked="

    .line 19
    .line 20
    invoke-static {v6, v7, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    iget-boolean v7, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 25
    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v6, v1, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 37
    .line 38
    move-object v7, v6

    .line 39
    check-cast v7, Lcom/android/server/desktopmode/StateManager;

    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v8, "[DMS]StateManager"

    .line 45
    .line 46
    const-string v9, ")"

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const-string/jumbo v0, "notifyDualSetDesktopMode(enter="

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v9, v8, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, v7, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-eqz v10, :cond_2

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    check-cast v10, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 73
    .line 74
    invoke-virtual {v10, v3}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeSetDesktopMode(Z)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    check-cast v6, Lcom/android/server/desktopmode/StateManager;

    .line 79
    .line 80
    const/4 v10, 0x1

    .line 81
    invoke-virtual {v6, v10}, Lcom/android/server/desktopmode/StateManager;->setModeChangeLocked(Z)V

    .line 82
    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    const/16 v0, 0x66

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move v0, v6

    .line 91
    :goto_1
    iget-object v11, v1, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 92
    .line 93
    const-string/jumbo v12, "display_type"

    .line 94
    .line 95
    .line 96
    invoke-static {v11, v12, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    iput-object v4, v1, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 100
    .line 101
    iget-object v0, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 102
    .line 103
    iget-boolean v0, v0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mIsAdapter:Z

    .line 104
    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcOrWirelessDexConnected()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const/4 v0, -0x1

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 117
    .line 118
    sget v12, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 119
    .line 120
    const-string/jumbo v13, "max_visible_freeform_count"

    .line 121
    .line 122
    .line 123
    const/4 v14, 0x5

    .line 124
    invoke-static {v0, v13, v14, v12}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    :goto_3
    iget-object v12, v1, Lcom/android/server/desktopmode/ModeChanger;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 129
    .line 130
    invoke-virtual {v12, v0, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMaxVisibleFreeformCountForDex(II)V

    .line 131
    .line 132
    .line 133
    iget-boolean v0, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 134
    .line 135
    const/4 v12, 0x2

    .line 136
    if-nez v0, :cond_8

    .line 137
    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    iget v0, v4, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    .line 141
    .line 142
    if-ne v0, v12, :cond_6

    .line 143
    .line 144
    iget v0, v4, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopTaskId:I

    .line 145
    .line 146
    iput v0, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_6
    if-eqz v3, :cond_7

    .line 150
    .line 151
    move v0, v6

    .line 152
    goto :goto_4

    .line 153
    :cond_7
    iget v0, v1, Lcom/android/server/desktopmode/DualModeChanger;->mDesktopDisplayId:I

    .line 154
    .line 155
    :goto_4
    iget-object v13, v1, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 156
    .line 157
    invoke-virtual {v13, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getForegroundTaskId(I)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    iput v0, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 162
    .line 163
    :goto_5
    iput-boolean v10, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 164
    .line 165
    :cond_8
    if-eqz v4, :cond_9

    .line 166
    .line 167
    iget v0, v4, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    .line 168
    .line 169
    if-ne v0, v10, :cond_9

    .line 170
    .line 171
    iget v0, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 172
    .line 173
    iput v0, v4, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mTopTaskId:I

    .line 174
    .line 175
    :cond_9
    iget-object v13, v1, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 176
    .line 177
    const/16 v0, 0x12d

    .line 178
    .line 179
    invoke-virtual {v13, v0}, Lcom/android/server/desktopmode/UiManager;->finishActivity(I)V

    .line 180
    .line 181
    .line 182
    const/4 v14, 0x3

    .line 183
    if-eqz v3, :cond_a

    .line 184
    .line 185
    move v0, v14

    .line 186
    goto :goto_6

    .line 187
    :cond_a
    move v0, v10

    .line 188
    :goto_6
    const/16 v15, 0x14

    .line 189
    .line 190
    invoke-virtual {v1, v0, v15}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 191
    .line 192
    .line 193
    const-string v0, "SurfaceFlinger"

    .line 194
    .line 195
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    if-eqz v0, :cond_b

    .line 204
    .line 205
    :try_start_0
    const-string v11, "android.ui.ISurfaceComposer"

    .line 206
    .line 207
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    .line 212
    .line 213
    const/16 v11, 0x44f

    .line 214
    .line 215
    const/4 v12, 0x0

    .line 216
    invoke-interface {v0, v11, v15, v12, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .line 218
    .line 219
    goto :goto_7

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    goto :goto_8

    .line 222
    :catch_0
    move-exception v0

    .line 223
    :try_start_1
    const-string v11, "[DMS]ModeChanger"

    .line 224
    .line 225
    const-string v12, "Failed to set desktop mode for SF"

    .line 226
    .line 227
    invoke-static {v11, v12, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .line 229
    .line 230
    :cond_b
    :goto_7
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 231
    .line 232
    .line 233
    goto :goto_9

    .line 234
    :goto_8
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    :goto_9
    iget-object v0, v1, Lcom/android/server/desktopmode/ModeChanger;->mMultiResolutionManager:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 239
    .line 240
    if-eqz v3, :cond_e

    .line 241
    .line 242
    iget-object v4, v1, Lcom/android/server/desktopmode/ModeChanger;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 243
    .line 244
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->cancelKillProcessWhenDexExit()V

    .line 245
    .line 246
    .line 247
    new-instance v4, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    .line 248
    .line 249
    invoke-direct {v4, v1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    .line 250
    .line 251
    .line 252
    iput-object v4, v1, Lcom/android/server/desktopmode/DualModeChanger;->mReceiver:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeReceiver;

    .line 253
    .line 254
    const-string v11, "android.intent.action.TIME_TICK"

    .line 255
    .line 256
    const-string/jumbo v12, "com.samsung.android.intent.action.WALLPAPER_ENGINE_SHOWN"

    .line 257
    .line 258
    .line 259
    const-string/jumbo v15, "com.samsung.android.desktopmode.action.SPEN_NOTIFICATION_PRESSED"

    .line 260
    .line 261
    .line 262
    const-string/jumbo v6, "com.samsung.android.desktopmode.action.SPEN_NOTIFICATION_CHANGE_MODE_PRESSED"

    .line 263
    .line 264
    .line 265
    const-string/jumbo v10, "com.samsung.android.desktopmode.action.TOUCHPAD_NOTIFICATION_PRESSED"

    .line 266
    .line 267
    .line 268
    invoke-static {v11, v12, v15, v6, v10}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    const-string/jumbo v10, "com.samsung.android.desktopmode.action.TOUCHPAD_AVAILABLE_NOTIFICATION_PRESSED"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    .line 279
    .line 280
    invoke-virtual {v6, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v10, v1, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 284
    .line 285
    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 286
    .line 287
    iget-object v11, v1, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 288
    .line 289
    const/16 v22, 0x2

    .line 290
    .line 291
    const/16 v20, 0x0

    .line 292
    .line 293
    move-object/from16 v16, v10

    .line 294
    .line 295
    move-object/from16 v17, v4

    .line 296
    .line 297
    move-object/from16 v19, v6

    .line 298
    .line 299
    move-object/from16 v21, v11

    .line 300
    .line 301
    invoke-virtual/range {v16 .. v22}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    iget-object v4, v1, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    .line 305
    .line 306
    if-nez v4, :cond_d

    .line 307
    .line 308
    new-instance v4, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    .line 309
    .line 310
    invoke-direct {v4, v1}, Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;-><init>(Lcom/android/server/desktopmode/DualModeChanger;)V

    .line 311
    .line 312
    .line 313
    iput-object v4, v1, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    .line 314
    .line 315
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 316
    .line 317
    if-eqz v4, :cond_c

    .line 318
    .line 319
    const-string/jumbo v4, "mStateListener registered"

    .line 320
    .line 321
    .line 322
    invoke-static {v5, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :cond_c
    iget-object v4, v1, Lcom/android/server/desktopmode/DualModeChanger;->mStateListener:Lcom/android/server/desktopmode/DualModeChanger$ModeChangeStateListener;

    .line 326
    .line 327
    invoke-virtual {v7, v4}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 328
    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_d
    iget-object v4, v1, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 332
    .line 333
    invoke-virtual {v4, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    .line 335
    .line 336
    :goto_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/desktopmode/ModeChanger;->switchKnoxToFolderMode(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 337
    .line 338
    .line 339
    const/4 v4, 0x1

    .line 340
    invoke-virtual {v0, v4}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopDisplayId(I)V

    .line 345
    .line 346
    .line 347
    const/4 v10, 0x0

    .line 348
    goto/16 :goto_f

    .line 349
    .line 350
    :cond_e
    iget-object v6, v1, Lcom/android/server/desktopmode/DualModeChanger;->mCoverStateManager:Lcom/android/server/desktopmode/CoverStateManager;

    .line 351
    .line 352
    iget-object v10, v6, Lcom/android/server/desktopmode/CoverStateManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 353
    .line 354
    sget-boolean v11, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 355
    .line 356
    if-eqz v11, :cond_f

    .line 357
    .line 358
    new-instance v11, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string/jumbo v12, "goToSleepIfFlipTypeCoverClosed(), coverState="

    .line 361
    .line 362
    .line 363
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v11

    .line 373
    const-string v12, "[DMS]CoverStateManager"

    .line 374
    .line 375
    invoke-static {v12, v11}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :cond_f
    iget-boolean v11, v10, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 379
    .line 380
    if-eqz v11, :cond_11

    .line 381
    .line 382
    invoke-static {v10}, Lcom/android/server/desktopmode/CoverStateManager;->isFlipTypeCover(Lcom/samsung/android/cover/CoverState;)Z

    .line 383
    .line 384
    .line 385
    move-result v11

    .line 386
    if-eqz v11, :cond_11

    .line 387
    .line 388
    iget v11, v10, Lcom/samsung/android/cover/CoverState;->type:I

    .line 389
    .line 390
    const/4 v12, 0x1

    .line 391
    if-eq v11, v12, :cond_11

    .line 392
    .line 393
    if-eq v11, v14, :cond_11

    .line 394
    .line 395
    const/4 v12, 0x6

    .line 396
    if-eq v11, v12, :cond_11

    .line 397
    .line 398
    const/16 v12, 0x8

    .line 399
    .line 400
    if-eq v11, v12, :cond_11

    .line 401
    .line 402
    const/16 v12, 0xf

    .line 403
    .line 404
    if-ne v11, v12, :cond_10

    .line 405
    .line 406
    goto :goto_b

    .line 407
    :cond_10
    iget-boolean v10, v10, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 408
    .line 409
    if-nez v10, :cond_11

    .line 410
    .line 411
    iget-object v6, v6, Lcom/android/server/desktopmode/CoverStateManager;->mPowerManager:Landroid/os/PowerManager;

    .line 412
    .line 413
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 414
    .line 415
    .line 416
    move-result-wide v10

    .line 417
    invoke-virtual {v6, v10, v11}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 418
    .line 419
    .line 420
    goto :goto_c

    .line 421
    :cond_11
    :goto_b
    iget-object v6, v1, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 422
    .line 423
    invoke-virtual {v6}, Landroid/os/PowerManagerInternal;->isInternalDisplayOff()Z

    .line 424
    .line 425
    .line 426
    move-result v6

    .line 427
    if-eqz v6, :cond_12

    .line 428
    .line 429
    iget-object v6, v1, Lcom/android/server/desktopmode/DualModeChanger;->mPowerManager:Landroid/os/PowerManager;

    .line 430
    .line 431
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 432
    .line 433
    .line 434
    move-result-wide v10

    .line 435
    const/16 v12, 0x72

    .line 436
    .line 437
    const-string v15, "android.server:DeX"

    .line 438
    .line 439
    invoke-virtual {v6, v10, v11, v12, v15}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 440
    .line 441
    .line 442
    :cond_12
    :goto_c
    iget-boolean v6, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 443
    .line 444
    if-eqz v6, :cond_13

    .line 445
    .line 446
    if-eqz v4, :cond_14

    .line 447
    .line 448
    iget v4, v4, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mModeToMode:I

    .line 449
    .line 450
    const/4 v6, 0x2

    .line 451
    if-ne v4, v6, :cond_13

    .line 452
    .line 453
    goto :goto_d

    .line 454
    :cond_13
    const/4 v10, 0x0

    .line 455
    goto :goto_e

    .line 456
    :cond_14
    :goto_d
    iget v4, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskId:I

    .line 457
    .line 458
    const/4 v6, 0x1

    .line 459
    const/4 v10, 0x0

    .line 460
    invoke-virtual {v1, v4, v10, v6}, Lcom/android/server/desktopmode/ModeChanger;->bringTaskToForeground(III)V

    .line 461
    .line 462
    .line 463
    iput-boolean v10, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTopTaskIdValid:Z

    .line 464
    .line 465
    :goto_e
    invoke-virtual {v0, v10}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    .line 466
    .line 467
    .line 468
    const/4 v4, -0x1

    .line 469
    invoke-virtual {v1, v4}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopDisplayId(I)V

    .line 470
    .line 471
    .line 472
    :goto_f
    iput-boolean v10, v1, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 473
    .line 474
    iput-boolean v10, v1, Lcom/android/server/desktopmode/DualModeChanger;->mWallpaperShown:Z

    .line 475
    .line 476
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 477
    .line 478
    if-eqz v0, :cond_15

    .line 479
    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    const-string/jumbo v6, "scheduleStartLoadingScreen(), enter="

    .line 483
    .line 484
    .line 485
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    invoke-static {v5, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    :cond_15
    iget-object v4, v1, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 499
    .line 500
    const/4 v6, 0x2

    .line 501
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    .line 503
    .line 504
    iget-object v4, v1, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    .line 505
    .line 506
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 507
    .line 508
    .line 509
    move-result-object v10

    .line 510
    const/4 v11, 0x0

    .line 511
    const/4 v12, -0x1

    .line 512
    invoke-virtual {v4, v6, v12, v11, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    const-wide/16 v10, 0x2710

    .line 517
    .line 518
    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 519
    .line 520
    .line 521
    if-eqz v0, :cond_16

    .line 522
    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    const-string v6, "Starting loading screen... enter="

    .line 526
    .line 527
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    invoke-static {v5, v4}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    :cond_16
    iget-object v4, v1, Lcom/android/server/desktopmode/DualModeChanger;->mStabilizerModeChangedListener:Lcom/android/server/desktopmode/DualModeChanger$1;

    .line 541
    .line 542
    iget-object v6, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadSettingChangedListener:Lcom/android/server/desktopmode/DualModeChanger$1;

    .line 543
    .line 544
    if-eqz v3, :cond_19

    .line 545
    .line 546
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isDexOnPcConnected()Z

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    if-eqz v2, :cond_17

    .line 551
    .line 552
    const/4 v2, 0x1

    .line 553
    iput-boolean v2, v1, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 554
    .line 555
    goto :goto_11

    .line 556
    :cond_17
    const/4 v2, 0x1

    .line 557
    iget-object v10, v1, Lcom/android/server/desktopmode/DualModeChanger;->mModeToModeChangeInfo:Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;

    .line 558
    .line 559
    if-eqz v10, :cond_18

    .line 560
    .line 561
    iget-boolean v10, v10, Lcom/android/server/desktopmode/ModeChanger$ModeToModeChangeInfo;->mShowModeChangeScreen:Z

    .line 562
    .line 563
    if-eqz v10, :cond_18

    .line 564
    .line 565
    const/16 v10, 0x75

    .line 566
    .line 567
    goto :goto_10

    .line 568
    :cond_18
    const/16 v10, 0x71

    .line 569
    .line 570
    :goto_10
    new-instance v11, Lcom/android/server/desktopmode/DualModeChanger$3;

    .line 571
    .line 572
    const/4 v12, 0x0

    .line 573
    invoke-direct {v11, v1, v12}, Lcom/android/server/desktopmode/DualModeChanger$3;-><init>(Lcom/android/server/desktopmode/DualModeChanger;I)V

    .line 574
    .line 575
    .line 576
    const/16 v12, 0x67

    .line 577
    .line 578
    invoke-virtual {v13, v12, v10, v11}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 579
    .line 580
    .line 581
    :goto_11
    iget-object v10, v1, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 582
    .line 583
    invoke-virtual {v10, v6}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 584
    .line 585
    .line 586
    iget-object v6, v1, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 587
    .line 588
    invoke-virtual {v6, v4}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 589
    .line 590
    .line 591
    goto :goto_12

    .line 592
    :cond_19
    const/4 v2, 0x1

    .line 593
    iget-object v10, v1, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 594
    .line 595
    invoke-virtual {v10, v6}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 596
    .line 597
    .line 598
    iget-object v6, v1, Lcom/android/server/desktopmode/ModeChanger;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 599
    .line 600
    invoke-virtual {v6, v4}, Lcom/android/server/desktopmode/SettingsHelper;->unregisterListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 601
    .line 602
    .line 603
    const/4 v4, 0x0

    .line 604
    iput-boolean v4, v1, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    .line 605
    .line 606
    :goto_12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    if-eqz v0, :cond_1a

    .line 610
    .line 611
    const-string/jumbo v0, "notifyDualStartLoadingScreen(enter="

    .line 612
    .line 613
    .line 614
    invoke-static {v0, v9, v8, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 615
    .line 616
    .line 617
    :cond_1a
    iget-object v0, v7, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 618
    .line 619
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    if-eqz v4, :cond_1b

    .line 628
    .line 629
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    check-cast v4, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 634
    .line 635
    invoke-virtual {v4, v3}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeStartLoadingScreen(Z)V

    .line 636
    .line 637
    .line 638
    goto :goto_13

    .line 639
    :cond_1b
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 640
    .line 641
    if-eqz v0, :cond_1c

    .line 642
    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    const-string/jumbo v6, "setDesktopModeInternal(), enter="

    .line 646
    .line 647
    .line 648
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    invoke-static {v5, v4}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    :cond_1c
    const/4 v4, 0x0

    .line 662
    filled-new-array {v4}, [I

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    aget v5, v5, v4

    .line 667
    .line 668
    iget-object v6, v1, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 669
    .line 670
    invoke-virtual {v6, v4, v5}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    .line 671
    .line 672
    .line 673
    if-eqz v3, :cond_1d

    .line 674
    .line 675
    move v10, v14

    .line 676
    goto :goto_14

    .line 677
    :cond_1d
    move v10, v2

    .line 678
    :goto_14
    const/16 v2, 0x1e

    .line 679
    .line 680
    invoke-virtual {v1, v10, v2}, Lcom/android/server/desktopmode/DualModeChanger;->setDesktopModeState(II)V

    .line 681
    .line 682
    .line 683
    if-eqz v0, :cond_1e

    .line 684
    .line 685
    const-string/jumbo v0, "notifyDualModeSetDesktopModeInternal(enter="

    .line 686
    .line 687
    .line 688
    invoke-static {v0, v9, v8, v3}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 689
    .line 690
    .line 691
    :cond_1e
    iget-object v0, v7, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 692
    .line 693
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    if-eqz v2, :cond_1f

    .line 702
    .line 703
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    check-cast v2, Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 708
    .line 709
    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeSetDesktopModeInternal(Z)V

    .line 710
    .line 711
    .line 712
    goto :goto_15

    .line 713
    :cond_1f
    invoke-virtual {v7}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/ModeChanger;->backupLockTaskModeEnabledAndSecured(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    .line 718
    .line 719
    .line 720
    if-eqz v3, :cond_20

    .line 721
    .line 722
    :try_start_2
    iget-object v0, v1, Lcom/android/server/desktopmode/ModeChanger;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 723
    .line 724
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopSystemLockTaskMode()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 725
    .line 726
    .line 727
    goto :goto_16

    .line 728
    :catch_1
    move-exception v0

    .line 729
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 730
    .line 731
    .line 732
    :cond_20
    :goto_16
    return-void
.end method

.method public final setDesktopModeState(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v1, 0x66

    .line 11
    .line 12
    :goto_0
    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;-><init>(III)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo p2, "setDesktopModeState(), newState="

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "[DMS]DualModeChanger"

    .line 31
    .line 32
    invoke-static {p2, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 36
    .line 37
    check-cast p1, Lcom/android/server/desktopmode/StateManager;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object p2, p2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/StateManager;->setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mSemDesktopModeStateNotifier:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->notifyDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final showStabilizerModeDialogIfNeeded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 4
    .line 5
    const-string/jumbo v2, "stabilizer_mode_consent"

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 14
    .line 15
    sget v2, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 16
    .line 17
    const-string/jumbo v4, "stabilizer_mode"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v4, v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lcom/android/server/desktopmode/DualModeChanger$3;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/DualModeChanger$3;-><init>(Lcom/android/server/desktopmode/DualModeChanger;I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/desktopmode/ModeChanger;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 36
    .line 37
    move-object v2, v1

    .line 38
    check-cast v2, Lcom/android/server/desktopmode/StateManager;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget v2, v2, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    check-cast v1, Lcom/android/server/desktopmode/StateManager;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/android/server/desktopmode/StateManager;->getState()Lcom/android/server/desktopmode/StateManager$InternalState;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget v1, v1, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 55
    .line 56
    const/16 v2, 0xa

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 59
    .line 60
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public final startHome(Lcom/android/server/desktopmode/StateManager$InternalState;I)V
    .locals 4

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
    const-string/jumbo v1, "startHome(userId="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 14
    .line 15
    const-string v2, ", displayId="

    .line 16
    .line 17
    const-string v3, ")"

    .line 18
    .line 19
    invoke-static {v1, p2, v2, v3, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "[DMS]DualModeChanger"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 29
    .line 30
    const-string v1, "android.intent.action.MAIN"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "android.intent.category.HOME"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/high16 v1, 0x10210000

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-class v1, Lcom/android/server/desktopmode/DesktopModeService;

    .line 48
    .line 49
    const-string v1, "DesktopModeService"

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget p1, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 77
    .line 78
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
