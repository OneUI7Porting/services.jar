.class public Lcom/android/server/wm/TaskFragment;
.super Lcom/android/server/wm/WindowContainer;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mAllowTransitionWhenEmpty:Z

.field public mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mClearedForReorderActivityToFront:Z

.field public mClearedTaskForReuse:Z

.field public mClearedTaskFragmentForPip:Z

.field public mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

.field mCreatedByOrganizer:Z

.field public mDelayLastActivityRemoval:Z

.field public mDelayOrganizedTaskFragmentSurfaceUpdate:Z

.field public final mDimmer:Lcom/android/server/wm/Dimmer;

.field public mEmbeddedDimArea:I

.field public final mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field public mForceHiddenFlags:I

.field public mForceTranslucent:Z

.field public final mFragmentToken:Landroid/os/IBinder;

.field public final mIsEmbedded:Z

.field public mIsPlaceholderTaskFragment:Z

.field public mIsRemovalRequested:Z

.field public mIsolatedNav:Z

.field public mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mLastSurfaceSize:Landroid/graphics/Point;

.field public mMinHeight:I

.field public mMinWidth:I

.field public mMoveToBottomIfClearWhenLaunch:Z

.field public mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPinned:Z

.field public final mRelativeEmbeddedBounds:Landroid/graphics/Rect;

.field public mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mTaskFragmentAppearedSent:Z

.field public mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field public final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field public mTaskFragmentOrganizerProcessName:Ljava/lang/String;

.field public mTaskFragmentOrganizerUid:I

.field public mTaskFragmentVanishedSent:Z

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpAbsBounds:Landroid/graphics/Rect;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpFullBounds:Landroid/graphics/Rect;

.field public final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field public final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/wm/Dimmer;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/server/wm/TaskFragment;->mEmbeddedDimArea:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsPlaceholderTaskFragment:Z

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    iput v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 27
    .line 28
    sget-object v2, Landroid/window/TaskFragmentAnimationParams;->DEFAULT:Landroid/window/TaskFragmentAnimationParams;

    .line 29
    .line 30
    iput-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/wm/TaskFragment;->mForceHiddenFlags:I

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    .line 35
    .line 36
    new-instance v0, Landroid/graphics/Point;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 42
    .line 43
    new-instance v0, Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 49
    .line 50
    new-instance v0, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpAbsBounds:Landroid/graphics/Rect;

    .line 56
    .line 57
    new-instance v0, Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 63
    .line 64
    new-instance v0, Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 70
    .line 71
    new-instance v0, Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 77
    .line 78
    new-instance v0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/TaskFragment;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 86
    .line 87
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 90
    .line 91
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 94
    .line 95
    iput-boolean p3, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 96
    .line 97
    iput-boolean p4, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 98
    .line 99
    if-eqz p4, :cond_0

    .line 100
    .line 101
    new-instance v1, Landroid/graphics/Rect;

    .line 102
    .line 103
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 104
    .line 105
    .line 106
    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRelativeEmbeddedBounds:Landroid/graphics/Rect;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 113
    .line 114
    iput-object p2, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 115
    .line 116
    new-instance p1, Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 117
    .line 118
    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 122
    .line 123
    return-void
.end method

.method public static calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_5

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 27
    .line 28
    if-eq v2, v3, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 33
    .line 34
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 43
    .line 44
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    if-ne v0, v1, :cond_3

    .line 47
    .line 48
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 49
    .line 50
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    if-eq v2, v3, :cond_3

    .line 53
    .line 54
    const/4 p0, 0x4

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    if-ne p0, p1, :cond_4

    .line 61
    .line 62
    if-eq v0, v1, :cond_4

    .line 63
    .line 64
    const/4 p0, 0x5

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    const/4 p0, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    :goto_0
    const/4 p0, 0x1

    .line 69
    :goto_1
    return p0
.end method

