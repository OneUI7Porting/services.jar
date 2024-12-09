.class public final Lcom/android/server/wm/InsetsPolicy;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final CONTROLLABLE_TYPES:I


# instance fields
.field public final mDexForceImmersiveModeControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFocusedWin:Lcom/android/server/wm/WindowState;

.field public mForcedShowingTypes:I

.field public final mHideNavBarForKeyboard:Z

.field public mLastTransientRequestedByPolicyControl:Z

.field public final mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

.field public final mPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

.field public mShowingTransientTypes:I

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;

.field public final mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    or-int/2addr v0, v1

    .line 10
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    or-int/2addr v0, v1

    .line 15
    sput v0, Lcom/android/server/wm/InsetsPolicy;->CONTROLLABLE_TYPES:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    iget-object p1, p2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const v0, 0x11101b2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    .line 51
    .line 52
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 53
    .line 54
    const-string v0, "TransientControlTarget"

    .line 55
    .line 56
    invoke-direct {p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 60
    .line 61
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 62
    .line 63
    const-string v0, "PermanentControlTarget"

    .line 64
    .line 65
    invoke-direct {p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 69
    .line 70
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    .line 71
    .line 72
    invoke-direct {p1, p2}, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mDexForceImmersiveModeControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    .line 76
    .line 77
    return-void
.end method

.method public static adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    new-instance p2, Landroid/view/InsetsState;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 30
    .line 31
    .line 32
    move-object p1, p2

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/InsetsState;->setRoundedCornerFrame(Landroid/graphics/Rect;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-object p1
.end method

.method public static adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_2

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p3, p1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-ne p3, p1, :cond_1

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    new-instance p3, Landroid/view/InsetsState;

    .line 22
    .line 23
    invoke-direct {p3, p0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Landroid/view/InsetsSource;

    .line 27
    .line 28
    invoke-direct {p0, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p0}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 35
    .line 36
    .line 37
    return-object p3

    .line 38
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    const/16 v3, 0x63

    .line 11
    .line 12
    if-gt v1, v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    return v2
.end method


# virtual methods
.method public final abortTransient()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 24
    .line 25
    iget v5, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 32
    .line 33
    invoke-static {v0, v6}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    move-object v6, v1

    .line 38
    check-cast v6, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 39
    .line 40
    invoke-virtual {v6, v4, v5, v0}, Lcom/android/server/statusbar/StatusBarManagerService$2;->abortTransientToType(III)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 45
    .line 46
    iget v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 47
    .line 48
    move-object v5, v1

    .line 49
    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 50
    .line 51
    iget-object v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 52
    .line 53
    invoke-virtual {v6, v0, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget v7, v6, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 58
    .line 59
    not-int v8, v4

    .line 60
    and-int/2addr v7, v8

    .line 61
    iput v7, v6, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 62
    .line 63
    iget-object v5, v5, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 64
    .line 65
    iget-object v5, v5, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    :try_start_0
    invoke-interface {v5, v0, v4}, Lcom/android/internal/statusbar/IStatusBar;->abortTransient(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 83
    .line 84
    iget v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 85
    .line 86
    const/4 v5, 0x2

    .line 87
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 88
    .line 89
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerService$2;->abortTransientToType(III)V

    .line 90
    .line 91
    .line 92
    :cond_3
    iput v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 95
    .line 96
    .line 97
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 103
    .line 104
    invoke-virtual {p0, v0, v3, v3}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p3, :cond_2

    .line 3
    .line 4
    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 14
    .line 15
    iget-object p3, p3, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    if-ne v1, p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    sub-int/2addr p3, v0

    .line 35
    move-object v1, p2

    .line 36
    :goto_0
    if-ltz p3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1, p3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 47
    .line 48
    invoke-static {v1, v3, v2, v4}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 57
    .line 58
    invoke-static {v1, v3, v2, v4}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    add-int/lit8 p3, p3, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    move-object v1, p2

    .line 66
    :cond_3
    const/4 p3, 0x0

    .line 67
    if-ne v1, p2, :cond_4

    .line 68
    .line 69
    move v2, v0

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    move v2, p3

    .line 72
    :goto_2
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 73
    .line 74
    if-eqz v3, :cond_a

    .line 75
    .line 76
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    .line 77
    .line 78
    xor-int/2addr p0, v0

    .line 79
    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    sub-int/2addr v3, v0

    .line 84
    move-object v4, v1

    .line 85
    :goto_3
    if-ltz v3, :cond_9

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-ne v6, v7, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_5

    .line 106
    .line 107
    iget-object v6, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 108
    .line 109
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 110
    .line 111
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 112
    .line 113
    iget-boolean v6, v6, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    .line 114
    .line 115
    if-eqz v6, :cond_5

    .line 116
    .line 117
    invoke-virtual {v5, p3, p3, p3, p3}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-ne v6, v7, :cond_8

    .line 129
    .line 130
    invoke-virtual {v5}, Landroid/view/InsetsSource;->isVisible()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-ne v6, p0, :cond_6

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_6
    if-ne v4, v1, :cond_7

    .line 138
    .line 139
    if-eqz v2, :cond_7

    .line 140
    .line 141
    new-instance v4, Landroid/view/InsetsState;

    .line 142
    .line 143
    invoke-direct {v4, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 144
    .line 145
    .line 146
    :cond_7
    new-instance v6, Landroid/view/InsetsSource;

    .line 147
    .line 148
    invoke-direct {v6, v5}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, p0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 155
    .line 156
    .line 157
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, -0x1

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    move-object v1, v4

    .line 161
    goto/16 :goto_6

    .line 162
    .line 163
    :cond_a
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 164
    .line 165
    if-eqz p0, :cond_e

    .line 166
    .line 167
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    .line 168
    .line 169
    if-eqz p0, :cond_e

    .line 170
    .line 171
    sget p0, Landroid/view/InsetsSource;->ID_IME:I

    .line 172
    .line 173
    invoke-virtual {v1, p0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    if-eqz p0, :cond_10

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_c

    .line 184
    .line 185
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 186
    .line 187
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    .line 188
    .line 189
    if-eqz v3, :cond_b

    .line 190
    .line 191
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    invoke-virtual {p1, v3, p3}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_b

    .line 200
    .line 201
    move v3, v0

    .line 202
    goto :goto_5

    .line 203
    :cond_b
    move v3, p3

    .line 204
    goto :goto_5

    .line 205
    :cond_c
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    invoke-virtual {p1, v3, p3}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    :goto_5
    if-eqz v2, :cond_d

    .line 214
    .line 215
    new-instance v2, Landroid/view/InsetsState;

    .line 216
    .line 217
    invoke-direct {v2, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 218
    .line 219
    .line 220
    move-object v1, v2

    .line 221
    :cond_d
    new-instance v2, Landroid/view/InsetsSource;

    .line 222
    .line 223
    invoke-direct {v2, p0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_e
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 234
    .line 235
    if-eqz p0, :cond_10

    .line 236
    .line 237
    sget p0, Landroid/view/InsetsSource;->ID_IME:I

    .line 238
    .line 239
    invoke-virtual {v1, p0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    if-eqz p0, :cond_10

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_10

    .line 250
    .line 251
    if-eqz v2, :cond_f

    .line 252
    .line 253
    new-instance v2, Landroid/view/InsetsState;

    .line 254
    .line 255
    invoke-direct {v2, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 256
    .line 257
    .line 258
    move-object v1, v2

    .line 259
    :cond_f
    new-instance v2, Landroid/view/InsetsSource;

    .line 260
    .line 261
    invoke-direct {v2, p0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, p3}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 268
    .line 269
    .line 270
    :cond_10
    :goto_6
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 271
    .line 272
    if-ne v1, p2, :cond_11

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_11
    move v0, p3

    .line 276
    :goto_7
    invoke-static {p0, v1, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    return-object p0
.end method

.method public final dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSystemBarsListenerController:Lcom/android/server/wm/TaskSystemBarsListenerController;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mListeners:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v1, v0, p1, p2, p3}, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;IZZ)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final getInsetsForWindowMetrics(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 27
    .line 28
    :goto_0
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 30
    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/UdcCutoutPolicy;->adjustInsetsForUdc(Lcom/android/server/wm/WindowContainer;Landroid/view/InsetsState;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr v0, v1

    .line 52
    :goto_1
    const/4 v1, 0x0

    .line 53
    if-ltz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 70
    .line 71
    .line 72
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-static {p1, p2, v1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    .line 76
    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_5

    .line 85
    .line 86
    const/high16 p0, 0x3f800000    # 1.0f

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getCompatScale()F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    div-float/2addr p0, p1

    .line 93
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->scale(F)V

    .line 94
    .line 95
    .line 96
    :cond_5
    return-void
.end method

.method public final getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    if-nez p2, :cond_1

    .line 29
    .line 30
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 44
    .line 45
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 46
    .line 47
    const/16 v1, 0x7d9

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    if-ne v0, v2, :cond_2

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 57
    .line 58
    if-ne v3, v1, :cond_2

    .line 59
    .line 60
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 61
    .line 62
    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 63
    .line 64
    and-int/2addr v0, v2

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_2
    if-eqz p1, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 94
    .line 95
    iget-boolean v0, v0, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDexForceImmersiveModeControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 103
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;Z)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 115
    .line 116
    if-ne p1, v3, :cond_6

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_6
    if-eqz p1, :cond_7

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_7

    .line 126
    .line 127
    iget-object v3, v3, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-ne v3, v4, :cond_7

    .line 138
    .line 139
    return-object p1

    .line 140
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_9

    .line 145
    .line 146
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 147
    .line 148
    if-eqz p2, :cond_8

    .line 149
    .line 150
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_8
    const/4 p2, 0x0

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 157
    .line 158
    iget p1, p1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 164
    .line 165
    invoke-interface {v0, p2, p1}, Landroid/view/IDisplayWindowInsetsController;->topFocusedWindowChanged(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catch_0
    move-exception p1

    .line 170
    const-string p2, "WindowManager"

    .line 171
    .line 172
    const-string v0, "Failed to deliver package in top focused window change"

    .line 173
    .line 174
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .line 176
    .line 177
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 180
    .line 181
    return-object p0

    .line 182
    :cond_9
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    iget v4, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 187
    .line 188
    and-int/2addr v4, v3

    .line 189
    if-ne v4, v3, :cond_a

    .line 190
    .line 191
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 192
    .line 193
    return-object p0

    .line 194
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 195
    .line 196
    if-eqz v3, :cond_b

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_b

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 206
    .line 207
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 208
    .line 209
    if-eqz v4, :cond_c

    .line 210
    .line 211
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 212
    .line 213
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-ne v3, v2, :cond_c

    .line 220
    .line 221
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 222
    .line 223
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 224
    .line 225
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 226
    .line 227
    iget-boolean v2, v2, Lcom/android/server/wm/DexController;->mDexImeWindowVisibleInDefaultDisplay:Z

    .line 228
    .line 229
    if-eqz v2, :cond_c

    .line 230
    .line 231
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 232
    .line 233
    return-object p0

    .line 234
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 235
    .line 236
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    iget v2, v2, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 241
    .line 242
    and-int/2addr v2, v3

    .line 243
    if-ne v2, v3, :cond_d

    .line 244
    .line 245
    if-nez p2, :cond_d

    .line 246
    .line 247
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 248
    .line 249
    return-object p0

    .line 250
    :cond_d
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 251
    .line 252
    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 253
    .line 254
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-nez v2, :cond_12

    .line 259
    .line 260
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 261
    .line 262
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_12

    .line 271
    .line 272
    if-eqz p2, :cond_e

    .line 273
    .line 274
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    if-nez p2, :cond_12

    .line 279
    .line 280
    :cond_e
    if-eqz p1, :cond_11

    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-eqz p2, :cond_11

    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    if-eqz p2, :cond_11

    .line 293
    .line 294
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    if-eqz p2, :cond_f

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_f
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 302
    .line 303
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 304
    .line 305
    if-ne v0, v1, :cond_10

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_10
    const/16 v1, 0x7d8

    .line 309
    .line 310
    if-ne v0, v1, :cond_11

    .line 311
    .line 312
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 313
    .line 314
    .line 315
    move-result p2

    .line 316
    if-eqz p2, :cond_11

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_11
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 320
    .line 321
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 322
    .line 323
    return-object p0

    .line 324
    :cond_12
    :goto_5
    return-object p1
.end method

.method public getPermanentControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 p2, 0x0

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 49
    .line 50
    iget p1, p1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 56
    .line 57
    invoke-interface {v0, p2, p1}, Landroid/view/IDisplayWindowInsetsController;->topFocusedWindowChanged(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    const-string p2, "WindowManager"

    .line 63
    .line 64
    const-string v0, "Failed to deliver package in top focused window change"

    .line 65
    .line 66
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_4
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget v2, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 79
    .line 80
    and-int/2addr v2, v1

    .line 81
    if-ne v2, v1, :cond_5

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 87
    .line 88
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iget v1, v1, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 93
    .line 94
    and-int/2addr v1, v2

    .line 95
    if-ne v1, v2, :cond_6

    .line 96
    .line 97
    if-nez p2, :cond_6

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_6
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-nez p2, :cond_8

    .line 107
    .line 108
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 109
    .line 110
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p2, v1}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_8

    .line 119
    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    const/4 p2, 0x0

    .line 123
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-nez p2, :cond_8

    .line 128
    .line 129
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_8
    if-eqz p1, :cond_9

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_9

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 145
    .line 146
    return-object p0

    .line 147
    :cond_9
    if-eqz p1, :cond_a

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_a

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_a
    return-object p1
.end method

.method public getTransientControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasHiddenSources(I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sub-int/2addr v0, v1

    .line 11
    :goto_0
    if-ltz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    and-int/2addr v3, p1

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method public final isTransient(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final onRequestedVisibleTypesChanged(Lcom/android/server/wm/WindowState;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-boolean v1, v1, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    :goto_0
    if-ltz v2, :cond_2

    .line 29
    .line 30
    iget-object v5, v0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    .line 37
    .line 38
    iget-object v6, v5, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 39
    .line 40
    if-ne p1, v6, :cond_1

    .line 41
    .line 42
    iget-object v5, v5, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    or-int/2addr v4, v5

    .line 49
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget p1, p1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 53
    .line 54
    and-int/2addr p1, v4

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v0, v3

    .line 63
    :goto_1
    or-int/2addr p1, v0

    .line 64
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 65
    .line 66
    not-int v1, p1

    .line 67
    and-int/2addr v0, v1

    .line 68
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 69
    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-eqz v4, :cond_6

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 103
    .line 104
    invoke-static {v2, v3}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    move-object v3, v4

    .line 109
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 110
    .line 111
    invoke-virtual {v3, v1, p1, v2}, Lcom/android/server/statusbar/StatusBarManagerService$2;->abortTransientToType(III)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 116
    .line 117
    move-object v5, v4

    .line 118
    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 119
    .line 120
    iget-object v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 121
    .line 122
    invoke-virtual {v6, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iget v6, v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 127
    .line 128
    and-int/2addr v1, v6

    .line 129
    iput v1, v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 130
    .line 131
    iget-object v1, v5, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 132
    .line 133
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 134
    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    :try_start_0
    invoke-interface {v1, v2, p1}, Lcom/android/internal/statusbar/IStatusBar;->abortTransient(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    :catch_0
    :cond_5
    :goto_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 141
    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 151
    .line 152
    const/4 v1, 0x2

    .line 153
    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 154
    .line 155
    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/statusbar/StatusBarManagerService$2;->abortTransientToType(III)V

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    if-eqz p0, :cond_3

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 17
    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    if-lt p0, p1, :cond_3

    .line 27
    .line 28
    const/16 v1, 0x63

    .line 29
    .line 30
    if-gt p0, v1, :cond_3

    .line 31
    .line 32
    move v0, p1

    .line 33
    :cond_3
    :goto_0
    return v0
.end method

.method public final showTransient(IZ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 6
    .line 7
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    and-int/2addr v2, p1

    .line 12
    if-eqz v2, :cond_4

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 21
    .line 22
    iget-object v3, v2, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-nez v3, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :goto_0
    if-eqz v4, :cond_4

    .line 51
    .line 52
    iget-object v2, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getId()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    new-instance v2, Landroid/view/InsetsState;

    .line 66
    .line 67
    invoke-direct {v2, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v2, v1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 77
    .line 78
    .line 79
    move-object v1, v2

    .line 80
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/4 v3, 0x1

    .line 85
    sub-int/2addr v2, v3

    .line 86
    :goto_2
    if-ltz v2, :cond_7

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_5

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    and-int/2addr v4, p1

    .line 108
    if-nez v4, :cond_6

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_6
    or-int/2addr v0, v5

    .line 112
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_7
    iget p1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 116
    .line 117
    if-eq p1, v0, :cond_c

    .line 118
    .line 119
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const/4 v1, 0x0

    .line 128
    if-eqz p1, :cond_a

    .line 129
    .line 130
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_8

    .line 137
    .line 138
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 139
    .line 140
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 141
    .line 142
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 149
    .line 150
    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 151
    .line 152
    invoke-static {v4, v5}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    move-object v5, p1

    .line 157
    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 158
    .line 159
    invoke-virtual {v5, v2, v0, v4, p2}, Lcom/android/server/statusbar/StatusBarManagerService$2;->showTransientToType(IIIZ)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 164
    .line 165
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 166
    .line 167
    move-object v4, p1

    .line 168
    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 169
    .line 170
    iget-object v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 171
    .line 172
    invoke-virtual {v5, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    iget v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 177
    .line 178
    or-int/2addr v6, v0

    .line 179
    iput v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 180
    .line 181
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 182
    .line 183
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 184
    .line 185
    if-eqz v4, :cond_9

    .line 186
    .line 187
    :try_start_0
    invoke-interface {v4, v2, v0, p2}, Lcom/android/internal/statusbar/IStatusBar;->showTransient(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    .line 190
    :catch_0
    :cond_9
    :goto_4
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 191
    .line 192
    if-eqz v2, :cond_a

    .line 193
    .line 194
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_a

    .line 201
    .line 202
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 203
    .line 204
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 205
    .line 206
    const/4 v4, 0x2

    .line 207
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 208
    .line 209
    invoke-virtual {p1, v2, v0, v4, p2}, Lcom/android/server/statusbar/StatusBarManagerService$2;->showTransientToType(IIIZ)V

    .line 210
    .line 211
    .line 212
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 213
    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 218
    .line 219
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    or-int/2addr v2, v4

    .line 228
    and-int/2addr v0, v2

    .line 229
    if-eqz v0, :cond_b

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_b
    move v3, v1

    .line 233
    :goto_5
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 234
    .line 235
    .line 236
    :cond_c
    return-void
.end method

.method public final updateBarControlTarget(Lcom/android/server/wm/WindowState;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move v2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v0

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    if-ne p1, v3, :cond_1

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_7

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 36
    .line 37
    if-eq v2, p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    iget v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 44
    .line 45
    if-gtz v2, :cond_7

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsPolicy;->mLastTransientRequestedByPolicyControl:Z

    .line 48
    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    if-eqz p1, :cond_7

    .line 53
    .line 54
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_7

    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowTransient()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_6

    .line 72
    .line 73
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/WindowState;->isRequestedVisible(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 85
    .line 86
    .line 87
    :cond_7
    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 94
    .line 95
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 96
    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    if-ne v4, v5, :cond_8

    .line 105
    .line 106
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    goto :goto_2

    .line 111
    :cond_8
    if-ne v4, v2, :cond_9

    .line 112
    .line 113
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    goto :goto_2

    .line 118
    :cond_9
    move-object v5, v6

    .line 119
    :goto_2
    iput-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 120
    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 126
    .line 127
    if-ne v5, v7, :cond_a

    .line 128
    .line 129
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    goto :goto_3

    .line 134
    :cond_a
    if-ne v5, v2, :cond_b

    .line 135
    .line 136
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    :cond_b
    :goto_3
    iput-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 141
    .line 142
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 143
    .line 144
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 145
    .line 146
    iget-object v3, p1, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 147
    .line 148
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    sub-int/2addr v3, v1

    .line 153
    :goto_4
    if-ltz v3, :cond_e

    .line 154
    .line 155
    iget-object v7, p1, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    .line 162
    .line 163
    iget-object v8, v7, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 164
    .line 165
    invoke-virtual {v8}, Landroid/view/InsetsSource;->getType()I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-ne v8, v9, :cond_c

    .line 174
    .line 175
    invoke-virtual {p1, v4, v7, v0}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v2, v7, v1}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_c
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-ne v8, v9, :cond_d

    .line 187
    .line 188
    invoke-virtual {p1, v5, v7, v0}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v6, v7, v1}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 192
    .line 193
    .line 194
    :cond_d
    :goto_5
    add-int/lit8 v3, v3, -0x1

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 201
    .line 202
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-static {p1, v4, v0}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 207
    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 210
    .line 211
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    invoke-static {p0, v5, p1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 216
    .line 217
    .line 218
    return-void
.end method
