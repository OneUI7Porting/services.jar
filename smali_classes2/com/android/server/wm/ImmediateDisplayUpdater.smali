.class public final Lcom/android/server/wm/ImmediateDisplayUpdater;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/wm/DisplayUpdater;


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayInfo:Landroid/view/DisplayInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/DisplayInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onDisplayContentDisplayPropertiesPostChanged(IILandroid/window/DisplayAreaInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public final onDisplayContentDisplayPropertiesPreChanged(IIIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mShouldRequestTransitionOnDisplaySwitch:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const v4, 0x1110267

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_8

    .line 43
    .line 44
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_8

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    iput-object v3, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 61
    .line 62
    iput-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 63
    .line 64
    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 68
    .line 69
    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 73
    .line 74
    const/16 v2, 0x4000

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 77
    .line 78
    .line 79
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 80
    .line 81
    aget-boolean v1, v1, v5

    .line 82
    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v3, 0x0

    .line 89
    const-wide v6, 0x46dd3c1268a43bc8L    # 2.3717970619631488E33

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    move-object p0, v1

    .line 96
    move-wide p1, v6

    .line 97
    move p3, v4

    .line 98
    move-object p4, v2

    .line 99
    move-object p5, v3

    .line 100
    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    new-instance v4, Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 105
    .line 106
    invoke-direct {v4, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    .line 107
    .line 108
    .line 109
    new-instance v6, Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-direct {v6, v5, v5, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v6}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 115
    .line 116
    .line 117
    new-instance v6, Landroid/graphics/Rect;

    .line 118
    .line 119
    invoke-direct {v6, v5, v5, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v6}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 123
    .line 124
    .line 125
    const/4 v6, 0x1

    .line 126
    invoke-virtual {v4, v6}, Landroid/window/TransitionRequestInfo$DisplayChange;->setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 127
    .line 128
    .line 129
    const/4 v6, 0x6

    .line 130
    invoke-virtual {v1, v6, v5}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v1, v6, v3, v3, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v4}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    if-nez v3, :cond_4

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_4
    invoke-static {v1, v3, v2}, Lcom/android/server/wm/TransitionController;->setDisplaySyncMethod(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    :goto_0
    iput-object v6, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 154
    .line 155
    invoke-virtual {v6, v2, v5}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 159
    .line 160
    if-eqz v1, :cond_7

    .line 161
    .line 162
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 163
    .line 164
    const/4 v2, 0x2

    .line 165
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    .line 166
    .line 167
    .line 168
    :cond_7
    iput-boolean v5, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mShouldRequestTransitionOnDisplaySwitch:Z

    .line 169
    .line 170
    :cond_8
    :goto_2
    return-void
.end method

.method public final updateDisplayInfo(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 6
    .line 7
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
