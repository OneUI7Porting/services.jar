.class public final Lcom/android/server/wm/Transition;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# instance fields
.field public mAdditionalFlags:I

.field public mAnimationTrack:I

.field public mCanPipOnFinish:Z

.field public final mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

.field public final mChanges:Landroid/util/ArrayMap;

.field public mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

.field public mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

.field public mConfigAtEndActivities:Ljava/util/ArrayList;

.field public mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

.field public final mController:Lcom/android/server/wm/TransitionController;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mFlags:I

.field public mForcePlaying:Z

.field public mIsPlayerEnabled:Z

.field public mIsSeamlessRotation:Z

.field public final mLogger:Lcom/android/server/wm/TransitionController$Logger;

.field public final mOnTopTasksAtReady:Ljava/util/ArrayList;

.field public final mOnTopTasksStart:Ljava/util/ArrayList;

.field public mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field public mParallelCollectType:I

.field public final mParticipants:Landroid/util/ArraySet;

.field public mPipActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPriorVisibilityMightBeDirty:Z

.field public final mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

.field public final mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

.field public mRecentsDisplayId:I

.field public mRemoteTransition:Landroid/window/RemoteTransition;

.field public mStartTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mState:I

.field public mStatusBarTransitionDelay:J

.field public final mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field public mSyncId:I

.field public final mTargetDisplays:Ljava/util/ArrayList;

.field public mTargets:Ljava/util/ArrayList;

.field public final mToken:Lcom/android/server/wm/Transition$Token;

.field mTransactionCompletedListeners:Ljava/util/ArrayList;

.field public mTransientHideTasks:Ljava/util/ArrayList;

.field public mTransientLaunches:Landroid/util/ArrayMap;

.field public mTransitionEndedListeners:Ljava/util/ArrayList;

.field public final mType:I

.field public final mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 13
    .line 14
    new-instance v2, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 20
    .line 21
    new-instance v2, Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 48
    .line 49
    new-instance v2, Landroid/util/ArraySet;

    .line 50
    .line 51
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 65
    .line 66
    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 67
    .line 68
    new-instance v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 69
    .line 70
    invoke-direct {v2}, Lcom/android/server/wm/Transition$ReadyTrackerOld;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 74
    .line 75
    new-instance v2, Lcom/android/server/wm/Transition$ReadyTracker;

    .line 76
    .line 77
    invoke-direct {v2, p0}, Lcom/android/server/wm/Transition$ReadyTracker;-><init>(Lcom/android/server/wm/Transition;)V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 81
    .line 82
    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    .line 89
    .line 90
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 91
    .line 92
    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    .line 93
    .line 94
    new-instance v3, Lcom/android/server/wm/TransitionController$Logger;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v3, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 104
    .line 105
    iput v2, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 106
    .line 107
    iput v2, p0, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    .line 108
    .line 109
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 110
    .line 111
    iput p1, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 112
    .line 113
    iput p2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 114
    .line 115
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 116
    .line 117
    iput-object p4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 118
    .line 119
    new-instance p1, Lcom/android/server/wm/Transition$Token;

    .line 120
    .line 121
    invoke-direct {p1, p0}, Lcom/android/server/wm/Transition$Token;-><init>(Lcom/android/server/wm/Transition;)V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 125
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide p1

    .line 130
    iput-wide p1, v3, Lcom/android/server/wm/TransitionController$Logger;->mCreateWallTimeMs:J

    .line 131
    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 133
    .line 134
    .line 135
    move-result-wide p1

    .line 136
    iput-wide p1, v3, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 137
    .line 138
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 139
    .line 140
    if-eqz p1, :cond_0

    .line 141
    .line 142
    iget-object p1, p3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 145
    .line 146
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 147
    .line 148
    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 149
    .line 150
    if-eqz p1, :cond_1

    .line 151
    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string p2, "Transition is created, t="

    .line 155
    .line 156
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p0, ", caller="

    .line 163
    .line 164
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const/4 p0, 0x5

    .line 168
    const-string p2, "WindowManager"

    .line 169
    .line 170
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_1
    return-void
.end method

.method public static addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v0

    .line 7
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v1, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public static assignLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 17
    .line 18
    iput-boolean v0, p1, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 19
    .line 20
    throw p0
.end method

.method public static calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object v1, v3

    .line 56
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v3}, Landroid/window/TransitionInfo$AnimationOptions;->makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget v4, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    .line 77
    .line 78
    iget v5, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    .line 79
    .line 80
    iget v2, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/window/TransitionInfo$AnimationOptions;->addCustomActivityTransition(ZIII)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 87
    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    if-nez v3, :cond_4

    .line 91
    .line 92
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1}, Landroid/window/TransitionInfo$AnimationOptions;->makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :cond_4
    iget v1, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    .line 99
    .line 100
    iget v4, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    .line 101
    .line 102
    iget v2, v2, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    .line 103
    .line 104
    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/window/TransitionInfo$AnimationOptions;->addCustomActivityTransition(ZIII)V

    .line 105
    .line 106
    .line 107
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    if-eqz p2, :cond_6

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    invoke-static {p1, p0}, Lcom/android/server/wm/Transition;->getLayoutParamsForAnimationsStyle(Ljava/util/ArrayList;I)Landroid/view/WindowManager$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    :goto_3
    if-eqz p2, :cond_8

    .line 119
    .line 120
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 121
    .line 122
    const/4 p1, 0x3

    .line 123
    if-eq p0, p1, :cond_8

    .line 124
    .line 125
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 126
    .line 127
    if-eqz p0, :cond_8

    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    invoke-virtual {v3, p2}, Landroid/window/TransitionInfo$AnimationOptions;->addOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    invoke-static {p2}, Landroid/window/TransitionInfo$AnimationOptions;->makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :cond_8
    :goto_4
    return-object v3
.end method

