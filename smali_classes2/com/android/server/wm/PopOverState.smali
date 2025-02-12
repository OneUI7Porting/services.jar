.class public final Lcom/android/server/wm/PopOverState;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mIsActivated:Z

.field public mLastOccludesParent:Z

.field public mOptions:Landroid/app/ActivityOptions;

.field public mOptionsInherited:Landroid/app/ActivityOptions;

.field public mOriginTaskId:I

.field public mOriginTaskIdInherited:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskIdInherited:I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final adjustOptions([I[I[Landroid/graphics/Point;[I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    :cond_1
    return-void

    .line 16
    :cond_2
    invoke-static {v0}, Lcom/android/server/wm/PopOverBoundsCalculator;->getBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x1

    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    if-nez p2, :cond_3

    .line 25
    .line 26
    if-nez p3, :cond_3

    .line 27
    .line 28
    if-nez p4, :cond_3

    .line 29
    .line 30
    iput-object v7, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 31
    .line 32
    iput-object v7, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    .line 33
    .line 34
    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    .line 36
    .line 37
    iput p1, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskIdInherited:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    .line 46
    .line 47
    :goto_0
    if-eqz p1, :cond_5

    .line 48
    .line 49
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, [I

    .line 54
    .line 55
    iput-object p0, v1, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    .line 56
    .line 57
    :cond_5
    if-eqz p2, :cond_6

    .line 58
    .line 59
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, [I

    .line 64
    .line 65
    iput-object p0, v1, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    .line 66
    .line 67
    :cond_6
    if-eqz p3, :cond_7

    .line 68
    .line 69
    invoke-virtual {p3}, [Landroid/graphics/Point;->clone()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, [Landroid/graphics/Point;

    .line 74
    .line 75
    iput-object p0, v1, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    .line 76
    .line 77
    :cond_7
    if-eqz p4, :cond_9

    .line 78
    .line 79
    iget-object p0, v1, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 80
    .line 81
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, [I

    .line 86
    .line 87
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_8

    .line 92
    .line 93
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-eqz p0, :cond_8

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    .line 100
    .line 101
    .line 102
    :cond_8
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, [I

    .line 107
    .line 108
    iput-object p0, v1, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    .line 109
    .line 110
    :cond_9
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lcom/android/server/wm/PopOverBoundsCalculator;->getBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-ne p1, p2, :cond_a

    .line 129
    .line 130
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eq p1, p0, :cond_e

    .line 139
    .line 140
    :cond_a
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 148
    .line 149
    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 150
    .line 151
    if-eqz p1, :cond_e

    .line 152
    .line 153
    if-eqz p2, :cond_e

    .line 154
    .line 155
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 156
    .line 157
    iget-boolean p1, p1, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 158
    .line 159
    if-eqz p1, :cond_e

    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_b

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    if-eqz p1, :cond_c

    .line 173
    .line 174
    iget-object p1, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 175
    .line 176
    if-eqz p1, :cond_c

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_d

    .line 186
    .line 187
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 188
    .line 189
    const/4 p3, 0x0

    .line 190
    const/4 p4, 0x6

    .line 191
    invoke-virtual {p1, p4, p3}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    goto :goto_2

    .line 196
    :cond_d
    move-object p1, v7

    .line 197
    :goto_2
    iget-object p3, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 198
    .line 199
    invoke-virtual {p3, v0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 200
    .line 201
    .line 202
    const/4 v4, 0x1

    .line 203
    const/4 v6, 0x0

    .line 204
    const/4 v3, 0x5

    .line 205
    move-object v1, p0

    .line 206
    move-object v2, v0

    .line 207
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ChangeTransitionController;->updateChangeInfo(Lcom/android/server/wm/WindowContainer;IILandroid/graphics/Rect;I)V

    .line 208
    .line 209
    .line 210
    iget-object p3, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 211
    .line 212
    invoke-virtual {p3, v0}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 213
    .line 214
    .line 215
    if-eqz p1, :cond_e

    .line 216
    .line 217
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 218
    .line 219
    invoke-virtual {p0, p1, p2, v7, v7}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p2, v8}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 223
    .line 224
    .line 225
    :cond_e
    :goto_3
    return-void
.end method

.method public isAboveAnotherOpaquePopOver()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v3, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v3, v4, p0}, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    invoke-virtual {v1, v3, v0, v2, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v2, p0

    .line 22
    :cond_0
    return v2
.end method

.method public isInLargeSizeTask()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 12
    .line 13
    const/16 v0, 0x258

    .line 14
    .line 15
    if-lt p0, v0, :cond_0

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

.method public shouldRemoveOutlineEffect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isAboveAnotherOpaquePopOver()Z

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

.method public final toggle()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    .line 19
    .line 20
    iput-boolean p0, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 21
    .line 22
    new-instance p0, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isInLargeSizeTask()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 38
    .line 39
    if-nez v1, :cond_7

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 42
    .line 43
    if-eqz v1, :cond_7

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 46
    .line 47
    if-eqz v1, :cond_7

    .line 48
    .line 49
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 50
    .line 51
    iget v4, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    .line 52
    .line 53
    if-ne v1, v4, :cond_7

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_7

    .line 60
    .line 61
    iget-boolean v1, v0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 67
    .line 68
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 69
    .line 70
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 71
    .line 72
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mLastDispatchedWindowFocusInTask:Z

    .line 73
    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateWindowFocusInTask()V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 84
    .line 85
    if-nez p0, :cond_7

    .line 86
    .line 87
    iget-boolean p0, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 88
    .line 89
    if-eqz p0, :cond_7

    .line 90
    .line 91
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-eqz p0, :cond_7

    .line 130
    .line 131
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 132
    .line 133
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 137
    .line 138
    if-nez v1, :cond_6

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 142
    .line 143
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    .line 144
    .line 145
    iput-boolean p0, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 146
    .line 147
    new-instance p0, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda2;

    .line 148
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 153
    .line 154
    .line 155
    :cond_7
    :goto_1
    return-void
.end method