.method public static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 17
    .line 18
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    if-gt v0, v1, :cond_1

    .line 21
    .line 22
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 23
    .line 24
    sub-int/2addr v1, v2

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    if-lt v0, v1, :cond_2

    .line 36
    .line 37
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    add-int/2addr v1, v2

    .line 40
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 49
    .line 50
    if-lt v0, p1, :cond_3

    .line 51
    .line 52
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    add-int/2addr p1, p2

    .line 55
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public static isFullyTrustedEmbedding(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    sget-object p1, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    const-string v2, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 20
    .line 21
    const/4 v4, -0x1

    .line 22
    const/4 v5, 0x1

    .line 23
    move v1, p0

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 34
    :goto_1
    return p0
.end method

.method public static isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 3
    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mClearedForReorderActivityToFront:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    move v3, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v0

    .line 21
    :goto_0
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v4, 0x0

    .line 29
    :goto_1
    if-eqz v4, :cond_2

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    move v5, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v5, v0

    .line 40
    :goto_2
    if-eqz v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    move v6, v0

    .line 48
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 49
    .line 50
    .line 51
    if-eqz v3, :cond_8

    .line 52
    .line 53
    if-eqz v4, :cond_8

    .line 54
    .line 55
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo p2, "onDescendantActivityAdded on non-leaf task "

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string p2, "ActivityTaskManager"

    .line 79
    .line 80
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_4
    if-nez v5, :cond_7

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getActivityType()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_6

    .line 96
    .line 97
    if-eqz v6, :cond_5

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    move v6, v2

    .line 101
    :goto_4
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 106
    .line 107
    invoke-virtual {p1, v6}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 108
    .line 109
    .line 110
    move p1, v6

    .line 111
    :cond_6
    invoke-virtual {v4, p1}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iput-boolean p1, v4, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 119
    .line 120
    iget p1, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 121
    .line 122
    iput p1, v4, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 123
    .line 124
    iget-object p1, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 125
    .line 126
    iput-object p1, v4, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 127
    .line 128
    iget-object p1, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 129
    .line 130
    iput-object p1, v4, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 131
    .line 132
    iget-object p1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 133
    .line 134
    iget p1, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 135
    .line 136
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iput p1, v4, Lcom/android/server/wm/Task;->maxRecents:I

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_7
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 152
    .line 153
    .line 154
    :goto_5
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 155
    .line 156
    .line 157
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->getOrganizerProcessIfDifferent(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    if-eqz p0, :cond_9

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    aget p1, p0, v0

    .line 168
    .line 169
    or-int/lit8 p1, p1, 0x2

    .line 170
    .line 171
    aput p1, p0, v0

    .line 172
    .line 173
    :cond_9
    return-void
.end method

.method public final allowEdgeExtension()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final asTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    .line 6
    .line 7
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget v0, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 15
    .line 16
    iget v1, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 20
    .line 21
    .line 22
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 25
    .line 26
    iget v0, p4, Landroid/view/DisplayInfo;->rotation:I

    .line 27
    .line 28
    iget v1, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 29
    .line 30
    iget p4, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 31
    .line 32
    invoke-virtual {p3, v0, v1, p4}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    if-nez p5, :cond_1

    .line 37
    .line 38
    iget-object p4, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 39
    .line 40
    iget-object p5, p3, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-static {p2, p4, p5}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget-object p2, p3, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-static {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p4, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 54
    .line 55
    iget-object p5, p3, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-static {p2, p4, p5}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget-object p2, p3, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-static {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public final canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v2

    .line 33
    :goto_0
    return v1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v1, v2

    .line 48
    :goto_1
    return v1
.end method

.method public final canCreateRemoteAnimationTarget()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final canCustomizeAppTransition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final canStartChangeTransition()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->canStartChangeTransition()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    const-string v0, "cleanUpActivityReferences"

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final clearLastPausedActivity()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public completePause(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    aget-boolean v4, v2, v3

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 17
    .line 18
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    const-wide v6, -0x7c03999ccb87c828L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v1, :cond_9

    .line 35
    .line 36
    iput-boolean v5, v1, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    .line 37
    .line 38
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 39
    .line 40
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 45
    .line 46
    const-string v9, "completePausedLocked"

    .line 47
    .line 48
    invoke-virtual {v1, v8, v9}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object v4, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 52
    .line 53
    iget-boolean v8, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 54
    .line 55
    if-eqz v8, :cond_2

    .line 56
    .line 57
    aget-boolean v2, v2, v3

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 66
    .line 67
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v15

    .line 71
    const-wide v11, 0x44fff1e03c4733f1L    # 2.4136829465371922E24

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v1, v9, v5}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;Z)Lcom/android/server/wm/ActivityRecord;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_6

    .line 91
    .line 92
    aget-boolean v2, v2, v3

    .line 93
    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 105
    .line 106
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    filled-new-array {v2, v11, v8}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    const/16 v13, 0x3c

    .line 119
    .line 120
    const/4 v14, 0x0

    .line 121
    const-wide v11, -0x62b709f20702c415L

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    if-eqz v7, :cond_4

    .line 130
    .line 131
    invoke-virtual {v1, v6, v9}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_5

    .line 140
    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_8

    .line 146
    .line 147
    :cond_5
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 148
    .line 149
    .line 150
    const-string v2, "completePauseLocked"

    .line 151
    .line 152
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/wm/ActivityRecord;->addToStopping(Ljava/lang/String;ZZ)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_6
    aget-boolean v2, v2, v3

    .line 157
    .line 158
    if-eqz v2, :cond_7

    .line 159
    .line 160
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 165
    .line 166
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    const-wide v7, -0x346d41d6ab28c8fcL    # -1.1489314105828532E56

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    const/4 v9, 0x0

    .line 176
    const/4 v10, 0x0

    .line 177
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_7
    move-object v1, v4

    .line 181
    :cond_8
    :goto_0
    if-eqz v1, :cond_9

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(Z)V

    .line 184
    .line 185
    .line 186
    :cond_9
    if-eqz p1, :cond_e

    .line 187
    .line 188
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    if-eqz v2, :cond_a

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-nez v6, :cond_a

    .line 201
    .line 202
    iget-object v6, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 203
    .line 204
    invoke-virtual {v6, v2, v1, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_a
    if-eqz v2, :cond_b

    .line 209
    .line 210
    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    :cond_b
    if-eqz v4, :cond_d

    .line 215
    .line 216
    if-eqz v1, :cond_c

    .line 217
    .line 218
    if-eq v4, v1, :cond_c

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_c
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 222
    .line 223
    if-eqz v2, :cond_e

    .line 224
    .line 225
    if-ne v4, v1, :cond_e

    .line 226
    .line 227
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_e

    .line 234
    .line 235
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 236
    .line 237
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 238
    .line 239
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 240
    .line 241
    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_d
    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 248
    .line 249
    .line 250
    :cond_e
    :goto_2
    if-eqz v1, :cond_f

    .line 251
    .line 252
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 253
    .line 254
    .line 255
    :cond_f
    iget-object v1, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 256
    .line 257
    move-object/from16 v2, p2

    .line 258
    .line 259
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 263
    .line 264
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 265
    .line 266
    if-nez v1, :cond_10

    .line 267
    .line 268
    invoke-super/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Lcom/android/server/wm/TaskDisplayArea;

    .line 273
    .line 274
    if-eqz v1, :cond_11

    .line 275
    .line 276
    invoke-super/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Lcom/android/server/wm/TaskDisplayArea;

    .line 281
    .line 282
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_11

    .line 287
    .line 288
    :cond_10
    iget-object v1, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 289
    .line 290
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 293
    .line 294
    .line 295
    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 296
    .line 297
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 298
    .line 299
    :cond_11
    return-void
.end method

.method public final computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    move-object/from16 v1, p4

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput v9, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 26
    .line 27
    iput v9, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 28
    .line 29
    :cond_1
    if-eqz v0, :cond_5

    .line 30
    .line 31
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 32
    .line 33
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 34
    .line 35
    iget-boolean v5, v0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    iput v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 40
    .line 41
    :cond_2
    if-nez v3, :cond_3

    .line 42
    .line 43
    if-eqz v4, :cond_6

    .line 44
    .line 45
    :cond_3
    iget-object v10, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 46
    .line 47
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    if-eqz v10, :cond_4

    .line 52
    .line 53
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 54
    .line 55
    .line 56
    :cond_4
    iput v9, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 57
    .line 58
    iput v9, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    move v5, v9

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    :cond_6
    :goto_0
    iget-object v10, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 65
    .line 66
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_7

    .line 71
    .line 72
    iget-object v10, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 73
    .line 74
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    :cond_7
    iget v11, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 79
    .line 80
    int-to-float v11, v11

    .line 81
    const/4 v12, 0x0

    .line 82
    cmpl-float v12, v11, v12

    .line 83
    .line 84
    if-nez v12, :cond_8

    .line 85
    .line 86
    iget v11, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 87
    .line 88
    int-to-float v11, v11

    .line 89
    :cond_8
    const v12, 0x3bcccccd    # 0.00625f

    .line 90
    .line 91
    .line 92
    mul-float/2addr v11, v12

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-nez v13, :cond_9

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    if-eqz v13, :cond_9

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    iget-boolean v13, v13, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 110
    .line 111
    if-nez v13, :cond_9

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 114
    .line 115
    .line 116
    move-result v13

    .line 117
    iget-object v14, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 118
    .line 119
    invoke-static {v14}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    invoke-static {v10, v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->needToUpdateDensity(IIZ)Z

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    if-eqz v13, :cond_9

    .line 128
    .line 129
    iget v13, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 130
    .line 131
    iget v14, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 132
    .line 133
    invoke-static {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getScaleDownDensity(II)I

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-lez v13, :cond_9

    .line 138
    .line 139
    int-to-float v11, v13

    .line 140
    mul-float/2addr v11, v12

    .line 141
    iput v13, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 142
    .line 143
    :cond_9
    iget-object v12, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 144
    .line 145
    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    iget-object v13, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 150
    .line 151
    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-eqz v14, :cond_a

    .line 160
    .line 161
    iget-object v14, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 162
    .line 163
    invoke-virtual {v14, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    .line 165
    .line 166
    const/4 v14, 0x1

    .line 167
    goto :goto_1

    .line 168
    :cond_a
    iget-object v14, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 169
    .line 170
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    :goto_1
    if-nez v4, :cond_c

    .line 178
    .line 179
    if-eqz v1, :cond_b

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_b
    move/from16 v16, v9

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_c
    :goto_2
    const/16 v16, 0x1

    .line 186
    .line 187
    :goto_3
    iget-object v2, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-eqz v2, :cond_d

    .line 194
    .line 195
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v18

    .line 199
    if-eqz v18, :cond_11

    .line 200
    .line 201
    :cond_d
    iget-object v2, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 202
    .line 203
    iget-object v15, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 204
    .line 205
    invoke-virtual {v2, v15}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 206
    .line 207
    .line 208
    iget-object v2, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 209
    .line 210
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-nez v16, :cond_11

    .line 215
    .line 216
    const/4 v15, 0x5

    .line 217
    if-eq v10, v15, :cond_11

    .line 218
    .line 219
    if-eqz v14, :cond_f

    .line 220
    .line 221
    if-eqz v5, :cond_e

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_e
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 227
    .line 228
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    goto :goto_4

    .line 233
    :cond_f
    invoke-super/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    .line 238
    .line 239
    if-eqz v0, :cond_10

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    goto :goto_4

    .line 250
    :cond_10
    const/4 v0, 0x0

    .line 251
    :goto_4
    if-eqz v0, :cond_11

    .line 252
    .line 253
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v15

    .line 257
    if-nez v15, :cond_11

    .line 258
    .line 259
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 260
    .line 261
    .line 262
    :cond_11
    iget v0, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 263
    .line 264
    const/high16 v17, 0x3f000000    # 0.5f

    .line 265
    .line 266
    if-eqz v0, :cond_13

    .line 267
    .line 268
    iget v0, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 269
    .line 270
    if-nez v0, :cond_12

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_12
    const/4 v0, 0x2

    .line 274
    goto/16 :goto_a

    .line 275
    .line 276
    :cond_13
    :goto_5
    if-nez v16, :cond_14

    .line 277
    .line 278
    invoke-static {v10}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_14

    .line 283
    .line 284
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 285
    .line 286
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 292
    .line 293
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_9

    .line 299
    .line 300
    :cond_14
    if-nez v16, :cond_19

    .line 301
    .line 302
    if-nez v3, :cond_15

    .line 303
    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    if-eqz v0, :cond_19

    .line 309
    .line 310
    :cond_15
    if-eqz v3, :cond_16

    .line 311
    .line 312
    move-object v4, v3

    .line 313
    goto :goto_6

    .line 314
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 319
    .line 320
    move-object v4, v0

    .line 321
    :goto_6
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 322
    .line 323
    if-eqz v0, :cond_17

    .line 324
    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_17

    .line 330
    .line 331
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 332
    .line 333
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 339
    .line 340
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 341
    .line 342
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_9

    .line 346
    .line 347
    :cond_17
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 348
    .line 349
    if-eqz v0, :cond_18

    .line 350
    .line 351
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 352
    .line 353
    if-eqz v0, :cond_18

    .line 354
    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-eqz v0, :cond_18

    .line 360
    .line 361
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 362
    .line 363
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 366
    .line 367
    .line 368
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 369
    .line 370
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 371
    .line 372
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 373
    .line 374
    .line 375
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 376
    .line 377
    iget v1, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 378
    .line 379
    iget v2, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 380
    .line 381
    invoke-virtual {v0, v9, v9, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 385
    .line 386
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 387
    .line 388
    iget v1, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 389
    .line 390
    iget v2, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 391
    .line 392
    iget v3, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 393
    .line 394
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 399
    .line 400
    iget-object v2, v6, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 401
    .line 402
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mCutoutInsets:Landroid/graphics/Rect;

    .line 403
    .line 404
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 405
    .line 406
    .line 407
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 408
    .line 409
    iget-object v2, v6, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 410
    .line 411
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mExceptNavConfigInsets:Landroid/graphics/Rect;

    .line 412
    .line 413
    invoke-static {v1, v2, v0}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_9

    .line 417
    .line 418
    :cond_18
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 419
    .line 420
    iget-object v2, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 421
    .line 422
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 423
    .line 424
    move-object/from16 v0, p0

    .line 425
    .line 426
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskFragment;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;Z)V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_9

    .line 430
    .line 431
    :cond_19
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 432
    .line 433
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    const/4 v3, -0x1

    .line 438
    if-ne v0, v3, :cond_1a

    .line 439
    .line 440
    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 441
    .line 442
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    :cond_1a
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 447
    .line 448
    if-eqz v5, :cond_1f

    .line 449
    .line 450
    if-eqz v1, :cond_1f

    .line 451
    .line 452
    if-eq v0, v3, :cond_1f

    .line 453
    .line 454
    if-eqz v16, :cond_1f

    .line 455
    .line 456
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 457
    .line 458
    iget-object v4, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 459
    .line 460
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 461
    .line 462
    .line 463
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 464
    .line 465
    iget-object v4, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 466
    .line 467
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 468
    .line 469
    .line 470
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 471
    .line 472
    const/4 v5, 0x1

    .line 473
    if-eq v0, v5, :cond_1c

    .line 474
    .line 475
    const/4 v4, 0x3

    .line 476
    if-ne v0, v4, :cond_1b

    .line 477
    .line 478
    goto :goto_7

    .line 479
    :cond_1b
    move v4, v9

    .line 480
    goto :goto_8

    .line 481
    :cond_1c
    :goto_7
    move v4, v5

    .line 482
    :goto_8
    iget v5, v1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mWidth:I

    .line 483
    .line 484
    iget v15, v1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mHeight:I

    .line 485
    .line 486
    move/from16 v19, v5

    .line 487
    .line 488
    if-eqz v4, :cond_1d

    .line 489
    .line 490
    move v5, v15

    .line 491
    :cond_1d
    if-eqz v4, :cond_1e

    .line 492
    .line 493
    move/from16 v15, v19

    .line 494
    .line 495
    :cond_1e
    invoke-virtual {v3, v9, v9, v5, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 496
    .line 497
    .line 498
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 499
    .line 500
    iget-object v4, v6, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 501
    .line 502
    iget-object v5, v1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 503
    .line 504
    aget-object v5, v5, v0

    .line 505
    .line 506
    invoke-static {v3, v4, v5}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 507
    .line 508
    .line 509
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 510
    .line 511
    iget-object v4, v6, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 512
    .line 513
    iget-object v1, v1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mStableInsets:[Landroid/graphics/Rect;

    .line 514
    .line 515
    aget-object v0, v1, v0

    .line 516
    .line 517
    invoke-static {v3, v4, v0}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 518
    .line 519
    .line 520
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 521
    .line 522
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 523
    .line 524
    .line 525
    goto :goto_9

    .line 526
    :cond_1f
    if-eq v0, v3, :cond_20

    .line 527
    .line 528
    if-eqz v16, :cond_20

    .line 529
    .line 530
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 531
    .line 532
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 533
    .line 534
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 535
    .line 536
    .line 537
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 538
    .line 539
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 540
    .line 541
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 542
    .line 543
    .line 544
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 545
    .line 546
    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/AppCompatDisplayInsets;->getBoundsByRotation(ILandroid/graphics/Rect;)V

    .line 547
    .line 548
    .line 549
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 550
    .line 551
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 552
    .line 553
    iget-object v5, v4, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 554
    .line 555
    aget-object v5, v5, v0

    .line 556
    .line 557
    invoke-static {v1, v3, v5}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 558
    .line 559
    .line 560
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 561
    .line 562
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 563
    .line 564
    iget-object v4, v4, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 565
    .line 566
    aget-object v0, v4, v0

    .line 567
    .line 568
    invoke-static {v1, v3, v0}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 569
    .line 570
    .line 571
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 572
    .line 573
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 574
    .line 575
    .line 576
    goto :goto_9

    .line 577
    :cond_20
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 578
    .line 579
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 580
    .line 581
    .line 582
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 583
    .line 584
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 585
    .line 586
    .line 587
    :goto_9
    iget v0, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 588
    .line 589
    if-nez v0, :cond_22

    .line 590
    .line 591
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 592
    .line 593
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    int-to-float v0, v0

    .line 598
    div-float/2addr v0, v11

    .line 599
    add-float v0, v0, v17

    .line 600
    .line 601
    float-to-int v0, v0

    .line 602
    if-eqz v14, :cond_21

    .line 603
    .line 604
    if-nez v16, :cond_21

    .line 605
    .line 606
    iget v1, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 607
    .line 608
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    :cond_21
    iput v0, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 613
    .line 614
    :cond_22
    iget v0, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 615
    .line 616
    if-nez v0, :cond_24

    .line 617
    .line 618
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 619
    .line 620
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    int-to-float v0, v0

    .line 625
    div-float/2addr v0, v11

    .line 626
    add-float v0, v0, v17

    .line 627
    .line 628
    float-to-int v0, v0

    .line 629
    if-eqz v14, :cond_23

    .line 630
    .line 631
    if-nez v16, :cond_23

    .line 632
    .line 633
    iget v1, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 634
    .line 635
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    :cond_23
    iput v0, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 640
    .line 641
    :cond_24
    iget v0, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 642
    .line 643
    if-nez v0, :cond_12

    .line 644
    .line 645
    const/4 v0, 0x2

    .line 646
    if-ne v10, v0, :cond_25

    .line 647
    .line 648
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 649
    .line 650
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 651
    .line 652
    .line 653
    move-result v1

    .line 654
    if-nez v1, :cond_25

    .line 655
    .line 656
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 657
    .line 658
    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v1

    .line 662
    if-eqz v1, :cond_25

    .line 663
    .line 664
    const/4 v9, 0x1

    .line 665
    :cond_25
    invoke-static {v10}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    if-nez v1, :cond_26

    .line 670
    .line 671
    iget-object v1, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 672
    .line 673
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isPopOver()Z

    .line 674
    .line 675
    .line 676
    move-result v1

    .line 677
    if-eqz v1, :cond_27

    .line 678
    .line 679
    :cond_26
    if-nez v9, :cond_27

    .line 680
    .line 681
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 682
    .line 683
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    iget-object v2, v6, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 688
    .line 689
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    int-to-float v1, v1

    .line 698
    div-float/2addr v1, v11

    .line 699
    add-float v1, v1, v17

    .line 700
    .line 701
    float-to-int v1, v1

    .line 702
    iput v1, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 703
    .line 704
    goto :goto_a

    .line 705
    :cond_27
    const/4 v1, 0x6

    .line 706
    if-ne v10, v1, :cond_28

    .line 707
    .line 708
    iget-boolean v1, v6, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 709
    .line 710
    if-eqz v1, :cond_28

    .line 711
    .line 712
    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    if-nez v1, :cond_28

    .line 717
    .line 718
    iget v1, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 719
    .line 720
    iget v2, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 721
    .line 722
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    iput v1, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 727
    .line 728
    :cond_28
    :goto_a
    iget v1, v7, Landroid/content/res/Configuration;->orientation:I

    .line 729
    .line 730
    if-nez v1, :cond_2a

    .line 731
    .line 732
    iget v1, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 733
    .line 734
    iget v2, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 735
    .line 736
    if-gt v1, v2, :cond_29

    .line 737
    .line 738
    const/4 v15, 0x1

    .line 739
    goto :goto_b

    .line 740
    :cond_29
    move v15, v0

    .line 741
    :goto_b
    iput v15, v7, Landroid/content/res/Configuration;->orientation:I

    .line 742
    .line 743
    :cond_2a
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 744
    .line 745
    if-nez v0, :cond_2d

    .line 746
    .line 747
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 748
    .line 749
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    int-to-float v0, v0

    .line 754
    div-float/2addr v0, v11

    .line 755
    add-float v0, v0, v17

    .line 756
    .line 757
    float-to-int v0, v0

    .line 758
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 759
    .line 760
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    int-to-float v1, v1

    .line 765
    div-float/2addr v1, v11

    .line 766
    add-float v1, v1, v17

    .line 767
    .line 768
    float-to-int v1, v1

    .line 769
    iget v2, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 770
    .line 771
    if-eqz v2, :cond_2b

    .line 772
    .line 773
    move v0, v2

    .line 774
    :cond_2b
    iget v2, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 775
    .line 776
    if-eqz v2, :cond_2c

    .line 777
    .line 778
    move v1, v2

    .line 779
    :cond_2c
    iget v2, v8, Landroid/content/res/Configuration;->screenLayout:I

    .line 780
    .line 781
    invoke-static {v2, v0, v1}, Lcom/android/server/wm/WindowContainer;->computeScreenLayout(III)I

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    iput v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 786
    .line 787
    :cond_2d
    return-void
.end method

.method public final createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mMode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_1
    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6

    .line 14
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 15
    const-string v0, "bounds="

    .line 16
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mIsolatedNav:Z

    if-eqz v1, :cond_0

    const-string v1, ", isolatedNav"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 22
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 23
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 24
    const-string v4, "* "

    .line 25
    invoke-static {p2, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 26
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->toFullString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    .line 27
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;)Z
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1
    new-instance v9, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/TaskFragment;Ljava/io/PrintWriter;Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x1

    if-nez p6, :cond_0

    .line 2
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->run()V

    const/4 v9, 0x0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 4
    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    const-string v4, "  "

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v10

    .line 7
    invoke-static {v8, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, v9

    .line 8
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    .line 11
    invoke-static {v8, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    xor-int/lit8 v17, p4, 0x1

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v22

    .line 13
    const-string v15, "Hist "

    const/16 v16, 0x1

    const/16 v20, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move v12, v2

    move/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v21, v9

    invoke-static/range {v10 .. v22}, Lcom/android/server/wm/ActivityRecord;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p4, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    const-wide v0, 0x10b00000001L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 21
    .line 22
    .line 23
    const-wide v0, 0x10500000002L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 33
    .line 34
    .line 35
    const-wide v0, 0x10500000003L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 45
    .line 46
    .line 47
    const-wide v0, 0x10500000004L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    iget p4, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 55
    .line 56
    .line 57
    const-wide v0, 0x10500000005L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    iget p0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public dumpInner(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "* "

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->toFullString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "  mBounds="

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const-string v0, "  mIsRemovalRequested=true"

    .line 54
    .line 55
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    if-eqz p4, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    const-string p0, "  mLastPausedActivity: "

    .line 63
    .line 64
    invoke-static {p2, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v4, -0x1

    .line 71
    move-object v1, p1

    .line 72
    move-object v3, p3

    .line 73
    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method

.method public executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final fillsParent()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :cond_1
    :goto_0
    return v1
.end method

.method public final forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 2
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 4
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 6
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 8
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 10
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v3
.end method

.method public final forAllTaskFragments(Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final getActivityType()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    return p0

    .line 34
    :cond_2
    :goto_1
    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isDimmingOnParentTask()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDimmer()Lcom/android/server/wm/Dimmer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void
.end method

.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isDimmingOnParentTask()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public final getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public final getDisplayId()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, -0x1

    .line 11
    :goto_0
    return p0
.end method

.method public final getNonFinishingActivityCount()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    new-instance v1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    aget p0, v0, p0

    .line 15
    .line 16
    return p0
.end method

.method public final getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object p0, v1

    .line 23
    :goto_0
    if-eqz p0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_2
    return-object v1
.end method

.method public final getOrganizerProcessIfDifferent(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/wm/Task;->mTaskFragmentHostProcessName:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget v2, v0, Lcom/android/server/wm/Task;->mTaskFragmentHostUid:I

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ne v2, p1, :cond_1

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object p1, v0, Lcom/android/server/wm/Task;->mTaskFragmentHostProcessName:Ljava/lang/String;

    .line 35
    .line 36
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskFragmentHostUid:I

    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getOrientation(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    if-eq v1, v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq v1, v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    if-ne v1, v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, -0x2

    .line 35
    return p0

    .line 36
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final getOverrideOrientation()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public getProtoFieldId()J
    .locals 2

    .line 1
    const-wide v0, 0x10b00000009L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public final getRootTask()Lcom/android/server/wm/Task;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getRootTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    return-object p0
.end method

.method public final getTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object p0, v1

    .line 29
    :goto_0
    if-eqz p0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_2
    return-object v1
.end method

.method public final getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return-object p0
.end method

.method public final getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v6, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v7, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget v4, v0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 29
    .line 30
    const/4 v5, -0x1

    .line 31
    if-eq v4, v5, :cond_1

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 36
    .line 37
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v5, v0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 52
    .line 53
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v5, v0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iget v5, v0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 72
    .line 73
    if-ne v4, v5, :cond_1

    .line 74
    .line 75
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 76
    .line 77
    if-nez v4, :cond_1

    .line 78
    .line 79
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 80
    .line 81
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    .line 85
    .line 86
    iget-object v5, v0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 87
    .line 88
    if-ne v4, v5, :cond_1

    .line 89
    .line 90
    iget-object v3, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 91
    .line 92
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    new-instance v8, Landroid/graphics/Point;

    .line 99
    .line 100
    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 104
    .line 105
    .line 106
    new-instance v13, Landroid/window/TaskFragmentInfo;

    .line 107
    .line 108
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 109
    .line 110
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    const/4 v9, 0x0

    .line 125
    invoke-virtual {v0, v9}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    iget-boolean v10, v0, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    .line 130
    .line 131
    iget-boolean v11, v0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 132
    .line 133
    iget-boolean v12, v0, Lcom/android/server/wm/TaskFragment;->mClearedForReorderActivityToFront:Z

    .line 134
    .line 135
    const/4 v14, 0x1

    .line 136
    new-array v15, v14, [I

    .line 137
    .line 138
    new-array v14, v14, [I

    .line 139
    .line 140
    new-instance v1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;

    .line 141
    .line 142
    move/from16 v16, v12

    .line 143
    .line 144
    const/4 v12, 0x2

    .line 145
    invoke-direct {v1, v12, v15, v14}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 149
    .line 150
    .line 151
    new-instance v12, Landroid/graphics/Point;

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    aget v1, v15, v0

    .line 155
    .line 156
    aget v0, v14, v0

    .line 157
    .line 158
    invoke-direct {v12, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 159
    .line 160
    .line 161
    move-object v0, v13

    .line 162
    move-object v1, v2

    .line 163
    move-object v2, v3

    .line 164
    move-object v3, v4

    .line 165
    move v4, v5

    .line 166
    move v5, v9

    .line 167
    move v9, v10

    .line 168
    move v10, v11

    .line 169
    move/from16 v11, v16

    .line 170
    .line 171
    invoke-direct/range {v0 .. v12}, Landroid/window/TaskFragmentInfo;-><init>(Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;IZLjava/util/List;Ljava/util/List;Landroid/graphics/Point;ZZZLandroid/graphics/Point;)V

    .line 172
    .line 173
    .line 174
    return-object v13
.end method

.method public final getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-direct {p1, p2}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 p2, 0x2

    .line 19
    invoke-direct {p1, p2}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    if-eqz p2, :cond_2

    .line 28
    .line 29
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 p2, 0x3

    .line 32
    invoke-direct {p1, p2}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_2
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 p2, 0x4

    .line 43
    invoke-direct {p1, p2}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    const/4 v2, 0x0

    .line 10
    if-ltz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    if-ne v3, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    return-object v2
.end method

.method public getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    const/4 v2, 0x0

    .line 10
    if-ltz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    if-ne v3, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    return-object v2
.end method

.method public final getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    :cond_0
    move v0, v3

    .line 19
    goto/16 :goto_11

    .line 20
    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    iget-boolean v4, v4, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    return v2

    .line 33
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x1

    .line 42
    if-eqz v5, :cond_7

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-nez v7, :cond_7

    .line 49
    .line 50
    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 51
    .line 52
    iget-object v8, v7, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 53
    .line 54
    if-eqz v8, :cond_3

    .line 55
    .line 56
    invoke-virtual {v8, v5}, Lcom/android/server/wm/Transition;->isTransientVisible(Lcom/android/server/wm/Task;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iget-object v8, v7, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    sub-int/2addr v8, v6

    .line 70
    :goto_0
    if-ltz v8, :cond_5

    .line 71
    .line 72
    iget-object v9, v7, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    check-cast v9, Lcom/android/server/wm/Transition;

    .line 79
    .line 80
    invoke-virtual {v9, v5}, Lcom/android/server/wm/Transition;->isTransientVisible(Lcom/android/server/wm/Task;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    add-int/lit8 v8, v8, -0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    iget-object v8, v7, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    sub-int/2addr v8, v6

    .line 97
    :goto_1
    if-ltz v8, :cond_7

    .line 98
    .line 99
    iget-object v9, v7, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    check-cast v9, Lcom/android/server/wm/Transition;

    .line 106
    .line 107
    invoke-virtual {v9, v5}, Lcom/android/server/wm/Transition;->isTransientVisible(Lcom/android/server/wm/Task;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_6

    .line 112
    .line 113
    :goto_2
    return v2

    .line 114
    :cond_6
    add-int/lit8 v8, v8, -0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_8

    .line 122
    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    if-eqz v7, :cond_8

    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-nez v7, :cond_8

    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-nez v7, :cond_8

    .line 144
    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isUnderHomeRootTask()Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_8

    .line 154
    .line 155
    return v3

    .line 156
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    if-eqz v7, :cond_a

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v7, v1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-ne v7, v3, :cond_9

    .line 171
    .line 172
    return v3

    .line 173
    :cond_9
    if-ne v7, v6, :cond_a

    .line 174
    .line 175
    move v7, v6

    .line 176
    goto :goto_3

    .line 177
    :cond_a
    move v7, v2

    .line 178
    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    sub-int/2addr v9, v6

    .line 188
    move v10, v2

    .line 189
    move v11, v10

    .line 190
    move v12, v11

    .line 191
    :goto_4
    const-string v13, "ActivityTaskManager"

    .line 192
    .line 193
    const/4 v14, 0x4

    .line 194
    if-ltz v9, :cond_2e

    .line 195
    .line 196
    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    if-nez v15, :cond_b

    .line 201
    .line 202
    goto/16 :goto_f

    .line 203
    .line 204
    :cond_b
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 205
    .line 206
    .line 207
    move-result-object v16

    .line 208
    if-eqz v16, :cond_d

    .line 209
    .line 210
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-eqz v3, :cond_c

    .line 219
    .line 220
    :goto_5
    move v3, v6

    .line 221
    goto :goto_6

    .line 222
    :cond_c
    move v3, v2

    .line 223
    goto :goto_6

    .line 224
    :cond_d
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    if-eqz v3, :cond_c

    .line 229
    .line 230
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 235
    .line 236
    if-nez v3, :cond_c

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :goto_6
    if-ne v15, v0, :cond_17

    .line 240
    .line 241
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-nez v4, :cond_13

    .line 246
    .line 247
    if-nez v10, :cond_13

    .line 248
    .line 249
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 250
    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    sub-int/2addr v4, v6

    .line 263
    :goto_7
    if-ltz v4, :cond_13

    .line 264
    .line 265
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Lcom/android/server/wm/TaskFragment;

    .line 270
    .line 271
    iget-object v9, v5, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 272
    .line 273
    if-ne v9, v0, :cond_e

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_e
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_VISIBILITY:Z

    .line 277
    .line 278
    if-eqz v10, :cond_10

    .line 279
    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 281
    .line 282
    .line 283
    move-result v10

    .line 284
    if-ne v10, v14, :cond_10

    .line 285
    .line 286
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    const/4 v15, 0x2

    .line 291
    if-eq v10, v6, :cond_f

    .line 292
    .line 293
    if-ne v10, v15, :cond_10

    .line 294
    .line 295
    :cond_f
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 296
    .line 297
    .line 298
    move-result v10

    .line 299
    if-eq v10, v6, :cond_12

    .line 300
    .line 301
    if-ne v10, v15, :cond_10

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_10
    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 305
    .line 306
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-virtual {v10, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-nez v5, :cond_11

    .line 315
    .line 316
    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 317
    .line 318
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    if-eqz v5, :cond_12

    .line 327
    .line 328
    :cond_11
    const/4 v0, 0x2

    .line 329
    goto :goto_9

    .line 330
    :cond_12
    :goto_8
    add-int/lit8 v4, v4, -0x1

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :goto_9
    return v0

    .line 334
    :cond_13
    if-nez v3, :cond_16

    .line 335
    .line 336
    if-eqz v1, :cond_14

    .line 337
    .line 338
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-nez v1, :cond_16

    .line 343
    .line 344
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_15

    .line 349
    .line 350
    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 351
    .line 352
    if-nez v1, :cond_15

    .line 353
    .line 354
    goto :goto_a

    .line 355
    :cond_15
    const/4 v0, 0x2

    .line 356
    return v0

    .line 357
    :cond_16
    :goto_a
    const/4 v1, 0x2

    .line 358
    goto/16 :goto_10

    .line 359
    .line 360
    :cond_17
    if-nez v3, :cond_18

    .line 361
    .line 362
    goto/16 :goto_f

    .line 363
    .line 364
    :cond_18
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    if-eqz v5, :cond_19

    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 371
    .line 372
    .line 373
    move-result v17

    .line 374
    if-eqz v17, :cond_19

    .line 375
    .line 376
    iget-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 377
    .line 378
    if-nez v2, :cond_19

    .line 379
    .line 380
    move v2, v6

    .line 381
    goto :goto_b

    .line 382
    :cond_19
    const/4 v2, 0x0

    .line 383
    :goto_b
    if-eq v3, v6, :cond_25

    .line 384
    .line 385
    const/4 v6, 0x2

    .line 386
    if-eq v3, v6, :cond_1b

    .line 387
    .line 388
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    if-nez v6, :cond_1a

    .line 393
    .line 394
    if-eqz v2, :cond_1b

    .line 395
    .line 396
    :cond_1a
    const/4 v2, 0x1

    .line 397
    goto/16 :goto_e

    .line 398
    .line 399
    :cond_1b
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 400
    .line 401
    if-eqz v2, :cond_1d

    .line 402
    .line 403
    iget-boolean v6, v0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 404
    .line 405
    if-eqz v6, :cond_1d

    .line 406
    .line 407
    const/4 v6, 0x5

    .line 408
    if-ne v3, v6, :cond_1d

    .line 409
    .line 410
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-eqz v3, :cond_1d

    .line 415
    .line 416
    invoke-static {v15, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_1c

    .line 421
    .line 422
    :goto_c
    const/4 v7, 0x1

    .line 423
    goto/16 :goto_f

    .line 424
    .line 425
    :cond_1c
    const/4 v2, 0x2

    .line 426
    return v2

    .line 427
    :cond_1d
    if-eqz v2, :cond_1e

    .line 428
    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-eqz v2, :cond_1e

    .line 434
    .line 435
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isSplitEmbedded()Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-eqz v2, :cond_1e

    .line 440
    .line 441
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    if-eqz v2, :cond_1e

    .line 454
    .line 455
    invoke-static {v15, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-nez v2, :cond_1e

    .line 460
    .line 461
    const/4 v2, 0x2

    .line 462
    return v2

    .line 463
    :cond_1e
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_VISIBILITY:Z

    .line 464
    .line 465
    if-eqz v2, :cond_20

    .line 466
    .line 467
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-ne v3, v14, :cond_20

    .line 472
    .line 473
    if-nez v11, :cond_20

    .line 474
    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    if-eqz v3, :cond_20

    .line 480
    .line 481
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-eqz v2, :cond_1f

    .line 486
    .line 487
    const/4 v12, 0x1

    .line 488
    :cond_1f
    xor-int/lit8 v11, v12, 0x1

    .line 489
    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-ne v2, v14, :cond_2c

    .line 495
    .line 496
    if-eqz v11, :cond_2c

    .line 497
    .line 498
    const/4 v2, 0x2

    .line 499
    return v2

    .line 500
    :cond_20
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    if-eqz v3, :cond_2c

    .line 505
    .line 506
    iget-object v6, v3, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 507
    .line 508
    if-eqz v6, :cond_2c

    .line 509
    .line 510
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v6

    .line 514
    if-eqz v6, :cond_24

    .line 515
    .line 516
    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    .line 517
    .line 518
    .line 519
    move-result v6

    .line 520
    if-nez v6, :cond_23

    .line 521
    .line 522
    iget-object v3, v3, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 523
    .line 524
    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_21

    .line 529
    .line 530
    goto :goto_d

    .line 531
    :cond_21
    if-eqz v2, :cond_22

    .line 532
    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    if-ne v2, v14, :cond_22

    .line 538
    .line 539
    goto/16 :goto_f

    .line 540
    .line 541
    :cond_22
    const/4 v0, 0x2

    .line 542
    return v0

    .line 543
    :cond_23
    :goto_d
    const/4 v7, 0x1

    .line 544
    const/4 v10, 0x1

    .line 545
    goto/16 :goto_f

    .line 546
    .line 547
    :cond_24
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    goto/16 :goto_f

    .line 551
    .line 552
    :cond_25
    move v2, v6

    .line 553
    :goto_e
    if-ne v3, v2, :cond_27

    .line 554
    .line 555
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 560
    .line 561
    .line 562
    move-result-object v6

    .line 563
    if-eqz v2, :cond_27

    .line 564
    .line 565
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 566
    .line 567
    .line 568
    move-result v19

    .line 569
    if-eqz v19, :cond_27

    .line 570
    .line 571
    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 572
    .line 573
    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 574
    .line 575
    iget-object v14, v14, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 576
    .line 577
    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    .line 578
    .line 579
    .line 580
    move-result v14

    .line 581
    const/16 v18, 0x1

    .line 582
    .line 583
    xor-int/lit8 v14, v14, 0x1

    .line 584
    .line 585
    if-eqz v14, :cond_26

    .line 586
    .line 587
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 588
    .line 589
    .line 590
    move-result v14

    .line 591
    if-eqz v14, :cond_2c

    .line 592
    .line 593
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    .line 594
    .line 595
    .line 596
    move-result v14

    .line 597
    if-nez v14, :cond_26

    .line 598
    .line 599
    goto/16 :goto_f

    .line 600
    .line 601
    :cond_26
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_LAUNCH_POLICY:Z

    .line 602
    .line 603
    if-eqz v14, :cond_27

    .line 604
    .line 605
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 606
    .line 607
    .line 608
    move-result v14

    .line 609
    if-nez v14, :cond_27

    .line 610
    .line 611
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    .line 612
    .line 613
    .line 614
    move-result v6

    .line 615
    if-eqz v6, :cond_27

    .line 616
    .line 617
    const/4 v6, 0x0

    .line 618
    invoke-virtual {v2, v6}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    if-eqz v2, :cond_27

    .line 623
    .line 624
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 625
    .line 626
    if-eqz v2, :cond_27

    .line 627
    .line 628
    goto :goto_f

    .line 629
    :cond_27
    invoke-static {v15, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    .line 630
    .line 631
    .line 632
    move-result v2

    .line 633
    if-eqz v2, :cond_28

    .line 634
    .line 635
    goto/16 :goto_c

    .line 636
    .line 637
    :cond_28
    const/4 v2, 0x1

    .line 638
    if-eq v3, v2, :cond_29

    .line 639
    .line 640
    const/4 v2, 0x6

    .line 641
    if-ne v3, v2, :cond_2b

    .line 642
    .line 643
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    if-eqz v2, :cond_2b

    .line 648
    .line 649
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 650
    .line 651
    .line 652
    move-result v2

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    if-eqz v3, :cond_2b

    .line 658
    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    iget-boolean v3, v3, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    .line 664
    .line 665
    if-eqz v3, :cond_2b

    .line 666
    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    if-eqz v3, :cond_2a

    .line 672
    .line 673
    if-eqz v2, :cond_2b

    .line 674
    .line 675
    :cond_2a
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 676
    .line 677
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 678
    .line 679
    invoke-virtual {v3}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    if-eqz v3, :cond_2b

    .line 684
    .line 685
    const-string v3, "[TWODND] Set mHiddenWhileActivatingDrag() - inSplit="

    .line 686
    .line 687
    invoke-static {v3, v13, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 688
    .line 689
    .line 690
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 691
    .line 692
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 693
    .line 694
    const/4 v3, 0x1

    .line 695
    iput-boolean v3, v2, Lcom/android/server/wm/DragDropController;->mUpdateTaskVisibilityAfterDragClosed:Z

    .line 696
    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 698
    .line 699
    .line 700
    move-result-object v2

    .line 701
    iput-boolean v3, v2, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 702
    .line 703
    goto/16 :goto_c

    .line 704
    .line 705
    :cond_2b
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_VISIBILITY:Z

    .line 706
    .line 707
    if-eqz v2, :cond_2d

    .line 708
    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    if-eqz v2, :cond_2d

    .line 714
    .line 715
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    const/4 v3, 0x4

    .line 720
    if-ne v2, v3, :cond_2d

    .line 721
    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    if-eqz v2, :cond_2d

    .line 727
    .line 728
    const/4 v11, 0x1

    .line 729
    :cond_2c
    :goto_f
    add-int/lit8 v9, v9, -0x1

    .line 730
    .line 731
    const/4 v2, 0x0

    .line 732
    const/4 v3, 0x2

    .line 733
    const/4 v6, 0x1

    .line 734
    goto/16 :goto_4

    .line 735
    .line 736
    :cond_2d
    const/4 v1, 0x2

    .line 737
    return v1

    .line 738
    :cond_2e
    move v1, v3

    .line 739
    :goto_10
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_VISIBILITY:Z

    .line 740
    .line 741
    if-eqz v2, :cond_30

    .line 742
    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    if-eqz v2, :cond_30

    .line 748
    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    const/4 v3, 0x4

    .line 754
    if-ne v2, v3, :cond_30

    .line 755
    .line 756
    if-eqz v11, :cond_2f

    .line 757
    .line 758
    return v1

    .line 759
    :cond_2f
    if-eqz v12, :cond_30

    .line 760
    .line 761
    const/4 v1, 0x1

    .line 762
    return v1

    .line 763
    :cond_30
    if-nez v7, :cond_31

    .line 764
    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    if-eqz v1, :cond_31

    .line 770
    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    iget-boolean v1, v1, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 776
    .line 777
    if-eqz v1, :cond_31

    .line 778
    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    iget-boolean v1, v1, Lcom/android/server/wm/Task;->mIsAnimatingByRecentsAndDragSourceTask:Z

    .line 784
    .line 785
    if-nez v1, :cond_31

    .line 786
    .line 787
    const-string v1, "[TWODND] Clear mHiddenWhileActivatingDrag"

    .line 788
    .line 789
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    .line 791
    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    const/4 v2, 0x0

    .line 797
    iput-boolean v2, v1, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 798
    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->updateSurfaceVisibilityForDragAndDrop()V

    .line 804
    .line 805
    .line 806
    :cond_31
    return v7

    .line 807
    :goto_11
    return v0
.end method

.method public final handleCompleteDeferredRemoval()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isExitAnimationRunningSelfOrChild()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final isAllowedToEmbedActivity(ILcom/android/server/wm/ActivityRecord;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 23
    .line 24
    invoke-static {}, Lcom/android/window/flags/Flags;->untrustedEmbeddingAnyAppPermission()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 31
    .line 32
    const/4 v5, -0x1

    .line 33
    const/4 v6, 0x1

    .line 34
    const-string v3, "android.permission.EMBED_ANY_APP_IN_UNTRUSTED_MODE"

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 46
    .line 47
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 48
    .line 49
    const/high16 v1, 0x10000000

    .line 50
    .line 51
    and-int/2addr v0, v1

    .line 52
    if-ne v0, v1, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(ILcom/android/server/wm/ActivityRecord;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eqz p0, :cond_7

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-nez p0, :cond_5

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 92
    .line 93
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-lt v1, v0, :cond_6

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-ge p1, p0, :cond_7

    .line 106
    .line 107
    :cond_6
    const/4 p0, 0x2

    .line 108
    return p0

    .line 109
    :cond_7
    :goto_2
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 110
    .line 111
    const/4 p1, 0x0

    .line 112
    if-eqz p0, :cond_8

    .line 113
    .line 114
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 115
    .line 116
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 117
    .line 118
    if-eqz p0, :cond_8

    .line 119
    .line 120
    const-string p2, "com.samsung.android.multiwindow.embed_activity_not_supported"

    .line 121
    .line 122
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_8

    .line 127
    .line 128
    const/16 p0, 0xa

    .line 129
    .line 130
    return p0

    .line 131
    :cond_8
    return p1
.end method

.method public final isAllowedToEmbedActivityInTrustedMode(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/wm/TaskFragment;->isFullyTrustedEmbedding(ILcom/android/server/wm/ActivityRecord;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedModeByHostPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
.end method

.method public isAllowedToEmbedActivityInTrustedModeByHostPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 1

    .line 1
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 14
    .line 15
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final isAttached()Z
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public isDimmingOnParentTask()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/TaskFragment;->mEmbeddedDimArea:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final isEmbedded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isEmbeddedTaskFragmentInPip()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public final isEmbeddedWithBoundsOverride()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_2
    return v1
.end method

.method public final isFocusableAndVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final isForceHidden()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/TaskFragment;->mForceHiddenFlags:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isLeafTaskFragment()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method

.method public isOrganized()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isOrganizedTaskFragment()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isReadyToTransit()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_5

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 16
    .line 17
    if-nez v0, :cond_5

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mAllowTransitionWhenEmpty:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return v1

    .line 49
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :cond_5
    :goto_1
    return v1
.end method

.method public final isSplitEmbedded()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    move v1, v2

    .line 26
    :cond_0
    return v1

    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_2
    return v1
.end method

.method public final isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isReadyToTransit()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isTopActivityFocusable()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_1
    :goto_0
    return v0
.end method

.method public final isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueActivityHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

    .line 4
    iput-object p1, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    .line 6
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIgnoringKeyguard:Z

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 8
    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isTranslucentAndVisible()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueActivityHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    .line 28
    .line 29
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIgnoringKeyguard:Z

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 36
    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v3

    .line 41
    :cond_2
    :goto_0
    return v1
.end method

.method public final isTranslucentForTransition()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueActivityHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

    .line 22
    .line 23
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    .line 24
    .line 25
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIgnoringKeyguard:Z

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIgnoreFloatingWindow:Z

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v1, v2

    .line 39
    :cond_2
    :goto_0
    return v1
.end method

.method public final onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 9
    .line 10
    iget v0, p2, Landroid/graphics/Point;->x:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, p2, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eq p1, p2, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 31
    .line 32
    invoke-virtual {p2, p1, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eq v0, v1, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurface()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public prepareSurfaces()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    .line 30
    .line 31
    :cond_2
    if-eqz v1, :cond_4

    .line 32
    .line 33
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public final providesOrientation()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->providesOrientation()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public final remove(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->removeImmediately(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-direct {v2, v3, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v2, v0

    .line 33
    :goto_0
    if-ltz v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 59
    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    iget-boolean v4, p0, Lcom/android/server/wm/TaskFragment;->mIsPlaceholderTaskFragment:Z

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public final removeChild(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getOrganizerProcessIfDifferent(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowProcessController;->removeRemoteActivityFlags(ILcom/android/server/wm/ActivityRecord;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "removeLastChild "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->removeImmediately(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeImmediately()V
    .locals 15

    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 6
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x791d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 9
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 12
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 13
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    new-instance v2, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 16
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    .line 19
    :cond_4
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 20
    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v5, :cond_8

    .line 21
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-boolean v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    if-eqz v3, :cond_5

    goto :goto_3

    .line 23
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    .line 24
    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    move-result-object v14

    .line 25
    iget-object v3, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 26
    invoke-interface {v5}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_2
    if-ltz v4, :cond_7

    .line 28
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 29
    iget-object v2, v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne p0, v2, :cond_6

    .line 30
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 31
    :cond_7
    new-instance v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v2

    move-object v6, p0

    invoke-direct/range {v3 .. v13}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 33
    iget-object v2, v14, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_9

    .line 36
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 37
    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    or-int/lit8 v1, v1, 0x2

    .line 38
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    .line 39
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    :cond_9
    return-void
.end method

.method public removeImmediately(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Remove task fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    return-void
.end method

.method public final resetAdjacentTaskFragment()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 8
    .line 9
    if-ne v3, p0, :cond_0

    .line 10
    .line 11
    iput-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 14
    .line 15
    iput-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 16
    .line 17
    :cond_0
    iput-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 20
    .line 21
    return-void
.end method

.method public final resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRelativeEmbeddedBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mRelativeEmbeddedBounds:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/TaskFragment;->translateRelativeBoundsToAbsoluteBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    const/4 v4, 0x2

    .line 67
    const/4 v5, 0x1

    .line 68
    if-ne v3, v4, :cond_1

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 73
    .line 74
    invoke-virtual {v1, v5}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 75
    .line 76
    .line 77
    move v1, v5

    .line 78
    :cond_1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    .line 79
    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/4 v6, 0x3

    .line 87
    if-ne v3, v6, :cond_2

    .line 88
    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 92
    .line 93
    invoke-virtual {v1, v5}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 94
    .line 95
    .line 96
    move v1, v5

    .line 97
    :cond_2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_MODE:Z

    .line 98
    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    sget-object v3, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {v6}, Lcom/android/server/wm/DexSizeCompatController;->getCompatPolicy(Lcom/android/server/wm/Task;)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_8

    .line 123
    .line 124
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 125
    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-nez v3, :cond_4

    .line 133
    .line 134
    iget-boolean v3, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 135
    .line 136
    if-nez v3, :cond_8

    .line 137
    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStage()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    iget-boolean v6, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 149
    .line 150
    if-eqz v6, :cond_5

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    if-eqz v6, :cond_5

    .line 157
    .line 158
    const/4 v6, 0x6

    .line 159
    if-ne v1, v6, :cond_5

    .line 160
    .line 161
    invoke-static {v3}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_5

    .line 166
    .line 167
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 168
    .line 169
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 170
    .line 171
    iget-boolean v3, v3, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    .line 172
    .line 173
    if-eqz v3, :cond_5

    .line 174
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string/jumbo v2, "resolveOverrideConfiguration: force allow multi-window, tid #"

    .line 178
    .line 179
    .line 180
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 188
    .line 189
    const-string v3, "ActivityTaskManager"

    .line 190
    .line 191
    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_5
    if-eqz v1, :cond_6

    .line 196
    .line 197
    move v2, v1

    .line 198
    :cond_6
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_8

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    if-eqz v1, :cond_7

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_8

    .line 219
    .line 220
    :cond_7
    if-eq v2, v4, :cond_8

    .line 221
    .line 222
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 223
    .line 224
    invoke-virtual {v1, v5}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 225
    .line 226
    .line 227
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    const/4 v2, 0x0

    .line 232
    if-eqz v1, :cond_20

    .line 233
    .line 234
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-nez v6, :cond_9

    .line 241
    .line 242
    goto/16 :goto_a

    .line 243
    .line 244
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 249
    .line 250
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-nez v6, :cond_a

    .line 255
    .line 256
    iget-object v6, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 257
    .line 258
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 267
    .line 268
    invoke-virtual {v7, v6}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 276
    .line 277
    .line 278
    move-result v8

    .line 279
    const/4 v9, 0x0

    .line 280
    if-eqz v8, :cond_b

    .line 281
    .line 282
    iput v4, v7, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 283
    .line 284
    iget v4, v1, Lcom/android/server/wm/Task;->mDexCompatUiMode:I

    .line 285
    .line 286
    iput v4, v7, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_b
    iput v5, v7, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 290
    .line 291
    iput v9, v7, Landroid/content/res/Configuration;->dexCompatUiMode:I

    .line 292
    .line 293
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 298
    .line 299
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    if-ne v6, v5, :cond_c

    .line 304
    .line 305
    iget-boolean v1, v1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 306
    .line 307
    if-nez v1, :cond_20

    .line 308
    .line 309
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_a

    .line 313
    .line 314
    :cond_c
    invoke-virtual {v1, v4, v3, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 315
    .line 316
    .line 317
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 318
    .line 319
    if-eqz v7, :cond_d

    .line 320
    .line 321
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    if-eqz v7, :cond_d

    .line 326
    .line 327
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_d

    .line 332
    .line 333
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    if-nez v7, :cond_d

    .line 338
    .line 339
    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 340
    .line 341
    if-eqz v7, :cond_d

    .line 342
    .line 343
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    iget-object v8, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 348
    .line 349
    invoke-virtual {v7, v8, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 350
    .line 351
    .line 352
    :cond_d
    if-eqz v4, :cond_14

    .line 353
    .line 354
    invoke-virtual {v1, v5}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    if-eqz v7, :cond_14

    .line 359
    .line 360
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    if-nez v7, :cond_e

    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_e
    iget v7, v1, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 368
    .line 369
    const/4 v8, -0x1

    .line 370
    if-eq v7, v8, :cond_f

    .line 371
    .line 372
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 373
    .line 374
    .line 375
    move-result v10

    .line 376
    if-ge v7, v10, :cond_f

    .line 377
    .line 378
    move v7, v5

    .line 379
    goto :goto_2

    .line 380
    :cond_f
    move v7, v9

    .line 381
    :goto_2
    iget v10, v1, Lcom/android/server/wm/Task;->mMaxHeight:I

    .line 382
    .line 383
    if-eq v10, v8, :cond_10

    .line 384
    .line 385
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 386
    .line 387
    .line 388
    move-result v8

    .line 389
    if-ge v10, v8, :cond_10

    .line 390
    .line 391
    move v8, v5

    .line 392
    goto :goto_3

    .line 393
    :cond_10
    move v8, v9

    .line 394
    :goto_3
    if-eqz v7, :cond_12

    .line 395
    .line 396
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 397
    .line 398
    .line 399
    move-result v7

    .line 400
    if-nez v7, :cond_11

    .line 401
    .line 402
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 403
    .line 404
    iget v10, v3, Landroid/graphics/Rect;->right:I

    .line 405
    .line 406
    if-ne v7, v10, :cond_11

    .line 407
    .line 408
    iget v10, v1, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 409
    .line 410
    sub-int/2addr v7, v10

    .line 411
    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_11
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 415
    .line 416
    iget v10, v1, Lcom/android/server/wm/Task;->mMaxWidth:I

    .line 417
    .line 418
    add-int/2addr v7, v10

    .line 419
    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 420
    .line 421
    :cond_12
    :goto_4
    if-eqz v8, :cond_14

    .line 422
    .line 423
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 424
    .line 425
    .line 426
    move-result v7

    .line 427
    if-nez v7, :cond_13

    .line 428
    .line 429
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 430
    .line 431
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 432
    .line 433
    if-ne v7, v3, :cond_13

    .line 434
    .line 435
    iget v3, v1, Lcom/android/server/wm/Task;->mMaxHeight:I

    .line 436
    .line 437
    sub-int/2addr v7, v3

    .line 438
    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 439
    .line 440
    goto :goto_5

    .line 441
    :cond_13
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 442
    .line 443
    iget v7, v1, Lcom/android/server/wm/Task;->mMaxHeight:I

    .line 444
    .line 445
    add-int/2addr v3, v7

    .line 446
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 447
    .line 448
    :cond_14
    :goto_5
    const/4 v3, 0x5

    .line 449
    if-ne v6, v3, :cond_20

    .line 450
    .line 451
    iget-object v3, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 452
    .line 453
    if-eqz v3, :cond_15

    .line 454
    .line 455
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    if-eqz v3, :cond_15

    .line 460
    .line 461
    iget-object v3, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 462
    .line 463
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    const-string v6, "android.server.wm.app"

    .line 472
    .line 473
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_15

    .line 478
    .line 479
    goto :goto_6

    .line 480
    :cond_15
    move v5, v9

    .line 481
    :goto_6
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 482
    .line 483
    int-to-float v3, v3

    .line 484
    const/high16 v6, 0x43200000    # 160.0f

    .line 485
    .line 486
    div-float/2addr v3, v6

    .line 487
    new-instance v6, Landroid/graphics/Rect;

    .line 488
    .line 489
    iget-object v7, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 490
    .line 491
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    if-eqz v7, :cond_19

    .line 503
    .line 504
    new-instance v8, Landroid/graphics/Rect;

    .line 505
    .line 506
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 507
    .line 508
    .line 509
    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 510
    .line 511
    iget v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 512
    .line 513
    invoke-virtual {v10, v7, v8}, Lcom/android/server/wm/WindowManagerService;->getOverrideStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 517
    .line 518
    .line 519
    move-result v7

    .line 520
    if-eqz v7, :cond_16

    .line 521
    .line 522
    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 523
    .line 524
    :cond_16
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 525
    .line 526
    .line 527
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 528
    .line 529
    if-eqz v7, :cond_18

    .line 530
    .line 531
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 532
    .line 533
    .line 534
    move-result v7

    .line 535
    if-eqz v7, :cond_17

    .line 536
    .line 537
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDexCompatEnabled()Z

    .line 538
    .line 539
    .line 540
    move-result v7

    .line 541
    if-eqz v7, :cond_18

    .line 542
    .line 543
    :cond_17
    if-nez v5, :cond_18

    .line 544
    .line 545
    iget v5, v6, Landroid/graphics/Rect;->top:I

    .line 546
    .line 547
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getFreeformTopInset()I

    .line 548
    .line 549
    .line 550
    move-result v7

    .line 551
    add-int/2addr v7, v5

    .line 552
    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 553
    .line 554
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 555
    .line 556
    .line 557
    move-result v5

    .line 558
    if-eqz v5, :cond_19

    .line 559
    .line 560
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 561
    .line 562
    if-eqz v1, :cond_19

    .line 563
    .line 564
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 565
    .line 566
    if-eqz v1, :cond_19

    .line 567
    .line 568
    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 569
    .line 570
    if-eqz v1, :cond_19

    .line 571
    .line 572
    iget v5, v6, Landroid/graphics/Rect;->left:I

    .line 573
    .line 574
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 575
    .line 576
    .line 577
    move-result v7

    .line 578
    sub-int/2addr v5, v7

    .line 579
    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 580
    .line 581
    iget v5, v6, Landroid/graphics/Rect;->right:I

    .line 582
    .line 583
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    add-int/2addr v1, v5

    .line 588
    iput v1, v6, Landroid/graphics/Rect;->right:I

    .line 589
    .line 590
    :cond_19
    sget v1, Lcom/android/server/wm/WindowState;->MINIMUM_VISIBLE_WIDTH_IN_DP:I

    .line 591
    .line 592
    int-to-float v1, v1

    .line 593
    mul-float/2addr v1, v3

    .line 594
    float-to-int v1, v1

    .line 595
    const/high16 v5, 0x42000000    # 32.0f

    .line 596
    .line 597
    mul-float/2addr v3, v5

    .line 598
    float-to-int v3, v3

    .line 599
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    if-nez v5, :cond_1f

    .line 604
    .line 605
    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    if-eqz v5, :cond_1a

    .line 610
    .line 611
    goto :goto_9

    .line 612
    :cond_1a
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 613
    .line 614
    .line 615
    move-result v5

    .line 616
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    iget v5, v4, Landroid/graphics/Rect;->right:I

    .line 621
    .line 622
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 623
    .line 624
    add-int v8, v7, v1

    .line 625
    .line 626
    if-ge v5, v8, :cond_1b

    .line 627
    .line 628
    sub-int/2addr v5, v7

    .line 629
    sub-int/2addr v1, v5

    .line 630
    goto :goto_7

    .line 631
    :cond_1b
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 632
    .line 633
    iget v7, v6, Landroid/graphics/Rect;->right:I

    .line 634
    .line 635
    sub-int v8, v7, v1

    .line 636
    .line 637
    if-le v5, v8, :cond_1c

    .line 638
    .line 639
    sub-int/2addr v7, v5

    .line 640
    sub-int/2addr v1, v7

    .line 641
    neg-int v1, v1

    .line 642
    goto :goto_7

    .line 643
    :cond_1c
    move v1, v9

    .line 644
    :goto_7
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 645
    .line 646
    .line 647
    move-result v5

    .line 648
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 649
    .line 650
    .line 651
    move-result v3

    .line 652
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 653
    .line 654
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 655
    .line 656
    add-int v8, v7, v3

    .line 657
    .line 658
    if-ge v5, v8, :cond_1d

    .line 659
    .line 660
    sub-int/2addr v5, v7

    .line 661
    sub-int/2addr v3, v5

    .line 662
    goto :goto_8

    .line 663
    :cond_1d
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 664
    .line 665
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 666
    .line 667
    sub-int v8, v7, v3

    .line 668
    .line 669
    if-le v5, v8, :cond_1e

    .line 670
    .line 671
    sub-int/2addr v7, v5

    .line 672
    sub-int/2addr v3, v7

    .line 673
    neg-int v3, v3

    .line 674
    goto :goto_8

    .line 675
    :cond_1e
    move v3, v9

    .line 676
    :goto_8
    invoke-virtual {v4, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 677
    .line 678
    .line 679
    :cond_1f
    :goto_9
    iget v1, v6, Landroid/graphics/Rect;->top:I

    .line 680
    .line 681
    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 682
    .line 683
    sub-int/2addr v1, v3

    .line 684
    if-lez v1, :cond_20

    .line 685
    .line 686
    invoke-virtual {v4, v9, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 687
    .line 688
    .line 689
    :cond_20
    :goto_a
    invoke-virtual {p0, v0, p1, v2, v2}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V

    .line 690
    .line 691
    .line 692
    return-void
.end method

.method public final resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    :cond_0
    move v3, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v3, v4

    .line 28
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_66

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_2

    .line 39
    .line 40
    goto/16 :goto_32

    .line 41
    .line 42
    :cond_2
    iput-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 43
    .line 44
    iget-object v6, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 51
    .line 52
    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 53
    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    if-eqz v9, :cond_3

    .line 63
    .line 64
    iget-object v9, v1, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 65
    .line 66
    if-eqz v9, :cond_3

    .line 67
    .line 68
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    if-eqz v9, :cond_3

    .line 73
    .line 74
    iget-object v9, v1, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 75
    .line 76
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v9, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_3

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    if-eqz v9, :cond_3

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    if-nez v9, :cond_3

    .line 101
    .line 102
    move v9, v5

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    move/from16 v9, p3

    .line 105
    .line 106
    :goto_1
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 107
    .line 108
    if-nez v9, :cond_4

    .line 109
    .line 110
    if-nez v6, :cond_4

    .line 111
    .line 112
    aget-boolean v0, v10, v5

    .line 113
    .line 114
    if-eqz v0, :cond_66

    .line 115
    .line 116
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 117
    .line 118
    const/4 v9, 0x0

    .line 119
    const/4 v10, 0x0

    .line 120
    const-wide v6, 0x7b6740f322c43e35L    # 2.766292791389724E286

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    const/4 v8, 0x0

    .line 126
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_32

    .line 130
    .line 131
    :cond_4
    invoke-super/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    check-cast v6, Lcom/android/server/wm/TaskDisplayArea;

    .line 136
    .line 137
    iget-object v11, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 138
    .line 139
    const-string/jumbo v12, "setResumedAffordance(multi-window) for "

    .line 140
    .line 141
    .line 142
    const-string v13, "ActivityTaskManager"

    .line 143
    .line 144
    const/4 v14, 0x0

    .line 145
    if-ne v11, v3, :cond_d

    .line 146
    .line 147
    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-eqz v11, :cond_d

    .line 152
    .line 153
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-eqz v11, :cond_d

    .line 158
    .line 159
    invoke-virtual {v6, v5, v14}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 163
    .line 164
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 165
    .line 166
    if-eqz v2, :cond_5

    .line 167
    .line 168
    iget-boolean v8, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    .line 169
    .line 170
    if-eqz v8, :cond_5

    .line 171
    .line 172
    if-eq v2, v3, :cond_5

    .line 173
    .line 174
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 175
    .line 176
    const-string v8, "bubble-collapse"

    .line 177
    .line 178
    invoke-virtual {v2, v3, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_5
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 182
    .line 183
    if-eqz v2, :cond_8

    .line 184
    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 192
    .line 193
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 194
    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 200
    .line 201
    if-eqz v2, :cond_8

    .line 202
    .line 203
    if-ne v2, v8, :cond_8

    .line 204
    .line 205
    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 206
    .line 207
    iget-object v8, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 208
    .line 209
    invoke-virtual {v8, v2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 210
    .line 211
    .line 212
    iget-object v8, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 213
    .line 214
    invoke-virtual {v8, v2}, Lcom/android/server/wm/TransitionController;->setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    if-eqz v8, :cond_7

    .line 222
    .line 223
    iget-object v8, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 224
    .line 225
    iget-object v9, v8, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 226
    .line 227
    if-eqz v9, :cond_6

    .line 228
    .line 229
    iget-object v9, v9, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 230
    .line 231
    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    if-eqz v9, :cond_6

    .line 236
    .line 237
    iget-object v8, v8, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 238
    .line 239
    iget-object v8, v8, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 240
    .line 241
    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 246
    .line 247
    iput-boolean v5, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mAffordanceTargetFreeformTask:Z

    .line 248
    .line 249
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    if-eqz v5, :cond_7

    .line 254
    .line 255
    new-instance v8, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;

    .line 256
    .line 257
    const/4 v9, 0x0

    .line 258
    invoke-direct {v8, v9, v1, v2}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 262
    .line 263
    .line 264
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :cond_8
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_c

    .line 287
    .line 288
    iget-object v0, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 289
    .line 290
    if-eqz v0, :cond_c

    .line 291
    .line 292
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 293
    .line 294
    if-eqz v0, :cond_9

    .line 295
    .line 296
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 297
    .line 298
    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 299
    .line 300
    if-eq v0, v1, :cond_c

    .line 301
    .line 302
    :cond_9
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_a

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_a
    if-eqz v7, :cond_b

    .line 310
    .line 311
    iget-object v0, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 312
    .line 313
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 314
    .line 315
    if-eqz v0, :cond_b

    .line 316
    .line 317
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 318
    .line 319
    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 320
    .line 321
    if-ne v1, v2, :cond_b

    .line 322
    .line 323
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eqz v0, :cond_b

    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_b
    iget-object v0, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 331
    .line 332
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 333
    .line 334
    .line 335
    :cond_c
    :goto_2
    aget-boolean v0, v10, v4

    .line 336
    .line 337
    if-eqz v0, :cond_66

    .line 338
    .line 339
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 344
    .line 345
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    const/4 v8, 0x0

    .line 350
    const/4 v9, 0x0

    .line 351
    const-wide v6, 0xd4c8a70f99137efL

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_32

    .line 360
    .line 361
    :cond_d
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 362
    .line 363
    if-eqz v7, :cond_e

    .line 364
    .line 365
    sget-object v7, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 366
    .line 367
    iget-object v11, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 368
    .line 369
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    invoke-static {v11}, Lcom/android/server/wm/SizeCompatPolicyManager;->ensureConfiguration(Lcom/android/server/wm/Task;)V

    .line 373
    .line 374
    .line 375
    :cond_e
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 376
    .line 377
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mDexCompatController:Lcom/android/server/wm/DexCompatController;

    .line 378
    .line 379
    invoke-virtual {v7, v3}, Lcom/android/server/wm/DexCompatController;->isOrientationChanged(Lcom/android/server/wm/ActivityRecord;)Z

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    if-eqz v7, :cond_f

    .line 384
    .line 385
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 386
    .line 387
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mDexCompatController:Lcom/android/server/wm/DexCompatController;

    .line 388
    .line 389
    invoke-virtual {v7, v3}, Lcom/android/server/wm/DexCompatController;->rotateDexCompatTaskLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 390
    .line 391
    .line 392
    :cond_f
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 393
    .line 394
    if-eqz v7, :cond_12

    .line 395
    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    if-eqz v7, :cond_12

    .line 401
    .line 402
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 403
    .line 404
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 405
    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 407
    .line 408
    .line 409
    move-result-object v11

    .line 410
    iget-object v7, v7, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 411
    .line 412
    if-eqz v7, :cond_12

    .line 413
    .line 414
    if-ne v7, v11, :cond_12

    .line 415
    .line 416
    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 417
    .line 418
    iget-object v11, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 419
    .line 420
    invoke-virtual {v11, v7}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 421
    .line 422
    .line 423
    iget-object v11, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 424
    .line 425
    invoke-virtual {v11, v7}, Lcom/android/server/wm/TransitionController;->setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 429
    .line 430
    .line 431
    move-result v11

    .line 432
    if-eqz v11, :cond_11

    .line 433
    .line 434
    iget-object v11, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 435
    .line 436
    iget-object v15, v11, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 437
    .line 438
    if-eqz v15, :cond_10

    .line 439
    .line 440
    iget-object v15, v15, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 441
    .line 442
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v15

    .line 446
    if-eqz v15, :cond_10

    .line 447
    .line 448
    iget-object v11, v11, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 449
    .line 450
    iget-object v11, v11, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 451
    .line 452
    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v11

    .line 456
    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 457
    .line 458
    iput-boolean v5, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mAffordanceTargetFreeformTask:Z

    .line 459
    .line 460
    :cond_10
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 461
    .line 462
    .line 463
    move-result-object v11

    .line 464
    if-eqz v11, :cond_11

    .line 465
    .line 466
    new-instance v15, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;

    .line 467
    .line 468
    const/4 v14, 0x1

    .line 469
    invoke-direct {v15, v14, v1, v7}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v11, v15}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 473
    .line 474
    .line 475
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    invoke-static {v13, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    :cond_12
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 491
    .line 492
    if-ne v7, v3, :cond_13

    .line 493
    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    .line 495
    .line 496
    .line 497
    move-result v7

    .line 498
    if-eqz v7, :cond_13

    .line 499
    .line 500
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 501
    .line 502
    .line 503
    aget-boolean v0, v10, v4

    .line 504
    .line 505
    if-eqz v0, :cond_66

    .line 506
    .line 507
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 508
    .line 509
    const/4 v9, 0x0

    .line 510
    const/4 v10, 0x0

    .line 511
    const-wide v6, 0x3c3da7c08da338b6L    # 1.6076160519851757E-18

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    const/4 v8, 0x0

    .line 517
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_32

    .line 521
    .line 522
    :cond_13
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 523
    .line 524
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 525
    .line 526
    iget v11, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 527
    .line 528
    invoke-virtual {v7, v11}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    .line 529
    .line 530
    .line 531
    move-result v7

    .line 532
    if-nez v7, :cond_14

    .line 533
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    const-string v1, "Skipping resume of top activity "

    .line 537
    .line 538
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v1, ": user "

    .line 545
    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    iget v1, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 550
    .line 551
    const-string v2, " is stopped"

    .line 552
    .line 553
    invoke-static {v0, v1, v2, v13}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    goto/16 :goto_32

    .line 557
    .line 558
    :cond_14
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 559
    .line 560
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 561
    .line 562
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 566
    .line 567
    iget-object v11, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 568
    .line 569
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 570
    .line 571
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 572
    .line 573
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 574
    .line 575
    new-instance v12, Landroid/os/WorkSource;

    .line 576
    .line 577
    invoke-direct {v12, v11}, Landroid/os/WorkSource;-><init>(I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v7, v12}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 581
    .line 582
    .line 583
    iget-object v7, v6, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    .line 584
    .line 585
    if-eqz v7, :cond_15

    .line 586
    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 588
    .line 589
    .line 590
    move-result-object v11

    .line 591
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 592
    .line 593
    .line 594
    move-result-object v11

    .line 595
    if-eq v7, v11, :cond_15

    .line 596
    .line 597
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 598
    .line 599
    .line 600
    move-result-object v11

    .line 601
    goto :goto_3

    .line 602
    :cond_15
    const/4 v11, 0x0

    .line 603
    :goto_3
    if-nez v9, :cond_16

    .line 604
    .line 605
    filled-new-array {v4}, [I

    .line 606
    .line 607
    .line 608
    move-result-object v9

    .line 609
    new-instance v12, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;

    .line 610
    .line 611
    invoke-direct {v12, v3, v9}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/ActivityRecord;[I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v6, v12, v5}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 615
    .line 616
    .line 617
    aget v9, v9, v4

    .line 618
    .line 619
    if-lez v9, :cond_16

    .line 620
    .line 621
    move v9, v5

    .line 622
    goto :goto_4

    .line 623
    :cond_16
    move v9, v4

    .line 624
    :goto_4
    iget-object v12, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 625
    .line 626
    const-string/jumbo v14, "resumeTopActivity"

    .line 627
    .line 628
    .line 629
    if-eqz v12, :cond_19

    .line 630
    .line 631
    iget-object v12, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 632
    .line 633
    iget-boolean v12, v12, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 634
    .line 635
    if-eqz v12, :cond_17

    .line 636
    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 638
    .line 639
    .line 640
    move-result v12

    .line 641
    if-eqz v12, :cond_17

    .line 642
    .line 643
    const-string/jumbo v12, "resumeTopActivity: clear userLeaving"

    .line 644
    .line 645
    .line 646
    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1, v3, v14, v4, v4}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z

    .line 650
    .line 651
    .line 652
    move-result v12

    .line 653
    :goto_5
    or-int/2addr v9, v12

    .line 654
    goto :goto_6

    .line 655
    :cond_17
    aget-boolean v12, v10, v4

    .line 656
    .line 657
    if-eqz v12, :cond_18

    .line 658
    .line 659
    iget-object v12, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 660
    .line 661
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v12

    .line 665
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 666
    .line 667
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v20

    .line 671
    const/16 v18, 0x0

    .line 672
    .line 673
    const/16 v19, 0x0

    .line 674
    .line 675
    const-wide v16, -0x6a9aa7272b86c7fdL    # -1.32981433955237E-205

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    :cond_18
    iget-object v12, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 684
    .line 685
    iget-boolean v12, v12, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 686
    .line 687
    invoke-virtual {v1, v3, v14, v12, v4}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z

    .line 688
    .line 689
    .line 690
    move-result v12

    .line 691
    goto :goto_5

    .line 692
    :cond_19
    :goto_6
    if-eqz v9, :cond_20

    .line 693
    .line 694
    aget-boolean v0, v10, v5

    .line 695
    .line 696
    if-eqz v0, :cond_1a

    .line 697
    .line 698
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 699
    .line 700
    const/16 v16, 0x0

    .line 701
    .line 702
    const/16 v17, 0x0

    .line 703
    .line 704
    const-wide v13, -0x300f2be6facbc31aL    # -1.2178799742439959E77

    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    const/4 v15, 0x0

    .line 710
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 711
    .line 712
    .line 713
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    if-eqz v0, :cond_1b

    .line 718
    .line 719
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 720
    .line 721
    invoke-virtual {v0, v4, v5, v4, v4}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    .line 722
    .line 723
    .line 724
    goto :goto_9

    .line 725
    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    if-nez v0, :cond_1e

    .line 730
    .line 731
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    if-ne v1, v0, :cond_1c

    .line 736
    .line 737
    move v0, v5

    .line 738
    goto :goto_7

    .line 739
    :cond_1c
    move v0, v4

    .line 740
    :goto_7
    iget-object v1, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 741
    .line 742
    if-eqz v0, :cond_1d

    .line 743
    .line 744
    const-string/jumbo v2, "next-top-activity"

    .line 745
    .line 746
    .line 747
    goto :goto_8

    .line 748
    :cond_1d
    const-string/jumbo v2, "next-activity"

    .line 749
    .line 750
    .line 751
    :goto_8
    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)V

    .line 752
    .line 753
    .line 754
    :cond_1e
    :goto_9
    if-eqz v11, :cond_1f

    .line 755
    .line 756
    iput-boolean v5, v11, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    .line 757
    .line 758
    :cond_1f
    :goto_a
    move v4, v5

    .line 759
    goto/16 :goto_32

    .line 760
    .line 761
    :cond_20
    iget-object v9, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 762
    .line 763
    if-ne v9, v3, :cond_21

    .line 764
    .line 765
    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 766
    .line 767
    .line 768
    move-result v9

    .line 769
    if-eqz v9, :cond_21

    .line 770
    .line 771
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    .line 772
    .line 773
    .line 774
    move-result v9

    .line 775
    if-eqz v9, :cond_21

    .line 776
    .line 777
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 778
    .line 779
    .line 780
    aget-boolean v0, v10, v4

    .line 781
    .line 782
    if-eqz v0, :cond_1f

    .line 783
    .line 784
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 789
    .line 790
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v11

    .line 794
    const/4 v9, 0x0

    .line 795
    const/4 v10, 0x0

    .line 796
    const-wide v7, -0x1f6deba23803c05cL

    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 802
    .line 803
    .line 804
    goto :goto_a

    .line 805
    :cond_21
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 806
    .line 807
    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 808
    .line 809
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 810
    .line 811
    if-eqz v0, :cond_22

    .line 812
    .line 813
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPackageList()Ljava/util/List;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    move-object/from16 v16, v0

    .line 818
    .line 819
    goto :goto_b

    .line 820
    :cond_22
    const/16 v16, 0x0

    .line 821
    .line 822
    :goto_b
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 823
    .line 824
    iget-object v9, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 825
    .line 826
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 827
    .line 828
    .line 829
    move-result v19

    .line 830
    iget-object v11, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 831
    .line 832
    iget v12, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 833
    .line 834
    move-object/from16 v17, v0

    .line 835
    .line 836
    move-object/from16 v18, v9

    .line 837
    .line 838
    move-object/from16 v20, v11

    .line 839
    .line 840
    move/from16 v21, v12

    .line 841
    .line 842
    invoke-virtual/range {v15 .. v21}, Landroid/app/ActivityManagerInternal;->onPackageResumedFG(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V

    .line 843
    .line 844
    .line 845
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 846
    .line 847
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 848
    .line 849
    if-eqz v0, :cond_3f

    .line 850
    .line 851
    sget-boolean v9, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 852
    .line 853
    const-string v11, "ActivityManagerPerformance"

    .line 854
    .line 855
    if-eqz v9, :cond_23

    .line 856
    .line 857
    new-instance v12, Ljava/lang/StringBuilder;

    .line 858
    .line 859
    const-string/jumbo v15, "onActivityResumeLocked() r: "

    .line 860
    .line 861
    .line 862
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 866
    .line 867
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    const-string v15, " ("

    .line 871
    .line 872
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    const-string v15, ")"

    .line 879
    .line 880
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v12

    .line 887
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    .line 889
    .line 890
    sget-boolean v12, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 891
    .line 892
    if-eqz v12, :cond_23

    .line 893
    .line 894
    new-instance v12, Ljava/lang/StringBuilder;

    .line 895
    .line 896
    const-string/jumbo v15, "onActivityResumeLocked() Trace\n"

    .line 897
    .line 898
    .line 899
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v15

    .line 906
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v12

    .line 913
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    .line 915
    .line 916
    new-instance v12, Ljava/lang/Exception;

    .line 917
    .line 918
    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 922
    .line 923
    .line 924
    :cond_23
    sget-boolean v12, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 925
    .line 926
    if-nez v12, :cond_24

    .line 927
    .line 928
    goto/16 :goto_19

    .line 929
    .line 930
    :cond_24
    iget-object v12, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 931
    .line 932
    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 933
    .line 934
    invoke-static {v12, v15}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    .line 935
    .line 936
    .line 937
    move-result v12

    .line 938
    if-eqz v12, :cond_25

    .line 939
    .line 940
    goto/16 :goto_19

    .line 941
    .line 942
    :cond_25
    iget-object v12, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 943
    .line 944
    invoke-static {v12}, Lcom/android/server/wm/ActivityManagerPerformance;->isBlockedApp(Ljava/lang/String;)Z

    .line 945
    .line 946
    .line 947
    move-result v12

    .line 948
    if-eqz v12, :cond_26

    .line 949
    .line 950
    goto/16 :goto_19

    .line 951
    .line 952
    :cond_26
    iget-boolean v12, v0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 953
    .line 954
    if-eqz v12, :cond_27

    .line 955
    .line 956
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 957
    .line 958
    :cond_27
    iget-boolean v12, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 959
    .line 960
    if-nez v12, :cond_28

    .line 961
    .line 962
    if-eqz v9, :cond_3f

    .line 963
    .line 964
    const-string/jumbo v0, "onActivityResumeLocked() skipped. mIsScreenOn: false"

    .line 965
    .line 966
    .line 967
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .line 969
    .line 970
    goto/16 :goto_19

    .line 971
    .line 972
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    .line 973
    .line 974
    .line 975
    move-result v12

    .line 976
    if-eqz v12, :cond_29

    .line 977
    .line 978
    goto/16 :goto_19

    .line 979
    .line 980
    :cond_29
    iget-boolean v12, v0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    .line 981
    .line 982
    if-eqz v12, :cond_2b

    .line 983
    .line 984
    if-eqz v9, :cond_2a

    .line 985
    .line 986
    const-string/jumbo v9, "onActivityResumeLocked() skipped. needSkipResume is true"

    .line 987
    .line 988
    .line 989
    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .line 991
    .line 992
    :cond_2a
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    .line 993
    .line 994
    goto/16 :goto_19

    .line 995
    .line 996
    :cond_2b
    sget-boolean v12, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 997
    .line 998
    const-string/jumbo v15, "onActivityResumeLocked() skipped. already boosted "

    .line 999
    .line 1000
    .line 1001
    if-nez v12, :cond_2e

    .line 1002
    .line 1003
    :try_start_0
    iget-object v12, v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 1004
    .line 1005
    if-eq v12, v3, :cond_2d

    .line 1006
    .line 1007
    if-eqz v12, :cond_2c

    .line 1008
    .line 1009
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1010
    .line 1011
    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1012
    .line 1013
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    if-eqz v4, :cond_2c

    .line 1018
    .line 1019
    goto :goto_c

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    goto :goto_d

    .line 1022
    :cond_2c
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1023
    .line 1024
    .line 1025
    goto/16 :goto_19

    .line 1026
    .line 1027
    :cond_2d
    :goto_c
    if-eqz v9, :cond_3f

    .line 1028
    .line 1029
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1035
    .line 1036
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1044
    .line 1045
    .line 1046
    goto/16 :goto_19

    .line 1047
    .line 1048
    :goto_d
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1049
    .line 1050
    .line 1051
    goto/16 :goto_19

    .line 1052
    .line 1053
    :cond_2e
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 1054
    .line 1055
    .line 1056
    move-result v4

    .line 1057
    if-eqz v4, :cond_2f

    .line 1058
    .line 1059
    const/4 v4, 0x0

    .line 1060
    invoke-virtual {v0, v3, v4, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 1061
    .line 1062
    .line 1063
    goto/16 :goto_19

    .line 1064
    .line 1065
    :cond_2f
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 1066
    .line 1067
    .line 1068
    move-result v4

    .line 1069
    if-eqz v4, :cond_33

    .line 1070
    .line 1071
    :try_start_2
    iget-object v4, v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 1072
    .line 1073
    iget-object v12, v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 1074
    .line 1075
    if-eq v12, v3, :cond_32

    .line 1076
    .line 1077
    if-eq v4, v3, :cond_32

    .line 1078
    .line 1079
    if-eqz v12, :cond_30

    .line 1080
    .line 1081
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1082
    .line 1083
    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1084
    .line 1085
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v5

    .line 1089
    if-nez v5, :cond_32

    .line 1090
    .line 1091
    goto :goto_e

    .line 1092
    :catch_1
    move-exception v0

    .line 1093
    goto :goto_10

    .line 1094
    :cond_30
    :goto_e
    if-eqz v4, :cond_31

    .line 1095
    .line 1096
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1097
    .line 1098
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1099
    .line 1100
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v4
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1104
    if-eqz v4, :cond_31

    .line 1105
    .line 1106
    goto :goto_f

    .line 1107
    :cond_31
    const/4 v4, 0x1

    .line 1108
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1109
    .line 1110
    .line 1111
    goto/16 :goto_19

    .line 1112
    .line 1113
    :cond_32
    :goto_f
    if-eqz v9, :cond_3f

    .line 1114
    .line 1115
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1121
    .line 1122
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1130
    .line 1131
    .line 1132
    goto/16 :goto_19

    .line 1133
    .line 1134
    :goto_10
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_19

    .line 1138
    .line 1139
    :cond_33
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 1140
    .line 1141
    if-eqz v4, :cond_39

    .line 1142
    .line 1143
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1144
    .line 1145
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1146
    .line 1147
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v4

    .line 1151
    if-eqz v4, :cond_39

    .line 1152
    .line 1153
    :try_start_4
    iget-object v4, v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 1154
    .line 1155
    iget-object v5, v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 1156
    .line 1157
    sget-object v12, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1158
    .line 1159
    if-eq v12, v3, :cond_37

    .line 1160
    .line 1161
    if-eq v5, v3, :cond_37

    .line 1162
    .line 1163
    if-eq v4, v3, :cond_37

    .line 1164
    .line 1165
    if-eqz v12, :cond_34

    .line 1166
    .line 1167
    move-object/from16 v18, v8

    .line 1168
    .line 1169
    :try_start_5
    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1170
    .line 1171
    iget-object v12, v12, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1172
    .line 1173
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1174
    .line 1175
    .line 1176
    move-result v8

    .line 1177
    if-nez v8, :cond_38

    .line 1178
    .line 1179
    goto :goto_11

    .line 1180
    :catch_2
    move-exception v0

    .line 1181
    goto :goto_13

    .line 1182
    :cond_34
    move-object/from16 v18, v8

    .line 1183
    .line 1184
    :goto_11
    if-eqz v5, :cond_35

    .line 1185
    .line 1186
    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1187
    .line 1188
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1189
    .line 1190
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1191
    .line 1192
    .line 1193
    move-result v5

    .line 1194
    if-nez v5, :cond_38

    .line 1195
    .line 1196
    :cond_35
    if-eqz v4, :cond_36

    .line 1197
    .line 1198
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1199
    .line 1200
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1201
    .line 1202
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v4
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1206
    if-eqz v4, :cond_36

    .line 1207
    .line 1208
    goto :goto_12

    .line 1209
    :cond_36
    const/4 v4, 0x1

    .line 1210
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1211
    .line 1212
    .line 1213
    goto/16 :goto_1a

    .line 1214
    .line 1215
    :cond_37
    move-object/from16 v18, v8

    .line 1216
    .line 1217
    :cond_38
    :goto_12
    if-eqz v9, :cond_40

    .line 1218
    .line 1219
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1225
    .line 1226
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v0

    .line 1233
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1234
    .line 1235
    .line 1236
    goto/16 :goto_1a

    .line 1237
    .line 1238
    :catch_3
    move-exception v0

    .line 1239
    move-object/from16 v18, v8

    .line 1240
    .line 1241
    :goto_13
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1242
    .line 1243
    .line 1244
    goto/16 :goto_1a

    .line 1245
    .line 1246
    :cond_39
    move-object/from16 v18, v8

    .line 1247
    .line 1248
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 1249
    .line 1250
    if-nez v4, :cond_3c

    .line 1251
    .line 1252
    iget-object v5, v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 1253
    .line 1254
    if-nez v5, :cond_3c

    .line 1255
    .line 1256
    :try_start_7
    iget-object v4, v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 1257
    .line 1258
    if-eq v4, v3, :cond_3b

    .line 1259
    .line 1260
    if-eqz v4, :cond_3a

    .line 1261
    .line 1262
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1263
    .line 1264
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1265
    .line 1266
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v4
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1270
    if-eqz v4, :cond_3a

    .line 1271
    .line 1272
    goto :goto_15

    .line 1273
    :cond_3a
    const/4 v4, 0x1

    .line 1274
    goto :goto_14

    .line 1275
    :catch_4
    move-exception v0

    .line 1276
    goto :goto_16

    .line 1277
    :goto_14
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 1278
    .line 1279
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1280
    .line 1281
    .line 1282
    goto :goto_1a

    .line 1283
    :cond_3b
    :goto_15
    if-eqz v9, :cond_40

    .line 1284
    .line 1285
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1288
    .line 1289
    .line 1290
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1291
    .line 1292
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v0

    .line 1299
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1300
    .line 1301
    .line 1302
    goto :goto_1a

    .line 1303
    :goto_16
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1304
    .line 1305
    .line 1306
    goto :goto_1a

    .line 1307
    :cond_3c
    if-eq v4, v3, :cond_3e

    .line 1308
    .line 1309
    if-eqz v4, :cond_3d

    .line 1310
    .line 1311
    :try_start_9
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1312
    .line 1313
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1314
    .line 1315
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v4
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1319
    if-eqz v4, :cond_3d

    .line 1320
    .line 1321
    goto :goto_17

    .line 1322
    :catch_5
    move-exception v0

    .line 1323
    goto :goto_18

    .line 1324
    :cond_3d
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 1325
    .line 1326
    const/16 v4, 0x8

    .line 1327
    .line 1328
    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v4

    .line 1332
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1333
    .line 1334
    .line 1335
    goto :goto_1a

    .line 1336
    :cond_3e
    :goto_17
    if-eqz v9, :cond_40

    .line 1337
    .line 1338
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1341
    .line 1342
    .line 1343
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1344
    .line 1345
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_5

    .line 1353
    .line 1354
    .line 1355
    goto :goto_1a

    .line 1356
    :goto_18
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1357
    .line 1358
    .line 1359
    goto :goto_1a

    .line 1360
    :cond_3f
    :goto_19
    move-object/from16 v18, v8

    .line 1361
    .line 1362
    :cond_40
    :goto_1a
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v0

    .line 1366
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    .line 1367
    .line 1368
    .line 1369
    move-result v4

    .line 1370
    invoke-virtual {v0, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->notifyReentryAppToPPR(I)V

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    .line 1374
    .line 1375
    .line 1376
    move-result v0

    .line 1377
    if-eqz v0, :cond_43

    .line 1378
    .line 1379
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1380
    .line 1381
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 1382
    .line 1383
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1384
    .line 1385
    .line 1386
    move-result v4

    .line 1387
    const/4 v5, 0x1

    .line 1388
    sub-int/2addr v4, v5

    .line 1389
    :goto_1b
    if-ltz v4, :cond_43

    .line 1390
    .line 1391
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 1392
    .line 1393
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v5

    .line 1397
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1398
    .line 1399
    iget-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1400
    .line 1401
    if-nez v8, :cond_42

    .line 1402
    .line 1403
    if-eq v5, v3, :cond_42

    .line 1404
    .line 1405
    const/4 v8, 0x0

    .line 1406
    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 1407
    .line 1408
    .line 1409
    move-result v9

    .line 1410
    if-eqz v9, :cond_42

    .line 1411
    .line 1412
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 1413
    .line 1414
    .line 1415
    move-result v9

    .line 1416
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 1417
    .line 1418
    .line 1419
    move-result v11

    .line 1420
    if-ne v9, v11, :cond_42

    .line 1421
    .line 1422
    aget-boolean v9, v10, v8

    .line 1423
    .line 1424
    if-eqz v9, :cond_41

    .line 1425
    .line 1426
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v8

    .line 1430
    sget-object v19, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1431
    .line 1432
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v24

    .line 1436
    const/16 v23, 0x0

    .line 1437
    .line 1438
    const-wide v20, 0x6c4a8738a8753619L    # 4.4653433853909575E213

    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    const/16 v22, 0x0

    .line 1444
    .line 1445
    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1446
    .line 1447
    .line 1448
    :cond_41
    const-string/jumbo v8, "resume-no-history"

    .line 1449
    .line 1450
    .line 1451
    const/4 v9, 0x0

    .line 1452
    invoke-virtual {v5, v8, v9}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1453
    .line 1454
    .line 1455
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 1456
    .line 1457
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1458
    .line 1459
    .line 1460
    :cond_42
    add-int/lit8 v4, v4, -0x1

    .line 1461
    .line 1462
    goto :goto_1b

    .line 1463
    :cond_43
    if-eqz v2, :cond_44

    .line 1464
    .line 1465
    if-eq v2, v3, :cond_44

    .line 1466
    .line 1467
    iget-boolean v0, v3, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 1468
    .line 1469
    if-eqz v0, :cond_44

    .line 1470
    .line 1471
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1472
    .line 1473
    if-eqz v0, :cond_44

    .line 1474
    .line 1475
    const/4 v4, 0x0

    .line 1476
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1477
    .line 1478
    .line 1479
    :cond_44
    :try_start_b
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1480
    .line 1481
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 1482
    .line 1483
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1484
    .line 1485
    sget-boolean v5, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    .line 1486
    .line 1487
    if-nez v5, :cond_45

    .line 1488
    .line 1489
    const/4 v5, 0x0

    .line 1490
    goto :goto_1c

    .line 1491
    :cond_45
    iget-object v5, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 1492
    .line 1493
    if-nez v5, :cond_46

    .line 1494
    .line 1495
    const-class v5, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 1496
    .line 1497
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v5

    .line 1501
    check-cast v5, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 1502
    .line 1503
    iput-object v5, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 1504
    .line 1505
    :cond_46
    iget-object v5, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mAppHibernationManagerInternal:Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 1506
    .line 1507
    :goto_1c
    if-eqz v5, :cond_47

    .line 1508
    .line 1509
    iget-object v0, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mLastHibernationStates:Landroid/util/ArrayMap;

    .line 1510
    .line 1511
    iget-object v5, v5, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 1512
    .line 1513
    invoke-virtual {v5, v4}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    .line 1514
    .line 1515
    .line 1516
    move-result v5

    .line 1517
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v5

    .line 1521
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    .line 1523
    .line 1524
    goto :goto_1d

    .line 1525
    :cond_47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1526
    .line 1527
    .line 1528
    :goto_1d
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1529
    .line 1530
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v0

    .line 1534
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1535
    .line 1536
    iget v5, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1537
    .line 1538
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v8

    .line 1542
    invoke-virtual {v0, v5, v4, v4, v8}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_6

    .line 1543
    .line 1544
    .line 1545
    goto :goto_1e

    .line 1546
    :catch_6
    move-exception v0

    .line 1547
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1548
    .line 1549
    const-string v5, "Failed trying to unstop package "

    .line 1550
    .line 1551
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1552
    .line 1553
    .line 1554
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1555
    .line 1556
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    .line 1558
    .line 1559
    const-string v5, ": "

    .line 1560
    .line 1561
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v0

    .line 1571
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    .line 1573
    .line 1574
    :goto_1e
    iget-object v0, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1575
    .line 1576
    if-eqz v2, :cond_4c

    .line 1577
    .line 1578
    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1579
    .line 1580
    if-eqz v4, :cond_49

    .line 1581
    .line 1582
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1583
    .line 1584
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 1585
    .line 1586
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v4

    .line 1590
    if-eqz v4, :cond_48

    .line 1591
    .line 1592
    const/4 v4, 0x0

    .line 1593
    invoke-virtual {v0, v4, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 1594
    .line 1595
    .line 1596
    move/from16 v16, v4

    .line 1597
    .line 1598
    goto :goto_1f

    .line 1599
    :cond_48
    const/4 v4, 0x0

    .line 1600
    const/4 v5, 0x2

    .line 1601
    invoke-virtual {v0, v5, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 1602
    .line 1603
    .line 1604
    const/16 v16, 0x1

    .line 1605
    .line 1606
    :goto_1f
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1607
    .line 1608
    .line 1609
    move/from16 v2, v16

    .line 1610
    .line 1611
    goto :goto_23

    .line 1612
    :cond_49
    const/4 v4, 0x0

    .line 1613
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1614
    .line 1615
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 1616
    .line 1617
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1618
    .line 1619
    .line 1620
    move-result v2

    .line 1621
    if-eqz v2, :cond_4a

    .line 1622
    .line 1623
    invoke-virtual {v0, v4, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 1624
    .line 1625
    .line 1626
    const/4 v2, 0x0

    .line 1627
    goto :goto_23

    .line 1628
    :cond_4a
    iget-boolean v2, v3, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 1629
    .line 1630
    if-eqz v2, :cond_4b

    .line 1631
    .line 1632
    const/16 v2, 0x20

    .line 1633
    .line 1634
    :goto_20
    const/4 v4, 0x1

    .line 1635
    goto :goto_21

    .line 1636
    :cond_4b
    const/4 v2, 0x0

    .line 1637
    goto :goto_20

    .line 1638
    :goto_21
    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 1639
    .line 1640
    .line 1641
    goto :goto_22

    .line 1642
    :cond_4c
    const/4 v4, 0x1

    .line 1643
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1644
    .line 1645
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 1646
    .line 1647
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1648
    .line 1649
    .line 1650
    move-result v2

    .line 1651
    if-eqz v2, :cond_4d

    .line 1652
    .line 1653
    const/4 v2, 0x0

    .line 1654
    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 1655
    .line 1656
    .line 1657
    goto :goto_23

    .line 1658
    :cond_4d
    const/4 v2, 0x0

    .line 1659
    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 1660
    .line 1661
    .line 1662
    :goto_22
    const/4 v2, 0x1

    .line 1663
    :goto_23
    if-eqz v2, :cond_4e

    .line 1664
    .line 1665
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation$1()V

    .line 1666
    .line 1667
    .line 1668
    goto :goto_24

    .line 1669
    :cond_4e
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 1670
    .line 1671
    .line 1672
    :goto_24
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1673
    .line 1674
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 1675
    .line 1676
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 1680
    .line 1681
    .line 1682
    move-result v2

    .line 1683
    if-eqz v2, :cond_63

    .line 1684
    .line 1685
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 1686
    .line 1687
    .line 1688
    move-result v2

    .line 1689
    if-nez v2, :cond_50

    .line 1690
    .line 1691
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1692
    .line 1693
    if-eqz v2, :cond_4f

    .line 1694
    .line 1695
    const/4 v4, 0x0

    .line 1696
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 1697
    .line 1698
    .line 1699
    move-result v2

    .line 1700
    if-nez v2, :cond_4f

    .line 1701
    .line 1702
    goto :goto_25

    .line 1703
    :cond_4f
    const/4 v2, 0x0

    .line 1704
    goto :goto_26

    .line 1705
    :cond_50
    :goto_25
    const/4 v2, 0x1

    .line 1706
    :goto_26
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1707
    .line 1708
    .line 1709
    move-result v4

    .line 1710
    if-eqz v4, :cond_51

    .line 1711
    .line 1712
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 1713
    .line 1714
    if-nez v4, :cond_51

    .line 1715
    .line 1716
    if-eqz v2, :cond_52

    .line 1717
    .line 1718
    :cond_51
    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1719
    .line 1720
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 1721
    .line 1722
    .line 1723
    const/4 v2, 0x1

    .line 1724
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1725
    .line 1726
    .line 1727
    :cond_52
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    .line 1728
    .line 1729
    if-eqz v2, :cond_53

    .line 1730
    .line 1731
    goto :goto_27

    .line 1732
    :cond_53
    iget-wide v4, v3, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 1733
    .line 1734
    const-wide/16 v8, 0x0

    .line 1735
    .line 1736
    cmp-long v2, v4, v8

    .line 1737
    .line 1738
    if-nez v2, :cond_54

    .line 1739
    .line 1740
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1741
    .line 1742
    .line 1743
    move-result-wide v4

    .line 1744
    iput-wide v4, v3, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 1745
    .line 1746
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTicking()Z

    .line 1747
    .line 1748
    .line 1749
    :cond_54
    :goto_27
    if-nez v7, :cond_55

    .line 1750
    .line 1751
    const/4 v2, 0x0

    .line 1752
    goto :goto_28

    .line 1753
    :cond_55
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v2

    .line 1757
    :goto_28
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 1758
    .line 1759
    iget-object v5, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1760
    .line 1761
    iget-object v6, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1762
    .line 1763
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1764
    .line 1765
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    .line 1767
    .line 1768
    new-instance v8, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;

    .line 1769
    .line 1770
    const/4 v9, 0x2

    .line 1771
    invoke-direct {v8, v9, v5}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;)V

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1775
    .line 1776
    .line 1777
    const/4 v5, 0x1

    .line 1778
    aget-boolean v6, v10, v5

    .line 1779
    .line 1780
    if-eqz v6, :cond_56

    .line 1781
    .line 1782
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v5

    .line 1786
    sget-object v19, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1787
    .line 1788
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v24

    .line 1792
    const/16 v22, 0x0

    .line 1793
    .line 1794
    const/16 v23, 0x0

    .line 1795
    .line 1796
    const-wide v20, -0x740204620af1cbedL    # -6.543301873493187E-251

    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1802
    .line 1803
    .line 1804
    :cond_56
    move-object/from16 v5, v18

    .line 1805
    .line 1806
    invoke-virtual {v3, v5, v14}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1807
    .line 1808
    .line 1809
    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1813
    .line 1814
    .line 1815
    move-result v6

    .line 1816
    if-eqz v6, :cond_57

    .line 1817
    .line 1818
    iget v6, v3, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    .line 1819
    .line 1820
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1821
    .line 1822
    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1823
    .line 1824
    const/4 v11, 0x0

    .line 1825
    invoke-virtual {v8, v3, v9, v11}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    .line 1826
    .line 1827
    .line 1828
    iget v8, v3, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    .line 1829
    .line 1830
    if-le v8, v6, :cond_57

    .line 1831
    .line 1832
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 1833
    .line 1834
    .line 1835
    const/4 v4, 0x1

    .line 1836
    goto/16 :goto_32

    .line 1837
    .line 1838
    :cond_57
    :try_start_c
    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1839
    .line 1840
    iget-object v6, v6, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 1841
    .line 1842
    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    .line 1843
    .line 1844
    .line 1845
    move-result v8

    .line 1846
    if-eqz v8, :cond_58

    .line 1847
    .line 1848
    const/4 v14, 0x0

    .line 1849
    goto :goto_29

    .line 1850
    :cond_58
    invoke-static {v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v14

    .line 1854
    :goto_29
    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1855
    .line 1856
    if-eqz v8, :cond_5a

    .line 1857
    .line 1858
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1859
    .line 1860
    .line 1861
    move-result v9

    .line 1862
    iget-boolean v11, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1863
    .line 1864
    if-nez v11, :cond_5a

    .line 1865
    .line 1866
    if-lez v9, :cond_5a

    .line 1867
    .line 1868
    iget-object v9, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 1869
    .line 1870
    invoke-static {v9, v8}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Landroid/os/IBinder;Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v8

    .line 1874
    if-nez v14, :cond_59

    .line 1875
    .line 1876
    iget-object v9, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1877
    .line 1878
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 1879
    .line 1880
    invoke-virtual {v9, v6, v8}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1881
    .line 1882
    .line 1883
    goto :goto_2a

    .line 1884
    :catch_7
    const/4 v6, 0x1

    .line 1885
    goto/16 :goto_2e

    .line 1886
    .line 1887
    :cond_59
    invoke-virtual {v14, v8}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1888
    .line 1889
    .line 1890
    :cond_5a
    :goto_2a
    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1891
    .line 1892
    if-eqz v8, :cond_5c

    .line 1893
    .line 1894
    iget-object v9, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1895
    .line 1896
    const/4 v11, 0x1

    .line 1897
    :try_start_d
    invoke-static {v9, v8, v11}, Landroid/app/servertransaction/NewIntentItem;->obtain(Landroid/os/IBinder;Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 1901
    if-nez v14, :cond_5b

    .line 1902
    .line 1903
    :try_start_e
    iget-object v9, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1904
    .line 1905
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 1906
    .line 1907
    invoke-virtual {v9, v6, v8}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1908
    .line 1909
    .line 1910
    goto :goto_2b

    .line 1911
    :cond_5b
    invoke-virtual {v14, v8}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1912
    .line 1913
    .line 1914
    goto :goto_2b

    .line 1915
    :catch_8
    move v6, v11

    .line 1916
    goto/16 :goto_2e

    .line 1917
    .line 1918
    :cond_5c
    :goto_2b
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed()V

    .line 1919
    .line 1920
    .line 1921
    iget v8, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1922
    .line 1923
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1924
    .line 1925
    .line 1926
    move-result v9

    .line 1927
    iget-object v11, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1928
    .line 1929
    iget v11, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1930
    .line 1931
    iget-object v12, v3, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1932
    .line 1933
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v8

    .line 1937
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v9

    .line 1941
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v11

    .line 1945
    filled-new-array {v8, v9, v11, v12}, [Ljava/lang/Object;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v8

    .line 1949
    const/16 v9, 0x7537

    .line 1950
    .line 1951
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1952
    .line 1953
    .line 1954
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1955
    .line 1956
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 1957
    .line 1958
    invoke-virtual {v8, v3}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 1959
    .line 1960
    .line 1961
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1962
    .line 1963
    iget v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 1964
    .line 1965
    iget-object v9, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1966
    .line 1967
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1968
    .line 1969
    .line 1970
    new-instance v11, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;

    .line 1971
    .line 1972
    const/4 v12, 0x1

    .line 1973
    invoke-direct {v11, v12}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1974
    .line 1975
    .line 1976
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v12

    .line 1980
    iget-object v15, v9, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 1981
    .line 1982
    invoke-static {v11, v15, v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1983
    .line 1984
    .line 1985
    move-result-object v11

    .line 1986
    iget-object v9, v9, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1987
    .line 1988
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1989
    .line 1990
    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1991
    .line 1992
    .line 1993
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 1994
    .line 1995
    .line 1996
    iget-object v9, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 1997
    .line 1998
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    .line 1999
    .line 2000
    .line 2001
    move-result v0

    .line 2002
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->shouldSendCompatFakeFocus()Z

    .line 2003
    .line 2004
    .line 2005
    move-result v11

    .line 2006
    invoke-static {v9, v8, v0, v11}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Landroid/os/IBinder;IZZ)Landroid/app/servertransaction/ResumeActivityItem;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v0

    .line 2010
    if-nez v14, :cond_5d

    .line 2011
    .line 2012
    iget-object v8, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2013
    .line 2014
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 2015
    .line 2016
    invoke-virtual {v8, v6, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2017
    .line 2018
    .line 2019
    :goto_2c
    const/4 v6, 0x0

    .line 2020
    goto :goto_2d

    .line 2021
    :cond_5d
    invoke-virtual {v14, v0}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2022
    .line 2023
    .line 2024
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2025
    .line 2026
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 2027
    .line 2028
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2029
    .line 2030
    .line 2031
    invoke-static {v14}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 2032
    .line 2033
    .line 2034
    goto :goto_2c

    .line 2035
    :goto_2d
    aget-boolean v0, v10, v6

    .line 2036
    .line 2037
    if-eqz v0, :cond_5e

    .line 2038
    .line 2039
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v0

    .line 2043
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2044
    .line 2045
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v23

    .line 2049
    const/16 v22, 0x0

    .line 2050
    .line 2051
    const-wide v19, -0x75bb93bc5c15c45bL    # -3.320712706742282E-259

    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    const/16 v21, 0x0

    .line 2057
    .line 2058
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 2059
    .line 2060
    .line 2061
    :cond_5e
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 2062
    .line 2063
    .line 2064
    const/4 v1, 0x1

    .line 2065
    goto/16 :goto_31

    .line 2066
    .line 2067
    :goto_2e
    aget-boolean v0, v10, v6

    .line 2068
    .line 2069
    if-eqz v0, :cond_5f

    .line 2070
    .line 2071
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v0

    .line 2075
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v6

    .line 2079
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2080
    .line 2081
    filled-new-array {v0, v6}, [Ljava/lang/Object;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v23

    .line 2085
    const/16 v21, 0x0

    .line 2086
    .line 2087
    const/16 v22, 0x0

    .line 2088
    .line 2089
    const-wide v19, -0x442927d41653c737L    # -1.9349976448273066E-20

    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2095
    .line 2096
    .line 2097
    :cond_5f
    const-string/jumbo v0, "resumeTopActivityInnerLocked"

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 2101
    .line 2102
    .line 2103
    if-eqz v2, :cond_60

    .line 2104
    .line 2105
    invoke-virtual {v2, v5, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 2106
    .line 2107
    .line 2108
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2109
    .line 2110
    const-string v2, "Restarting because process died: "

    .line 2111
    .line 2112
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2113
    .line 2114
    .line 2115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2116
    .line 2117
    .line 2118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2119
    .line 2120
    .line 2121
    move-result-object v0

    .line 2122
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    .line 2124
    .line 2125
    iget-boolean v0, v3, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    .line 2126
    .line 2127
    if-nez v0, :cond_62

    .line 2128
    .line 2129
    const/4 v2, 0x1

    .line 2130
    iput-boolean v2, v3, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    .line 2131
    .line 2132
    :cond_61
    const/4 v4, 0x0

    .line 2133
    goto :goto_2f

    .line 2134
    :cond_62
    const/4 v2, 0x1

    .line 2135
    if-eqz v7, :cond_61

    .line 2136
    .line 2137
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    .line 2138
    .line 2139
    .line 2140
    move-result v0

    .line 2141
    if-eqz v0, :cond_61

    .line 2142
    .line 2143
    const/4 v4, 0x0

    .line 2144
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 2145
    .line 2146
    .line 2147
    :goto_2f
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2148
    .line 2149
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2150
    .line 2151
    .line 2152
    move v4, v2

    .line 2153
    goto :goto_32

    .line 2154
    :cond_63
    const/4 v2, 0x1

    .line 2155
    const/4 v4, 0x0

    .line 2156
    iget-boolean v0, v3, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    .line 2157
    .line 2158
    if-nez v0, :cond_64

    .line 2159
    .line 2160
    iput-boolean v2, v3, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    .line 2161
    .line 2162
    goto :goto_30

    .line 2163
    :cond_64
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 2164
    .line 2165
    .line 2166
    :goto_30
    aget-boolean v0, v10, v4

    .line 2167
    .line 2168
    if-eqz v0, :cond_65

    .line 2169
    .line 2170
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v0

    .line 2174
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2175
    .line 2176
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 2177
    .line 2178
    .line 2179
    move-result-object v9

    .line 2180
    const/4 v7, 0x0

    .line 2181
    const/4 v8, 0x0

    .line 2182
    const-wide v5, 0x33adeb86033f3c94L    # 9.309635093949374E-60

    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2188
    .line 2189
    .line 2190
    :cond_65
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2191
    .line 2192
    const/4 v1, 0x1

    .line 2193
    invoke-virtual {v0, v3, v1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2194
    .line 2195
    .line 2196
    :goto_31
    move v4, v1

    .line 2197
    :cond_66
    :goto_32
    return v4
.end method

.method public final schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "userLeaving="

    .line 2
    .line 3
    .line 4
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    aget-boolean v1, v1, v2

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 16
    .line 17
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const-wide v3, 0x1a9bf3f3ab2135d3L    # 1.68410844421816E-180

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :try_start_0
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    .line 33
    .line 34
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    filled-new-array {v1, v2, v3, v0, p5}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p5

    .line 66
    const/16 v0, 0x753d

    .line 67
    .line 68
    invoke-static {v0, p5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    iget-object p5, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    .line 73
    iget-object p5, p5, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 78
    .line 79
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 80
    .line 81
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 82
    .line 83
    invoke-static {v1, v2, p2, p3, p4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(Landroid/os/IBinder;ZZZZ)Landroid/app/servertransaction/PauseActivityItem;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p5, v0, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p2

    .line 92
    const-string p3, "ActivityTaskManager"

    .line 93
    .line 94
    const-string p4, "Exception thrown during pause"

    .line 95
    .line 96
    invoke-static {p3, p4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    const/4 p2, 0x0

    .line 100
    iput-object p2, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 101
    .line 102
    iput-object p2, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void
.end method

.method public final sendTaskFragmentInfoChanged()V
    .locals 13

    .line 1
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 2
    .line 3
    if-eqz v2, :cond_6

    .line 4
    .line 5
    iget-object v11, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 6
    .line 7
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {v11, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 24
    .line 25
    iget-object v1, v11, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x1

    .line 42
    sub-int/2addr v1, v3

    .line 43
    :goto_0
    if-ltz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 50
    .line 51
    iget-object v5, v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 52
    .line 53
    if-ne p0, v5, :cond_2

    .line 54
    .line 55
    iget v5, v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    if-eq v5, v3, :cond_4

    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    if-eq v5, v6, :cond_4

    .line 63
    .line 64
    const/4 v6, 0x3

    .line 65
    if-eq v5, v6, :cond_4

    .line 66
    .line 67
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 v4, 0x0

    .line 71
    :cond_4
    if-nez v4, :cond_5

    .line 72
    .line 73
    new-instance v12, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v1, 0x2

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v10, 0x0

    .line 83
    move-object v0, v12

    .line 84
    move-object v3, p0

    .line 85
    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V

    .line 86
    .line 87
    .line 88
    move-object v4, v12

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    iget-object p0, v11, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    .line 91
    .line 92
    iget-object v0, v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    .line 93
    .line 94
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {p0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    const-wide/16 v0, 0x0

    .line 108
    .line 109
    iput-wide v0, v4, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mDeferTime:J

    .line 110
    .line 111
    :goto_1
    invoke-virtual {v11, v4}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_2
    return-void
.end method

.method public final setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public setForceHidden(IZ)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mForceHiddenFlags:I

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    or-int/2addr p1, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    not-int p1, p1

    .line 8
    and-int/2addr p1, v0

    .line 9
    :goto_0
    if-ne v0, p1, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_1
    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mForceHiddenFlags:I

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public setPausingActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    return-void
.end method

.method public final setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRelativeEmbeddedBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRelativeEmbeddedBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string p1, "The TaskFragment is not embedded"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, v0, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 28
    .line 29
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v1, v1, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 50
    .line 51
    if-ne v1, p0, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 56
    .line 57
    invoke-virtual {v1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_3

    .line 69
    .line 70
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 73
    .line 74
    .line 75
    :cond_3
    if-nez p1, :cond_4

    .line 76
    .line 77
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 78
    .line 79
    if-eqz p0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-nez p0, :cond_4

    .line 86
    .line 87
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    if-eqz p1, :cond_5

    .line 94
    .line 95
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_0
    return-void
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 20
    .line 21
    if-eqz v3, :cond_4

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v0, "onTaskFragmentAppeared failed because it is not attached tf="

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p1, "TaskFragmentOrganizerController"

    .line 55
    .line 56
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentAppearedSent:Z

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getPendingTaskFragmentEvent(Lcom/android/server/wm/TaskFragment;I)Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    const/4 v11, 0x0

    .line 93
    const/4 v2, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    move-object v1, v0

    .line 100
    move-object v4, p0

    .line 101
    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_0
    return-void
.end method

.method public final shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x2

    .line 6
    if-eq p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final shouldRemoveSelfOnLastChildRemoval()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public shouldSleepActivities()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final shouldSleepOrShutDownActivities()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public final startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v8, 0x1

    .line 14
    sub-int/2addr v0, v8

    .line 15
    :goto_0
    const/4 v9, 0x0

    .line 16
    if-ltz v0, :cond_24

    .line 17
    .line 18
    iget-object v1, v6, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_23

    .line 31
    .line 32
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 33
    .line 34
    aget-boolean v0, v10, v9

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 49
    .line 50
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v16

    .line 54
    const-wide v12, 0x1538a406f09f3078L    # 1.91874194193073E-206

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    const/4 v14, 0x0

    .line 60
    const/4 v15, 0x0

    .line 61
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 65
    .line 66
    const-string v11, "ActivityTaskManager"

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "Going to pause when pause is already pending for "

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " state="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v1, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_1

    .line 106
    .line 107
    invoke-virtual {v6, v9, v7}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v12, v6, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 111
    .line 112
    if-nez v12, :cond_3

    .line 113
    .line 114
    if-nez v7, :cond_2

    .line 115
    .line 116
    const-string v0, "Trying to pause when nothing is resumed"

    .line 117
    .line 118
    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 124
    .line 125
    .line 126
    :cond_2
    return v9

    .line 127
    :cond_3
    if-ne v12, v7, :cond_4

    .line 128
    .line 129
    const-string v0, "Trying to pause activity that is in process of being resumed"

    .line 130
    .line 131
    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return v9

    .line 135
    :cond_4
    aget-boolean v0, v10, v8

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 144
    .line 145
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v18

    .line 149
    const-wide v14, 0x1e69f28d85d315aL

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    const/16 v16, 0x0

    .line 155
    .line 156
    const/16 v17, 0x0

    .line 157
    .line 158
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    iput-object v12, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 162
    .line 163
    iput-object v12, v6, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 164
    .line 165
    iget-boolean v0, v12, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 166
    .line 167
    if-nez v0, :cond_7

    .line 168
    .line 169
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    const/high16 v1, 0x40000000    # 2.0f

    .line 176
    .line 177
    and-int/2addr v0, v1

    .line 178
    if-nez v0, :cond_6

    .line 179
    .line 180
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 181
    .line 182
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 183
    .line 184
    and-int/lit16 v0, v0, 0x80

    .line 185
    .line 186
    if-eqz v0, :cond_7

    .line 187
    .line 188
    :cond_6
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_7

    .line 197
    .line 198
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :cond_7
    sget-object v13, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 206
    .line 207
    const-string/jumbo v0, "startPausingLocked"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v12, v13, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 219
    .line 220
    .line 221
    move-result-wide v3

    .line 222
    iput-wide v3, v0, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 223
    .line 224
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 225
    .line 226
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 229
    .line 230
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;

    .line 234
    .line 235
    const/4 v4, 0x2

    .line 236
    invoke-direct {v3, v4, v0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    .line 241
    .line 242
    if-eqz v7, :cond_10

    .line 243
    .line 244
    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-nez v0, :cond_9

    .line 249
    .line 250
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 251
    .line 252
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    .line 253
    .line 254
    iget-boolean v0, v0, Lcom/android/server/wm/AppPairController;->mShouldAutoPipByAppPair:Z

    .line 255
    .line 256
    if-eqz v0, :cond_8

    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_8
    move v0, v9

    .line 260
    goto :goto_2

    .line 261
    :cond_9
    :goto_1
    move v0, v8

    .line 262
    :goto_2
    const-string/jumbo v1, "shouldAutoPipWhilePausing"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v12, v1, v2, v9}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eqz v3, :cond_a

    .line 274
    .line 275
    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 276
    .line 277
    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 278
    .line 279
    invoke-static {v4, v12, v7, v3}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 280
    .line 281
    .line 282
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    const/4 v4, 0x5

    .line 287
    if-ne v3, v4, :cond_b

    .line 288
    .line 289
    iput-boolean v9, v12, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 290
    .line 291
    :cond_b
    iget-boolean v3, v12, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 292
    .line 293
    if-eqz v3, :cond_c

    .line 294
    .line 295
    if-eqz v2, :cond_c

    .line 296
    .line 297
    if-eqz v0, :cond_c

    .line 298
    .line 299
    if-eqz v1, :cond_c

    .line 300
    .line 301
    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 302
    .line 303
    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_c

    .line 308
    .line 309
    move v4, v8

    .line 310
    move v3, v9

    .line 311
    goto :goto_4

    .line 312
    :cond_c
    if-nez v1, :cond_e

    .line 313
    .line 314
    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 315
    .line 316
    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 317
    .line 318
    and-int/lit16 v3, v3, 0x4000

    .line 319
    .line 320
    if-eqz v3, :cond_d

    .line 321
    .line 322
    move v3, v8

    .line 323
    goto :goto_3

    .line 324
    :cond_d
    move v3, v9

    .line 325
    :goto_3
    move v4, v9

    .line 326
    goto :goto_4

    .line 327
    :cond_e
    move v3, v9

    .line 328
    move v4, v3

    .line 329
    :goto_4
    if-eqz v1, :cond_f

    .line 330
    .line 331
    if-nez v4, :cond_f

    .line 332
    .line 333
    const-string v1, "entering autoPip failed, userLeaving="

    .line 334
    .line 335
    const-string v5, " resumingOccludesParent="

    .line 336
    .line 337
    const-string v14, " isAutoEnterEnabled="

    .line 338
    .line 339
    invoke-static {v1, v2, v5, v0, v14}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 344
    .line 345
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    const-string v1, "PipTaskOrganizer"

    .line 357
    .line 358
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    :cond_f
    move v14, v3

    .line 362
    move v15, v4

    .line 363
    goto :goto_5

    .line 364
    :cond_10
    move v14, v9

    .line 365
    move v15, v14

    .line 366
    :goto_5
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_15

    .line 371
    .line 372
    if-eqz v15, :cond_13

    .line 373
    .line 374
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-eqz v0, :cond_13

    .line 379
    .line 380
    iput-boolean v8, v12, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    .line 381
    .line 382
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_11

    .line 392
    .line 393
    :goto_6
    move v0, v8

    .line 394
    goto :goto_7

    .line 395
    :cond_11
    const-string/jumbo v1, "startActivityUnchecked"

    .line 396
    .line 397
    .line 398
    invoke-virtual {v12, v1, v9, v9}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-eqz v1, :cond_12

    .line 403
    .line 404
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 405
    .line 406
    if-eqz v1, :cond_12

    .line 407
    .line 408
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_12

    .line 413
    .line 414
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 415
    .line 416
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 417
    .line 418
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 419
    .line 420
    if-eqz v0, :cond_12

    .line 421
    .line 422
    iput-object v12, v0, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_12
    move v0, v9

    .line 426
    :goto_7
    aget-boolean v1, v10, v9

    .line 427
    .line 428
    if-eqz v1, :cond_16

    .line 429
    .line 430
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 435
    .line 436
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v21

    .line 444
    const/16 v19, 0xc

    .line 445
    .line 446
    const/16 v20, 0x0

    .line 447
    .line 448
    const-wide v17, -0x2e680f025a9c19eL

    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    goto :goto_8

    .line 457
    :cond_13
    if-eqz v15, :cond_14

    .line 458
    .line 459
    iput-boolean v8, v12, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    .line 460
    .line 461
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 462
    .line 463
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 464
    .line 465
    invoke-virtual {v0, v12, v1, v9, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;ZZ)Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    aget-boolean v1, v10, v9

    .line 470
    .line 471
    if-eqz v1, :cond_16

    .line 472
    .line 473
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 478
    .line 479
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v21

    .line 487
    const/16 v19, 0xc

    .line 488
    .line 489
    const/16 v20, 0x0

    .line 490
    .line 491
    const-wide v17, -0x39396d3bd43ec298L    # -9.156820699314081E32

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    goto :goto_8

    .line 500
    :cond_14
    const/4 v4, 0x0

    .line 501
    move-object/from16 v0, p0

    .line 502
    .line 503
    move-object v1, v12

    .line 504
    move/from16 v2, p3

    .line 505
    .line 506
    move v3, v14

    .line 507
    move-object/from16 v5, p2

    .line 508
    .line 509
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 513
    .line 514
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 515
    .line 516
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 517
    .line 518
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 519
    .line 520
    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 521
    .line 522
    invoke-virtual {v12, v9}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    iget v4, v12, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 527
    .line 528
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerInternal;->onPackagePausedBG(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 529
    .line 530
    .line 531
    goto :goto_8

    .line 532
    :cond_15
    const/4 v0, 0x0

    .line 533
    iput-object v0, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 534
    .line 535
    iput-object v0, v6, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 536
    .line 537
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 538
    .line 539
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 540
    .line 541
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    :cond_16
    :goto_8
    if-nez p4, :cond_19

    .line 545
    .line 546
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 547
    .line 548
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 549
    .line 550
    if-nez v1, :cond_19

    .line 551
    .line 552
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 553
    .line 554
    if-eqz v0, :cond_17

    .line 555
    .line 556
    goto :goto_9

    .line 557
    :cond_17
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    if-eq v1, v2, :cond_18

    .line 571
    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    const-string v2, "acquireLaunchWakelock: callingPid="

    .line 575
    .line 576
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    const-string v2, ", myPid="

    .line 587
    .line 588
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    const-string v2, ", callers="

    .line 599
    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const/16 v2, 0x14

    .line 604
    .line 605
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .line 618
    .line 619
    :cond_18
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 620
    .line 621
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 622
    .line 623
    .line 624
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 625
    .line 626
    const/16 v1, 0xcc

    .line 627
    .line 628
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    if-nez v2, :cond_19

    .line 633
    .line 634
    sget v2, Lcom/android/server/wm/ActivityTaskSupervisor;->LAUNCH_TIMEOUT:I

    .line 635
    .line 636
    int-to-long v2, v2

    .line 637
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 638
    .line 639
    .line 640
    :cond_19
    :goto_9
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 641
    .line 642
    if-eqz v0, :cond_1f

    .line 643
    .line 644
    if-nez p4, :cond_1a

    .line 645
    .line 646
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 647
    .line 648
    .line 649
    goto :goto_a

    .line 650
    :cond_1a
    aget-boolean v0, v10, v8

    .line 651
    .line 652
    if-eqz v0, :cond_1b

    .line 653
    .line 654
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 655
    .line 656
    const-wide v16, -0x337f533feca4c0b8L    # -3.349422485863747E60

    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    const/16 v18, 0x0

    .line 662
    .line 663
    const/16 v19, 0x0

    .line 664
    .line 665
    const/16 v20, 0x0

    .line 666
    .line 667
    invoke-static/range {v15 .. v20}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    :cond_1b
    :goto_a
    if-eqz v14, :cond_1c

    .line 671
    .line 672
    invoke-virtual {v6, v9, v7}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    .line 673
    .line 674
    .line 675
    return v9

    .line 676
    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 677
    .line 678
    .line 679
    move-result-wide v0

    .line 680
    iput-wide v0, v12, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    .line 681
    .line 682
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 683
    .line 684
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 685
    .line 686
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Lcom/android/server/wm/ActivityRecord$1;

    .line 687
    .line 688
    const-wide/16 v2, 0x1f4

    .line 689
    .line 690
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    .line 692
    .line 693
    aget-boolean v0, v10, v8

    .line 694
    .line 695
    if-eqz v0, :cond_1d

    .line 696
    .line 697
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 698
    .line 699
    const/4 v14, 0x0

    .line 700
    const/4 v15, 0x0

    .line 701
    const-wide v11, -0x239e074ab729ca2eL    # -1.0449915116439603E137

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    const/4 v13, 0x0

    .line 707
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    :cond_1d
    if-nez p4, :cond_1e

    .line 711
    .line 712
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 713
    .line 714
    invoke-virtual {v0, v6, v9}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 715
    .line 716
    .line 717
    :cond_1e
    return v8

    .line 718
    :cond_1f
    if-eqz v15, :cond_20

    .line 719
    .line 720
    invoke-virtual {v12, v13}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    if-eqz v0, :cond_20

    .line 725
    .line 726
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 727
    .line 728
    if-ne v0, v6, :cond_20

    .line 729
    .line 730
    invoke-virtual {v12, v9}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 731
    .line 732
    .line 733
    :cond_20
    aget-boolean v0, v10, v8

    .line 734
    .line 735
    if-eqz v0, :cond_21

    .line 736
    .line 737
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 738
    .line 739
    const-wide v11, 0x7691e86dd6da3348L    # 1.4097481038103826E263

    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    const/4 v13, 0x0

    .line 745
    const/4 v14, 0x0

    .line 746
    const/4 v15, 0x0

    .line 747
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    :cond_21
    if-nez v7, :cond_22

    .line 751
    .line 752
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 753
    .line 754
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 755
    .line 756
    .line 757
    :cond_22
    return v9

    .line 758
    :cond_23
    add-int/lit8 v0, v0, -0x1

    .line 759
    .line 760
    goto/16 :goto_0

    .line 761
    .line 762
    :cond_24
    return v9
.end method

.method public final supportsMultiWindow()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final supportsMultiWindowInDefaultDisplayArea()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 11
    .line 12
    iget-boolean p2, p2, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return v2

    .line 18
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 19
    .line 20
    return v2

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-nez p2, :cond_3

    .line 26
    .line 27
    return v2

    .line 28
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 31
    .line 32
    iget v0, p2, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {p2, v1}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-boolean p2, p2, Lcom/android/server/wm/Task;->mIgnoreDevSettingForNonResizable:Z

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;IZZ)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public toFullString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    const-string v1, " organizerUid="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const-string v1, " organizerProc="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-string v1, " adjacent="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_2
    const/16 p0, 0x7d

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TaskFragment{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " mode="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string/jumbo p0, "}"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v0, 0x6

    .line 24
    invoke-direct {p1, v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance p1, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-direct {p1, v0}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final translateRelativeBoundsToAbsoluteBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTmpAbsBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTmpAbsBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpAbsBounds:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTmpAbsBounds:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    xor-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTmpAbsBounds:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTmpAbsBounds:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTmpAbsBounds:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTmpAbsBounds:Landroid/graphics/Rect;

    .line 64
    .line 65
    return-object p0
.end method

.method public final updateActivityVisibilities(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->process(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 18
    .line 19
    .line 20
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    sget-object p1, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/android/server/wm/SizeCompatPolicyManager;->ensureConfiguration(Lcom/android/server/wm/Task;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final updateOrganizedTaskFragmentSurface()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mDelayOrganizedTaskFragmentSurfaceUpdate:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v0, v1

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 55
    .line 56
    invoke-virtual {v2, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_1
    return-void
.end method

.method public final updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_4

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isClosingWhenResizing()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingChangingContainers:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/graphics/Rect;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez p2, :cond_3

    .line 57
    .line 58
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 59
    .line 60
    iget v2, p2, Landroid/graphics/Point;->x:I

    .line 61
    .line 62
    if-ne v1, v2, :cond_3

    .line 63
    .line 64
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 65
    .line 66
    if-ne v0, p2, :cond_3

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 70
    .line 71
    invoke-virtual {p1, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 75
    .line 76
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_1
    return-void
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x10500000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v0, -0x2710

    .line 28
    .line 29
    :goto_0
    const-wide v1, 0x10500000002L

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 35
    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string p0, "TaskFragment"

    .line 51
    .line 52
    :goto_1
    const-wide v0, 0x10900000003L

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