.method public static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;I)Ljava/util/ArrayList;
    .locals 25

    move-object/from16 v0, p1

    .line 2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 3
    aget-boolean v1, v2, v4

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, 0x357641f0591731bdL    # 3.718078589772125E-51

    const/4 v8, 0x0

    const-string v9, "Start calculating TransitionInfo based on participants: %s"

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    aget-boolean v1, v3, v4

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, 0xa51bfd09a803dffL

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/server/wm/Transition$Targets;

    invoke-direct {v1}, Lcom/android/server/wm/Transition$Targets;-><init>()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_1
    const-string v6, "Transition"

    if-ltz v5, :cond_b

    move-object/from16 v7, p0

    .line 7
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 8
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v9

    if-nez v9, :cond_3

    .line 9
    aget-boolean v6, v3, v4

    if-eqz v6, :cond_2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v13

    const-wide v9, -0x64940b6165c5c105L

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move/from16 v13, p2

    goto/16 :goto_3

    .line 10
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 12
    invoke-virtual {v9}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v10

    if-nez v10, :cond_5

    .line 13
    aget-boolean v6, v3, v4

    if-eqz v6, :cond_2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v14

    const/16 v12, 0xc

    const/4 v13, 0x0

    const-wide v10, -0x7032121ad5e4ca8aL

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    .line 15
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    .line 16
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v12, :cond_8

    if-eqz v11, :cond_6

    .line 17
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x6

    move/from16 v13, p2

    if-ne v13, v12, :cond_7

    .line 18
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 19
    iget-boolean v11, v11, Lcom/android/server/wm/ActivityRecord;->mHiddenWhileEnteringPinnedMode:Z

    if-eqz v11, :cond_7

    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "calculateTargets: Skip to collect entering pip, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move/from16 v13, p2

    :cond_7
    if-eqz v10, :cond_9

    .line 21
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 22
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 23
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v11}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v11

    if-nez v11, :cond_9

    .line 24
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "skip promote to task fragment. parents has no changes. wc="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    move/from16 v13, p2

    :cond_9
    if-eqz v10, :cond_a

    .line 25
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v6}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/high16 v8, 0x40000

    and-int/2addr v6, v8

    if-eqz v6, :cond_a

    goto :goto_3

    .line 26
    :cond_a
    invoke-virtual {v1, v9}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 27
    :cond_b
    aget-boolean v5, v3, v4

    if-eqz v5, :cond_c

    iget-object v5, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, -0x100392630555c6f8L

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_c
    iget-object v5, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v7, 0x0

    :goto_4
    if-ltz v5, :cond_2a

    .line 29
    iget-object v9, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 30
    iget-object v10, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 31
    aget-boolean v11, v3, v4

    if-eqz v11, :cond_d

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide v13, -0x7bbc591a68b0c5d1L    # -4.033105707718502E-288

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_d
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    if-ne v11, v7, :cond_f

    .line 33
    aget-boolean v9, v3, v4

    if-eqz v9, :cond_e

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide v11, -0x5e9fc77bb376cc2dL    # -6.342837275253804E-148

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_5
    const/4 v4, -0x1

    goto/16 :goto_10

    .line 34
    :cond_f
    iget-object v12, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v13

    .line 35
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 36
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v15

    if-eqz v15, :cond_28

    if-eqz v14, :cond_28

    .line 37
    invoke-virtual {v14}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v15

    if-nez v15, :cond_10

    goto/16 :goto_e

    .line 38
    :cond_10
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v15

    if-eqz v15, :cond_11

    .line 39
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_29

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const-wide v13, -0x25ad13ad2acccd76L    # -1.280947603135937E127

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 40
    :cond_11
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v15, :cond_12

    .line 41
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v15

    if-eqz v15, :cond_12

    goto/16 :goto_f

    .line 42
    :cond_12
    iget-object v15, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v15, :cond_13

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-eq v8, v15, :cond_13

    .line 43
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v8, :cond_29

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_29

    .line 44
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result v8

    if-eqz v8, :cond_29

    iget-boolean v8, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v8, :cond_29

    .line 45
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    if-eqz v8, :cond_29

    .line 46
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_29

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "canPromote: allow promotion, target="

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", parent="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_13
    invoke-virtual {v9, v12}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v8

    .line 49
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v14

    sub-int/2addr v14, v4

    :goto_6
    if-ltz v14, :cond_1f

    .line 50
    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v15

    if-ne v12, v15, :cond_14

    move-object/from16 v16, v7

    move-object/from16 v18, v12

    goto/16 :goto_b

    .line 51
    :cond_14
    aget-boolean v16, v3, v4

    if-eqz v16, :cond_15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v22

    const/16 v21, 0x0

    const-wide v18, 0x19bfecb549673b62L

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_15
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    move-object/from16 v16, v7

    if-eqz v4, :cond_16

    .line 53
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_17

    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-eqz v7, :cond_16

    .line 55
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_7

    :cond_16
    move-object/from16 v18, v12

    goto :goto_a

    .line 56
    :cond_17
    :goto_7
    invoke-virtual {v4, v15}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    const/4 v7, 0x1

    .line 57
    aget-boolean v15, v3, v7

    if-eqz v15, :cond_18

    invoke-static {v4}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v23

    const/16 v22, 0x0

    const-wide v19, 0x35c169e944f53a58L    # 9.30855293649066E-50

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    const/4 v15, 0x4

    const/4 v7, 0x3

    if-eq v8, v7, :cond_1a

    if-eq v8, v15, :cond_19

    move-object/from16 v18, v12

    move v12, v8

    goto :goto_8

    :cond_19
    move-object/from16 v18, v12

    const/4 v12, 0x2

    goto :goto_8

    :cond_1a
    move-object/from16 v18, v12

    const/4 v12, 0x1

    :goto_8
    if-eq v4, v7, :cond_1c

    if-eq v4, v15, :cond_1b

    goto :goto_9

    :cond_1b
    const/4 v4, 0x2

    goto :goto_9

    :cond_1c
    const/4 v4, 0x1

    :goto_9
    if-eq v12, v4, :cond_1e

    const/4 v4, 0x1

    .line 58
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_29

    invoke-static {v8}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v23

    const/16 v22, 0x0

    const-wide v19, 0x6a61845989c233aaL    # 2.7460382737481744E204

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 59
    :goto_a
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    .line 60
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_29

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const-wide v19, -0x5751d4667473cf6dL    # -9.801023515249834E-113

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1d
    const/4 v4, 0x1

    .line 61
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_1e

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v19, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v24

    const/16 v23, 0x0

    const-wide v20, 0x6d9a1d968ce03c38L    # 9.218844765689588E219

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    :goto_b
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v7, v16

    move-object/from16 v12, v18

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v16, v7

    .line 62
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    .line 63
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_23

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide v19, -0x65adad8a553ec094L    # -6.899189364683506E-182

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_20
    const/4 v4, 0x1

    .line 64
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_21

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide v19, 0xd199f8fa39d39c7L

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_21
    iget-object v4, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 66
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 67
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-nez v7, :cond_22

    .line 68
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    .line 69
    :cond_22
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_23
    :goto_c
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 71
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_25

    const/4 v7, 0x1

    .line 72
    aget-boolean v8, v3, v7

    if-eqz v8, :cond_24

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide v11, 0xbadc3b08a373fbcL

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    add-int/lit8 v5, v5, 0x1

    .line 73
    invoke-virtual {v1, v4}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 74
    :cond_25
    iget v7, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_26

    .line 75
    iget v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    goto :goto_d

    .line 76
    :cond_26
    iget v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 77
    :goto_d
    iget v7, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_27

    .line 78
    iget v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    :cond_27
    move-object/from16 v7, v16

    goto/16 :goto_5

    .line 79
    :cond_28
    :goto_e
    aget-boolean v7, v3, v4

    if-eqz v7, :cond_29

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "parent can\'t be target "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v23

    const/16 v22, 0x0

    const-wide v19, -0xa86bcf20866cc83L    # -7.586175146368892E257

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    :goto_f
    move-object v7, v11

    goto/16 :goto_5

    :goto_10
    add-int/2addr v5, v4

    const/4 v4, 0x1

    goto/16 :goto_4

    .line 80
    :cond_2a
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v4, :cond_2b

    iget-object v4, v1, Lcom/android/server/wm/Transition$Targets;->mRemovedTargets:Ljava/util/ArrayList;

    if-eqz v4, :cond_2b

    .line 81
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 82
    :cond_2b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_11
    if-ltz v7, :cond_2c

    .line 85
    iget-object v9, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_11

    .line 86
    :cond_2c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    :goto_12
    if-ltz v7, :cond_3b

    .line 87
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 88
    iget-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 89
    invoke-static {v9}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_2d

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v10, :cond_2e

    .line 90
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->needRemoteWallpaperAnim()Z

    move-result v10

    if-eqz v10, :cond_2e

    :cond_2d
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v10, :cond_2f

    .line 91
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    move-result-object v10

    if-eqz v10, :cond_2f

    :cond_2e
    const/4 v10, 0x1

    goto :goto_13

    :cond_2f
    move v10, v11

    .line 92
    :goto_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 93
    invoke-static {v9}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    :goto_14
    if-eqz v9, :cond_3a

    .line 94
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez v12, :cond_30

    goto/16 :goto_19

    .line 95
    :cond_30
    invoke-virtual {v12}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v13

    if-nez v13, :cond_31

    goto :goto_15

    .line 96
    :cond_31
    iget-object v13, v9, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-nez v13, :cond_32

    goto :goto_15

    .line 97
    :cond_32
    iget-object v13, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v13, :cond_33

    if-nez v10, :cond_33

    .line 98
    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    goto/16 :goto_19

    .line 99
    :cond_33
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_36

    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v13, :cond_34

    .line 100
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->needRemoteWallpaperAnim()Z

    move-result v13

    if-eqz v13, :cond_34

    goto :goto_16

    .line 101
    :cond_34
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v13

    if-eqz v13, :cond_35

    if-nez v10, :cond_35

    .line 102
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_35
    :goto_15
    invoke-static {v9}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    goto :goto_14

    :cond_36
    :goto_16
    if-eqz v10, :cond_37

    .line 104
    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_17

    .line 105
    :cond_37
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_17
    iget v10, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_38

    .line 107
    iget-object v10, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_38

    .line 108
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    if-ne v10, v9, :cond_38

    .line 109
    iget v9, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 110
    :cond_38
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_39

    goto :goto_19

    .line 111
    :cond_39
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 112
    :goto_18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v11, v8, :cond_3a

    .line 113
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    add-int/lit8 v11, v11, 0x1

    .line 114
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 115
    invoke-virtual {v1, v8}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    goto :goto_18

    :cond_3a
    :goto_19
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_12

    .line 116
    :cond_3b
    new-instance v0, Landroid/util/SparseArray;

    iget-object v4, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 117
    iget-object v4, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1a
    if-ltz v4, :cond_3c

    .line 118
    iget-object v5, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget v7, v1, Lcom/android/server/wm/Transition$Targets;->mDepthFactor:I

    rem-int/2addr v5, v7

    .line 119
    iget-object v7, v1, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 120
    :cond_3c
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    move v7, v5

    const/4 v5, -0x1

    :goto_1b
    if-ltz v7, :cond_40

    .line 123
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 124
    iget-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_3f

    .line 125
    iget-boolean v10, v9, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    if-eqz v10, :cond_3e

    const/4 v10, -0x1

    if-ne v5, v10, :cond_3d

    .line 126
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 127
    :cond_3d
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3e
    const/4 v10, -0x1

    if-ne v5, v10, :cond_3f

    .line 128
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v9

    if-nez v9, :cond_3f

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 130
    :cond_3f
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c
    add-int/lit8 v7, v7, -0x1

    goto :goto_1b

    :cond_40
    const/4 v7, -0x1

    if-eq v5, v7, :cond_41

    .line 131
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    :goto_1d
    if-ltz v0, :cond_41

    .line 132
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 133
    invoke-virtual {v1, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getCustomListSortedByZ: boost, index="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 135
    :cond_41
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    .line 136
    aget-boolean v0, v2, v0

    if-eqz v0, :cond_43

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x740cacc3e941c48aL    # -4.217413419510966E-251

    const/4 v5, 0x0

    const-string v6, "  Final targets: %s"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    :cond_42
    const/4 v0, 0x1

    .line 137
    aget-boolean v0, v3, v0

    if-eqz v0, :cond_43

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x7f8e28b736a5c6c8L    # -1.587897648457723E-306

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_43
    :goto_1e
    return-object v1
.end method

.method public static calculateTransitionInfo(IILjava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo;
    .locals 29

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Landroid/window/TransitionInfo;

    .line 8
    .line 9
    move/from16 v4, p1

    .line 10
    .line 11
    invoke-direct {v3, v0, v4}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v1, v2}, Lcom/android/server/wm/Transition;->calculateTransitionRoots(Landroid/window/TransitionInfo;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/wm/Transition;->getLayoutParamsForAnimationsStyle(Ljava/util/ArrayList;I)Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-static {v0, v1, v4}, Lcom/android/server/wm/Transition;->calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v0, v1, v6}, Lcom/android/server/wm/Transition;->calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    :goto_0
    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_2

    .line 47
    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    invoke-virtual {v3, v5}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    new-instance v7, Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const/4 v10, 0x0

    .line 63
    :goto_1
    if-ge v10, v8, :cond_86

    .line 64
    .line 65
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 70
    .line 71
    iget-object v12, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 72
    .line 73
    new-instance v13, Landroid/window/TransitionInfo$Change;

    .line 74
    .line 75
    iget-object v14, v12, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 76
    .line 77
    if-eqz v14, :cond_3

    .line 78
    .line 79
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move-object v14, v6

    .line 85
    :goto_2
    invoke-static {v2, v12}, Lcom/android/server/wm/Transition;->getLeashSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    invoke-direct {v13, v14, v15}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 90
    .line 91
    .line 92
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 93
    .line 94
    const/4 v15, 0x1

    .line 95
    if-eqz v14, :cond_4

    .line 96
    .line 97
    iget-boolean v14, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 98
    .line 99
    if-eqz v14, :cond_4

    .line 100
    .line 101
    invoke-virtual {v13, v15}, Landroid/window/TransitionInfo$Change;->setResumedAffordance(Z)V

    .line 102
    .line 103
    .line 104
    :cond_4
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 105
    .line 106
    if-eqz v14, :cond_5

    .line 107
    .line 108
    iget-boolean v14, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 109
    .line 110
    if-eqz v14, :cond_5

    .line 111
    .line 112
    iget-boolean v14, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mAffordanceTargetFreeformTask:Z

    .line 113
    .line 114
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setAffordanceTargetFreeformTask(Z)V

    .line 115
    .line 116
    .line 117
    :cond_5
    iget-object v14, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 118
    .line 119
    if-eqz v14, :cond_6

    .line 120
    .line 121
    iget-object v14, v14, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 122
    .line 123
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    iget-object v14, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 131
    .line 132
    if-eqz v14, :cond_7

    .line 133
    .line 134
    iget-object v6, v14, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 135
    .line 136
    if-eqz v6, :cond_7

    .line 137
    .line 138
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    if-eq v6, v14, :cond_7

    .line 143
    .line 144
    iget-object v6, v14, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setLastParent(Landroid/window/WindowContainerToken;)V

    .line 151
    .line 152
    .line 153
    :cond_7
    invoke-virtual {v11, v12}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 158
    .line 159
    .line 160
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 161
    .line 162
    const/4 v14, 0x6

    .line 163
    const/4 v9, 0x3

    .line 164
    if-eqz v6, :cond_a

    .line 165
    .line 166
    iget-object v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 167
    .line 168
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 169
    .line 170
    .line 171
    move-result-object v16

    .line 172
    if-eqz v16, :cond_9

    .line 173
    .line 174
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-nez v6, :cond_8

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_8
    iget-boolean v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChangeSplitTask:Z

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_9
    :goto_3
    const/4 v6, 0x0

    .line 185
    :goto_4
    if-eqz v6, :cond_a

    .line 186
    .line 187
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eq v6, v15, :cond_a

    .line 192
    .line 193
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eq v6, v9, :cond_a

    .line 198
    .line 199
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-eq v6, v14, :cond_a

    .line 204
    .line 205
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 206
    .line 207
    .line 208
    :cond_a
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    iput v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    .line 213
    .line 214
    iget-object v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 215
    .line 216
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 217
    .line 218
    .line 219
    iget-boolean v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 220
    .line 221
    if-nez v6, :cond_c

    .line 222
    .line 223
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-eqz v6, :cond_b

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_b
    const/4 v6, 0x0

    .line 231
    goto :goto_6

    .line 232
    :cond_c
    :goto_5
    move v6, v15

    .line 233
    :goto_6
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    if-nez v14, :cond_d

    .line 238
    .line 239
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    :goto_7
    xor-int/2addr v14, v15

    .line 244
    goto :goto_8

    .line 245
    :cond_d
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    .line 246
    .line 247
    .line 248
    move-result v17

    .line 249
    if-eqz v17, :cond_e

    .line 250
    .line 251
    move v14, v15

    .line 252
    goto :goto_8

    .line 253
    :cond_e
    iget-object v14, v14, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 254
    .line 255
    if-eqz v14, :cond_f

    .line 256
    .line 257
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    .line 258
    .line 259
    .line 260
    move-result v14

    .line 261
    goto :goto_8

    .line 262
    :cond_f
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    goto :goto_7

    .line 267
    :goto_8
    if-eqz v14, :cond_10

    .line 268
    .line 269
    or-int/lit8 v6, v6, 0x4

    .line 270
    .line 271
    :cond_10
    iget-object v14, v12, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 272
    .line 273
    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 274
    .line 275
    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 276
    .line 277
    iget-object v9, v14, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 278
    .line 279
    iget-boolean v15, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 280
    .line 281
    if-eqz v15, :cond_11

    .line 282
    .line 283
    iget-boolean v15, v9, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 284
    .line 285
    if-eqz v15, :cond_11

    .line 286
    .line 287
    const/4 v15, 0x1

    .line 288
    goto :goto_9

    .line 289
    :cond_11
    const/4 v15, 0x0

    .line 290
    :goto_9
    if-eqz v15, :cond_13

    .line 291
    .line 292
    iget-object v14, v14, Lcom/android/server/wm/BackNavigationController;->mWaitTransitionFinish:Lcom/android/server/wm/Transition;

    .line 293
    .line 294
    if-nez v14, :cond_12

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_12
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 298
    .line 299
    .line 300
    move-result v14

    .line 301
    invoke-virtual {v9, v12, v14}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    goto :goto_b

    .line 306
    :cond_13
    :goto_a
    const/4 v9, 0x0

    .line 307
    :goto_b
    const/high16 v14, 0x20000

    .line 308
    .line 309
    if-eqz v9, :cond_14

    .line 310
    .line 311
    or-int/2addr v6, v14

    .line 312
    :cond_14
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    if-eqz v9, :cond_1a

    .line 317
    .line 318
    const/4 v15, 0x1

    .line 319
    invoke-virtual {v9, v15, v15}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    if-eqz v14, :cond_19

    .line 324
    .line 325
    iget-object v15, v14, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 326
    .line 327
    if-eqz v15, :cond_15

    .line 328
    .line 329
    invoke-virtual {v15}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    .line 330
    .line 331
    .line 332
    move-result v15

    .line 333
    if-eqz v15, :cond_15

    .line 334
    .line 335
    or-int/lit16 v6, v6, 0x800

    .line 336
    .line 337
    :cond_15
    iget-boolean v15, v14, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 338
    .line 339
    if-eqz v15, :cond_16

    .line 340
    .line 341
    const-string v15, "Transition"

    .line 342
    .line 343
    const-string v1, "Unexpected launch-task-behind operation in shell transition"

    .line 344
    .line 345
    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    const/high16 v1, 0x80000

    .line 349
    .line 350
    or-int/2addr v6, v1

    .line 351
    :cond_16
    iget v1, v14, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    .line 352
    .line 353
    const v15, 0x48000

    .line 354
    .line 355
    .line 356
    and-int/2addr v1, v15

    .line 357
    if-ne v1, v15, :cond_17

    .line 358
    .line 359
    or-int v1, v6, v15

    .line 360
    .line 361
    move v6, v1

    .line 362
    :cond_17
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 363
    .line 364
    if-eqz v1, :cond_19

    .line 365
    .line 366
    and-int/lit8 v1, v6, 0x4

    .line 367
    .line 368
    if-nez v1, :cond_19

    .line 369
    .line 370
    invoke-static {v14}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_19

    .line 375
    .line 376
    invoke-virtual {v11, v12}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    const/4 v14, 0x1

    .line 381
    if-eq v1, v14, :cond_18

    .line 382
    .line 383
    const/4 v14, 0x3

    .line 384
    if-ne v1, v14, :cond_19

    .line 385
    .line 386
    :cond_18
    or-int/lit8 v6, v6, 0x4

    .line 387
    .line 388
    :cond_19
    iget-object v1, v9, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 389
    .line 390
    if-eqz v1, :cond_1a

    .line 391
    .line 392
    or-int/lit8 v6, v6, 0x10

    .line 393
    .line 394
    :cond_1a
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    if-eqz v1, :cond_1d

    .line 399
    .line 400
    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 401
    .line 402
    iget-boolean v14, v1, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    .line 403
    .line 404
    if-eqz v14, :cond_1b

    .line 405
    .line 406
    or-int/lit8 v6, v6, 0x10

    .line 407
    .line 408
    :cond_1b
    iget v14, v1, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    .line 409
    .line 410
    or-int/2addr v6, v14

    .line 411
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    .line 412
    .line 413
    .line 414
    move-result v14

    .line 415
    if-eqz v14, :cond_1c

    .line 416
    .line 417
    const/high16 v14, 0x400000

    .line 418
    .line 419
    or-int/2addr v6, v14

    .line 420
    :cond_1c
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 421
    .line 422
    if-eqz v14, :cond_1e

    .line 423
    .line 424
    const/high16 v14, 0x1000000

    .line 425
    .line 426
    or-int/2addr v6, v14

    .line 427
    goto :goto_c

    .line 428
    :cond_1d
    const/4 v15, 0x0

    .line 429
    :cond_1e
    :goto_c
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 430
    .line 431
    .line 432
    move-result-object v14

    .line 433
    if-eqz v14, :cond_1f

    .line 434
    .line 435
    if-nez v9, :cond_1f

    .line 436
    .line 437
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 438
    .line 439
    .line 440
    move-result-object v15

    .line 441
    :cond_1f
    if-eqz v15, :cond_2e

    .line 442
    .line 443
    new-instance v14, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;

    .line 444
    .line 445
    const/4 v9, 0x6

    .line 446
    invoke-direct {v14, v9}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;-><init>(I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v15, v14}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    if-eqz v9, :cond_20

    .line 454
    .line 455
    or-int/lit16 v6, v6, 0x200

    .line 456
    .line 457
    :cond_20
    new-instance v9, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 458
    .line 459
    const/4 v14, 0x6

    .line 460
    invoke-direct {v9, v14}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v15, v9}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 464
    .line 465
    .line 466
    move-result-object v9

    .line 467
    if-eqz v9, :cond_21

    .line 468
    .line 469
    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 470
    .line 471
    goto :goto_d

    .line 472
    :cond_21
    const/4 v9, 0x0

    .line 473
    :goto_d
    if-eqz v9, :cond_27

    .line 474
    .line 475
    if-eq v9, v1, :cond_22

    .line 476
    .line 477
    iget-object v14, v9, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 478
    .line 479
    if-eqz v14, :cond_23

    .line 480
    .line 481
    iget-object v14, v14, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 482
    .line 483
    if-eqz v14, :cond_23

    .line 484
    .line 485
    :cond_22
    move/from16 v22, v8

    .line 486
    .line 487
    goto :goto_e

    .line 488
    :cond_23
    if-eqz v1, :cond_24

    .line 489
    .line 490
    iget-object v14, v15, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 491
    .line 492
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 493
    .line 494
    .line 495
    move-result v14

    .line 496
    move/from16 v22, v8

    .line 497
    .line 498
    iget-object v8, v15, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 499
    .line 500
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 501
    .line 502
    .line 503
    move-result v8

    .line 504
    if-ge v14, v8, :cond_25

    .line 505
    .line 506
    :goto_e
    or-int/lit16 v6, v6, 0x4000

    .line 507
    .line 508
    goto :goto_f

    .line 509
    :cond_24
    move/from16 v22, v8

    .line 510
    .line 511
    :cond_25
    if-eqz v1, :cond_28

    .line 512
    .line 513
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    if-eqz v8, :cond_28

    .line 518
    .line 519
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 520
    .line 521
    .line 522
    move-result-object v8

    .line 523
    if-eqz v8, :cond_28

    .line 524
    .line 525
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 526
    .line 527
    .line 528
    move-result-object v8

    .line 529
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 530
    .line 531
    .line 532
    move-result-object v14

    .line 533
    if-ne v8, v14, :cond_26

    .line 534
    .line 535
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 536
    .line 537
    .line 538
    move-result-object v8

    .line 539
    iget-object v8, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 540
    .line 541
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 542
    .line 543
    .line 544
    move-result v8

    .line 545
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 550
    .line 551
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    if-ge v8, v1, :cond_28

    .line 556
    .line 557
    goto :goto_e

    .line 558
    :cond_26
    iget-object v8, v15, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 559
    .line 560
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    iget-object v8, v15, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 569
    .line 570
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 571
    .line 572
    .line 573
    move-result-object v9

    .line 574
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 575
    .line 576
    .line 577
    move-result v8

    .line 578
    if-ge v1, v8, :cond_28

    .line 579
    .line 580
    goto :goto_e

    .line 581
    :cond_27
    move/from16 v22, v8

    .line 582
    .line 583
    :cond_28
    :goto_f
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 588
    .line 589
    .line 590
    move-result v8

    .line 591
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    iget-object v9, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 596
    .line 597
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 598
    .line 599
    .line 600
    move-result-object v14

    .line 601
    iget-boolean v15, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 602
    .line 603
    if-eqz v15, :cond_2a

    .line 604
    .line 605
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 606
    .line 607
    .line 608
    move-result v15

    .line 609
    if-ne v8, v15, :cond_29

    .line 610
    .line 611
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 612
    .line 613
    .line 614
    move-result v9

    .line 615
    if-ne v1, v9, :cond_29

    .line 616
    .line 617
    goto :goto_10

    .line 618
    :cond_29
    const/4 v9, 0x0

    .line 619
    goto :goto_11

    .line 620
    :cond_2a
    :goto_10
    const/4 v9, 0x1

    .line 621
    :goto_11
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 622
    .line 623
    .line 624
    move-result v15

    .line 625
    if-eqz v15, :cond_2c

    .line 626
    .line 627
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 628
    .line 629
    .line 630
    move-result v15

    .line 631
    if-ne v8, v15, :cond_2b

    .line 632
    .line 633
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 634
    .line 635
    .line 636
    move-result v8

    .line 637
    if-ne v1, v8, :cond_2b

    .line 638
    .line 639
    goto :goto_12

    .line 640
    :cond_2b
    const/4 v1, 0x0

    .line 641
    goto :goto_13

    .line 642
    :cond_2c
    :goto_12
    const/4 v1, 0x1

    .line 643
    :goto_13
    if-eqz v9, :cond_2d

    .line 644
    .line 645
    if-eqz v1, :cond_2d

    .line 646
    .line 647
    const/4 v1, 0x1

    .line 648
    goto :goto_14

    .line 649
    :cond_2d
    const/4 v1, 0x0

    .line 650
    :goto_14
    if-eqz v1, :cond_35

    .line 651
    .line 652
    or-int/lit16 v1, v6, 0x400

    .line 653
    .line 654
    move v6, v1

    .line 655
    goto :goto_17

    .line 656
    :cond_2e
    move/from16 v22, v8

    .line 657
    .line 658
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    if-eqz v1, :cond_30

    .line 663
    .line 664
    or-int/lit8 v8, v6, 0x20

    .line 665
    .line 666
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    if-eqz v1, :cond_2f

    .line 671
    .line 672
    or-int/lit16 v6, v6, 0xa0

    .line 673
    .line 674
    goto :goto_17

    .line 675
    :cond_2f
    move v6, v8

    .line 676
    goto :goto_17

    .line 677
    :cond_30
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    if-eqz v1, :cond_31

    .line 682
    .line 683
    const/4 v1, 0x1

    .line 684
    goto :goto_15

    .line 685
    :cond_31
    const/4 v1, 0x0

    .line 686
    :goto_15
    if-eqz v1, :cond_32

    .line 687
    .line 688
    or-int/lit8 v6, v6, 0x2

    .line 689
    .line 690
    goto :goto_17

    .line 691
    :cond_32
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    .line 692
    .line 693
    .line 694
    move-result v1

    .line 695
    const/16 v8, 0x7db

    .line 696
    .line 697
    if-ne v1, v8, :cond_33

    .line 698
    .line 699
    const/4 v1, 0x1

    .line 700
    goto :goto_16

    .line 701
    :cond_33
    const/4 v1, 0x0

    .line 702
    :goto_16
    if-eqz v1, :cond_34

    .line 703
    .line 704
    or-int/lit16 v6, v6, 0x100

    .line 705
    .line 706
    goto :goto_17

    .line 707
    :cond_34
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    .line 708
    .line 709
    .line 710
    move-result v1

    .line 711
    const/16 v8, 0x7d0

    .line 712
    .line 713
    if-lt v1, v8, :cond_35

    .line 714
    .line 715
    const/16 v8, 0xbb7

    .line 716
    .line 717
    if-gt v1, v8, :cond_35

    .line 718
    .line 719
    const/high16 v1, 0x10000

    .line 720
    .line 721
    or-int/2addr v6, v1

    .line 722
    :cond_35
    :goto_17
    iget v1, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 723
    .line 724
    and-int/lit8 v8, v1, 0x8

    .line 725
    .line 726
    if-eqz v8, :cond_36

    .line 727
    .line 728
    and-int/lit8 v8, v1, 0x10

    .line 729
    .line 730
    if-nez v8, :cond_36

    .line 731
    .line 732
    const/high16 v8, 0x40000

    .line 733
    .line 734
    or-int/2addr v6, v8

    .line 735
    :cond_36
    and-int/lit8 v8, v1, 0x20

    .line 736
    .line 737
    if-eqz v8, :cond_37

    .line 738
    .line 739
    const/high16 v8, 0x100000

    .line 740
    .line 741
    or-int/2addr v6, v8

    .line 742
    :cond_37
    and-int/lit8 v1, v1, 0x40

    .line 743
    .line 744
    if-eqz v1, :cond_38

    .line 745
    .line 746
    const/high16 v1, 0x400000

    .line 747
    .line 748
    or-int/2addr v6, v1

    .line 749
    :cond_38
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 750
    .line 751
    if-eqz v1, :cond_39

    .line 752
    .line 753
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    if-eqz v1, :cond_39

    .line 758
    .line 759
    const/high16 v1, 0x2000000

    .line 760
    .line 761
    or-int/2addr v6, v1

    .line 762
    :cond_39
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->allowEdgeExtension()Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    if-nez v1, :cond_3a

    .line 767
    .line 768
    const/high16 v1, 0x4000000

    .line 769
    .line 770
    or-int/2addr v6, v1

    .line 771
    :cond_3a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 772
    .line 773
    if-eqz v1, :cond_3c

    .line 774
    .line 775
    iget v1, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 776
    .line 777
    const/high16 v8, 0x10000

    .line 778
    .line 779
    and-int/2addr v8, v1

    .line 780
    if-eqz v8, :cond_3b

    .line 781
    .line 782
    const/high16 v8, 0x10000000

    .line 783
    .line 784
    or-int/2addr v6, v8

    .line 785
    :cond_3b
    const/high16 v8, 0x20000

    .line 786
    .line 787
    and-int/2addr v1, v8

    .line 788
    if-eqz v1, :cond_3c

    .line 789
    .line 790
    const/high16 v1, 0x20000000

    .line 791
    .line 792
    or-int/2addr v6, v1

    .line 793
    :cond_3c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 794
    .line 795
    if-eqz v1, :cond_3e

    .line 796
    .line 797
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    if-eqz v1, :cond_3d

    .line 802
    .line 803
    const/4 v1, 0x1

    .line 804
    goto :goto_18

    .line 805
    :cond_3d
    const/4 v1, 0x0

    .line 806
    :goto_18
    if-eqz v1, :cond_3e

    .line 807
    .line 808
    const/high16 v1, 0x8000000

    .line 809
    .line 810
    or-int/2addr v6, v1

    .line 811
    :cond_3e
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    if-eqz v1, :cond_3f

    .line 816
    .line 817
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 822
    .line 823
    if-eqz v1, :cond_3f

    .line 824
    .line 825
    const/high16 v1, 0x40000000    # 2.0f

    .line 826
    .line 827
    or-int/2addr v6, v1

    .line 828
    :cond_3f
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 832
    .line 833
    .line 834
    move-result v1

    .line 835
    iput v1, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    .line 836
    .line 837
    iget v1, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    .line 838
    .line 839
    invoke-static {v12}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    .line 840
    .line 841
    .line 842
    move-result v6

    .line 843
    invoke-virtual {v13, v1, v6}, Landroid/window/TransitionInfo$Change;->setDisplayId(II)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    const/4 v6, 0x3

    .line 851
    if-eq v1, v6, :cond_40

    .line 852
    .line 853
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 854
    .line 855
    .line 856
    move-result v1

    .line 857
    const/4 v6, 0x1

    .line 858
    if-ne v1, v6, :cond_42

    .line 859
    .line 860
    goto :goto_19

    .line 861
    :cond_40
    const/4 v6, 0x1

    .line 862
    :goto_19
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    sub-int/2addr v1, v6

    .line 867
    :goto_1a
    if-ltz v1, :cond_42

    .line 868
    .line 869
    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v6

    .line 873
    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 874
    .line 875
    invoke-virtual {v12, v6}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 876
    .line 877
    .line 878
    move-result v6

    .line 879
    if-eqz v6, :cond_41

    .line 880
    .line 881
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 882
    .line 883
    .line 884
    move-result v1

    .line 885
    const v6, 0x8000

    .line 886
    .line 887
    .line 888
    or-int/2addr v1, v6

    .line 889
    invoke-virtual {v13, v1}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 890
    .line 891
    .line 892
    goto :goto_1b

    .line 893
    :cond_41
    add-int/lit8 v1, v1, -0x1

    .line 894
    .line 895
    goto :goto_1a

    .line 896
    :cond_42
    :goto_1b
    const/4 v1, 0x4

    .line 897
    invoke-virtual {v13, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    if-nez v1, :cond_44

    .line 902
    .line 903
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    const/4 v6, 0x1

    .line 908
    if-eq v1, v6, :cond_43

    .line 909
    .line 910
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 911
    .line 912
    .line 913
    move-result v1

    .line 914
    const/4 v6, 0x3

    .line 915
    if-eq v1, v6, :cond_43

    .line 916
    .line 917
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 918
    .line 919
    .line 920
    move-result v1

    .line 921
    const/4 v6, 0x6

    .line 922
    if-ne v1, v6, :cond_44

    .line 923
    .line 924
    :cond_43
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    :cond_44
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 936
    .line 937
    .line 938
    move-result-object v6

    .line 939
    if-eqz v6, :cond_45

    .line 940
    .line 941
    iget-boolean v8, v6, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 942
    .line 943
    if-eqz v8, :cond_45

    .line 944
    .line 945
    const/4 v8, 0x1

    .line 946
    goto :goto_1c

    .line 947
    :cond_45
    const/4 v8, 0x0

    .line 948
    :goto_1c
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 949
    .line 950
    .line 951
    move-result-object v9

    .line 952
    if-eqz v1, :cond_5a

    .line 953
    .line 954
    new-instance v15, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 955
    .line 956
    invoke-direct {v15}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 957
    .line 958
    .line 959
    const/4 v14, 0x1

    .line 960
    invoke-virtual {v1, v15, v14}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v13, v15}, Landroid/window/TransitionInfo$Change;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 964
    .line 965
    .line 966
    move-object/from16 v19, v7

    .line 967
    .line 968
    const/4 v15, 0x0

    .line 969
    invoke-virtual {v1, v14, v15}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 970
    .line 971
    .line 972
    move-result-object v7

    .line 973
    if-nez v7, :cond_47

    .line 974
    .line 975
    :goto_1d
    move/from16 v20, v10

    .line 976
    .line 977
    :cond_46
    :goto_1e
    const/4 v15, -0x1

    .line 978
    goto :goto_21

    .line 979
    :cond_47
    invoke-virtual {v7, v15}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 980
    .line 981
    .line 982
    move-result-object v14

    .line 983
    if-nez v14, :cond_48

    .line 984
    .line 985
    goto :goto_1d

    .line 986
    :cond_48
    iget-object v15, v14, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 987
    .line 988
    if-eqz v15, :cond_49

    .line 989
    .line 990
    iget v15, v15, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 991
    .line 992
    goto :goto_1f

    .line 993
    :cond_49
    const/4 v15, -0x1

    .line 994
    :goto_1f
    if-ltz v15, :cond_4a

    .line 995
    .line 996
    move/from16 v20, v10

    .line 997
    .line 998
    goto :goto_21

    .line 999
    :cond_4a
    iget-object v15, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1000
    .line 1001
    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1002
    .line 1003
    move/from16 v20, v10

    .line 1004
    .line 1005
    const/4 v10, 0x3

    .line 1006
    if-eq v15, v10, :cond_4b

    .line 1007
    .line 1008
    goto :goto_21

    .line 1009
    :cond_4b
    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1010
    .line 1011
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1012
    .line 1013
    iget-object v10, v10, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1014
    .line 1015
    if-ne v14, v10, :cond_46

    .line 1016
    .line 1017
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    .line 1018
    .line 1019
    .line 1020
    move-result v7

    .line 1021
    if-nez v7, :cond_4c

    .line 1022
    .line 1023
    goto :goto_1e

    .line 1024
    :cond_4c
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    .line 1025
    .line 1026
    if-eqz v7, :cond_4d

    .line 1027
    .line 1028
    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1029
    .line 1030
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1031
    .line 1032
    iget-boolean v7, v7, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 1033
    .line 1034
    if-nez v7, :cond_4d

    .line 1035
    .line 1036
    :goto_20
    goto :goto_1e

    .line 1037
    :cond_4d
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 1038
    .line 1039
    if-eqz v7, :cond_4e

    .line 1040
    .line 1041
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1042
    .line 1043
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 1044
    .line 1045
    invoke-virtual {v7, v1}, Lcom/android/server/wm/ChangeTransitionController;->isInChangeTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 1046
    .line 1047
    .line 1048
    move-result v7

    .line 1049
    if-eqz v7, :cond_4e

    .line 1050
    .line 1051
    goto :goto_20

    .line 1052
    :cond_4e
    iget-object v7, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1053
    .line 1054
    iget v15, v7, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1055
    .line 1056
    :goto_21
    invoke-virtual {v13, v15}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 1057
    .line 1058
    .line 1059
    const/4 v7, 0x0

    .line 1060
    invoke-virtual {v1, v7}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v10

    .line 1064
    if-eqz v10, :cond_55

    .line 1065
    .line 1066
    iget-object v7, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1067
    .line 1068
    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v7

    .line 1072
    if-eqz v7, :cond_4f

    .line 1073
    .line 1074
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    .line 1075
    .line 1076
    .line 1077
    move-result v7

    .line 1078
    invoke-virtual {v13, v7}, Landroid/window/TransitionInfo$Change;->setAllowEnterPip(Z)V

    .line 1079
    .line 1080
    .line 1081
    :cond_4f
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1082
    .line 1083
    .line 1084
    move-result v7

    .line 1085
    if-nez v7, :cond_50

    .line 1086
    .line 1087
    goto :goto_22

    .line 1088
    :cond_50
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 1089
    .line 1090
    .line 1091
    move-result v7

    .line 1092
    if-eqz v7, :cond_51

    .line 1093
    .line 1094
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 1095
    .line 1096
    .line 1097
    move-result v7

    .line 1098
    if-eqz v7, :cond_51

    .line 1099
    .line 1100
    goto :goto_22

    .line 1101
    :cond_51
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v7

    .line 1105
    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 1106
    .line 1107
    .line 1108
    move-result v7

    .line 1109
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v14

    .line 1113
    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 1114
    .line 1115
    .line 1116
    move-result v14

    .line 1117
    if-eq v7, v14, :cond_52

    .line 1118
    .line 1119
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    .line 1120
    .line 1121
    .line 1122
    goto :goto_22

    .line 1123
    :cond_52
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 1124
    .line 1125
    .line 1126
    move-result v14

    .line 1127
    if-eqz v14, :cond_55

    .line 1128
    .line 1129
    iget-object v14, v10, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1130
    .line 1131
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    .line 1132
    .line 1133
    .line 1134
    move-result v14

    .line 1135
    if-eqz v14, :cond_53

    .line 1136
    .line 1137
    goto :goto_22

    .line 1138
    :cond_53
    iget-object v10, v10, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1139
    .line 1140
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v10

    .line 1144
    if-nez v10, :cond_54

    .line 1145
    .line 1146
    goto :goto_22

    .line 1147
    :cond_54
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v10

    .line 1151
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 1152
    .line 1153
    .line 1154
    move-result v10

    .line 1155
    if-eq v7, v10, :cond_55

    .line 1156
    .line 1157
    invoke-virtual {v13, v10}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    .line 1158
    .line 1159
    .line 1160
    :cond_55
    :goto_22
    new-instance v7, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 1161
    .line 1162
    const/4 v10, 0x1

    .line 1163
    invoke-direct {v7, v10}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v7

    .line 1170
    if-nez v7, :cond_56

    .line 1171
    .line 1172
    const/4 v10, 0x0

    .line 1173
    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v7

    .line 1177
    :cond_56
    if-eqz v7, :cond_57

    .line 1178
    .line 1179
    const/4 v10, 0x1

    .line 1180
    invoke-virtual {v7, v10}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v7

    .line 1184
    goto :goto_23

    .line 1185
    :cond_57
    const/4 v7, 0x0

    .line 1186
    :goto_23
    if-nez v7, :cond_58

    .line 1187
    .line 1188
    move-object/from16 v21, v3

    .line 1189
    .line 1190
    const/4 v10, 0x0

    .line 1191
    goto :goto_24

    .line 1192
    :cond_58
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v10

    .line 1196
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v14

    .line 1200
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBarsWithoutCaptionBar()I

    .line 1201
    .line 1202
    .line 1203
    move-result v15

    .line 1204
    move-object/from16 v21, v3

    .line 1205
    .line 1206
    const/4 v3, 0x0

    .line 1207
    invoke-virtual {v10, v14, v15, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v10

    .line 1211
    invoke-virtual {v10}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v10

    .line 1215
    iget-object v14, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1216
    .line 1217
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v14

    .line 1221
    invoke-static {v10, v14}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v7

    .line 1228
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v14

    .line 1232
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 1233
    .line 1234
    .line 1235
    move-result v15

    .line 1236
    invoke-virtual {v7, v14, v15, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v7

    .line 1240
    invoke-static {v10}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v3

    .line 1244
    invoke-static {v3, v7}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v3

    .line 1248
    invoke-virtual {v3}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v3

    .line 1252
    invoke-virtual {v10, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1253
    .line 1254
    .line 1255
    :goto_24
    if-eqz v10, :cond_59

    .line 1256
    .line 1257
    invoke-virtual {v13, v10}, Landroid/window/TransitionInfo$Change;->setInsetsForRecentsTransition(Landroid/graphics/Rect;)V

    .line 1258
    .line 1259
    .line 1260
    :cond_59
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1261
    .line 1262
    if-eqz v3, :cond_5b

    .line 1263
    .line 1264
    iget-boolean v3, v1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 1265
    .line 1266
    if-nez v3, :cond_5b

    .line 1267
    .line 1268
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1269
    .line 1270
    .line 1271
    move-result v3

    .line 1272
    if-eqz v3, :cond_5b

    .line 1273
    .line 1274
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 1275
    .line 1276
    .line 1277
    move-result v3

    .line 1278
    if-nez v3, :cond_5b

    .line 1279
    .line 1280
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v3

    .line 1284
    if-eqz v3, :cond_5b

    .line 1285
    .line 1286
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v3

    .line 1290
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v3

    .line 1294
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 1295
    .line 1296
    .line 1297
    goto :goto_25

    .line 1298
    :cond_5a
    move-object/from16 v21, v3

    .line 1299
    .line 1300
    move-object/from16 v19, v7

    .line 1301
    .line 1302
    move/from16 v20, v10

    .line 1303
    .line 1304
    iget v3, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 1305
    .line 1306
    const/4 v7, 0x1

    .line 1307
    and-int/2addr v3, v7

    .line 1308
    if-eqz v3, :cond_5b

    .line 1309
    .line 1310
    const/4 v3, 0x3

    .line 1311
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 1312
    .line 1313
    .line 1314
    :cond_5b
    :goto_25
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v3

    .line 1318
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v7

    .line 1322
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v10

    .line 1326
    iget v14, v7, Landroid/graphics/Rect;->left:I

    .line 1327
    .line 1328
    iget v15, v10, Landroid/graphics/Rect;->left:I

    .line 1329
    .line 1330
    sub-int/2addr v14, v15

    .line 1331
    iget v15, v7, Landroid/graphics/Rect;->top:I

    .line 1332
    .line 1333
    iget v2, v10, Landroid/graphics/Rect;->top:I

    .line 1334
    .line 1335
    sub-int/2addr v15, v2

    .line 1336
    invoke-virtual {v13, v14, v15}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v2

    .line 1343
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 1344
    .line 1345
    .line 1346
    move-result v2

    .line 1347
    if-eqz v9, :cond_5f

    .line 1348
    .line 1349
    iget-object v14, v9, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1350
    .line 1351
    iget-boolean v14, v14, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 1352
    .line 1353
    if-nez v14, :cond_5f

    .line 1354
    .line 1355
    invoke-virtual {v13, v10}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    .line 1359
    .line 1360
    .line 1361
    move-result v14

    .line 1362
    if-eqz v14, :cond_5c

    .line 1363
    .line 1364
    iget-object v14, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1365
    .line 1366
    invoke-virtual {v14}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    .line 1367
    .line 1368
    .line 1369
    move-result v14

    .line 1370
    if-nez v14, :cond_5c

    .line 1371
    .line 1372
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v2

    .line 1376
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 1377
    .line 1378
    .line 1379
    move-result v2

    .line 1380
    :cond_5c
    iget-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1381
    .line 1382
    if-eqz v3, :cond_63

    .line 1383
    .line 1384
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    .line 1385
    .line 1386
    .line 1387
    move-result v3

    .line 1388
    if-nez v3, :cond_63

    .line 1389
    .line 1390
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v3

    .line 1394
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 1395
    .line 1396
    .line 1397
    move-result v14

    .line 1398
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 1399
    .line 1400
    .line 1401
    move-result v15

    .line 1402
    if-ne v14, v15, :cond_5d

    .line 1403
    .line 1404
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 1405
    .line 1406
    .line 1407
    move-result v3

    .line 1408
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 1409
    .line 1410
    .line 1411
    move-result v10

    .line 1412
    if-eq v3, v10, :cond_63

    .line 1413
    .line 1414
    :cond_5d
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v3

    .line 1418
    iget v10, v3, Landroid/graphics/Rect;->left:I

    .line 1419
    .line 1420
    if-nez v10, :cond_5e

    .line 1421
    .line 1422
    iget v10, v3, Landroid/graphics/Rect;->top:I

    .line 1423
    .line 1424
    if-nez v10, :cond_5e

    .line 1425
    .line 1426
    iget v10, v3, Landroid/graphics/Rect;->right:I

    .line 1427
    .line 1428
    if-nez v10, :cond_5e

    .line 1429
    .line 1430
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 1431
    .line 1432
    if-eqz v3, :cond_63

    .line 1433
    .line 1434
    :cond_5e
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v3

    .line 1438
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1439
    .line 1440
    .line 1441
    goto :goto_27

    .line 1442
    :cond_5f
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v14

    .line 1446
    if-eqz v14, :cond_60

    .line 1447
    .line 1448
    const/4 v14, 0x1

    .line 1449
    goto :goto_26

    .line 1450
    :cond_60
    const/4 v14, 0x0

    .line 1451
    :goto_26
    if-eqz v14, :cond_61

    .line 1452
    .line 1453
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 1454
    .line 1455
    .line 1456
    move-result v14

    .line 1457
    if-eqz v14, :cond_61

    .line 1458
    .line 1459
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    .line 1460
    .line 1461
    .line 1462
    move-result v14

    .line 1463
    if-eqz v14, :cond_61

    .line 1464
    .line 1465
    iget-object v14, v12, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 1466
    .line 1467
    invoke-virtual {v14}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    .line 1468
    .line 1469
    .line 1470
    move-result v14

    .line 1471
    if-nez v14, :cond_61

    .line 1472
    .line 1473
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v2

    .line 1477
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v2

    .line 1484
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 1485
    .line 1486
    .line 1487
    move-result v2

    .line 1488
    goto :goto_27

    .line 1489
    :cond_61
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1490
    .line 1491
    if-eqz v3, :cond_62

    .line 1492
    .line 1493
    if-eqz v1, :cond_62

    .line 1494
    .line 1495
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isSplitAdjustedMinimalBounds()Z

    .line 1496
    .line 1497
    .line 1498
    move-result v3

    .line 1499
    if-eqz v3, :cond_62

    .line 1500
    .line 1501
    invoke-virtual {v13, v10}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1502
    .line 1503
    .line 1504
    goto :goto_27

    .line 1505
    :cond_62
    invoke-virtual {v13, v7}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1506
    .line 1507
    .line 1508
    :cond_63
    :goto_27
    if-eqz v9, :cond_68

    .line 1509
    .line 1510
    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1511
    .line 1512
    iget-boolean v3, v3, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 1513
    .line 1514
    if-eqz v3, :cond_68

    .line 1515
    .line 1516
    const/4 v3, 0x1

    .line 1517
    if-ne v0, v3, :cond_64

    .line 1518
    .line 1519
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1520
    .line 1521
    .line 1522
    move-result v3

    .line 1523
    const/4 v10, 0x2

    .line 1524
    if-ne v3, v10, :cond_64

    .line 1525
    .line 1526
    const/4 v3, 0x1

    .line 1527
    goto :goto_28

    .line 1528
    :cond_64
    const/4 v3, 0x0

    .line 1529
    :goto_28
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1530
    .line 1531
    if-eqz v10, :cond_65

    .line 1532
    .line 1533
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v10

    .line 1537
    goto :goto_29

    .line 1538
    :cond_65
    const/4 v10, 0x0

    .line 1539
    :goto_29
    if-eqz v10, :cond_66

    .line 1540
    .line 1541
    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1542
    .line 1543
    iget-boolean v15, v10, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 1544
    .line 1545
    goto :goto_2a

    .line 1546
    :cond_66
    const/4 v15, 0x0

    .line 1547
    :goto_2a
    if-nez v3, :cond_67

    .line 1548
    .line 1549
    if-nez v15, :cond_67

    .line 1550
    .line 1551
    const/4 v3, 0x1

    .line 1552
    const/16 v18, 0x1

    .line 1553
    .line 1554
    goto :goto_2b

    .line 1555
    :cond_67
    const/4 v3, 0x1

    .line 1556
    const/16 v18, 0x0

    .line 1557
    .line 1558
    :goto_2b
    xor-int/lit8 v10, v18, 0x1

    .line 1559
    .line 1560
    invoke-virtual {v13, v10}, Landroid/window/TransitionInfo$Change;->setPopOverAnimationNeeded(Z)V

    .line 1561
    .line 1562
    .line 1563
    :cond_68
    iget v3, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1564
    .line 1565
    const/4 v10, 0x5

    .line 1566
    if-ne v3, v10, :cond_69

    .line 1567
    .line 1568
    if-nez v1, :cond_69

    .line 1569
    .line 1570
    if-eqz v9, :cond_69

    .line 1571
    .line 1572
    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1573
    .line 1574
    if-eqz v3, :cond_69

    .line 1575
    .line 1576
    invoke-virtual {v13, v7}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 1577
    .line 1578
    .line 1579
    :cond_69
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    .line 1580
    .line 1581
    if-eqz v3, :cond_6b

    .line 1582
    .line 1583
    if-eqz v9, :cond_6b

    .line 1584
    .line 1585
    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1586
    .line 1587
    if-eqz v3, :cond_6a

    .line 1588
    .line 1589
    iget v14, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1590
    .line 1591
    goto :goto_2c

    .line 1592
    :cond_6a
    const/4 v14, -0x1

    .line 1593
    :goto_2c
    invoke-virtual {v13, v14}, Landroid/window/TransitionInfo$Change;->setTaskIdForActivity(I)V

    .line 1594
    .line 1595
    .line 1596
    :cond_6b
    if-nez v9, :cond_6c

    .line 1597
    .line 1598
    if-eqz v8, :cond_70

    .line 1599
    .line 1600
    :cond_6c
    if-eqz v9, :cond_6d

    .line 1601
    .line 1602
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v3

    .line 1606
    goto :goto_2d

    .line 1607
    :cond_6d
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v3

    .line 1611
    :goto_2d
    if-eqz v3, :cond_6e

    .line 1612
    .line 1613
    iget-object v7, v3, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 1614
    .line 1615
    invoke-virtual {v7}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    .line 1616
    .line 1617
    .line 1618
    move-result v7

    .line 1619
    if-eqz v7, :cond_6e

    .line 1620
    .line 1621
    iget-object v3, v3, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 1622
    .line 1623
    invoke-virtual {v3}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    .line 1624
    .line 1625
    .line 1626
    move-result v3

    .line 1627
    goto :goto_2f

    .line 1628
    :cond_6e
    if-eqz v9, :cond_6f

    .line 1629
    .line 1630
    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1631
    .line 1632
    goto :goto_2e

    .line 1633
    :cond_6f
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v3

    .line 1637
    :goto_2e
    iget-object v3, v3, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1638
    .line 1639
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 1640
    .line 1641
    .line 1642
    move-result v3

    .line 1643
    :goto_2f
    const/16 v7, 0xff

    .line 1644
    .line 1645
    invoke-static {v3, v7}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 1646
    .line 1647
    .line 1648
    move-result v3

    .line 1649
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    .line 1650
    .line 1651
    .line 1652
    :cond_70
    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    .line 1653
    .line 1654
    .line 1655
    move-result v3

    .line 1656
    if-eqz v3, :cond_73

    .line 1657
    .line 1658
    if-eqz v9, :cond_71

    .line 1659
    .line 1660
    if-eqz v5, :cond_71

    .line 1661
    .line 1662
    move-object v3, v5

    .line 1663
    goto :goto_30

    .line 1664
    :cond_71
    invoke-static {}, Lcom/android/window/flags/Flags;->activityEmbeddingOverlayPresentationFlag()Z

    .line 1665
    .line 1666
    .line 1667
    move-result v3

    .line 1668
    if-eqz v3, :cond_72

    .line 1669
    .line 1670
    if-eqz v8, :cond_72

    .line 1671
    .line 1672
    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 1673
    .line 1674
    invoke-virtual {v3}, Landroid/window/TaskFragmentAnimationParams;->hasOverrideAnimation()Z

    .line 1675
    .line 1676
    .line 1677
    move-result v7

    .line 1678
    if-eqz v7, :cond_72

    .line 1679
    .line 1680
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v6

    .line 1684
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v23

    .line 1688
    invoke-virtual {v3}, Landroid/window/TaskFragmentAnimationParams;->getOpenAnimationResId()I

    .line 1689
    .line 1690
    .line 1691
    move-result v24

    .line 1692
    invoke-virtual {v3}, Landroid/window/TaskFragmentAnimationParams;->getChangeAnimationResId()I

    .line 1693
    .line 1694
    .line 1695
    move-result v25

    .line 1696
    invoke-virtual {v3}, Landroid/window/TaskFragmentAnimationParams;->getCloseAnimationResId()I

    .line 1697
    .line 1698
    .line 1699
    move-result v26

    .line 1700
    const/16 v27, 0x0

    .line 1701
    .line 1702
    const/16 v28, 0x0

    .line 1703
    .line 1704
    invoke-static/range {v23 .. v28}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v3

    .line 1708
    goto :goto_30

    .line 1709
    :cond_72
    const/4 v3, 0x0

    .line 1710
    :goto_30
    if-eqz v3, :cond_73

    .line 1711
    .line 1712
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 1713
    .line 1714
    .line 1715
    :cond_73
    if-eqz v9, :cond_74

    .line 1716
    .line 1717
    iget-object v3, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1718
    .line 1719
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 1720
    .line 1721
    .line 1722
    :cond_74
    iget v3, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1723
    .line 1724
    invoke-virtual {v13, v3, v2}, Landroid/window/TransitionInfo$Change;->setRotation(II)V

    .line 1725
    .line 1726
    .line 1727
    iget-object v2, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 1728
    .line 1729
    if-eqz v2, :cond_75

    .line 1730
    .line 1731
    iget v3, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshotLuma:F

    .line 1732
    .line 1733
    invoke-virtual {v13, v2, v3}, Landroid/window/TransitionInfo$Change;->setSnapshot(Landroid/view/SurfaceControl;F)V

    .line 1734
    .line 1735
    .line 1736
    :cond_75
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v2

    .line 1740
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 1741
    .line 1742
    if-eqz v3, :cond_76

    .line 1743
    .line 1744
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v3

    .line 1748
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 1749
    .line 1750
    .line 1751
    :cond_76
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 1752
    .line 1753
    if-eqz v3, :cond_7d

    .line 1754
    .line 1755
    iget-object v3, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 1756
    .line 1757
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setChangeLeash(Landroid/view/SurfaceControl;)V

    .line 1758
    .line 1759
    .line 1760
    iget v3, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1761
    .line 1762
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setChangeTransitMode(I)V

    .line 1763
    .line 1764
    .line 1765
    iget-object v3, v12, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1766
    .line 1767
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1768
    .line 1769
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 1770
    .line 1771
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v3

    .line 1778
    if-nez v3, :cond_77

    .line 1779
    .line 1780
    goto :goto_33

    .line 1781
    :cond_77
    iget-object v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    .line 1782
    .line 1783
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 1784
    .line 1785
    if-gtz v7, :cond_79

    .line 1786
    .line 1787
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 1788
    .line 1789
    if-gtz v7, :cond_79

    .line 1790
    .line 1791
    iget v7, v6, Landroid/graphics/Rect;->right:I

    .line 1792
    .line 1793
    if-gtz v7, :cond_79

    .line 1794
    .line 1795
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1796
    .line 1797
    if-lez v7, :cond_78

    .line 1798
    .line 1799
    goto :goto_31

    .line 1800
    :cond_78
    const/4 v7, 0x0

    .line 1801
    goto :goto_32

    .line 1802
    :cond_79
    :goto_31
    const/4 v7, 0x1

    .line 1803
    :goto_32
    if-eqz v7, :cond_7a

    .line 1804
    .line 1805
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setChangeStartOutsets(Landroid/graphics/Rect;)V

    .line 1806
    .line 1807
    .line 1808
    :cond_7a
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    .line 1809
    .line 1810
    if-eqz v6, :cond_7b

    .line 1811
    .line 1812
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 1813
    .line 1814
    .line 1815
    move-result v3

    .line 1816
    if-eqz v3, :cond_7b

    .line 1817
    .line 1818
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getFreeformThickness()I

    .line 1819
    .line 1820
    .line 1821
    move-result v3

    .line 1822
    new-instance v6, Landroid/graphics/Rect;

    .line 1823
    .line 1824
    invoke-direct {v6, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1825
    .line 1826
    .line 1827
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setChangeEndOutsets(Landroid/graphics/Rect;)V

    .line 1828
    .line 1829
    .line 1830
    :cond_7b
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->hasChangeStartOutsets()Z

    .line 1831
    .line 1832
    .line 1833
    move-result v3

    .line 1834
    if-nez v3, :cond_7c

    .line 1835
    .line 1836
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->hasChangeEndOutsets()Z

    .line 1837
    .line 1838
    .line 1839
    move-result v3

    .line 1840
    if-eqz v3, :cond_7d

    .line 1841
    .line 1842
    :cond_7c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1843
    .line 1844
    const-string/jumbo v6, "updateChangeOutsetsIfNeeded: s="

    .line 1845
    .line 1846
    .line 1847
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeStartOutsets()Landroid/graphics/Rect;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v6

    .line 1854
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1855
    .line 1856
    .line 1857
    const-string v6, ", e="

    .line 1858
    .line 1859
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getChangeEndOutsets()Landroid/graphics/Rect;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v6

    .line 1866
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1867
    .line 1868
    .line 1869
    const-string v6, ", wc="

    .line 1870
    .line 1871
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    .line 1873
    .line 1874
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1875
    .line 1876
    .line 1877
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v3

    .line 1881
    const-string v6, "ChangeTransitionController"

    .line 1882
    .line 1883
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    .line 1885
    .line 1886
    :cond_7d
    :goto_33
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 1887
    .line 1888
    if-eqz v3, :cond_7e

    .line 1889
    .line 1890
    if-eqz v1, :cond_7e

    .line 1891
    .line 1892
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 1893
    .line 1894
    .line 1895
    move-result v3

    .line 1896
    if-eqz v3, :cond_7e

    .line 1897
    .line 1898
    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    .line 1899
    .line 1900
    const/4 v6, 0x0

    .line 1901
    invoke-direct {v3, v6}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1902
    .line 1903
    .line 1904
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v3

    .line 1908
    if-eqz v3, :cond_7e

    .line 1909
    .line 1910
    const/4 v3, 0x1

    .line 1911
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setEnteringPinnedMode(Z)V

    .line 1912
    .line 1913
    .line 1914
    :cond_7e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    .line 1915
    .line 1916
    if-eqz v3, :cond_7f

    .line 1917
    .line 1918
    iget-object v3, v12, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 1919
    .line 1920
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1921
    .line 1922
    .line 1923
    move-result v6

    .line 1924
    invoke-virtual {v3, v0, v6, v4, v13}, Lcom/android/server/wm/DimAnimator;->canCreateDimAnimationLayer(IZLandroid/view/WindowManager$LayoutParams;Landroid/window/TransitionInfo$Change;)Z

    .line 1925
    .line 1926
    .line 1927
    move-result v3

    .line 1928
    if-eqz v3, :cond_7f

    .line 1929
    .line 1930
    const/4 v3, 0x1

    .line 1931
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setTransitionWithDim(Z)V

    .line 1932
    .line 1933
    .line 1934
    goto :goto_34

    .line 1935
    :cond_7f
    const/4 v3, 0x1

    .line 1936
    :goto_34
    iget v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    .line 1937
    .line 1938
    if-eqz v6, :cond_80

    .line 1939
    .line 1940
    move v15, v3

    .line 1941
    goto :goto_35

    .line 1942
    :cond_80
    const/4 v15, 0x0

    .line 1943
    :goto_35
    if-eqz v15, :cond_81

    .line 1944
    .line 1945
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v3

    .line 1949
    iget v6, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    .line 1950
    .line 1951
    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setForceHidingTransit(I)V

    .line 1952
    .line 1953
    .line 1954
    if-eqz v3, :cond_81

    .line 1955
    .line 1956
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 1957
    .line 1958
    .line 1959
    move-result v6

    .line 1960
    if-nez v6, :cond_81

    .line 1961
    .line 1962
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1963
    .line 1964
    .line 1965
    move-result-object v6

    .line 1966
    iget-object v3, v3, Lcom/android/server/wm/TaskDisplayArea;->mFloatingLeashAnchor:Landroid/view/SurfaceControl;

    .line 1967
    .line 1968
    move-object/from16 v7, p3

    .line 1969
    .line 1970
    invoke-virtual {v7, v6, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v3

    .line 1977
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 1978
    .line 1979
    .line 1980
    move-result v6

    .line 1981
    invoke-virtual {v7, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1982
    .line 1983
    .line 1984
    goto :goto_36

    .line 1985
    :cond_81
    move-object/from16 v7, p3

    .line 1986
    .line 1987
    :goto_36
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 1988
    .line 1989
    if-eqz v3, :cond_82

    .line 1990
    .line 1991
    iget v3, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    .line 1992
    .line 1993
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setMinimizeAnimState(I)V

    .line 1994
    .line 1995
    .line 1996
    iget-object v3, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    .line 1997
    .line 1998
    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo$Change;->setMinimizePoint(Landroid/graphics/PointF;)V

    .line 1999
    .line 2000
    .line 2001
    :cond_82
    if-eqz v2, :cond_83

    .line 2002
    .line 2003
    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mFadeInOutAnimationNeeded:Z

    .line 2004
    .line 2005
    if-eqz v3, :cond_83

    .line 2006
    .line 2007
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->setFadeInOutRotationNeeded()V

    .line 2008
    .line 2009
    .line 2010
    const-string/jumbo v3, "transition_info_created"

    .line 2011
    .line 2012
    .line 2013
    const/4 v6, 0x0

    .line 2014
    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    .line 2015
    .line 2016
    .line 2017
    goto :goto_37

    .line 2018
    :cond_83
    const/4 v6, 0x0

    .line 2019
    :goto_37
    if-eqz v1, :cond_84

    .line 2020
    .line 2021
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 2022
    .line 2023
    .line 2024
    move-result v2

    .line 2025
    if-eqz v2, :cond_84

    .line 2026
    .line 2027
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 2028
    .line 2029
    .line 2030
    move-result v2

    .line 2031
    if-eqz v2, :cond_84

    .line 2032
    .line 2033
    iget v1, v1, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 2034
    .line 2035
    invoke-virtual {v13, v1}, Landroid/window/TransitionInfo$Change;->setFreeformStashScale(F)V

    .line 2036
    .line 2037
    .line 2038
    :cond_84
    iget-object v1, v12, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2039
    .line 2040
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 2041
    .line 2042
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 2043
    .line 2044
    iget-object v2, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2045
    .line 2046
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2047
    .line 2048
    invoke-interface {v1, v2}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldSkipAppTransition(I)Z

    .line 2049
    .line 2050
    .line 2051
    move-result v1

    .line 2052
    if-eqz v1, :cond_85

    .line 2053
    .line 2054
    invoke-virtual/range {v21 .. v21}, Landroid/window/TransitionInfo;->getFlags()I

    .line 2055
    .line 2056
    .line 2057
    move-result v1

    .line 2058
    or-int/lit16 v1, v1, 0x400

    .line 2059
    .line 2060
    move-object/from16 v2, v21

    .line 2061
    .line 2062
    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo;->setFlags(I)V

    .line 2063
    .line 2064
    .line 2065
    goto :goto_38

    .line 2066
    :cond_85
    move-object/from16 v2, v21

    .line 2067
    .line 2068
    :goto_38
    invoke-virtual {v2, v13}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 2069
    .line 2070
    .line 2071
    add-int/lit8 v10, v20, 0x1

    .line 2072
    .line 2073
    move-object/from16 v1, p2

    .line 2074
    .line 2075
    move-object v3, v2

    .line 2076
    move-object v2, v7

    .line 2077
    move-object/from16 v7, v19

    .line 2078
    .line 2079
    move/from16 v8, v22

    .line 2080
    .line 2081
    const/4 v6, 0x0

    .line 2082
    goto/16 :goto_1

    .line 2083
    .line 2084
    :cond_86
    move-object v2, v3

    .line 2085
    return-object v2
.end method

.method public static calculateTransitionRoots(Landroid/window/TransitionInfo;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    const/4 v11, 0x0

    .line 8
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge v11, v0, :cond_15

    .line 13
    .line 14
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_d

    .line 29
    .line 30
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto/16 :goto_d

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    goto/16 :goto_d

    .line 49
    .line 50
    :cond_2
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 51
    .line 52
    invoke-virtual {v7, v2}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ltz v3, :cond_3

    .line 57
    .line 58
    goto/16 :goto_d

    .line 59
    .line 60
    :cond_3
    invoke-static {v0}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_SHELL_TRANSITION:Z

    .line 69
    .line 70
    const-string v6, "Transition"

    .line 71
    .line 72
    const/4 v12, 0x1

    .line 73
    if-eqz v5, :cond_8

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_8

    .line 80
    .line 81
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 82
    .line 83
    if-nez v5, :cond_5

    .line 84
    .line 85
    :cond_4
    const/4 v13, 0x0

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    sub-int/2addr v5, v12

    .line 92
    const/4 v13, 0x0

    .line 93
    :goto_1
    if-ltz v5, :cond_7

    .line 94
    .line 95
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    check-cast v14, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 100
    .line 101
    iget-object v15, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 102
    .line 103
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    iget-object v10, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 108
    .line 109
    if-eqz v15, :cond_6

    .line 110
    .line 111
    iget-boolean v14, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 112
    .line 113
    if-eqz v14, :cond_6

    .line 114
    .line 115
    if-ne v10, v0, :cond_6

    .line 116
    .line 117
    move v13, v12

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    if-eqz v10, :cond_4

    .line 124
    .line 125
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_7
    :goto_3
    if-eqz v13, :cond_8

    .line 129
    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string/jumbo v5, "useCommonAncestorFromAffordanceTask: "

    .line 133
    .line 134
    .line 135
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    goto/16 :goto_9

    .line 149
    .line 150
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    sub-int/2addr v5, v12

    .line 155
    :goto_4
    if-ltz v5, :cond_10

    .line 156
    .line 157
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    check-cast v10, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 162
    .line 163
    iget-object v13, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 164
    .line 165
    invoke-static {v13}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    .line 166
    .line 167
    .line 168
    move-result v14

    .line 169
    if-nez v14, :cond_f

    .line 170
    .line 171
    invoke-static {v13}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    if-ne v14, v3, :cond_f

    .line 176
    .line 177
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 178
    .line 179
    if-eqz v14, :cond_a

    .line 180
    .line 181
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    if-eqz v14, :cond_9

    .line 186
    .line 187
    move v14, v12

    .line 188
    goto :goto_5

    .line 189
    :cond_9
    const/4 v14, 0x0

    .line 190
    :goto_5
    if-eqz v14, :cond_a

    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_a
    iget-object v14, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 194
    .line 195
    if-eqz v14, :cond_c

    .line 196
    .line 197
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    if-eqz v15, :cond_c

    .line 202
    .line 203
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    if-eqz v15, :cond_c

    .line 208
    .line 209
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    if-eq v15, v14, :cond_c

    .line 214
    .line 215
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    sub-int/2addr v15, v12

    .line 220
    if-ne v5, v15, :cond_c

    .line 221
    .line 222
    invoke-virtual {v10, v13}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 223
    .line 224
    .line 225
    move-result v15

    .line 226
    const/4 v12, 0x2

    .line 227
    if-eq v15, v12, :cond_b

    .line 228
    .line 229
    const/4 v12, 0x4

    .line 230
    if-ne v15, v12, :cond_c

    .line 231
    .line 232
    :cond_b
    move-object v4, v14

    .line 233
    goto :goto_8

    .line 234
    :cond_c
    :goto_6
    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 235
    .line 236
    .line 237
    move-result v12

    .line 238
    if-nez v12, :cond_d

    .line 239
    .line 240
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    goto :goto_6

    .line 245
    :cond_d
    iget-object v10, v10, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    .line 246
    .line 247
    if-eqz v10, :cond_f

    .line 248
    .line 249
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    if-nez v12, :cond_e

    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_e
    :goto_7
    if-eq v10, v4, :cond_f

    .line 257
    .line 258
    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    if-nez v12, :cond_f

    .line 263
    .line 264
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    goto :goto_7

    .line 269
    :cond_f
    :goto_8
    add-int/lit8 v5, v5, -0x1

    .line 270
    .line 271
    const/4 v12, 0x1

    .line 272
    goto :goto_4

    .line 273
    :cond_10
    :goto_9
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    const/4 v5, 0x1

    .line 278
    xor-int/2addr v3, v5

    .line 279
    if-eqz v3, :cond_11

    .line 280
    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v10, "Did not find common ancestor! Ancestor= "

    .line 284
    .line 285
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v10, " target= "

    .line 292
    .line 293
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    goto :goto_b

    .line 307
    :cond_11
    :goto_a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    if-eq v3, v4, :cond_12

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    goto :goto_a

    .line 318
    :cond_12
    :goto_b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v10, "Transition Root: "

    .line 325
    .line 326
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    const-string v6, "Transition.calculateTransitionRoots"

    .line 345
    .line 346
    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v9, v1}, Lcom/android/server/wm/Transition;->assignLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    invoke-virtual {v9, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 365
    .line 366
    .line 367
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 368
    .line 369
    if-eqz v1, :cond_14

    .line 370
    .line 371
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 376
    .line 377
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 384
    .line 385
    .line 386
    move-result-object v10

    .line 387
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-eqz v0, :cond_13

    .line 392
    .line 393
    move v12, v5

    .line 394
    goto :goto_c

    .line 395
    :cond_13
    const/4 v12, 0x0

    .line 396
    :goto_c
    move-object/from16 v0, p0

    .line 397
    .line 398
    move v1, v2

    .line 399
    move-object v2, v3

    .line 400
    move v3, v6

    .line 401
    move-object v5, v10

    .line 402
    move v6, v12

    .line 403
    invoke-virtual/range {v0 .. v6}, Landroid/window/TransitionInfo;->addRootLeash(ILandroid/view/SurfaceControl;IILandroid/content/res/Configuration;Z)V

    .line 404
    .line 405
    .line 406
    goto :goto_d

    .line 407
    :cond_14
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 412
    .line 413
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 418
    .line 419
    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/window/TransitionInfo;->addRootLeash(ILandroid/view/SurfaceControl;II)V

    .line 420
    .line 421
    .line 422
    :goto_d
    add-int/lit8 v11, v11, 0x1

    .line 423
    .line 424
    goto/16 :goto_0

    .line 425
    .line 426
    :cond_15
    return-void
.end method

.method public static containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 16
    .line 17
    if-ne v2, p0, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    move-object v1, p0

    .line 6
    check-cast v1, Lcom/android/server/wm/Transition$Token;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/Transition$Token;->mTransition:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/wm/Transition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :catch_0
    move-exception v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "Invalid transition token: "

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v2, "Transition"

    .line 33
    .line 34
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object p0
.end method

.method public static getDisplayId(Lcom/android/server/wm/WindowContainer;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    :goto_0
    return p0
.end method

.method public static getLayoutParamsForAnimationsStyle(Ljava/util/ArrayList;I)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    const/4 v3, 0x0

    .line 12
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_3
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda8;

    .line 64
    .line 65
    invoke-direct {v1, p1, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda8;-><init>(ILandroid/util/ArraySet;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    new-instance p1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    invoke-direct {p1, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    new-instance p1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-direct {p1, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_2
    if-eqz p1, :cond_6

    .line 99
    .line 100
    const/4 p0, 0x1

    .line 101
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    goto :goto_3

    .line 106
    :cond_6
    move-object p0, v3

    .line 107
    :goto_3
    if-eqz p0, :cond_7

    .line 108
    .line 109
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 110
    .line 111
    :cond_7
    return-object v3
.end method

.method public static getLeashSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken;->getOrCreateFixedRotationLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p0, v0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 34
    .line 35
    :goto_0
    if-eqz p0, :cond_2

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static isWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_1
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 7
    .line 8
    .line 9
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    invoke-virtual {p0, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-boolean v1, v1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p0, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p0, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 98
    .line 99
    .line 100
    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 101
    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    const/high16 v7, 0x3f800000    # 1.0f

    .line 105
    .line 106
    move-object v2, p0

    .line 107
    move-object v3, p2

    .line 108
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    const/4 p1, -0x1

    .line 124
    invoke-virtual {p0, p2, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 125
    .line 126
    .line 127
    :cond_2
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    if-ne v1, v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v3, -0x1

    .line 9
    const-string v4, "Aborting Transition: "

    .line 10
    .line 11
    const-string v5, "WindowManager"

    .line 12
    .line 13
    if-ne v1, v3, :cond_2

    .line 14
    .line 15
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " in STATE_PENDING called from"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    iput v2, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    if-eqz v1, :cond_4

    .line 52
    .line 53
    if-ne v1, v0, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "Too late to abort. state="

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_4
    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, " in state "

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v3, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, " called from "

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 123
    .line 124
    aget-boolean v1, v1, v0

    .line 125
    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 129
    .line 130
    int-to-long v3, v1

    .line 131
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 132
    .line 133
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    const-wide v6, 0x1114a0668f863630L

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    const/4 v8, 0x1

    .line 147
    const/4 v9, 0x0

    .line 148
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_1
    iput v2, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 152
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 158
    .line 159
    iput-wide v1, v3, Lcom/android/server/wm/TransitionController$Logger;->mAbortTimeNs:J

    .line 160
    .line 161
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 162
    .line 163
    iget-object v2, v1, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 164
    .line 165
    invoke-interface {v2, p0}, Lcom/android/server/wm/TransitionTracer;->logAbortedTransition(Lcom/android/server/wm/Transition;)V

    .line 166
    .line 167
    .line 168
    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 169
    .line 170
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 171
    .line 172
    invoke-virtual {v4, v2}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    sget-object v5, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->NO_DEPENDENCIES:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v2}, Lcom/android/server/wm/BLASTSyncEngine;->removeFromDependencies(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 182
    .line 183
    .line 184
    const/4 v2, 0x0

    .line 185
    move v4, v2

    .line 186
    :goto_2
    iget-object v5, v1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-ge v4, v5, :cond_7

    .line 193
    .line 194
    iget-object v5, v1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 201
    .line 202
    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(Z)V

    .line 203
    .line 204
    .line 205
    add-int/2addr v4, v0

    .line 206
    goto :goto_2

    .line 207
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->invokeTransitionEndedListeners()V

    .line 208
    .line 209
    .line 210
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 211
    .line 212
    if-eqz v0, :cond_9

    .line 213
    .line 214
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 220
    .line 221
    if-eqz v4, :cond_9

    .line 222
    .line 223
    iget-object v4, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 224
    .line 225
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-eqz v4, :cond_8

    .line 230
    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string/jumbo v5, "onTransitionAborted: "

    .line 234
    .line 235
    .line 236
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v5, ", changingPipTasks="

    .line 243
    .line 244
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget-object v5, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 248
    .line 249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    const-string v5, "ChangeTransitionController"

    .line 257
    .line 258
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    iget-object v4, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 262
    .line 263
    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    check-cast v4, Lcom/android/server/wm/Task;

    .line 268
    .line 269
    iput-boolean v2, v4, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    .line 270
    .line 271
    :cond_8
    iget-object v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 274
    .line 275
    .line 276
    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 277
    .line 278
    if-eqz v0, :cond_b

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    iget-object v0, v3, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    .line 284
    .line 285
    if-nez v0, :cond_a

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    if-eqz v0, :cond_b

    .line 293
    .line 294
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 295
    .line 296
    invoke-interface {v0, p0}, Landroid/window/ITransitionPlayer;->transitionAborted(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :catch_0
    move-exception p0

    .line 301
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 302
    .line 303
    .line 304
    :cond_b
    :goto_3
    return-void
.end method

.method public final addFlag(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 5
    .line 6
    return-void
.end method

.method public allReady()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

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
    if-ltz v0, :cond_4

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 45
    .line 46
    iget-boolean v4, v4, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    if-nez v3, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 61
    .line 62
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda11;

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-direct {v3, v4, p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    return-void
.end method

.method public final applyReady()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 15
    .line 16
    iget-object v4, v2, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    move v2, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v2, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :goto_0
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 43
    .line 44
    aget-boolean v1, v4, v1

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 49
    .line 50
    int-to-long v4, v1

    .line 51
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-wide v7, -0x36b50dd81b48ce0fL    # -1.2018282467695568E45

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const/4 v9, 0x7

    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 76
    .line 77
    iget v4, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 78
    .line 79
    invoke-virtual {v1, v4, v2}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    iput-wide v4, v1, Lcom/android/server/wm/TransitionController$Logger;->mReadyTimeNs:J

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 98
    .line 99
    .line 100
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-ge v3, v1, :cond_4

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-static {v1, v2}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->tryStartCollectFromQueue()V

    .line 125
    .line 126
    .line 127
    :cond_5
    return-void
.end method

.method public final buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V
    .locals 11

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    sub-int/2addr v1, v2

    .line 14
    :goto_0
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-ltz v1, :cond_d

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 25
    .line 26
    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 27
    .line 28
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_0
    invoke-static {v3, v5}, Lcom/android/server/wm/Transition;->getLeashSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    :goto_1
    invoke-virtual {p1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-virtual {p1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_2

    .line 80
    .line 81
    move v8, v2

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move v8, v4

    .line 84
    :goto_2
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 85
    .line 86
    if-eqz v9, :cond_3

    .line 87
    .line 88
    if-eqz v8, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 91
    .line 92
    .line 93
    :cond_3
    if-eqz v7, :cond_4

    .line 94
    .line 95
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    move v3, v2

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    move v3, v4

    .line 104
    :goto_3
    if-eqz v7, :cond_5

    .line 105
    .line 106
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-eqz v9, :cond_5

    .line 111
    .line 112
    move v4, v2

    .line 113
    :cond_5
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    if-eqz v9, :cond_6

    .line 117
    .line 118
    if-nez v3, :cond_8

    .line 119
    .line 120
    :cond_6
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ROUNDED_CORNER:Z

    .line 121
    .line 122
    if-eqz v3, :cond_7

    .line 123
    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_7
    invoke-virtual {p1, v6, v10}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v6, v10}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 131
    .line 132
    .line 133
    :cond_8
    :goto_4
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 134
    .line 135
    if-eqz v3, :cond_9

    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-eqz v3, :cond_9

    .line 142
    .line 143
    invoke-virtual {p1, v6}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 144
    .line 145
    .line 146
    :cond_9
    if-eqz v8, :cond_a

    .line 147
    .line 148
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_a

    .line 153
    .line 154
    invoke-virtual {p1, v6, v10}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    .line 159
    .line 160
    invoke-virtual {p1, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 161
    .line 162
    .line 163
    :goto_5
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 177
    .line 178
    iget v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 179
    .line 180
    and-int/lit8 v3, v3, 0x40

    .line 181
    .line 182
    if-nez v3, :cond_c

    .line 183
    .line 184
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    if-eqz v3, :cond_b

    .line 189
    .line 190
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    iget-boolean v3, v3, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 195
    .line 196
    if-eqz v3, :cond_b

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_b
    invoke-static {p1, v5, v6}, Lcom/android/server/wm/Transition;->resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V

    .line 200
    .line 201
    .line 202
    :cond_c
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 207
    .line 208
    if-eqz p0, :cond_f

    .line 209
    .line 210
    check-cast p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    .line 211
    .line 212
    move v1, v4

    .line 213
    :goto_7
    iget-object v5, p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 214
    .line 215
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-ge v1, v5, :cond_f

    .line 220
    .line 221
    iget-object v5, p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->this$0:Lcom/android/server/wm/Transition;

    .line 222
    .line 223
    iget-object v5, v5, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 224
    .line 225
    iget-object v6, p0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 226
    .line 227
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 236
    .line 237
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 241
    .line 242
    if-nez v5, :cond_e

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_e
    invoke-virtual {p1, v5, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 246
    .line 247
    .line 248
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_f
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    sub-int/2addr p0, v2

    .line 256
    :goto_9
    if-ltz p0, :cond_11

    .line 257
    .line 258
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    if-nez v1, :cond_10

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_10
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 270
    .line 271
    invoke-static {p1, v1}, Lcom/android/server/wm/Transition;->assignLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 272
    .line 273
    .line 274
    :goto_a
    add-int/lit8 p0, p0, -0x1

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_11
    :goto_b
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    if-ge v4, p0, :cond_12

    .line 282
    .line 283
    invoke-virtual {p2, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {p1, p0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 292
    .line 293
    .line 294
    add-int/lit8 v4, v4, 0x1

    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_12
    return-void
.end method

.method public final calcParallelCollectType(Landroid/window/WindowContainerTransaction;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_5

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x7

    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string v2, "android.activity.transientLaunch"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 57
    .line 58
    aget-boolean v1, v1, v2

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 63
    .line 64
    const-wide v3, 0x3c17b5315c113ee3L    # 3.213003921393264E-19

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    const-string v6, "Starting a Recents transition which can be parallel."

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 78
    .line 79
    aget-boolean v1, v1, v2

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 84
    .line 85
    const-wide v3, -0x257a196ac496c4d7L    # -1.1860048369741397E128

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v7, 0x0

    .line 93
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    const/4 v1, 0x2

    .line 97
    iput v1, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 98
    .line 99
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    return-void
.end method

.method public final cleanUpInternal()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ge v1, v2, :cond_4

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 19
    .line 20
    iget-object v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iget-object v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    .line 36
    .line 37
    .line 38
    iput-object v3, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 39
    .line 40
    :cond_1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iput v0, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    .line 45
    .line 46
    iget-object v3, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {v3, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2, v0, v0}, Lcom/android/server/wm/Task;->setBoostTaskLayerForFreeform(ZZ)V

    .line 61
    .line 62
    .line 63
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 71
    .line 72
    .line 73
    iput-object v3, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 74
    .line 75
    :cond_5
    return-void
.end method

.method public final collect(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2
    .line 3
    if-ltz v0, :cond_11

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, "don\'t collect wallpaper of other display. caller="

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 p1, 0xa

    .line 44
    .line 45
    const-string p2, "Transition"

    .line 46
    .line 47
    invoke-static {p1, p0, p2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 57
    .line 58
    aget-boolean v0, v0, v1

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 63
    .line 64
    int-to-long v2, v0

    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v4, 0x5

    .line 70
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 79
    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    const/4 v8, 0x1

    .line 89
    const-string v9, "Collecting in transition %d: %s, caller=%s"

    .line 90
    .line 91
    const-wide v6, 0x3fd3e6b4fe643fefL    # 0.31095623820237867

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 101
    .line 102
    aget-boolean v0, v0, v1

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 107
    .line 108
    int-to-long v2, v0

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 114
    .line 115
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    const/4 v7, 0x1

    .line 124
    const/4 v8, 0x0

    .line 125
    const-wide v5, -0x40d82296fef9ccbfL    # -1.8207461154098363E-4

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->snapshotStartState(Lcom/android/server/wm/WindowContainer;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    if-nez p2, :cond_4

    .line 149
    .line 150
    return-void

    .line 151
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-nez p2, :cond_5

    .line 156
    .line 157
    iget-object p2, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 158
    .line 159
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 160
    .line 161
    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    if-eqz p2, :cond_6

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iget-boolean p2, p2, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 175
    .line 176
    if-eqz p2, :cond_6

    .line 177
    .line 178
    return-void

    .line 179
    :cond_6
    iget-object p2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    check-cast p2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 186
    .line 187
    const/4 v0, 0x0

    .line 188
    if-nez p2, :cond_a

    .line 189
    .line 190
    new-instance p2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 191
    .line 192
    invoke-direct {p2, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 196
    .line 197
    .line 198
    iget-object v2, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    if-nez v3, :cond_7

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 208
    .line 209
    iget-object v4, v3, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    .line 210
    .line 211
    if-eqz v4, :cond_8

    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    const/4 v5, 0x6

    .line 218
    if-ne v4, v5, :cond_8

    .line 219
    .line 220
    iget-object v4, v3, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    .line 221
    .line 222
    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    if-eqz v4, :cond_8

    .line 227
    .line 228
    iget-object v3, v3, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    .line 229
    .line 230
    invoke-virtual {v3}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v3}, Landroid/window/TransitionRequestInfo$DisplayChange;->isPhysicalDisplayChanged()Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    goto :goto_1

    .line 239
    :cond_8
    move v3, v0

    .line 240
    :goto_1
    if-eqz v3, :cond_9

    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 247
    .line 248
    if-eqz v3, :cond_9

    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 255
    .line 256
    invoke-virtual {v3, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    if-eqz v3, :cond_9

    .line 261
    .line 262
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 267
    .line 268
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 273
    .line 274
    iget-boolean v2, v2, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 275
    .line 276
    if-eqz v2, :cond_9

    .line 277
    .line 278
    iget v2, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 279
    .line 280
    const/high16 v3, 0x40000

    .line 281
    .line 282
    or-int/2addr v2, v3

    .line 283
    iput v2, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 284
    .line 285
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 286
    .line 287
    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 291
    .line 292
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Transition;->recordDisplay(Lcom/android/server/wm/DisplayContent;)V

    .line 300
    .line 301
    .line 302
    iget-boolean p2, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 303
    .line 304
    if-eqz p2, :cond_10

    .line 305
    .line 306
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 307
    .line 308
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 309
    .line 310
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 311
    .line 312
    iget-object p2, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 313
    .line 314
    iget-object v2, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 315
    .line 316
    if-eqz v2, :cond_b

    .line 317
    .line 318
    move v2, v1

    .line 319
    goto :goto_3

    .line 320
    :cond_b
    move v2, v0

    .line 321
    :goto_3
    if-eqz v2, :cond_d

    .line 322
    .line 323
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-eqz v2, :cond_c

    .line 328
    .line 329
    iget-object v2, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 330
    .line 331
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 332
    .line 333
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 334
    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_c
    iget-object v2, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 338
    .line 339
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 340
    .line 341
    .line 342
    :cond_d
    :goto_4
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    .line 343
    .line 344
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 345
    .line 346
    if-eqz p1, :cond_e

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_e
    move v1, v0

    .line 350
    :goto_5
    if-eqz v1, :cond_10

    .line 351
    .line 352
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_f

    .line 357
    .line 358
    iget-object p1, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 359
    .line 360
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 361
    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 363
    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_f
    iget-object p1, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 367
    .line 368
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 369
    .line 370
    .line 371
    :cond_10
    :goto_6
    return-void

    .line 372
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 373
    .line 374
    const-string p1, "Transition hasn\'t started collecting."

    .line 375
    .line 376
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw p0
.end method

.method public final collectClose(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    aget-boolean v0, v0, v1

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 15
    .line 16
    int-to-long v2, v0

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    const-wide v5, 0xf484ddf43bd3ccbL    # 4.777431964610698E-235

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    const/4 v8, 0x0

    .line 38
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 52
    .line 53
    iput-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 54
    .line 55
    return-void
.end method

.method public collectOrderChanges(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/wm/Task;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-nez p1, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ge v0, v1, :cond_b

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 62
    .line 63
    invoke-static {v1, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 73
    .line 74
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 77
    .line 78
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    add-int/lit8 v4, v4, -0x1

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    :goto_2
    if-ltz v4, :cond_9

    .line 94
    .line 95
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Lcom/android/server/wm/Task;

    .line 100
    .line 101
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eq v7, v1, :cond_3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    if-nez v3, :cond_5

    .line 109
    .line 110
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 120
    .line 121
    if-eqz v7, :cond_6

    .line 122
    .line 123
    if-eqz v5, :cond_6

    .line 124
    .line 125
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-ne v7, v6, :cond_6

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_6

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 140
    .line 141
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-gez v7, :cond_7

    .line 151
    .line 152
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 153
    .line 154
    new-instance v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 155
    .line 156
    invoke-direct {v8, v6}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 163
    .line 164
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    :cond_7
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 169
    .line 170
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 175
    .line 176
    iget v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 177
    .line 178
    or-int/lit8 v9, v9, 0x20

    .line 179
    .line 180
    iput v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 181
    .line 182
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 183
    .line 184
    if-eqz v8, :cond_8

    .line 185
    .line 186
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    if-eqz v8, :cond_8

    .line 191
    .line 192
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 193
    .line 194
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 199
    .line 200
    iget-boolean v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mResumedAffordance:Z

    .line 201
    .line 202
    if-eqz v7, :cond_8

    .line 203
    .line 204
    move-object v5, v6

    .line 205
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_9
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 209
    .line 210
    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    if-eqz v3, :cond_a

    .line 214
    .line 215
    move-object p1, v3

    .line 216
    goto :goto_4

    .line 217
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .line 221
    .line 222
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 223
    .line 224
    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_b
    return-void
.end method

.method public final collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 7
    .line 8
    iget v4, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 9
    .line 10
    invoke-virtual {v3, v4}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget v3, v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    if-eqz v3, :cond_3e

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto/16 :goto_24

    .line 31
    .line 32
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 35
    .line 36
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 37
    .line 38
    if-eqz v3, :cond_3d

    .line 39
    .line 40
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 43
    .line 44
    iget v3, v3, Landroid/view/DisplayInfo;->state:I

    .line 45
    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    .line 48
    goto/16 :goto_23

    .line 49
    .line 50
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 70
    .line 71
    if-nez v3, :cond_4

    .line 72
    .line 73
    new-instance v3, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    .line 74
    .line 75
    invoke-direct {v3, v0}, Lcom/android/server/wm/Transition$ScreenshotFreezer;-><init>(Lcom/android/server/wm/Transition;)V

    .line 76
    .line 77
    .line 78
    iput-object v3, v0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 79
    .line 80
    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 87
    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    iget-boolean v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 91
    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_6

    .line 99
    .line 100
    :cond_5
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 101
    .line 102
    if-eqz v5, :cond_3c

    .line 103
    .line 104
    if-eqz v3, :cond_3c

    .line 105
    .line 106
    iget-boolean v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 107
    .line 108
    if-eqz v5, :cond_3c

    .line 109
    .line 110
    iget v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 111
    .line 112
    if-eqz v5, :cond_3c

    .line 113
    .line 114
    :cond_6
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 115
    .line 116
    const/4 v6, 0x5

    .line 117
    if-eqz v5, :cond_7

    .line 118
    .line 119
    iget v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 120
    .line 121
    if-ne v5, v6, :cond_7

    .line 122
    .line 123
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 124
    .line 125
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 126
    .line 127
    sget-boolean v7, Lcom/android/server/wm/ChangeTransitionController;->DISABLE_LEGACY_RESIZE_TRANSITION:Z

    .line 128
    .line 129
    const/16 v7, 0xe

    .line 130
    .line 131
    invoke-static {v7, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 132
    .line 133
    .line 134
    :cond_7
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 135
    .line 136
    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 137
    .line 138
    check-cast v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    iget-object v7, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->this$0:Lcom/android/server/wm/Transition;

    .line 148
    .line 149
    if-nez v5, :cond_8

    .line 150
    .line 151
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 152
    .line 153
    if-eqz v5, :cond_3c

    .line 154
    .line 155
    iget-object v5, v7, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 156
    .line 157
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 162
    .line 163
    iget-boolean v8, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 164
    .line 165
    if-eqz v8, :cond_3c

    .line 166
    .line 167
    iget v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 168
    .line 169
    if-eqz v5, :cond_3c

    .line 170
    .line 171
    :cond_8
    move-object v5, v1

    .line 172
    :goto_0
    if-eqz v5, :cond_b

    .line 173
    .line 174
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 175
    .line 176
    if-eqz v8, :cond_9

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    if-eqz v8, :cond_9

    .line 183
    .line 184
    iget-object v8, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 185
    .line 186
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    if-eqz v8, :cond_9

    .line 191
    .line 192
    iget-object v8, v7, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 193
    .line 194
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 199
    .line 200
    iget v8, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 201
    .line 202
    if-eqz v8, :cond_9

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_9
    iget-object v8, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 206
    .line 207
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_a

    .line 212
    .line 213
    goto/16 :goto_22

    .line 214
    .line 215
    :cond_a
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    goto :goto_0

    .line 220
    :cond_b
    iget-boolean v5, v7, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    .line 221
    .line 222
    if-eqz v5, :cond_e

    .line 223
    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    if-nez v5, :cond_c

    .line 229
    .line 230
    const/4 v5, 0x0

    .line 231
    goto :goto_2

    .line 232
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 237
    .line 238
    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 239
    .line 240
    :goto_2
    if-eqz v5, :cond_e

    .line 241
    .line 242
    if-eq v5, v1, :cond_d

    .line 243
    .line 244
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_e

    .line 249
    .line 250
    :cond_d
    iget-object v0, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto/16 :goto_22

    .line 256
    .line 257
    :cond_e
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 258
    .line 259
    if-eqz v5, :cond_f

    .line 260
    .line 261
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 262
    .line 263
    aget-boolean v9, v9, v4

    .line 264
    .line 265
    if-eqz v9, :cond_10

    .line 266
    .line 267
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 292
    .line 293
    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v17

    .line 297
    const/4 v15, 0x0

    .line 298
    const-string v16, "Screenshotting %s [%s], caller=%s"

    .line 299
    .line 300
    const-wide v13, 0x5454134e615f3202L    # 1.7152330249604954E98

    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_f
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 310
    .line 311
    aget-boolean v9, v9, v4

    .line 312
    .line 313
    if-eqz v9, :cond_10

    .line 314
    .line 315
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v10

    .line 327
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 332
    .line 333
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v16

    .line 337
    const/4 v14, 0x0

    .line 338
    const/4 v15, 0x0

    .line 339
    const-wide v12, 0x2577fbd80a463065L    # 3.4600248722999966E-128

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    :cond_10
    :goto_3
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BLACK_SNAPSHOT:Z

    .line 348
    .line 349
    const/16 v10, 0x1e

    .line 350
    .line 351
    const-string v11, "Transition.ScreenshotSync"

    .line 352
    .line 353
    const v12, 0x7fffffff

    .line 354
    .line 355
    .line 356
    if-eqz v9, :cond_11

    .line 357
    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    if-eqz v9, :cond_11

    .line 363
    .line 364
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 365
    .line 366
    .line 367
    move-result-object v9

    .line 368
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isSizeRatioChanging()Z

    .line 369
    .line 370
    .line 371
    move-result v9

    .line 372
    if-eqz v9, :cond_11

    .line 373
    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    const-string v3, "BlackSnapshotLayer_WmCore"

    .line 379
    .line 380
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v2, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    iget-object v0, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    iget-object v0, v7, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 420
    .line 421
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    iput-object v2, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 425
    .line 426
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 427
    .line 428
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 429
    .line 430
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 435
    .line 436
    invoke-virtual {v0, v2, v10, v4}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v2, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_20

    .line 452
    .line 453
    :cond_11
    new-instance v9, Landroid/graphics/Rect;

    .line 454
    .line 455
    invoke-direct {v9, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v9, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 459
    .line 460
    .line 461
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 462
    .line 463
    .line 464
    move-result-object v13

    .line 465
    if-eqz v13, :cond_12

    .line 466
    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 468
    .line 469
    .line 470
    move-result-object v13

    .line 471
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    .line 472
    .line 473
    .line 474
    move-result v13

    .line 475
    if-eqz v13, :cond_12

    .line 476
    .line 477
    move v13, v4

    .line 478
    goto :goto_4

    .line 479
    :cond_12
    move v13, v2

    .line 480
    :goto_4
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    .line 481
    .line 482
    const-string v15, ", freezeBounds="

    .line 483
    .line 484
    const-string v8, "ChangeTransitionController"

    .line 485
    .line 486
    if-eqz v14, :cond_1c

    .line 487
    .line 488
    new-instance v12, Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .line 492
    .line 493
    new-instance v10, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;

    .line 494
    .line 495
    invoke-direct {v10, v2}, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    check-cast v10, [Landroid/view/SurfaceControl;

    .line 503
    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 505
    .line 506
    .line 507
    move-result-object v12

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 509
    .line 510
    .line 511
    move-result-object v18

    .line 512
    if-eqz v18, :cond_14

    .line 513
    .line 514
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 515
    .line 516
    if-eqz v6, :cond_14

    .line 517
    .line 518
    new-instance v10, Ljava/util/ArrayList;

    .line 519
    .line 520
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .line 522
    .line 523
    new-instance v12, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;

    .line 524
    .line 525
    invoke-direct {v12, v6, v10, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v6, v12, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    if-nez v6, :cond_13

    .line 536
    .line 537
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 538
    .line 539
    .line 540
    move-result v6

    .line 541
    new-array v6, v6, [Landroid/view/SurfaceControl;

    .line 542
    .line 543
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-object v10, v6

    .line 547
    goto :goto_5

    .line 548
    :cond_13
    const/4 v10, 0x0

    .line 549
    :goto_5
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 550
    .line 551
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 552
    .line 553
    .line 554
    move-result-object v12

    .line 555
    goto/16 :goto_a

    .line 556
    .line 557
    :cond_14
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 558
    .line 559
    if-eqz v6, :cond_1b

    .line 560
    .line 561
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 562
    .line 563
    if-eqz v6, :cond_15

    .line 564
    .line 565
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 566
    .line 567
    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowManagerService;->getExcludeLayers(Lcom/android/server/wm/WindowContainer;)Ljava/util/ArrayList;

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    goto :goto_6

    .line 572
    :cond_15
    new-instance v6, Ljava/util/ArrayList;

    .line 573
    .line 574
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .line 576
    .line 577
    :goto_6
    iget-object v10, v7, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 578
    .line 579
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 583
    .line 584
    .line 585
    move-result-object v10

    .line 586
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    if-eqz v2, :cond_17

    .line 591
    .line 592
    if-nez v10, :cond_16

    .line 593
    .line 594
    goto :goto_7

    .line 595
    :cond_16
    new-instance v10, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;

    .line 596
    .line 597
    const/4 v4, 0x3

    .line 598
    invoke-direct {v10, v4}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2, v10}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 602
    .line 603
    .line 604
    move-result-object v4

    .line 605
    if-eqz v4, :cond_17

    .line 606
    .line 607
    iget-object v10, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 608
    .line 609
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v10

    .line 613
    if-nez v10, :cond_17

    .line 614
    .line 615
    iget-object v10, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 616
    .line 617
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    new-instance v10, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    move-object/from16 v20, v12

    .line 623
    .line 624
    const-string v12, "collectExcludeLayersFromSnapshot: #"

    .line 625
    .line 626
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 630
    .line 631
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    const-string v2, ", exclude="

    .line 635
    .line 636
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    goto :goto_8

    .line 650
    :cond_17
    :goto_7
    move-object/from16 v20, v12

    .line 651
    .line 652
    :goto_8
    new-instance v2, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;

    .line 653
    .line 654
    const/4 v4, 0x1

    .line 655
    invoke-direct {v2, v4}, Lcom/android/server/wm/Transition$ScreenshotFreezer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    move-object v10, v2

    .line 663
    check-cast v10, [Landroid/view/SurfaceControl;

    .line 664
    .line 665
    iget-object v2, v7, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 666
    .line 667
    iget-object v2, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 668
    .line 669
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 670
    .line 671
    if-nez v2, :cond_18

    .line 672
    .line 673
    goto :goto_9

    .line 674
    :cond_18
    iget-object v2, v2, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 675
    .line 676
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 681
    .line 682
    if-eqz v2, :cond_1a

    .line 683
    .line 684
    iget-object v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    .line 685
    .line 686
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 687
    .line 688
    if-gtz v6, :cond_19

    .line 689
    .line 690
    iget v12, v4, Landroid/graphics/Rect;->top:I

    .line 691
    .line 692
    if-gtz v12, :cond_19

    .line 693
    .line 694
    iget v12, v4, Landroid/graphics/Rect;->right:I

    .line 695
    .line 696
    if-gtz v12, :cond_19

    .line 697
    .line 698
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    .line 699
    .line 700
    if-lez v12, :cond_1a

    .line 701
    .line 702
    :cond_19
    iget v12, v9, Landroid/graphics/Rect;->left:I

    .line 703
    .line 704
    sub-int/2addr v12, v6

    .line 705
    iput v12, v9, Landroid/graphics/Rect;->left:I

    .line 706
    .line 707
    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 708
    .line 709
    iget v12, v4, Landroid/graphics/Rect;->top:I

    .line 710
    .line 711
    sub-int/2addr v6, v12

    .line 712
    iput v6, v9, Landroid/graphics/Rect;->top:I

    .line 713
    .line 714
    iget v6, v9, Landroid/graphics/Rect;->right:I

    .line 715
    .line 716
    iget v12, v4, Landroid/graphics/Rect;->right:I

    .line 717
    .line 718
    add-int/2addr v6, v12

    .line 719
    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 720
    .line 721
    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    .line 722
    .line 723
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 724
    .line 725
    add-int/2addr v6, v4

    .line 726
    iput v6, v9, Landroid/graphics/Rect;->bottom:I

    .line 727
    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    .line 729
    .line 730
    const-string v6, "adjustFreezeBoundsIfNeeded: wc="

    .line 731
    .line 732
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    const-string v6, ", outset="

    .line 745
    .line 746
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    .line 750
    .line 751
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    .line 760
    .line 761
    :cond_1a
    :goto_9
    move-object/from16 v12, v20

    .line 762
    .line 763
    goto :goto_a

    .line 764
    :cond_1b
    move-object/from16 v20, v12

    .line 765
    .line 766
    :goto_a
    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 767
    .line 768
    invoke-direct {v2, v12}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v2, v9}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 776
    .line 777
    const/4 v4, 0x1

    .line 778
    invoke-virtual {v2, v4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 783
    .line 784
    invoke-virtual {v2, v4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 789
    .line 790
    invoke-virtual {v2, v10}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 795
    .line 796
    invoke-virtual {v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    const/4 v4, 0x1

    .line 801
    goto :goto_b

    .line 802
    :cond_1c
    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 803
    .line 804
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    invoke-direct {v2, v4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v2, v9}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 812
    .line 813
    .line 814
    move-result-object v2

    .line 815
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 816
    .line 817
    const/4 v4, 0x1

    .line 818
    invoke-virtual {v2, v4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 819
    .line 820
    .line 821
    move-result-object v2

    .line 822
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 823
    .line 824
    invoke-virtual {v2, v4}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    check-cast v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 829
    .line 830
    invoke-virtual {v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    :goto_b
    invoke-static {v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    if-nez v2, :cond_1d

    .line 839
    .line 840
    const/4 v6, 0x0

    .line 841
    goto :goto_c

    .line 842
    :cond_1d
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 843
    .line 844
    .line 845
    move-result-object v6

    .line 846
    :goto_c
    if-eqz v6, :cond_3b

    .line 847
    .line 848
    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 849
    .line 850
    .line 851
    move-result v10

    .line 852
    if-le v10, v4, :cond_3b

    .line 853
    .line 854
    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 855
    .line 856
    .line 857
    move-result v10

    .line 858
    if-gt v10, v4, :cond_1e

    .line 859
    .line 860
    goto/16 :goto_21

    .line 861
    .line 862
    :cond_1e
    const-string v4, ""

    .line 863
    .line 864
    if-eqz v13, :cond_20

    .line 865
    .line 866
    if-eqz v5, :cond_1f

    .line 867
    .line 868
    const-string v5, "_WmCore"

    .line 869
    .line 870
    goto :goto_d

    .line 871
    :cond_1f
    move-object v5, v4

    .line 872
    :goto_d
    const-string v10, "RotationLayer"

    .line 873
    .line 874
    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v5

    .line 878
    goto :goto_e

    .line 879
    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 880
    .line 881
    const-string/jumbo v10, "transition snapshot: "

    .line 882
    .line 883
    .line 884
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v5

    .line 894
    :goto_e
    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 895
    .line 896
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 897
    .line 898
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    .line 899
    .line 900
    iget-object v12, v10, Lcom/android/server/wm/WmScreenshotController;->mShellCommand:Lcom/android/server/wm/WmScreenshotShellCommand;

    .line 901
    .line 902
    iget-boolean v12, v12, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    .line 903
    .line 904
    if-eqz v12, :cond_21

    .line 905
    .line 906
    iget-object v10, v10, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    .line 907
    .line 908
    iget-object v12, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 909
    .line 910
    iget v12, v12, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 911
    .line 912
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 913
    .line 914
    .line 915
    new-instance v13, Ljava/lang/Thread;

    .line 916
    .line 917
    move-object/from16 v20, v4

    .line 918
    .line 919
    new-instance v4, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;

    .line 920
    .line 921
    invoke-direct {v4, v10, v2, v12}, Lcom/android/server/wm/WmScreenshotFileController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WmScreenshotFileController;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;I)V

    .line 922
    .line 923
    .line 924
    invoke-direct {v13, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 928
    .line 929
    .line 930
    goto :goto_f

    .line 931
    :cond_21
    move-object/from16 v20, v4

    .line 932
    .line 933
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 934
    .line 935
    .line 936
    move-result-object v4

    .line 937
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 942
    .line 943
    .line 944
    move-result v5

    .line 945
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 946
    .line 947
    .line 948
    move-result-object v4

    .line 949
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 950
    .line 951
    .line 952
    move-result-object v5

    .line 953
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 954
    .line 955
    .line 956
    move-result-object v4

    .line 957
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 958
    .line 959
    .line 960
    move-result v5

    .line 961
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    .line 962
    .line 963
    .line 964
    move-result-object v4

    .line 965
    invoke-virtual {v4, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 966
    .line 967
    .line 968
    move-result-object v4

    .line 969
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 970
    .line 971
    .line 972
    move-result-object v4

    .line 973
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 974
    .line 975
    .line 976
    move-result-object v4

    .line 977
    iget-object v0, v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;->mFrozen:Landroid/util/ArraySet;

    .line 978
    .line 979
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 980
    .line 981
    .line 982
    iget-object v0, v7, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 983
    .line 984
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 989
    .line 990
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    iput-object v4, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 994
    .line 995
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 996
    .line 997
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 998
    .line 999
    iget v5, v5, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 1000
    .line 1001
    iget v10, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1002
    .line 1003
    if-eq v10, v5, :cond_22

    .line 1004
    .line 1005
    invoke-virtual {v2}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v5

    .line 1009
    iget-object v10, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1010
    .line 1011
    invoke-static {v6, v5, v10}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;Landroid/view/SurfaceControl;)F

    .line 1012
    .line 1013
    .line 1014
    move-result v5

    .line 1015
    iput v5, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshotLuma:F

    .line 1016
    .line 1017
    :cond_22
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1018
    .line 1019
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 1020
    .line 1021
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v5

    .line 1025
    check-cast v5, Landroid/view/SurfaceControl$Transaction;

    .line 1026
    .line 1027
    invoke-static {v5, v4, v2}, Lcom/android/internal/policy/TransitionAnimation;->configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v5, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1031
    .line 1032
    .line 1033
    if-eqz v14, :cond_29

    .line 1034
    .line 1035
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 1036
    .line 1037
    if-eqz v2, :cond_25

    .line 1038
    .line 1039
    iget-object v2, v7, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1040
    .line 1041
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v2

    .line 1045
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1046
    .line 1047
    sget-boolean v10, Lcom/android/server/wm/ChangeTransitionController;->DISABLE_LEGACY_RESIZE_TRANSITION:Z

    .line 1048
    .line 1049
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 1050
    .line 1051
    if-eqz v10, :cond_23

    .line 1052
    .line 1053
    iget v10, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1054
    .line 1055
    if-eqz v10, :cond_23

    .line 1056
    .line 1057
    iget v10, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 1058
    .line 1059
    const/4 v11, 0x5

    .line 1060
    if-ne v10, v11, :cond_23

    .line 1061
    .line 1062
    goto :goto_10

    .line 1063
    :cond_23
    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1064
    .line 1065
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v10

    .line 1069
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v11

    .line 1073
    if-eqz v11, :cond_25

    .line 1074
    .line 1075
    if-nez v10, :cond_24

    .line 1076
    .line 1077
    goto :goto_11

    .line 1078
    :cond_24
    iget-object v12, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 1079
    .line 1080
    invoke-virtual {v12}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    .line 1081
    .line 1082
    .line 1083
    move-result v12

    .line 1084
    if-eqz v12, :cond_25

    .line 1085
    .line 1086
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 1087
    .line 1088
    iget-object v10, v10, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 1089
    .line 1090
    if-eqz v10, :cond_25

    .line 1091
    .line 1092
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v10

    .line 1096
    if-ne v10, v11, :cond_25

    .line 1097
    .line 1098
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1099
    .line 1100
    .line 1101
    move-result v2

    .line 1102
    if-eqz v2, :cond_25

    .line 1103
    .line 1104
    :goto_10
    const/4 v2, 0x0

    .line 1105
    goto :goto_13

    .line 1106
    :cond_25
    :goto_11
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 1107
    .line 1108
    if-eqz v2, :cond_27

    .line 1109
    .line 1110
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v2

    .line 1114
    if-eqz v2, :cond_26

    .line 1115
    .line 1116
    const/4 v10, 0x1

    .line 1117
    invoke-virtual {v2, v10, v10}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v2

    .line 1121
    goto :goto_12

    .line 1122
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v2

    .line 1126
    :goto_12
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1127
    .line 1128
    .line 1129
    move-result v2

    .line 1130
    if-eqz v2, :cond_27

    .line 1131
    .line 1132
    goto :goto_10

    .line 1133
    :cond_27
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 1134
    .line 1135
    if-eqz v2, :cond_28

    .line 1136
    .line 1137
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v2

    .line 1141
    if-eqz v2, :cond_28

    .line 1142
    .line 1143
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    .line 1144
    .line 1145
    .line 1146
    move-result v2

    .line 1147
    if-eqz v2, :cond_28

    .line 1148
    .line 1149
    goto :goto_10

    .line 1150
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 1151
    .line 1152
    .line 1153
    move-result v2

    .line 1154
    :goto_13
    invoke-virtual {v5, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1155
    .line 1156
    .line 1157
    :cond_29
    const/4 v2, 0x1

    .line 1158
    const/16 v10, 0x1e

    .line 1159
    .line 1160
    invoke-virtual {v5, v4, v10, v2}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1161
    .line 1162
    .line 1163
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 1164
    .line 1165
    if-eqz v2, :cond_39

    .line 1166
    .line 1167
    iget v10, v3, Landroid/graphics/Rect;->left:I

    .line 1168
    .line 1169
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 1170
    .line 1171
    invoke-virtual {v9, v10, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1172
    .line 1173
    .line 1174
    iget-object v3, v7, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 1175
    .line 1176
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v3

    .line 1180
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v10

    .line 1184
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v11

    .line 1188
    if-eqz v10, :cond_39

    .line 1189
    .line 1190
    if-eqz v11, :cond_39

    .line 1191
    .line 1192
    if-eqz v3, :cond_39

    .line 1193
    .line 1194
    iget v10, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1195
    .line 1196
    if-nez v10, :cond_2a

    .line 1197
    .line 1198
    goto/16 :goto_1e

    .line 1199
    .line 1200
    :cond_2a
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 1201
    .line 1202
    iget-object v12, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1203
    .line 1204
    if-eqz v10, :cond_2c

    .line 1205
    .line 1206
    iget v10, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 1207
    .line 1208
    const/4 v13, 0x5

    .line 1209
    if-eq v10, v13, :cond_2b

    .line 1210
    .line 1211
    iget v10, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitFlags:I

    .line 1212
    .line 1213
    const/4 v13, 0x1

    .line 1214
    and-int/2addr v10, v13

    .line 1215
    if-eqz v10, :cond_2d

    .line 1216
    .line 1217
    goto :goto_14

    .line 1218
    :cond_2b
    const/4 v13, 0x1

    .line 1219
    :goto_14
    iget-object v10, v11, Lcom/android/server/wm/TaskDisplayArea;->mFloatingLeashAnchor:Landroid/view/SurfaceControl;

    .line 1220
    .line 1221
    goto :goto_15

    .line 1222
    :cond_2c
    const/4 v13, 0x1

    .line 1223
    :cond_2d
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 1224
    .line 1225
    if-eqz v10, :cond_2e

    .line 1226
    .line 1227
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v10

    .line 1231
    if-eqz v10, :cond_2e

    .line 1232
    .line 1233
    iget v10, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1234
    .line 1235
    const/4 v14, 0x6

    .line 1236
    if-ne v10, v14, :cond_2e

    .line 1237
    .line 1238
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v10

    .line 1242
    goto :goto_15

    .line 1243
    :cond_2e
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v10

    .line 1247
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 1248
    .line 1249
    if-eqz v14, :cond_2f

    .line 1250
    .line 1251
    if-eqz v10, :cond_2f

    .line 1252
    .line 1253
    iget-object v14, v10, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1254
    .line 1255
    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 1256
    .line 1257
    iget-object v13, v14, Lcom/android/server/wm/NaturalSwitchingController;->mDragTargetArea:Lcom/android/server/wm/DisplayArea;

    .line 1258
    .line 1259
    if-eqz v13, :cond_2f

    .line 1260
    .line 1261
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v17

    .line 1265
    if-eqz v17, :cond_2f

    .line 1266
    .line 1267
    iget-object v14, v14, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    .line 1268
    .line 1269
    if-ne v14, v10, :cond_2f

    .line 1270
    .line 1271
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v10

    .line 1275
    goto :goto_15

    .line 1276
    :cond_2f
    iget-object v10, v11, Lcom/android/server/wm/TaskDisplayArea;->mChangeLeashAnchor:Landroid/view/SurfaceControl;

    .line 1277
    .line 1278
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v11

    .line 1282
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    const-string v14, "Change Leash: "

    .line 1285
    .line 1286
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v14

    .line 1293
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v13

    .line 1300
    invoke-virtual {v11, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v11

    .line 1304
    invoke-virtual {v11, v10}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v11

    .line 1308
    invoke-virtual {v11}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v11

    .line 1312
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v13

    .line 1316
    if-ne v10, v13, :cond_30

    .line 1317
    .line 1318
    const/4 v13, 0x1

    .line 1319
    goto :goto_16

    .line 1320
    :cond_30
    const/4 v13, 0x0

    .line 1321
    :goto_16
    if-eqz v13, :cond_31

    .line 1322
    .line 1323
    const/4 v14, 0x0

    .line 1324
    goto :goto_17

    .line 1325
    :cond_31
    iget v14, v9, Landroid/graphics/Rect;->left:I

    .line 1326
    .line 1327
    :goto_17
    if-eqz v13, :cond_32

    .line 1328
    .line 1329
    const/4 v13, 0x0

    .line 1330
    goto :goto_18

    .line 1331
    :cond_32
    iget v13, v9, Landroid/graphics/Rect;->top:I

    .line 1332
    .line 1333
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v17

    .line 1337
    move-object/from16 v21, v0

    .line 1338
    .line 1339
    if-eqz v17, :cond_33

    .line 1340
    .line 1341
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 1346
    .line 1347
    iget-boolean v0, v0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 1348
    .line 1349
    if-eqz v0, :cond_33

    .line 1350
    .line 1351
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v0

    .line 1355
    if-eqz v0, :cond_33

    .line 1356
    .line 1357
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1358
    .line 1359
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1360
    .line 1361
    move-object/from16 v22, v7

    .line 1362
    .line 1363
    const/16 v7, 0x1a

    .line 1364
    .line 1365
    invoke-static {v7, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 1366
    .line 1367
    .line 1368
    move-result v0

    .line 1369
    :goto_19
    int-to-float v0, v0

    .line 1370
    goto :goto_1a

    .line 1371
    :cond_33
    move-object/from16 v22, v7

    .line 1372
    .line 1373
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 1374
    .line 1375
    .line 1376
    move-result v0

    .line 1377
    if-eqz v0, :cond_34

    .line 1378
    .line 1379
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v0

    .line 1383
    if-eqz v0, :cond_34

    .line 1384
    .line 1385
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1386
    .line 1387
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1388
    .line 1389
    const/16 v7, 0xc

    .line 1390
    .line 1391
    invoke-static {v7, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 1392
    .line 1393
    .line 1394
    move-result v0

    .line 1395
    goto :goto_19

    .line 1396
    :cond_34
    const/4 v0, 0x0

    .line 1397
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 1398
    .line 1399
    .line 1400
    move-result v7

    .line 1401
    invoke-virtual {v5, v11, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1402
    .line 1403
    .line 1404
    int-to-float v7, v14

    .line 1405
    int-to-float v13, v13

    .line 1406
    invoke-virtual {v5, v11, v7, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1407
    .line 1408
    .line 1409
    new-instance v7, Landroid/graphics/Rect;

    .line 1410
    .line 1411
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 1412
    .line 1413
    .line 1414
    move-result v13

    .line 1415
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 1416
    .line 1417
    .line 1418
    move-result v14

    .line 1419
    move/from16 v23, v2

    .line 1420
    .line 1421
    const/4 v2, 0x0

    .line 1422
    invoke-direct {v7, v2, v2, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v5, v11, v7}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1426
    .line 1427
    .line 1428
    const/4 v2, 0x0

    .line 1429
    cmpl-float v7, v0, v2

    .line 1430
    .line 1431
    if-lez v7, :cond_35

    .line 1432
    .line 1433
    invoke-virtual {v5, v11, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1434
    .line 1435
    .line 1436
    :cond_35
    invoke-virtual {v5, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1437
    .line 1438
    .line 1439
    iget-object v0, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 1440
    .line 1441
    if-eqz v0, :cond_36

    .line 1442
    .line 1443
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v0

    .line 1447
    if-eqz v0, :cond_36

    .line 1448
    .line 1449
    iget v0, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 1450
    .line 1451
    const/4 v2, 0x5

    .line 1452
    if-ne v0, v2, :cond_36

    .line 1453
    .line 1454
    const/16 v19, 0x1

    .line 1455
    .line 1456
    goto :goto_1b

    .line 1457
    :cond_36
    const/16 v19, 0x0

    .line 1458
    .line 1459
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v0

    .line 1463
    invoke-virtual {v5, v0, v11}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1464
    .line 1465
    .line 1466
    const/4 v2, 0x0

    .line 1467
    invoke-virtual {v5, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1468
    .line 1469
    .line 1470
    const/4 v2, 0x0

    .line 1471
    invoke-virtual {v5, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v5, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1475
    .line 1476
    .line 1477
    if-eqz v19, :cond_37

    .line 1478
    .line 1479
    const v2, 0x3a83126f    # 0.001f

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v5, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1483
    .line 1484
    .line 1485
    :cond_37
    iget-object v0, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    .line 1486
    .line 1487
    invoke-virtual {v5, v0, v11}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1488
    .line 1489
    .line 1490
    const v2, 0x7fffffff

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v5, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1494
    .line 1495
    .line 1496
    iput-object v11, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 1497
    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    const-string v2, "createChangeTransitionLeashIfNeeded: "

    .line 1501
    .line 1502
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1506
    .line 1507
    .line 1508
    const-string v2, ", wc="

    .line 1509
    .line 1510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1514
    .line 1515
    .line 1516
    const-string v2, ", Z="

    .line 1517
    .line 1518
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 1522
    .line 1523
    .line 1524
    move-result v2

    .line 1525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    .line 1530
    .line 1531
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1532
    .line 1533
    .line 1534
    const-string v2, ", anchorLayer="

    .line 1535
    .line 1536
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    .line 1539
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    .line 1542
    if-eqz v19, :cond_38

    .line 1543
    .line 1544
    const-string v2, ", c=hidden"

    .line 1545
    .line 1546
    goto :goto_1c

    .line 1547
    :cond_38
    move-object/from16 v2, v20

    .line 1548
    .line 1549
    :goto_1c
    invoke-static {v0, v2, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    :goto_1d
    const v0, 0x7fffffff

    .line 1553
    .line 1554
    .line 1555
    goto :goto_1f

    .line 1556
    :cond_39
    :goto_1e
    move-object/from16 v21, v0

    .line 1557
    .line 1558
    move/from16 v23, v2

    .line 1559
    .line 1560
    move-object/from16 v22, v7

    .line 1561
    .line 1562
    goto :goto_1d

    .line 1563
    :goto_1f
    invoke-virtual {v5, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1573
    .line 1574
    .line 1575
    if-eqz v23, :cond_3a

    .line 1576
    .line 1577
    move-object/from16 v0, v22

    .line 1578
    .line 1579
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 1580
    .line 1581
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1582
    .line 1583
    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1585
    .line 1586
    const-string/jumbo v2, "onSnapshotSurfaceCreated: wc="

    .line 1587
    .line 1588
    .line 1589
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1590
    .line 1591
    .line 1592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1593
    .line 1594
    .line 1595
    const-string v2, ", cropBounds="

    .line 1596
    .line 1597
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    .line 1599
    .line 1600
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1601
    .line 1602
    .line 1603
    const-string v2, ", changeInfo="

    .line 1604
    .line 1605
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    .line 1607
    .line 1608
    move-object/from16 v2, v21

    .line 1609
    .line 1610
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1611
    .line 1612
    .line 1613
    move-object/from16 v2, v20

    .line 1614
    .line 1615
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    .line 1617
    .line 1618
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v0

    .line 1622
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    .line 1624
    .line 1625
    :cond_3a
    move-object v2, v4

    .line 1626
    :goto_20
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v0

    .line 1630
    const/4 v1, 0x0

    .line 1631
    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1632
    .line 1633
    .line 1634
    goto :goto_22

    .line 1635
    :cond_3b
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1636
    .line 1637
    const-string v2, "Failed to capture screenshot for "

    .line 1638
    .line 1639
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1640
    .line 1641
    .line 1642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1643
    .line 1644
    .line 1645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v0

    .line 1649
    const-string v1, "Transition"

    .line 1650
    .line 1651
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    .line 1653
    .line 1654
    :cond_3c
    :goto_22
    return-void

    .line 1655
    :cond_3d
    :goto_23
    iget v1, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1656
    .line 1657
    or-int/lit16 v1, v1, 0x400

    .line 1658
    .line 1659
    iput v1, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1660
    .line 1661
    :cond_3e
    :goto_24
    return-void
.end method

.method public final didCommitTransientLaunch()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

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
    move v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return v1
.end method

.method public getFinishTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStartTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 9
    .line 10
    const-string/jumbo v1, "recents_animation_input_consumer"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    move-object v6, v3

    .line 22
    if-eqz v0, :cond_8

    .line 23
    .line 24
    move-object v7, v6

    .line 25
    move v5, v4

    .line 26
    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-ge v5, v8, :cond_7

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 45
    .line 46
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    if-nez v8, :cond_1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_1
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 54
    .line 55
    invoke-static {v9}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    if-nez v9, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 63
    .line 64
    if-eq v8, v2, :cond_4

    .line 65
    .line 66
    const/4 v10, 0x3

    .line 67
    if-ne v8, v10, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v8, v4

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    :goto_1
    move v8, v1

    .line 73
    :goto_2
    if-eqz v8, :cond_5

    .line 74
    .line 75
    if-nez v6, :cond_5

    .line 76
    .line 77
    invoke-virtual {v9, v1, v4}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    if-nez v8, :cond_6

    .line 83
    .line 84
    if-nez v7, :cond_6

    .line 85
    .line 86
    move-object v7, v9

    .line 87
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_7
    if-eqz v6, :cond_8

    .line 91
    .line 92
    if-eqz v7, :cond_8

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 95
    .line 96
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 97
    .line 98
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v0, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 103
    .line 104
    .line 105
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 106
    .line 107
    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 108
    .line 109
    .line 110
    :cond_8
    if-nez v6, :cond_9

    .line 111
    .line 112
    return-void

    .line 113
    :cond_9
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 114
    .line 115
    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 116
    .line 117
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_11

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_a

    .line 130
    .line 131
    goto/16 :goto_8

    .line 132
    .line 133
    :cond_a
    move v0, v4

    .line 134
    :goto_4
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-ge v0, v5, :cond_d

    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 153
    .line 154
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    if-eqz v6, :cond_c

    .line 159
    .line 160
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 165
    .line 166
    iget v7, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 167
    .line 168
    if-ne v6, v7, :cond_c

    .line 169
    .line 170
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-ne v6, v1, :cond_c

    .line 179
    .line 180
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eq v6, v2, :cond_b

    .line 185
    .line 186
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    const/4 v7, 0x4

    .line 191
    if-eq v6, v7, :cond_b

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_b
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    invoke-static {p2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    goto :goto_6

    .line 207
    :cond_c
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_d
    :goto_6
    if-eqz v3, :cond_11

    .line 211
    .line 212
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-eqz p2, :cond_e

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_e
    iget-object p2, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 220
    .line 221
    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 222
    .line 223
    if-eqz p2, :cond_11

    .line 224
    .line 225
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 226
    .line 227
    if-nez v0, :cond_f

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 231
    .line 232
    iput-boolean v1, v2, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 235
    .line 236
    .line 237
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 244
    .line 245
    iget-object p2, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v0, p2, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 255
    .line 256
    .line 257
    iget-object v2, p1, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 258
    .line 259
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_10

    .line 264
    .line 265
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v0, p2, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_10
    const v1, 0x7fffffff

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 277
    .line 278
    .line 279
    :goto_7
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 280
    .line 281
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    if-eqz p1, :cond_11

    .line 286
    .line 287
    iget p0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 288
    .line 289
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 290
    .line 291
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 292
    .line 293
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 294
    .line 295
    if-eqz p1, :cond_11

    .line 296
    .line 297
    :try_start_0
    invoke-interface {p1, p0, v4}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarLumaSamplingEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .line 299
    .line 300
    :catch_0
    :cond_11
    :goto_8
    return-void
.end method

.method public final hasTransientLaunch()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

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

.method public final invokeTransitionEndedListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Runnable;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void
.end method

.method public final isCollecting()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :cond_1
    :goto_0
    return v0
.end method

.method public final isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

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
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    sub-int/2addr v0, v2

    .line 13
    :goto_0
    if-ltz v0, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/wm/Task;

    .line 22
    .line 23
    if-eq p1, v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_1
    return v2

    .line 36
    :cond_3
    return v1
.end method

.method public final isInTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    .line 1
    :goto_0
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

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

.method public final isTransientVisible(Lcom/android/server/wm/Task;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

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
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v2, v0, -0x1

    .line 12
    .line 13
    move v3, v1

    .line 14
    :goto_0
    const/4 v4, 0x1

    .line 15
    if-ltz v2, :cond_5

    .line 16
    .line 17
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    if-eqz v6, :cond_4

    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    if-ne v7, v5, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 46
    .line 47
    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 48
    .line 49
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 50
    .line 51
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueActivityHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

    .line 52
    .line 53
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    .line 54
    .line 55
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIgnoringKeyguard:Z

    .line 56
    .line 57
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIgnoreFloatingWindow:Z

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    invoke-virtual {v6, v7, v4, v8}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-gez v7, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    iget-boolean v8, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 79
    .line 80
    if-eqz v8, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_3

    .line 87
    .line 88
    if-eqz v7, :cond_3

    .line 89
    .line 90
    const-string/jumbo v8, "startActivityUnchecked"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v8, v1, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_3

    .line 98
    .line 99
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 100
    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    invoke-virtual {v7}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_3

    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_3

    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_3

    .line 120
    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v0, "PipTask isTransientVisible: Allow for auto-pip: "

    .line 124
    .line 125
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const-string p1, "Transition"

    .line 136
    .line 137
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    return v4

    .line 141
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_5
    if-ne v3, v0, :cond_8

    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    sub-int/2addr v0, v4

    .line 156
    :goto_2
    if-ltz v0, :cond_7

    .line 157
    .line 158
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 159
    .line 160
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 165
    .line 166
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_6

    .line 171
    .line 172
    return v4

    .line 173
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_7
    return v1

    .line 177
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    return p0
.end method

.method public final legacyRestoreNavigationBarFromApp()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    const-string v2, "Transition"

    .line 17
    .line 18
    const-string v3, "Restore parent surface of navigation bar by another transition"

    .line 19
    .line 20
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move v2, v1

    .line 24
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    :try_start_0
    invoke-interface {v3, v2, v4}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarLumaSamplingEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    iput v1, v2, Lcom/android/server/wm/WindowState;->mSurfaceTranslationY:I

    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 62
    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object v6, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v3, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 81
    .line 82
    .line 83
    move v6, v1

    .line 84
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-ge v6, v7, :cond_7

    .line 91
    .line 92
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 99
    .line 100
    iget-object v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 101
    .line 102
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    if-eqz v7, :cond_6

    .line 107
    .line 108
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-nez v8, :cond_5

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 124
    .line 125
    new-instance p0, Lcom/android/server/wm/NavBarFadeAnimationController;

    .line 126
    .line 127
    invoke-direct {p0, v0}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v4}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_8
    iget-object p0, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 135
    .line 136
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v3, p0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 141
    .line 142
    .line 143
    :goto_3
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final onReadyTimeout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 4
    .line 5
    const-string v1, "#"

    .line 6
    .line 7
    const-string v2, "Transition"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " readiness timeout, used="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " deferReadyDepth="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " group="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, " met conditions: "

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 77
    .line 78
    iget-object v4, v3, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 96
    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p0, " unmet conditions: "

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object p0, v3, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final onSeamlessRotating(Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/server/wm/Transition$ScreenshotFreezer;-><init>(Lcom/android/server/wm/Transition;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 25
    .line 26
    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    .line 33
    .line 34
    iput v1, p1, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 35
    .line 36
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 41
    .line 42
    aget-boolean p0, p0, v1

    .line 43
    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 p1, 0x5

    .line 55
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 64
    .line 65
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-wide v1, -0x7de1074a75c8c19bL

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    const-string v4, "Override sync-method for %s because seamless rotating, caller=%s"

    .line 76
    .line 77
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 82
    .line 83
    aget-boolean p0, p0, v1

    .line 84
    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 96
    .line 97
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    const-wide v1, 0x25f1edc4196f3fa3L    # 6.621439290562198E-126

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    const/4 v4, 0x0

    .line 108
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_0
    return-void
.end method

.method public final onTransactionCommitTimeout()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    :goto_0
    if-ltz v0, :cond_4

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-static {v2, v4}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 39
    .line 40
    iget-boolean v4, v3, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    sub-int/2addr v4, v1

    .line 52
    move v10, v4

    .line 53
    :goto_1
    if-ltz v10, :cond_3

    .line 54
    .line 55
    iget-object v4, v3, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 62
    .line 63
    iput-boolean v1, v4, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    .line 64
    .line 65
    iget v5, v4, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    .line 66
    .line 67
    if-ne v5, v1, :cond_2

    .line 68
    .line 69
    iget-object v5, v4, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 70
    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_2

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v6, "Transaction timeout. Clear transform for "

    .line 82
    .line 83
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v6, v3, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Lcom/android/server/wm/WindowToken;

    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const-string v6, "AsyncRotation_WindowManager"

    .line 106
    .line 107
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object v11, v4, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 111
    .line 112
    const/high16 v6, 0x3f800000    # 1.0f

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v8, 0x0

    .line 116
    const/high16 v9, 0x3f800000    # 1.0f

    .line 117
    .line 118
    move-object v4, v2

    .line 119
    move-object v5, v11

    .line 120
    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 121
    .line 122
    .line 123
    const/4 v4, 0x0

    .line 124
    invoke-virtual {v2, v11, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 125
    .line 126
    .line 127
    :cond_2
    add-int/lit8 v10, v10, -0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    return-void
.end method

.method public final onTransactionReady(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 8
    .line 9
    const-string v4, "Transition"

    .line 10
    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    .line 13
    const-string v1, "Unexpected Sync ID "

    .line 14
    .line 15
    const-string v3, ". Expected "

    .line 16
    .line 17
    invoke-static {v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 22
    .line 23
    invoke-static {v1, v0, v4}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 28
    .line 29
    iget-boolean v3, v2, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 30
    .line 31
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x1

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    move v3, v6

    .line 38
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 39
    .line 40
    iget-object v9, v8, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-ge v3, v9, :cond_2

    .line 47
    .line 48
    aget-boolean v9, v5, v7

    .line 49
    .line 50
    if-eqz v9, :cond_1

    .line 51
    .line 52
    iget v9, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 53
    .line 54
    int-to-long v9, v9

    .line 55
    iget-object v8, v8, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 66
    .line 67
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    filled-new-array {v9, v8}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v16

    .line 75
    const/4 v14, 0x1

    .line 76
    const/4 v15, 0x0

    .line 77
    const-wide v12, -0x12cc95eb18b3c9c2L    # -1.0708297704870128E218

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    sub-int/2addr v3, v7

    .line 95
    :goto_1
    if-ltz v3, :cond_7

    .line 96
    .line 97
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 98
    .line 99
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 104
    .line 105
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    if-eqz v8, :cond_6

    .line 110
    .line 111
    iget-object v9, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 112
    .line 113
    if-nez v9, :cond_3

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_5

    .line 121
    .line 122
    invoke-virtual {v8, v7, v6, v7}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 123
    .line 124
    .line 125
    iget-object v9, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 126
    .line 127
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    sub-int/2addr v9, v7

    .line 132
    move v10, v6

    .line 133
    :goto_2
    if-ltz v9, :cond_4

    .line 134
    .line 135
    iget-object v11, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 136
    .line 137
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 142
    .line 143
    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowState;->commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    or-int/2addr v10, v11

    .line 148
    add-int/lit8 v9, v9, -0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    if-eqz v10, :cond_5

    .line 152
    .line 153
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    .line 154
    .line 155
    .line 156
    :cond_5
    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 157
    .line 158
    invoke-virtual {v8, v6}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    sub-int/2addr v3, v7

    .line 171
    :goto_4
    if-ltz v3, :cond_a

    .line 172
    .line 173
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 174
    .line 175
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 180
    .line 181
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_9

    .line 186
    .line 187
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    if-eqz v9, :cond_8

    .line 192
    .line 193
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v8, v7, v7}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    if-eqz v8, :cond_8

    .line 206
    .line 207
    if-eqz v9, :cond_8

    .line 208
    .line 209
    iget-object v8, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 210
    .line 211
    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-static {v8}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-eqz v8, :cond_8

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_9
    :goto_5
    move v3, v7

    .line 226
    goto :goto_6

    .line 227
    :cond_a
    move v3, v6

    .line 228
    :goto_6
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 229
    .line 230
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    sub-int/2addr v8, v7

    .line 235
    :goto_7
    if-ltz v8, :cond_10

    .line 236
    .line 237
    iget-object v9, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 238
    .line 239
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 244
    .line 245
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    if-eqz v9, :cond_f

    .line 250
    .line 251
    iget-boolean v10, v9, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 252
    .line 253
    if-nez v10, :cond_b

    .line 254
    .line 255
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    if-eqz v10, :cond_b

    .line 260
    .line 261
    invoke-virtual {v9, v3}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 262
    .line 263
    .line 264
    goto :goto_8

    .line 265
    :cond_b
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    if-eqz v10, :cond_e

    .line 270
    .line 271
    iget-boolean v10, v9, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 272
    .line 273
    if-eqz v10, :cond_e

    .line 274
    .line 275
    if-nez v3, :cond_e

    .line 276
    .line 277
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    if-nez v10, :cond_e

    .line 286
    .line 287
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    if-nez v10, :cond_e

    .line 296
    .line 297
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 298
    .line 299
    if-eqz v10, :cond_c

    .line 300
    .line 301
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 302
    .line 303
    .line 304
    move-result-object v10

    .line 305
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 306
    .line 307
    iget-object v10, v10, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 308
    .line 309
    if-eqz v10, :cond_e

    .line 310
    .line 311
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 312
    .line 313
    .line 314
    move-result v10

    .line 315
    if-eqz v10, :cond_e

    .line 316
    .line 317
    :cond_c
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 322
    .line 323
    iget-object v10, v10, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 324
    .line 325
    if-eqz v10, :cond_d

    .line 326
    .line 327
    invoke-virtual {v10, v9}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    if-eqz v10, :cond_d

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_d
    invoke-virtual {v9, v6}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibleRequested(Z)Z

    .line 335
    .line 336
    .line 337
    :cond_e
    :goto_8
    if-eqz v3, :cond_f

    .line 338
    .line 339
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 340
    .line 341
    .line 342
    move-result v10

    .line 343
    if-eqz v10, :cond_f

    .line 344
    .line 345
    iget-object v10, v9, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 346
    .line 347
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    sub-int/2addr v10, v7

    .line 352
    :goto_9
    if-ltz v10, :cond_f

    .line 353
    .line 354
    iget-object v11, v9, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 355
    .line 356
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 361
    .line 362
    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 363
    .line 364
    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 365
    .line 366
    .line 367
    add-int/lit8 v10, v10, -0x1

    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_f
    add-int/lit8 v8, v8, -0x1

    .line 371
    .line 372
    goto/16 :goto_7

    .line 373
    .line 374
    :cond_10
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 375
    .line 376
    if-eqz v3, :cond_11

    .line 377
    .line 378
    move v3, v6

    .line 379
    :goto_a
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 382
    .line 383
    .line 384
    move-result v8

    .line 385
    if-ge v3, v8, :cond_11

    .line 386
    .line 387
    iget-object v8, v0, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    check-cast v8, Ljava/lang/Runnable;

    .line 394
    .line 395
    new-instance v9, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 396
    .line 397
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 398
    .line 399
    .line 400
    new-instance v10, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda11;

    .line 401
    .line 402
    const/4 v11, 0x2

    .line 403
    invoke-direct {v10, v11, v8}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v9, v10}, Landroid/view/SurfaceControl$Transaction;->addTransactionCompletedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;

    .line 407
    .line 408
    .line 409
    add-int/lit8 v3, v3, 0x1

    .line 410
    .line 411
    goto :goto_a

    .line 412
    :cond_11
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    iget-object v8, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 419
    .line 420
    if-nez v3, :cond_12

    .line 421
    .line 422
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 429
    .line 430
    goto :goto_b

    .line 431
    :cond_12
    iget-object v3, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 432
    .line 433
    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 434
    .line 435
    :goto_b
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_NOTIFY_TASKBAR_VISIBLE:Z

    .line 436
    .line 437
    if-eqz v9, :cond_14

    .line 438
    .line 439
    iget-object v9, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 440
    .line 441
    iget-object v9, v9, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 442
    .line 443
    iget-object v10, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 444
    .line 445
    invoke-virtual {v10, v9}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 446
    .line 447
    .line 448
    move-result v10

    .line 449
    if-eqz v10, :cond_13

    .line 450
    .line 451
    const-string/jumbo v9, "updateTaskbarTargetIfNeeded: defer to send callbackwhile on transient launch"

    .line 452
    .line 453
    .line 454
    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    goto :goto_c

    .line 458
    :cond_13
    iget-object v10, v9, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 459
    .line 460
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 461
    .line 462
    invoke-virtual {v10, v9}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTaskbarTargetIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 463
    .line 464
    .line 465
    :cond_14
    :goto_c
    iget v9, v0, Lcom/android/server/wm/Transition;->mState:I

    .line 466
    .line 467
    const/4 v10, -0x1

    .line 468
    const/4 v11, 0x3

    .line 469
    const-string v12, ">"

    .line 470
    .line 471
    const/4 v13, 0x0

    .line 472
    if-ne v9, v11, :cond_1c

    .line 473
    .line 474
    iget-object v4, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 475
    .line 476
    if-eq v0, v4, :cond_16

    .line 477
    .line 478
    iget-object v4, v2, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    if-ltz v4, :cond_15

    .line 485
    .line 486
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 487
    .line 488
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    goto :goto_d

    .line 492
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 493
    .line 494
    const-string v1, "Too late for abort."

    .line 495
    .line 496
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    throw v0

    .line 500
    :cond_16
    iput-object v13, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 501
    .line 502
    iget-object v4, v2, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    if-nez v4, :cond_17

    .line 509
    .line 510
    iget-object v4, v2, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    check-cast v4, Lcom/android/server/wm/Transition;

    .line 517
    .line 518
    iput-object v4, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 519
    .line 520
    :cond_17
    iget-object v4, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 521
    .line 522
    if-nez v4, :cond_18

    .line 523
    .line 524
    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 525
    .line 526
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 527
    .line 528
    .line 529
    :cond_18
    :goto_d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    .line 530
    .line 531
    if-eqz v2, :cond_19

    .line 532
    .line 533
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    .line 534
    .line 535
    if-eqz v2, :cond_19

    .line 536
    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    const-string v4, "AbortTransition_SyncId<"

    .line 540
    .line 541
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    iget v4, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 545
    .line 546
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    :cond_19
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 560
    .line 561
    if-eqz v2, :cond_1b

    .line 562
    .line 563
    :goto_e
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-ge v6, v2, :cond_1a

    .line 570
    .line 571
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 572
    .line 573
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 578
    .line 579
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    .line 580
    .line 581
    .line 582
    add-int/lit8 v6, v6, 0x1

    .line 583
    .line 584
    goto :goto_e

    .line 585
    :cond_1a
    iput-object v13, v0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 586
    .line 587
    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 592
    .line 593
    .line 594
    iput v10, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 595
    .line 596
    iput-object v13, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 597
    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Transition;->cleanUpInternal()V

    .line 599
    .line 600
    .line 601
    return-void

    .line 602
    :cond_1c
    if-eq v9, v7, :cond_1d

    .line 603
    .line 604
    new-instance v9, Ljava/lang/StringBuilder;

    .line 605
    .line 606
    const-string v11, "Playing a Transition which hasn\'t started! #"

    .line 607
    .line 608
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    iget v11, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 612
    .line 613
    const-string v14, " This will likely cause an exception in Shell"

    .line 614
    .line 615
    invoke-static {v9, v11, v14, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    :cond_1d
    const/4 v9, 0x2

    .line 619
    iput v9, v0, Lcom/android/server/wm/Transition;->mState:I

    .line 620
    .line 621
    iput-object v1, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 622
    .line 623
    iget-object v11, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 624
    .line 625
    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 626
    .line 627
    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v11

    .line 631
    check-cast v11, Landroid/view/SurfaceControl$Transaction;

    .line 632
    .line 633
    iput-object v11, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 634
    .line 635
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    .line 636
    .line 637
    if-eqz v11, :cond_1e

    .line 638
    .line 639
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    .line 640
    .line 641
    if-eqz v11, :cond_1e

    .line 642
    .line 643
    iget-object v11, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 644
    .line 645
    new-instance v14, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    const-string v15, "StartTransaction_SyncId<"

    .line 648
    .line 649
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    iget v15, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 653
    .line 654
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v14

    .line 664
    invoke-virtual {v11, v14}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    iget-object v11, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 668
    .line 669
    new-instance v14, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    const-string v15, "FinishTransaction_SyncId<"

    .line 672
    .line 673
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    iget v15, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 677
    .line 678
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v12

    .line 688
    invoke-virtual {v11, v12}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    :cond_1e
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 692
    .line 693
    if-eqz v11, :cond_2b

    .line 694
    .line 695
    iget-object v11, v0, Lcom/android/server/wm/Transition;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 696
    .line 697
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 698
    .line 699
    .line 700
    new-instance v11, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    const-string/jumbo v12, "onTransactionReady: "

    .line 703
    .line 704
    .line 705
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v11

    .line 715
    const-string v12, "ChangeTransitionController"

    .line 716
    .line 717
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .line 719
    .line 720
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 721
    .line 722
    if-eqz v11, :cond_20

    .line 723
    .line 724
    iget-object v11, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 725
    .line 726
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 727
    .line 728
    .line 729
    move-result v14

    .line 730
    sub-int/2addr v14, v7

    .line 731
    :goto_f
    if-ltz v14, :cond_20

    .line 732
    .line 733
    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v15

    .line 737
    check-cast v15, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 738
    .line 739
    iget-object v10, v15, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 740
    .line 741
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 742
    .line 743
    .line 744
    move-result-object v13

    .line 745
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v13

    .line 749
    check-cast v13, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 750
    .line 751
    if-eqz v13, :cond_1f

    .line 752
    .line 753
    iget v13, v13, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 754
    .line 755
    const/high16 v17, 0x10000

    .line 756
    .line 757
    and-int v13, v13, v17

    .line 758
    .line 759
    if-eqz v13, :cond_1f

    .line 760
    .line 761
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 762
    .line 763
    .line 764
    move-result-object v10

    .line 765
    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v10

    .line 769
    if-eqz v10, :cond_1f

    .line 770
    .line 771
    iput-boolean v7, v15, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChanged:Z

    .line 772
    .line 773
    new-instance v10, Ljava/lang/StringBuilder;

    .line 774
    .line 775
    const-string v13, "applyForceChangeIfNeeded: "

    .line 776
    .line 777
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v10

    .line 787
    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    .line 789
    .line 790
    :cond_1f
    add-int/lit8 v14, v14, -0x1

    .line 791
    .line 792
    const/4 v10, -0x1

    .line 793
    const/4 v13, 0x0

    .line 794
    goto :goto_f

    .line 795
    :cond_20
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 796
    .line 797
    if-eqz v10, :cond_2b

    .line 798
    .line 799
    new-instance v10, Ljava/util/ArrayList;

    .line 800
    .line 801
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .line 803
    .line 804
    iget-object v11, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 805
    .line 806
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 807
    .line 808
    .line 809
    move-result v13

    .line 810
    sub-int/2addr v13, v7

    .line 811
    move v15, v6

    .line 812
    const/4 v14, 0x0

    .line 813
    :goto_10
    if-ltz v13, :cond_29

    .line 814
    .line 815
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v17

    .line 819
    move-object/from16 v6, v17

    .line 820
    .line 821
    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 822
    .line 823
    iget-object v9, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 824
    .line 825
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 826
    .line 827
    .line 828
    move-result-object v9

    .line 829
    iget-object v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 830
    .line 831
    if-eqz v9, :cond_24

    .line 832
    .line 833
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 834
    .line 835
    .line 836
    move-result v9

    .line 837
    if-eqz v9, :cond_21

    .line 838
    .line 839
    move-object v14, v7

    .line 840
    :cond_21
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 841
    .line 842
    .line 843
    move-result v9

    .line 844
    if-eqz v9, :cond_22

    .line 845
    .line 846
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 847
    .line 848
    .line 849
    move-result-object v9

    .line 850
    move-object/from16 v18, v11

    .line 851
    .line 852
    new-instance v11, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;

    .line 853
    .line 854
    move-object/from16 v19, v14

    .line 855
    .line 856
    const/4 v14, 0x0

    .line 857
    invoke-direct {v11, v14}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 861
    .line 862
    .line 863
    move-result v9

    .line 864
    if-eqz v9, :cond_23

    .line 865
    .line 866
    move-object/from16 v14, v19

    .line 867
    .line 868
    const/4 v15, 0x1

    .line 869
    goto :goto_11

    .line 870
    :cond_22
    move-object/from16 v18, v11

    .line 871
    .line 872
    move-object/from16 v19, v14

    .line 873
    .line 874
    :cond_23
    move-object/from16 v14, v19

    .line 875
    .line 876
    goto :goto_11

    .line 877
    :cond_24
    move-object/from16 v18, v11

    .line 878
    .line 879
    :goto_11
    iget v9, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 880
    .line 881
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 882
    .line 883
    .line 884
    move-result v11

    .line 885
    move-object/from16 v19, v14

    .line 886
    .line 887
    const/4 v14, 0x5

    .line 888
    if-eq v9, v14, :cond_26

    .line 889
    .line 890
    if-ne v11, v14, :cond_25

    .line 891
    .line 892
    goto :goto_13

    .line 893
    :cond_25
    :goto_12
    move/from16 v20, v15

    .line 894
    .line 895
    goto :goto_14

    .line 896
    :cond_26
    :goto_13
    if-eq v9, v11, :cond_25

    .line 897
    .line 898
    iget-object v14, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 899
    .line 900
    if-eqz v14, :cond_25

    .line 901
    .line 902
    iget v14, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 903
    .line 904
    if-eqz v14, :cond_25

    .line 905
    .line 906
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 907
    .line 908
    .line 909
    move-result-object v14

    .line 910
    if-eqz v14, :cond_25

    .line 911
    .line 912
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 913
    .line 914
    .line 915
    move-result-object v14

    .line 916
    if-nez v14, :cond_27

    .line 917
    .line 918
    goto :goto_12

    .line 919
    :cond_27
    new-instance v14, Ljava/lang/StringBuilder;

    .line 920
    .line 921
    move/from16 v20, v15

    .line 922
    .line 923
    const-string v15, "isFreeformChangeTransition: "

    .line 924
    .line 925
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    const-string v15, " ("

    .line 932
    .line 933
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    const-string v9, "->"

    .line 940
    .line 941
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    const-string v9, "), "

    .line 948
    .line 949
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    iget v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 953
    .line 954
    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v6

    .line 958
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v6

    .line 965
    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    .line 967
    .line 968
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 969
    .line 970
    .line 971
    move-result-object v6

    .line 972
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 973
    .line 974
    .line 975
    move-result v7

    .line 976
    if-nez v7, :cond_28

    .line 977
    .line 978
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    :cond_28
    :goto_14
    add-int/lit8 v13, v13, -0x1

    .line 982
    .line 983
    move-object/from16 v11, v18

    .line 984
    .line 985
    move-object/from16 v14, v19

    .line 986
    .line 987
    move/from16 v15, v20

    .line 988
    .line 989
    const/4 v6, 0x0

    .line 990
    const/4 v7, 0x1

    .line 991
    const/4 v9, 0x2

    .line 992
    goto/16 :goto_10

    .line 993
    .line 994
    :cond_29
    if-eqz v15, :cond_2a

    .line 995
    .line 996
    if-eqz v14, :cond_2a

    .line 997
    .line 998
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 999
    .line 1000
    .line 1001
    move-result-object v6

    .line 1002
    if-eqz v6, :cond_2a

    .line 1003
    .line 1004
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v6

    .line 1008
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v7

    .line 1012
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v6

    .line 1016
    if-eqz v6, :cond_2a

    .line 1017
    .line 1018
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 1019
    .line 1020
    .line 1021
    move-result v7

    .line 1022
    if-eqz v7, :cond_2a

    .line 1023
    .line 1024
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v6

    .line 1028
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v7

    .line 1032
    if-nez v7, :cond_2a

    .line 1033
    .line 1034
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    .line 1036
    .line 1037
    :cond_2a
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v6

    .line 1041
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1042
    .line 1043
    .line 1044
    move-result v7

    .line 1045
    if-eqz v7, :cond_2b

    .line 1046
    .line 1047
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v7

    .line 1051
    check-cast v7, Lcom/android/server/wm/TaskDisplayArea;

    .line 1052
    .line 1053
    new-instance v9, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;

    .line 1054
    .line 1055
    invoke-direct {v9, v0}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/Transition;)V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_15

    .line 1062
    :cond_2b
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 1063
    .line 1064
    .line 1065
    move-result v3

    .line 1066
    if-eqz v3, :cond_2c

    .line 1067
    .line 1068
    iget v3, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1069
    .line 1070
    or-int/lit8 v3, v3, 0x40

    .line 1071
    .line 1072
    iput v3, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1073
    .line 1074
    :cond_2c
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 1075
    .line 1076
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1077
    .line 1078
    .line 1079
    move-result v3

    .line 1080
    invoke-virtual {v0, v3}, Lcom/android/server/wm/Transition;->collectOrderChanges(Z)V

    .line 1081
    .line 1082
    .line 1083
    iget-boolean v3, v0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    .line 1084
    .line 1085
    if-eqz v3, :cond_2f

    .line 1086
    .line 1087
    const/4 v3, 0x0

    .line 1088
    :goto_16
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1089
    .line 1090
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 1091
    .line 1092
    .line 1093
    move-result v6

    .line 1094
    if-ge v3, v6, :cond_2f

    .line 1095
    .line 1096
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1097
    .line 1098
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v6

    .line 1102
    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1103
    .line 1104
    iget-object v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1105
    .line 1106
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v7

    .line 1110
    iget-object v9, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1111
    .line 1112
    if-nez v7, :cond_2d

    .line 1113
    .line 1114
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v7

    .line 1118
    if-nez v7, :cond_2d

    .line 1119
    .line 1120
    goto :goto_17

    .line 1121
    :cond_2d
    iget-boolean v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 1122
    .line 1123
    if-nez v7, :cond_2e

    .line 1124
    .line 1125
    goto :goto_17

    .line 1126
    :cond_2e
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 1127
    .line 1128
    .line 1129
    move-result v7

    .line 1130
    iput-boolean v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 1131
    .line 1132
    :goto_17
    add-int/lit8 v3, v3, 0x1

    .line 1133
    .line 1134
    goto :goto_16

    .line 1135
    :cond_2f
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 1136
    .line 1137
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 1138
    .line 1139
    iget v7, v0, Lcom/android/server/wm/Transition;->mType:I

    .line 1140
    .line 1141
    invoke-static {v3, v6, v7}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;I)Ljava/util/ArrayList;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v3

    .line 1145
    iput-object v3, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1146
    .line 1147
    iget-object v6, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 1148
    .line 1149
    invoke-virtual {v6}, Lcom/android/server/wm/BackNavigationController;->isMonitoringTransition()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v9

    .line 1153
    if-eqz v9, :cond_3f

    .line 1154
    .line 1155
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1156
    .line 1157
    .line 1158
    move-result v9

    .line 1159
    if-eqz v9, :cond_30

    .line 1160
    .line 1161
    goto/16 :goto_1e

    .line 1162
    .line 1163
    :cond_30
    iget-object v9, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1164
    .line 1165
    invoke-virtual {v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->hasTargetDetached()Z

    .line 1166
    .line 1167
    .line 1168
    move-result v9

    .line 1169
    iget-object v10, v6, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 1170
    .line 1171
    if-eqz v9, :cond_31

    .line 1172
    .line 1173
    const-string/jumbo v3, "targetDetached"

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v10, v3}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->cancelBackNavigating(Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    goto/16 :goto_1e

    .line 1180
    .line 1181
    :cond_31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1182
    .line 1183
    .line 1184
    move-result v9

    .line 1185
    const/4 v11, 0x1

    .line 1186
    sub-int/2addr v9, v11

    .line 1187
    :goto_18
    if-ltz v9, :cond_35

    .line 1188
    .line 1189
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v11

    .line 1193
    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1194
    .line 1195
    iget-object v11, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1196
    .line 1197
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v12

    .line 1201
    if-nez v12, :cond_32

    .line 1202
    .line 1203
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v12

    .line 1207
    if-nez v12, :cond_32

    .line 1208
    .line 1209
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v12

    .line 1213
    if-nez v12, :cond_32

    .line 1214
    .line 1215
    goto :goto_19

    .line 1216
    :cond_32
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v12

    .line 1220
    check-cast v12, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1221
    .line 1222
    invoke-virtual {v12, v11}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    .line 1223
    .line 1224
    .line 1225
    move-result v12

    .line 1226
    const/4 v13, 0x6

    .line 1227
    if-ne v12, v13, :cond_33

    .line 1228
    .line 1229
    goto :goto_19

    .line 1230
    :cond_33
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1231
    .line 1232
    .line 1233
    move-result v12

    .line 1234
    if-eqz v12, :cond_34

    .line 1235
    .line 1236
    iget-object v12, v6, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1237
    .line 1238
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    .line 1240
    .line 1241
    goto :goto_19

    .line 1242
    :cond_34
    iget-object v12, v6, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1243
    .line 1244
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    .line 1246
    .line 1247
    :goto_19
    add-int/lit8 v9, v9, -0x1

    .line 1248
    .line 1249
    goto :goto_18

    .line 1250
    :cond_35
    iget-object v3, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1251
    .line 1252
    iget-boolean v9, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 1253
    .line 1254
    if-eqz v9, :cond_38

    .line 1255
    .line 1256
    iget-boolean v9, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 1257
    .line 1258
    if-eqz v9, :cond_38

    .line 1259
    .line 1260
    const/4 v9, 0x2

    .line 1261
    if-eq v7, v9, :cond_36

    .line 1262
    .line 1263
    const/4 v9, 0x4

    .line 1264
    if-ne v7, v9, :cond_38

    .line 1265
    .line 1266
    :cond_36
    iget-object v9, v6, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1267
    .line 1268
    iget-object v11, v6, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1269
    .line 1270
    const/4 v12, 0x0

    .line 1271
    invoke-virtual {v3, v11, v12}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    .line 1272
    .line 1273
    .line 1274
    move-result v11

    .line 1275
    if-eqz v11, :cond_38

    .line 1276
    .line 1277
    const/4 v11, 0x1

    .line 1278
    invoke-virtual {v3, v9, v11}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    .line 1279
    .line 1280
    .line 1281
    move-result v13

    .line 1282
    if-nez v13, :cond_37

    .line 1283
    .line 1284
    invoke-virtual {v3, v9, v12}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->containTarget(Ljava/util/ArrayList;Z)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v3

    .line 1288
    if-eqz v3, :cond_38

    .line 1289
    .line 1290
    :cond_37
    const/4 v3, 0x1

    .line 1291
    goto :goto_1a

    .line 1292
    :cond_38
    const/4 v3, 0x0

    .line 1293
    :goto_1a
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 1294
    .line 1295
    const/4 v11, 0x0

    .line 1296
    aget-boolean v9, v9, v11

    .line 1297
    .line 1298
    if-eqz v9, :cond_39

    .line 1299
    .line 1300
    iget-object v9, v6, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1301
    .line 1302
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v9

    .line 1306
    iget-object v11, v6, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1307
    .line 1308
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v11

    .line 1312
    iget-object v12, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1313
    .line 1314
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v12

    .line 1318
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1319
    .line 1320
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v13

    .line 1324
    filled-new-array {v9, v11, v12, v13}, [Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v23

    .line 1328
    const-string/jumbo v22, "onTransactionReady, opening: %s, closing: %s, animating: %s, match: %b"

    .line 1329
    .line 1330
    .line 1331
    const-wide v19, -0x59411bcd8bffc571L

    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    const/16 v21, 0xc0

    .line 1337
    .line 1338
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1339
    .line 1340
    .line 1341
    :cond_39
    if-nez v3, :cond_3a

    .line 1342
    .line 1343
    iget-object v3, v6, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1344
    .line 1345
    iget-object v9, v6, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1346
    .line 1347
    invoke-static {v10, v3, v9}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->-$$Nest$monTransitionReadyWhileNavigate(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1348
    .line 1349
    .line 1350
    goto :goto_1d

    .line 1351
    :cond_3a
    iget-object v3, v6, Lcom/android/server/wm/BackNavigationController;->mWaitTransitionFinish:Lcom/android/server/wm/Transition;

    .line 1352
    .line 1353
    if-eqz v3, :cond_3b

    .line 1354
    .line 1355
    const-string v3, "CoreBackPreview"

    .line 1356
    .line 1357
    const-string v9, "Gesture animation is applied on another transition?"

    .line 1358
    .line 1359
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    .line 1361
    .line 1362
    :cond_3b
    iput-object v0, v6, Lcom/android/server/wm/BackNavigationController;->mWaitTransitionFinish:Lcom/android/server/wm/Transition;

    .line 1363
    .line 1364
    iget-object v3, v6, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1365
    .line 1366
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1367
    .line 1368
    .line 1369
    move-result v3

    .line 1370
    const/4 v9, 0x1

    .line 1371
    sub-int/2addr v3, v9

    .line 1372
    :goto_1b
    if-ltz v3, :cond_3d

    .line 1373
    .line 1374
    iget-object v10, v6, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1375
    .line 1376
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v10

    .line 1380
    check-cast v10, Lcom/android/server/wm/WindowContainer;

    .line 1381
    .line 1382
    iget-object v11, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1383
    .line 1384
    invoke-virtual {v11, v10, v9}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    .line 1385
    .line 1386
    .line 1387
    move-result v10

    .line 1388
    if-eqz v10, :cond_3c

    .line 1389
    .line 1390
    iget-object v3, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1391
    .line 1392
    invoke-virtual {v3, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->markStartingSurfaceMatch(Landroid/view/SurfaceControl$Transaction;)V

    .line 1393
    .line 1394
    .line 1395
    goto :goto_1c

    .line 1396
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    .line 1397
    .line 1398
    const/4 v9, 0x1

    .line 1399
    goto :goto_1b

    .line 1400
    :cond_3d
    :goto_1c
    iget-object v3, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1401
    .line 1402
    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 1403
    .line 1404
    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1405
    .line 1406
    if-eqz v3, :cond_3e

    .line 1407
    .line 1408
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1409
    .line 1410
    .line 1411
    iget-object v3, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1412
    .line 1413
    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 1414
    .line 1415
    const/4 v9, 0x0

    .line 1416
    iput-object v9, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mCloseTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1417
    .line 1418
    :cond_3e
    iget-object v3, v6, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 1419
    .line 1420
    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mCloseAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 1421
    .line 1422
    iget-object v3, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 1423
    .line 1424
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v3

    .line 1428
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1429
    .line 1430
    .line 1431
    :goto_1d
    iget-object v3, v6, Lcom/android/server/wm/BackNavigationController;->mTmpOpenApps:Ljava/util/ArrayList;

    .line 1432
    .line 1433
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1434
    .line 1435
    .line 1436
    iget-object v3, v6, Lcom/android/server/wm/BackNavigationController;->mTmpCloseApps:Ljava/util/ArrayList;

    .line 1437
    .line 1438
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1439
    .line 1440
    .line 1441
    :cond_3f
    :goto_1e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 1442
    .line 1443
    if-eqz v3, :cond_43

    .line 1444
    .line 1445
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 1446
    .line 1447
    if-nez v3, :cond_43

    .line 1448
    .line 1449
    iget-object v3, v2, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 1450
    .line 1451
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1452
    .line 1453
    iget-object v9, v0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1454
    .line 1455
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1459
    .line 1460
    .line 1461
    move-result v10

    .line 1462
    const/4 v11, 0x1

    .line 1463
    sub-int/2addr v10, v11

    .line 1464
    :goto_1f
    if-ltz v10, :cond_43

    .line 1465
    .line 1466
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v11

    .line 1470
    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1471
    .line 1472
    iget v12, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 1473
    .line 1474
    const/4 v13, 0x2

    .line 1475
    if-ne v12, v13, :cond_40

    .line 1476
    .line 1477
    goto :goto_20

    .line 1478
    :cond_40
    iget-object v12, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1479
    .line 1480
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 1481
    .line 1482
    .line 1483
    move-result v13

    .line 1484
    if-eqz v13, :cond_41

    .line 1485
    .line 1486
    goto :goto_20

    .line 1487
    :cond_41
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v12

    .line 1491
    if-eqz v12, :cond_42

    .line 1492
    .line 1493
    iget-boolean v13, v12, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 1494
    .line 1495
    if-nez v13, :cond_42

    .line 1496
    .line 1497
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1498
    .line 1499
    .line 1500
    move-result v13

    .line 1501
    if-nez v13, :cond_42

    .line 1502
    .line 1503
    new-instance v13, Landroid/util/ArraySet;

    .line 1504
    .line 1505
    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 1506
    .line 1507
    .line 1508
    new-instance v14, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;

    .line 1509
    .line 1510
    invoke-direct {v14, v13}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;)V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v12, v14}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1514
    .line 1515
    .line 1516
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    .line 1517
    .line 1518
    .line 1519
    move-result v13

    .line 1520
    const/4 v14, 0x1

    .line 1521
    if-le v13, v14, :cond_42

    .line 1522
    .line 1523
    new-instance v13, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 1524
    .line 1525
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 1526
    .line 1527
    .line 1528
    new-instance v14, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;

    .line 1529
    .line 1530
    invoke-direct {v14, v3, v12, v11}, Lcom/android/server/wm/SnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SnapshotController;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v9, v13, v14}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 1534
    .line 1535
    .line 1536
    :cond_42
    :goto_20
    add-int/lit8 v10, v10, -0x1

    .line 1537
    .line 1538
    goto :goto_1f

    .line 1539
    :cond_43
    iget v3, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1540
    .line 1541
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1542
    .line 1543
    invoke-static {v7, v3, v6, v1}, Lcom/android/server/wm/Transition;->calculateTransitionInfo(IILjava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v3

    .line 1547
    iget v6, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1548
    .line 1549
    invoke-virtual {v3, v6}, Landroid/window/TransitionInfo;->setDebugId(I)V

    .line 1550
    .line 1551
    .line 1552
    const/4 v6, 0x0

    .line 1553
    const/4 v9, -0x1

    .line 1554
    :goto_21
    iget-object v10, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 1555
    .line 1556
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1557
    .line 1558
    .line 1559
    move-result v10

    .line 1560
    if-ge v6, v10, :cond_4d

    .line 1561
    .line 1562
    iget-object v10, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 1563
    .line 1564
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v10

    .line 1568
    if-ne v10, v0, :cond_44

    .line 1569
    .line 1570
    goto :goto_22

    .line 1571
    :cond_44
    iget-object v10, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 1572
    .line 1573
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v10

    .line 1577
    check-cast v10, Lcom/android/server/wm/Transition;

    .line 1578
    .line 1579
    iget v11, v10, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 1580
    .line 1581
    const/4 v12, 0x1

    .line 1582
    if-ne v11, v12, :cond_45

    .line 1583
    .line 1584
    iget v13, v0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 1585
    .line 1586
    if-ne v13, v12, :cond_45

    .line 1587
    .line 1588
    :goto_22
    const/4 v12, 0x2

    .line 1589
    goto :goto_26

    .line 1590
    :cond_45
    const/4 v12, 0x2

    .line 1591
    if-ne v11, v12, :cond_47

    .line 1592
    .line 1593
    invoke-virtual {v10}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    .line 1594
    .line 1595
    .line 1596
    move-result v11

    .line 1597
    if-eqz v11, :cond_47

    .line 1598
    .line 1599
    iget v11, v0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 1600
    .line 1601
    if-ne v11, v12, :cond_46

    .line 1602
    .line 1603
    goto :goto_25

    .line 1604
    :cond_46
    move-object v11, v10

    .line 1605
    move-object v10, v0

    .line 1606
    goto :goto_23

    .line 1607
    :cond_47
    iget v11, v0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 1608
    .line 1609
    if-ne v11, v12, :cond_4a

    .line 1610
    .line 1611
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    .line 1612
    .line 1613
    .line 1614
    move-result v11

    .line 1615
    if-eqz v11, :cond_4a

    .line 1616
    .line 1617
    move-object v11, v0

    .line 1618
    :goto_23
    const/4 v13, 0x0

    .line 1619
    :goto_24
    iget-object v14, v10, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1620
    .line 1621
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1622
    .line 1623
    .line 1624
    move-result v14

    .line 1625
    if-ge v13, v14, :cond_4c

    .line 1626
    .line 1627
    iget-object v14, v10, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1628
    .line 1629
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v14

    .line 1633
    check-cast v14, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1634
    .line 1635
    iget-object v14, v14, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1636
    .line 1637
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v15

    .line 1641
    if-nez v15, :cond_48

    .line 1642
    .line 1643
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v17

    .line 1647
    if-nez v17, :cond_48

    .line 1648
    .line 1649
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v14

    .line 1653
    if-nez v14, :cond_48

    .line 1654
    .line 1655
    goto :goto_25

    .line 1656
    :cond_48
    if-eqz v15, :cond_49

    .line 1657
    .line 1658
    invoke-virtual {v11, v15}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1659
    .line 1660
    .line 1661
    move-result v14

    .line 1662
    if-eqz v14, :cond_49

    .line 1663
    .line 1664
    goto :goto_25

    .line 1665
    :cond_49
    add-int/lit8 v13, v13, 0x1

    .line 1666
    .line 1667
    goto :goto_24

    .line 1668
    :cond_4a
    :goto_25
    if-ltz v9, :cond_4b

    .line 1669
    .line 1670
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 1671
    .line 1672
    const/4 v6, 0x1

    .line 1673
    goto :goto_27

    .line 1674
    :cond_4b
    iget-object v9, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 1675
    .line 1676
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v9

    .line 1680
    check-cast v9, Lcom/android/server/wm/Transition;

    .line 1681
    .line 1682
    iget v9, v9, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    .line 1683
    .line 1684
    :cond_4c
    :goto_26
    add-int/lit8 v6, v6, 0x1

    .line 1685
    .line 1686
    goto/16 :goto_21

    .line 1687
    .line 1688
    :cond_4d
    const/4 v6, 0x0

    .line 1689
    :goto_27
    if-eqz v6, :cond_4e

    .line 1690
    .line 1691
    const/4 v9, 0x0

    .line 1692
    :cond_4e
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 1693
    .line 1694
    if-gez v9, :cond_50

    .line 1695
    .line 1696
    iget v9, v2, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    .line 1697
    .line 1698
    if-lez v9, :cond_50

    .line 1699
    .line 1700
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 1701
    .line 1702
    if-eqz v11, :cond_4f

    .line 1703
    .line 1704
    const/4 v11, 0x1

    .line 1705
    aget-boolean v12, v10, v11

    .line 1706
    .line 1707
    if-eqz v12, :cond_50

    .line 1708
    .line 1709
    iget v11, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1710
    .line 1711
    int-to-long v11, v11

    .line 1712
    int-to-long v13, v9

    .line 1713
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1714
    .line 1715
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v11

    .line 1719
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v12

    .line 1723
    filled-new-array {v11, v12}, [Ljava/lang/Object;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v23

    .line 1727
    const-string v22, "Playing #%d in parallel on track #%d"

    .line 1728
    .line 1729
    const-wide v19, -0x5ca0447c86b8c654L

    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    const/16 v21, 0x5

    .line 1735
    .line 1736
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1737
    .line 1738
    .line 1739
    goto :goto_28

    .line 1740
    :cond_4f
    const/4 v11, 0x1

    .line 1741
    aget-boolean v12, v5, v11

    .line 1742
    .line 1743
    if-eqz v12, :cond_50

    .line 1744
    .line 1745
    iget v11, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1746
    .line 1747
    int-to-long v11, v11

    .line 1748
    int-to-long v13, v9

    .line 1749
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1750
    .line 1751
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v11

    .line 1755
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v12

    .line 1759
    filled-new-array {v11, v12}, [Ljava/lang/Object;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v23

    .line 1763
    const/16 v22, 0x0

    .line 1764
    .line 1765
    const-wide v19, -0x627f3fcbd5f1cfaeL    # -1.420325404709624E-166

    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    const/16 v21, 0x5

    .line 1771
    .line 1772
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1773
    .line 1774
    .line 1775
    :cond_50
    :goto_28
    iput v9, v0, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    .line 1776
    .line 1777
    invoke-virtual {v3, v9}, Landroid/window/TransitionInfo;->setTrack(I)V

    .line 1778
    .line 1779
    .line 1780
    iget v11, v2, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    .line 1781
    .line 1782
    const/4 v12, 0x1

    .line 1783
    add-int/2addr v9, v12

    .line 1784
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    .line 1785
    .line 1786
    .line 1787
    move-result v9

    .line 1788
    iput v9, v2, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    .line 1789
    .line 1790
    if-eqz v6, :cond_52

    .line 1791
    .line 1792
    if-le v9, v12, :cond_52

    .line 1793
    .line 1794
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    .line 1795
    .line 1796
    .line 1797
    move-result v6

    .line 1798
    const/high16 v9, 0x200000

    .line 1799
    .line 1800
    or-int/2addr v6, v9

    .line 1801
    invoke-virtual {v3, v6}, Landroid/window/TransitionInfo;->setFlags(I)V

    .line 1802
    .line 1803
    .line 1804
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 1805
    .line 1806
    if-eqz v6, :cond_51

    .line 1807
    .line 1808
    aget-boolean v6, v10, v12

    .line 1809
    .line 1810
    if-eqz v6, :cond_52

    .line 1811
    .line 1812
    iget v6, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1813
    .line 1814
    int-to-long v11, v6

    .line 1815
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1816
    .line 1817
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v6

    .line 1821
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v23

    .line 1825
    const-string v22, "Marking #%d animation as SYNC."

    .line 1826
    .line 1827
    const-wide v19, 0x7ae0338c9b1732cbL    # 7.528657044491364E283

    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    const/16 v21, 0x1

    .line 1833
    .line 1834
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1835
    .line 1836
    .line 1837
    goto :goto_29

    .line 1838
    :cond_51
    move v6, v12

    .line 1839
    aget-boolean v9, v5, v6

    .line 1840
    .line 1841
    if-eqz v9, :cond_52

    .line 1842
    .line 1843
    iget v6, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1844
    .line 1845
    int-to-long v11, v6

    .line 1846
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1847
    .line 1848
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v6

    .line 1852
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v23

    .line 1856
    const/16 v22, 0x0

    .line 1857
    .line 1858
    const-wide v19, -0x6633d5a00ae6cf2cL

    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    const/16 v21, 0x1

    .line 1864
    .line 1865
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1866
    .line 1867
    .line 1868
    :cond_52
    :goto_29
    iget-object v6, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1869
    .line 1870
    if-ne v0, v6, :cond_54

    .line 1871
    .line 1872
    const/4 v6, 0x0

    .line 1873
    iput-object v6, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1874
    .line 1875
    iget-object v6, v2, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 1876
    .line 1877
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1878
    .line 1879
    .line 1880
    move-result v6

    .line 1881
    if-nez v6, :cond_53

    .line 1882
    .line 1883
    iget-object v6, v2, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 1884
    .line 1885
    const/4 v9, 0x0

    .line 1886
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v6

    .line 1890
    check-cast v6, Lcom/android/server/wm/Transition;

    .line 1891
    .line 1892
    iput-object v6, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1893
    .line 1894
    :cond_53
    iget-object v6, v2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1895
    .line 1896
    if-nez v6, :cond_55

    .line 1897
    .line 1898
    iget-object v6, v2, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 1899
    .line 1900
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 1901
    .line 1902
    .line 1903
    goto :goto_2a

    .line 1904
    :cond_54
    iget-object v6, v2, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 1905
    .line 1906
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1907
    .line 1908
    .line 1909
    move-result v6

    .line 1910
    if-eqz v6, :cond_86

    .line 1911
    .line 1912
    :cond_55
    :goto_2a
    iget-object v6, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 1913
    .line 1914
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    .line 1916
    .line 1917
    const/4 v6, 0x1

    .line 1918
    invoke-virtual {v2, v6}, Lcom/android/server/wm/TransitionController;->updateRunningRemoteAnimation(Z)V

    .line 1919
    .line 1920
    .line 1921
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 1922
    .line 1923
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1924
    .line 1925
    .line 1926
    const/4 v12, 0x0

    .line 1927
    :goto_2b
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 1928
    .line 1929
    .line 1930
    move-result v6

    .line 1931
    if-ge v12, v6, :cond_56

    .line 1932
    .line 1933
    iget-object v6, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1934
    .line 1935
    invoke-virtual {v3, v12}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v9

    .line 1939
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    .line 1940
    .line 1941
    .line 1942
    move-result v9

    .line 1943
    invoke-virtual {v6, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v6

    .line 1947
    iget-object v9, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 1948
    .line 1949
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    .line 1951
    .line 1952
    add-int/lit8 v12, v12, 0x1

    .line 1953
    .line 1954
    goto :goto_2b

    .line 1955
    :cond_56
    const/4 v12, 0x0

    .line 1956
    :goto_2c
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1957
    .line 1958
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1959
    .line 1960
    .line 1961
    move-result v6

    .line 1962
    if-ge v12, v6, :cond_5b

    .line 1963
    .line 1964
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1965
    .line 1966
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v6

    .line 1970
    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 1971
    .line 1972
    iget-object v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1973
    .line 1974
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v9

    .line 1978
    if-eqz v9, :cond_57

    .line 1979
    .line 1980
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 1981
    .line 1982
    .line 1983
    move-result v6

    .line 1984
    if-eqz v6, :cond_5a

    .line 1985
    .line 1986
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 1987
    .line 1988
    .line 1989
    move-result v6

    .line 1990
    if-eqz v6, :cond_5a

    .line 1991
    .line 1992
    iget-object v6, v9, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 1993
    .line 1994
    if-eqz v6, :cond_5a

    .line 1995
    .line 1996
    iget-object v6, v9, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1997
    .line 1998
    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1999
    .line 2000
    .line 2001
    goto :goto_2d

    .line 2002
    :cond_57
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v6

    .line 2006
    if-nez v6, :cond_58

    .line 2007
    .line 2008
    goto :goto_2d

    .line 2009
    :cond_58
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2010
    .line 2011
    .line 2012
    move-result v9

    .line 2013
    if-eqz v9, :cond_59

    .line 2014
    .line 2015
    iget-object v9, v2, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    .line 2016
    .line 2017
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2018
    .line 2019
    .line 2020
    goto :goto_2d

    .line 2021
    :cond_59
    iget-object v9, v2, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    .line 2022
    .line 2023
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    .line 2025
    .line 2026
    :cond_5a
    :goto_2d
    add-int/lit8 v12, v12, 0x1

    .line 2027
    .line 2028
    goto :goto_2c

    .line 2029
    :cond_5b
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2030
    .line 2031
    if-nez v6, :cond_5c

    .line 2032
    .line 2033
    goto/16 :goto_33

    .line 2034
    .line 2035
    :cond_5c
    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    .line 2036
    .line 2037
    .line 2038
    move-result v6

    .line 2039
    const/4 v9, 0x1

    .line 2040
    if-nez v6, :cond_5d

    .line 2041
    .line 2042
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2043
    .line 2044
    invoke-virtual {v3, v6}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 2045
    .line 2046
    .line 2047
    goto :goto_2f

    .line 2048
    :cond_5d
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2049
    .line 2050
    .line 2051
    move-result-object v6

    .line 2052
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 2053
    .line 2054
    .line 2055
    move-result v11

    .line 2056
    sub-int/2addr v11, v9

    .line 2057
    :goto_2e
    if-ltz v11, :cond_5f

    .line 2058
    .line 2059
    iget-object v12, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2060
    .line 2061
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v12

    .line 2065
    check-cast v12, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2066
    .line 2067
    iget-object v12, v12, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2068
    .line 2069
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v12

    .line 2073
    if-eqz v12, :cond_5e

    .line 2074
    .line 2075
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v12

    .line 2079
    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 2080
    .line 2081
    iget-object v13, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2082
    .line 2083
    invoke-virtual {v12, v13}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 2084
    .line 2085
    .line 2086
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2087
    .line 2088
    .line 2089
    move-result-object v12

    .line 2090
    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 2091
    .line 2092
    iget-object v13, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2093
    .line 2094
    invoke-virtual {v13}, Landroid/window/TransitionInfo$AnimationOptions;->getBackgroundColor()I

    .line 2095
    .line 2096
    .line 2097
    move-result v13

    .line 2098
    invoke-virtual {v12, v13}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    .line 2099
    .line 2100
    .line 2101
    :cond_5e
    add-int/lit8 v11, v11, -0x1

    .line 2102
    .line 2103
    goto :goto_2e

    .line 2104
    :cond_5f
    :goto_2f
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2105
    .line 2106
    invoke-virtual {v6}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 2107
    .line 2108
    .line 2109
    move-result v6

    .line 2110
    const/16 v11, 0xc

    .line 2111
    .line 2112
    if-eq v6, v11, :cond_60

    .line 2113
    .line 2114
    goto :goto_33

    .line 2115
    :cond_60
    const/4 v6, 0x0

    .line 2116
    :goto_30
    iget-object v11, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2117
    .line 2118
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 2119
    .line 2120
    .line 2121
    move-result v11

    .line 2122
    if-ge v6, v11, :cond_64

    .line 2123
    .line 2124
    iget-object v11, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2125
    .line 2126
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v11

    .line 2130
    check-cast v11, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2131
    .line 2132
    iget-object v11, v11, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2133
    .line 2134
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v11

    .line 2138
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v12

    .line 2142
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2143
    .line 2144
    .line 2145
    move-result-object v12

    .line 2146
    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 2147
    .line 2148
    if-eqz v11, :cond_63

    .line 2149
    .line 2150
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 2151
    .line 2152
    .line 2153
    move-result v13

    .line 2154
    if-eq v13, v9, :cond_61

    .line 2155
    .line 2156
    goto :goto_32

    .line 2157
    :cond_61
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 2158
    .line 2159
    .line 2160
    move-result v6

    .line 2161
    iget v9, v11, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2162
    .line 2163
    iget-object v11, v11, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2164
    .line 2165
    iget v11, v11, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 2166
    .line 2167
    if-ne v9, v11, :cond_62

    .line 2168
    .line 2169
    const/16 v9, 0x1000

    .line 2170
    .line 2171
    goto :goto_31

    .line 2172
    :cond_62
    const/16 v9, 0x2000

    .line 2173
    .line 2174
    :goto_31
    or-int/2addr v6, v9

    .line 2175
    invoke-virtual {v12, v6}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 2176
    .line 2177
    .line 2178
    goto :goto_33

    .line 2179
    :cond_63
    :goto_32
    add-int/lit8 v6, v6, 0x1

    .line 2180
    .line 2181
    goto :goto_30

    .line 2182
    :cond_64
    :goto_33
    const/4 v12, 0x0

    .line 2183
    :goto_34
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2184
    .line 2185
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2186
    .line 2187
    .line 2188
    move-result v6

    .line 2189
    if-ge v12, v6, :cond_66

    .line 2190
    .line 2191
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2192
    .line 2193
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2194
    .line 2195
    .line 2196
    move-result-object v6

    .line 2197
    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 2198
    .line 2199
    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/Transition;->handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V

    .line 2200
    .line 2201
    .line 2202
    iget v6, v0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 2203
    .line 2204
    const/4 v9, -0x1

    .line 2205
    if-eq v6, v9, :cond_65

    .line 2206
    .line 2207
    goto :goto_35

    .line 2208
    :cond_65
    add-int/lit8 v12, v12, 0x1

    .line 2209
    .line 2210
    goto :goto_34

    .line 2211
    :cond_66
    :goto_35
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 2212
    .line 2213
    invoke-virtual {v0, v6}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 2214
    .line 2215
    .line 2216
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    .line 2217
    .line 2218
    if-eqz v6, :cond_67

    .line 2219
    .line 2220
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 2221
    .line 2222
    if-eqz v6, :cond_67

    .line 2223
    .line 2224
    invoke-virtual {v3, v6}, Landroid/window/TransitionInfo;->setRemoteTransition(Landroid/window/RemoteTransition;)V

    .line 2225
    .line 2226
    .line 2227
    :cond_67
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2228
    .line 2229
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2230
    .line 2231
    .line 2232
    move-result v6

    .line 2233
    const/4 v9, 0x1

    .line 2234
    sub-int/2addr v6, v9

    .line 2235
    :goto_36
    if-ltz v6, :cond_6b

    .line 2236
    .line 2237
    iget-object v9, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2238
    .line 2239
    invoke-virtual {v9, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v9

    .line 2243
    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 2244
    .line 2245
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v9

    .line 2249
    if-eqz v9, :cond_6a

    .line 2250
    .line 2251
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2252
    .line 2253
    .line 2254
    move-result v11

    .line 2255
    if-nez v11, :cond_68

    .line 2256
    .line 2257
    goto :goto_38

    .line 2258
    :cond_68
    iget-object v11, v9, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2259
    .line 2260
    invoke-virtual {v1, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2261
    .line 2262
    .line 2263
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v9

    .line 2267
    :goto_37
    if-eqz v9, :cond_6a

    .line 2268
    .line 2269
    iget-object v11, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2270
    .line 2271
    invoke-static {v9, v11}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    .line 2272
    .line 2273
    .line 2274
    move-result v11

    .line 2275
    if-nez v11, :cond_6a

    .line 2276
    .line 2277
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 2278
    .line 2279
    .line 2280
    move-result-object v11

    .line 2281
    if-eqz v11, :cond_69

    .line 2282
    .line 2283
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 2284
    .line 2285
    .line 2286
    move-result-object v11

    .line 2287
    invoke-virtual {v1, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2288
    .line 2289
    .line 2290
    :cond_69
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v9

    .line 2294
    goto :goto_37

    .line 2295
    :cond_6a
    :goto_38
    add-int/lit8 v6, v6, -0x1

    .line 2296
    .line 2297
    goto :goto_36

    .line 2298
    :cond_6b
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 2299
    .line 2300
    if-nez v6, :cond_6e

    .line 2301
    .line 2302
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2303
    .line 2304
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 2305
    .line 2306
    .line 2307
    move-result v6

    .line 2308
    const/4 v9, 0x1

    .line 2309
    sub-int/2addr v6, v9

    .line 2310
    :goto_39
    if-ltz v6, :cond_6e

    .line 2311
    .line 2312
    iget-object v9, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2313
    .line 2314
    invoke-virtual {v9, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2315
    .line 2316
    .line 2317
    move-result-object v9

    .line 2318
    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 2319
    .line 2320
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v11

    .line 2324
    if-eqz v11, :cond_6d

    .line 2325
    .line 2326
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2327
    .line 2328
    .line 2329
    move-result v11

    .line 2330
    if-nez v11, :cond_6c

    .line 2331
    .line 2332
    goto :goto_3a

    .line 2333
    :cond_6c
    iget-object v11, v0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    .line 2334
    .line 2335
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 2336
    .line 2337
    .line 2338
    move-result-object v9

    .line 2339
    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2340
    .line 2341
    .line 2342
    :cond_6d
    :goto_3a
    add-int/lit8 v6, v6, -0x1

    .line 2343
    .line 2344
    goto :goto_39

    .line 2345
    :cond_6e
    const/4 v12, 0x0

    .line 2346
    :goto_3b
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2347
    .line 2348
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2349
    .line 2350
    .line 2351
    move-result v6

    .line 2352
    if-ge v12, v6, :cond_70

    .line 2353
    .line 2354
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2355
    .line 2356
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2357
    .line 2358
    .line 2359
    move-result-object v6

    .line 2360
    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 2361
    .line 2362
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 2363
    .line 2364
    .line 2365
    move-result-object v9

    .line 2366
    if-eqz v9, :cond_6f

    .line 2367
    .line 2368
    iget-object v11, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2369
    .line 2370
    invoke-static {v6, v11}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    .line 2371
    .line 2372
    .line 2373
    move-result v6

    .line 2374
    if-eqz v6, :cond_6f

    .line 2375
    .line 2376
    invoke-virtual {v9, v1}, Lcom/android/server/wm/AsyncRotationController;->setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 2377
    .line 2378
    .line 2379
    :cond_6f
    add-int/lit8 v12, v12, 0x1

    .line 2380
    .line 2381
    goto :goto_3b

    .line 2382
    :cond_70
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2383
    .line 2384
    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/Transition;->buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V

    .line 2385
    .line 2386
    .line 2387
    iget-object v6, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2388
    .line 2389
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 2390
    .line 2391
    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 2392
    .line 2393
    .line 2394
    move-result-object v6

    .line 2395
    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    .line 2396
    .line 2397
    iput-object v6, v0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2398
    .line 2399
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2400
    .line 2401
    .line 2402
    move-result-object v9

    .line 2403
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 2404
    .line 2405
    .line 2406
    move-result v9

    .line 2407
    const/4 v11, 0x1

    .line 2408
    sub-int/2addr v9, v11

    .line 2409
    :goto_3c
    if-ltz v9, :cond_73

    .line 2410
    .line 2411
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2412
    .line 2413
    .line 2414
    move-result-object v11

    .line 2415
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2416
    .line 2417
    .line 2418
    move-result-object v11

    .line 2419
    check-cast v11, Landroid/window/TransitionInfo$Change;

    .line 2420
    .line 2421
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2422
    .line 2423
    .line 2424
    move-result-object v12

    .line 2425
    if-eqz v12, :cond_71

    .line 2426
    .line 2427
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2428
    .line 2429
    .line 2430
    move-result-object v12

    .line 2431
    const/4 v13, 0x0

    .line 2432
    invoke-virtual {v6, v12, v13}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2433
    .line 2434
    .line 2435
    :cond_71
    const/16 v12, 0x20

    .line 2436
    .line 2437
    invoke-virtual {v11, v12}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 2438
    .line 2439
    .line 2440
    move-result v12

    .line 2441
    if-eqz v12, :cond_72

    .line 2442
    .line 2443
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 2444
    .line 2445
    .line 2446
    move-result v12

    .line 2447
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 2448
    .line 2449
    .line 2450
    move-result v13

    .line 2451
    if-eq v12, v13, :cond_72

    .line 2452
    .line 2453
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 2454
    .line 2455
    .line 2456
    move-result-object v12

    .line 2457
    if-eqz v12, :cond_72

    .line 2458
    .line 2459
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 2460
    .line 2461
    .line 2462
    move-result-object v11

    .line 2463
    invoke-virtual {v11}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 2464
    .line 2465
    .line 2466
    move-result-object v11

    .line 2467
    invoke-static {v11}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v11

    .line 2471
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2472
    .line 2473
    .line 2474
    move-result-object v11

    .line 2475
    iget-object v11, v11, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2476
    .line 2477
    invoke-virtual {v6, v11}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2478
    .line 2479
    .line 2480
    :cond_72
    add-int/lit8 v9, v9, -0x1

    .line 2481
    .line 2482
    goto :goto_3c

    .line 2483
    :cond_73
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getRootCount()I

    .line 2484
    .line 2485
    .line 2486
    move-result v9

    .line 2487
    const/4 v11, 0x1

    .line 2488
    sub-int/2addr v9, v11

    .line 2489
    :goto_3d
    if-ltz v9, :cond_75

    .line 2490
    .line 2491
    invoke-virtual {v3, v9}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v11

    .line 2495
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v11

    .line 2499
    if-nez v11, :cond_74

    .line 2500
    .line 2501
    goto :goto_3e

    .line 2502
    :cond_74
    const/4 v12, 0x0

    .line 2503
    invoke-virtual {v6, v11, v12}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2504
    .line 2505
    .line 2506
    :goto_3e
    add-int/lit8 v9, v9, -0x1

    .line 2507
    .line 2508
    goto :goto_3d

    .line 2509
    :cond_75
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v6

    .line 2513
    iget-object v9, v0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 2514
    .line 2515
    if-eqz v6, :cond_7d

    .line 2516
    .line 2517
    iget-boolean v6, v0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 2518
    .line 2519
    if-eqz v6, :cond_7d

    .line 2520
    .line 2521
    iget-wide v11, v0, Lcom/android/server/wm/Transition;->mStatusBarTransitionDelay:J

    .line 2522
    .line 2523
    const/4 v6, 0x0

    .line 2524
    :goto_3f
    iget-object v13, v2, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 2525
    .line 2526
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 2527
    .line 2528
    .line 2529
    move-result v13

    .line 2530
    if-ge v6, v13, :cond_76

    .line 2531
    .line 2532
    iget-object v13, v2, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 2533
    .line 2534
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2535
    .line 2536
    .line 2537
    move-result-object v13

    .line 2538
    check-cast v13, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 2539
    .line 2540
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2541
    .line 2542
    .line 2543
    move-result-wide v14

    .line 2544
    add-long/2addr v14, v11

    .line 2545
    invoke-virtual {v13, v14, v15}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(J)V

    .line 2546
    .line 2547
    .line 2548
    add-int/lit8 v6, v6, 0x1

    .line 2549
    .line 2550
    goto :goto_3f

    .line 2551
    :cond_76
    :try_start_0
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 2552
    .line 2553
    if-eqz v6, :cond_77

    .line 2554
    .line 2555
    const/4 v6, 0x1

    .line 2556
    aget-boolean v5, v10, v6

    .line 2557
    .line 2558
    if-eqz v5, :cond_78

    .line 2559
    .line 2560
    const-string v5, "    "

    .line 2561
    .line 2562
    invoke-virtual {v3, v5}, Landroid/window/TransitionInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 2563
    .line 2564
    .line 2565
    move-result-object v5

    .line 2566
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2567
    .line 2568
    .line 2569
    move-result-object v5

    .line 2570
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2571
    .line 2572
    const-string v14, "Calling onTransitionReady: %s"

    .line 2573
    .line 2574
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 2575
    .line 2576
    .line 2577
    move-result-object v15

    .line 2578
    const-wide v11, 0x64fec2389243d65L

    .line 2579
    .line 2580
    .line 2581
    .line 2582
    .line 2583
    const/4 v13, 0x0

    .line 2584
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2585
    .line 2586
    .line 2587
    goto :goto_40

    .line 2588
    :catch_0
    const/4 v5, 0x0

    .line 2589
    goto :goto_42

    .line 2590
    :cond_77
    const/4 v6, 0x1

    .line 2591
    aget-boolean v5, v5, v6

    .line 2592
    .line 2593
    if-eqz v5, :cond_78

    .line 2594
    .line 2595
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2596
    .line 2597
    .line 2598
    move-result-object v5

    .line 2599
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2600
    .line 2601
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 2602
    .line 2603
    .line 2604
    move-result-object v15

    .line 2605
    const/4 v13, 0x0

    .line 2606
    const/4 v14, 0x0

    .line 2607
    const-wide v11, -0x4a41677db194c275L    # -8.177520965211613E-50

    .line 2608
    .line 2609
    .line 2610
    .line 2611
    .line 2612
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2613
    .line 2614
    .line 2615
    :cond_78
    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2616
    .line 2617
    .line 2618
    move-result-wide v5

    .line 2619
    iput-wide v5, v9, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 2620
    .line 2621
    iput-object v3, v9, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    .line 2622
    .line 2623
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    .line 2624
    .line 2625
    .line 2626
    move-result-object v5

    .line 2627
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 2628
    .line 2629
    iget-object v10, v0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2630
    .line 2631
    invoke-interface {v5, v6, v3, v1, v10}, Landroid/window/ITransitionPlayer;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 2632
    .line 2633
    .line 2634
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 2635
    .line 2636
    if-eqz v1, :cond_79

    .line 2637
    .line 2638
    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2639
    .line 2640
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2641
    .line 2642
    if-eqz v1, :cond_79

    .line 2643
    .line 2644
    const/4 v5, 0x0

    .line 2645
    :try_start_1
    invoke-virtual {v1, v5, v5}, Landroid/os/PowerManagerInternal;->setPowerBoost(II)V

    .line 2646
    .line 2647
    .line 2648
    goto :goto_41

    .line 2649
    :cond_79
    const/4 v5, 0x0

    .line 2650
    :goto_41
    const-wide/16 v10, 0x20

    .line 2651
    .line 2652
    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 2653
    .line 2654
    .line 2655
    move-result v1

    .line 2656
    if-eqz v1, :cond_7a

    .line 2657
    .line 2658
    const-string/jumbo v1, "playing"

    .line 2659
    .line 2660
    .line 2661
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2662
    .line 2663
    .line 2664
    move-result v6

    .line 2665
    invoke-static {v10, v11, v4, v1, v6}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2666
    .line 2667
    .line 2668
    goto :goto_43

    .line 2669
    :catch_1
    :goto_42
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Transition;->postCleanupOnFailure()V

    .line 2670
    .line 2671
    .line 2672
    :cond_7a
    :goto_43
    move v6, v5

    .line 2673
    :goto_44
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2674
    .line 2675
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2676
    .line 2677
    .line 2678
    move-result v1

    .line 2679
    if-ge v6, v1, :cond_7c

    .line 2680
    .line 2681
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 2682
    .line 2683
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2684
    .line 2685
    .line 2686
    move-result-object v1

    .line 2687
    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2688
    .line 2689
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2690
    .line 2691
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 2692
    .line 2693
    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 2694
    .line 2695
    .line 2696
    move-result v5

    .line 2697
    if-eqz v5, :cond_7b

    .line 2698
    .line 2699
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2700
    .line 2701
    iget v5, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 2702
    .line 2703
    invoke-virtual {v4, v1, v7, v5}, Lcom/android/server/wm/AccessibilityController;->onWMTransition(III)V

    .line 2704
    .line 2705
    .line 2706
    :cond_7b
    add-int/lit8 v6, v6, 0x1

    .line 2707
    .line 2708
    goto :goto_44

    .line 2709
    :cond_7c
    :goto_45
    const/4 v1, 0x0

    .line 2710
    goto :goto_46

    .line 2711
    :cond_7d
    iget-boolean v1, v0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 2712
    .line 2713
    if-nez v1, :cond_7e

    .line 2714
    .line 2715
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 2716
    .line 2717
    .line 2718
    move-result-wide v10

    .line 2719
    iput-wide v10, v9, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 2720
    .line 2721
    const/4 v1, 0x1

    .line 2722
    aget-boolean v1, v5, v1

    .line 2723
    .line 2724
    if-eqz v1, :cond_7e

    .line 2725
    .line 2726
    iget v1, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 2727
    .line 2728
    int-to-long v4, v1

    .line 2729
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2730
    .line 2731
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2732
    .line 2733
    .line 2734
    move-result-object v1

    .line 2735
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 2736
    .line 2737
    .line 2738
    move-result-object v15

    .line 2739
    const/4 v13, 0x1

    .line 2740
    const/4 v14, 0x0

    .line 2741
    const-wide v11, 0x1966d582a0723dcfL

    .line 2742
    .line 2743
    .line 2744
    .line 2745
    .line 2746
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2747
    .line 2748
    .line 2749
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Transition;->postCleanupOnFailure()V

    .line 2750
    .line 2751
    .line 2752
    goto :goto_45

    .line 2753
    :goto_46
    iput-object v1, v0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2754
    .line 2755
    new-instance v1, Landroid/util/ArrayMap;

    .line 2756
    .line 2757
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 2758
    .line 2759
    .line 2760
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2761
    .line 2762
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 2763
    .line 2764
    .line 2765
    move-result v4

    .line 2766
    const/4 v5, 0x1

    .line 2767
    sub-int/2addr v4, v5

    .line 2768
    :goto_47
    if-ltz v4, :cond_83

    .line 2769
    .line 2770
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2771
    .line 2772
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 2773
    .line 2774
    .line 2775
    move-result-object v6

    .line 2776
    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 2777
    .line 2778
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2779
    .line 2780
    .line 2781
    move-result-object v6

    .line 2782
    if-eqz v6, :cond_82

    .line 2783
    .line 2784
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2785
    .line 2786
    .line 2787
    move-result v8

    .line 2788
    if-nez v8, :cond_7f

    .line 2789
    .line 2790
    goto :goto_49

    .line 2791
    :cond_7f
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2792
    .line 2793
    instance-of v8, v8, Lcom/android/server/wm/SplashScreenStartingData;

    .line 2794
    .line 2795
    if-eqz v8, :cond_80

    .line 2796
    .line 2797
    iget-boolean v8, v6, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    .line 2798
    .line 2799
    if-nez v8, :cond_80

    .line 2800
    .line 2801
    move v8, v5

    .line 2802
    goto :goto_48

    .line 2803
    :cond_80
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 2804
    .line 2805
    .line 2806
    move-result v8

    .line 2807
    if-eqz v8, :cond_81

    .line 2808
    .line 2809
    invoke-virtual {v0, v6}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2810
    .line 2811
    .line 2812
    move-result v8

    .line 2813
    if-eqz v8, :cond_81

    .line 2814
    .line 2815
    const/4 v8, 0x5

    .line 2816
    goto :goto_48

    .line 2817
    :cond_81
    const/4 v8, 0x2

    .line 2818
    :goto_48
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2819
    .line 2820
    .line 2821
    move-result-object v8

    .line 2822
    invoke-virtual {v1, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2823
    .line 2824
    .line 2825
    :cond_82
    :goto_49
    add-int/lit8 v4, v4, -0x1

    .line 2826
    .line 2827
    goto :goto_47

    .line 2828
    :cond_83
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 2829
    .line 2830
    iget-object v4, v4, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2831
    .line 2832
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2833
    .line 2834
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 2835
    .line 2836
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 2837
    .line 2838
    .line 2839
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 2840
    .line 2841
    if-nez v1, :cond_84

    .line 2842
    .line 2843
    iget-object v1, v2, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 2844
    .line 2845
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2846
    .line 2847
    invoke-virtual {v1, v4, v7}, Lcom/android/server/wm/SnapshotController;->onTransactionReady(Ljava/util/ArrayList;I)V

    .line 2848
    .line 2849
    .line 2850
    :cond_84
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 2851
    .line 2852
    .line 2853
    iget-object v1, v9, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    .line 2854
    .line 2855
    if-eqz v1, :cond_85

    .line 2856
    .line 2857
    iget-object v1, v2, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    .line 2858
    .line 2859
    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2860
    .line 2861
    .line 2862
    iget-object v1, v2, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 2863
    .line 2864
    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 2865
    .line 2866
    invoke-interface {v1, v0, v2}, Lcom/android/server/wm/TransitionTracer;->logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V

    .line 2867
    .line 2868
    .line 2869
    :cond_85
    return-void

    .line 2870
    :cond_86
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2871
    .line 2872
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2873
    .line 2874
    const-string v3, "Trying to move non-collecting transition toplaying "

    .line 2875
    .line 2876
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2877
    .line 2878
    .line 2879
    iget v0, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 2880
    .line 2881
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2882
    .line 2883
    .line 2884
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2885
    .line 2886
    .line 2887
    move-result-object v0

    .line 2888
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2889
    .line 2890
    .line 2891
    throw v1
.end method

.method public final postCleanupOnFailure()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "postCleanupOnFailure, transit="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", caller="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    const-string v2, "Transition"

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 32
    .line 33
    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final recordDisplay(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendRemoteCallback(Landroid/os/IRemoteCallback;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setAllReady()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    aget-boolean v0, v0, v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 25
    .line 26
    const-wide v4, 0x53cf4ee4ec6733bfL    # 5.2245209272189455E95

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-boolean v1, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 38
    .line 39
    iput-boolean v1, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public final setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 18
    .line 19
    return-void
.end method

.method public final setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 16
    .line 17
    move-object v2, p1

    .line 18
    :goto_0
    if-eqz v2, :cond_2

    .line 19
    .line 20
    instance-of v3, v2, Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 34
    .line 35
    aget-boolean v0, v0, v1

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    filled-new-array {p2, v0, p1}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    const/4 v5, 0x0

    .line 58
    const-wide v2, -0x4233d85c7c10c150L    # -5.121335342942837E-11

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_2
    return-void
.end method

.method public final shouldApplyOnDisplayThread()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

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
    const/4 v2, 0x0

    .line 10
    if-ltz v0, :cond_3

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 38
    .line 39
    iget v3, v3, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 40
    .line 41
    iget v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 42
    .line 43
    if-eq v4, v3, :cond_2

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-eq v0, p0, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v1, v2

    .line 65
    :goto_1
    return v1

    .line 66
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return v2
.end method

.method public final shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final snapshotStartState(Lcom/android/server/wm/WindowContainer;)V
    .locals 9

    .line 1
    :goto_0
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    instance-of v0, p1, Lcom/android/server/wm/DisplayContent;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 40
    .line 41
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :goto_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    aget-boolean v0, v0, v1

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 54
    .line 55
    int-to-long v0, v0

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    const-wide v4, 0xea0e7710d73332L

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return-void
.end method

.method public final start()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 2
    .line 3
    if-ltz v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Transition already started id="

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " state="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 26
    .line 27
    const-string v1, "Transition"

    .line 28
    .line 29
    invoke-static {v0, p0, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 34
    .line 35
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 40
    .line 41
    aget-boolean v0, v0, v1

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 46
    .line 47
    int-to-long v0, v0

    .line 48
    const/4 v2, 0x3

    .line 49
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const-wide v4, 0x592f159642a63392L    # 4.0133745982594973E121

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const/4 v6, 0x1

    .line 73
    const-string v7, "Starting Transition %d, caller=%s"

    .line 74
    .line 75
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 80
    .line 81
    aget-boolean v0, v0, v1

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 86
    .line 87
    int-to-long v0, v0

    .line 88
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 89
    .line 90
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    const-wide v3, 0x26f8cb1209403231L    # 6.000882256300104E-121

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    const/4 v5, 0x1

    .line 104
    const/4 v6, 0x0

    .line 105
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 112
    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    iput-wide v1, v0, Lcom/android/server/wm/TransitionController$Logger;->mStartTimeNs:J

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->updateAnimatingState()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string v0, "Can\'t start Transition which isn\'t collecting."

    .line 128
    .line 129
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    const-string v1, "TransitionRecord{"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, " id="

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, " type="

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v2, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 47
    .line 48
    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, " flags=0x"

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget p0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 70
    .line 71
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 p0, 0x7d

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

.method public final updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget p0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 24
    .line 25
    or-int/lit8 p0, p0, 0x4

    .line 26
    .line 27
    iput p0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 28
    .line 29
    return-void
.end method
