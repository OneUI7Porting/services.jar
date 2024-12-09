.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final SUPPORTS_MULTI_STAR:Z


# instance fields
.field public final mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

.field public final mRotationCompatPolicy:I

.field public mShouldIgnoreLandscapeRequestDueToMultiStar:Z

.field public final mTmpPrevBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->SUPPORTS_MULTI_STAR:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getRespectOrientationRequestIfAllowed(ILcom/android/server/wm/ActivityRecord;)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p2, :cond_5

    .line 3
    .line 4
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequestOverride:Z

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    sget-boolean v1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->SUPPORTS_MULTI_STAR:Z

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldIgnoreLandscapeRequestDueToMultiStar:Z

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    move p0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    :goto_0
    if-nez p0, :cond_5

    .line 32
    .line 33
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    :cond_1
    move v2, p1

    .line 45
    :cond_2
    if-eqz v2, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_5

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eq p0, p1, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    invoke-static {p2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 72
    .line 73
    iget v0, p0, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 74
    .line 75
    :cond_5
    :goto_1
    return v0
.end method

.method public final requestActivityBoundsChangedTransitionIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_6

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_6

    .line 41
    .line 42
    :cond_1
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 52
    .line 53
    if-eqz p0, :cond_6

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iget-object v0, p2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v6, 0x0

    .line 93
    if-nez v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    const/4 v2, 0x6

    .line 99
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v7, v0

    .line 104
    goto :goto_0

    .line 105
    :cond_5
    move-object v7, v6

    .line 106
    :goto_0
    iget-object v0, p2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 109
    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v2, 0x5

    .line 114
    move-object v0, p2

    .line 115
    move-object v1, p1

    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ChangeTransitionController;->updateChangeInfo(Lcom/android/server/wm/WindowContainer;IILandroid/graphics/Rect;I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 122
    .line 123
    .line 124
    if-eqz v7, :cond_6

    .line 125
    .line 126
    iget-object p1, p2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 127
    .line 128
    invoke-virtual {p1, v7, p0, v6, v6}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x1

    .line 132
    invoke-virtual {v7, p0, p1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_1
    return-void
.end method

.method public final shouldCreateAppCompatDisplayInsetsForRotationCompat(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->getRespectOrientationRequestIfAllowed(ILcom/android/server/wm/ActivityRecord;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eq v1, v2, :cond_3

    .line 14
    .line 15
    sget-boolean v2, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->SUPPORTS_DEFAULT_ENABLED:Z

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    const/16 v2, 0x20

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x7

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    goto/16 :goto_d

    .line 34
    .line 35
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    :cond_3
    :goto_0
    move v2, v3

    .line 42
    goto/16 :goto_d

    .line 43
    .line 44
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 45
    .line 46
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    .line 47
    .line 48
    if-eqz v5, :cond_5

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    iget v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    .line 66
    .line 67
    if-ne v1, v4, :cond_6

    .line 68
    .line 69
    :goto_1
    move v2, v4

    .line 70
    goto/16 :goto_d

    .line 71
    .line 72
    :cond_6
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mTabletRotationCompatList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 77
    .line 78
    if-eqz p0, :cond_7

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_7

    .line 85
    .line 86
    :goto_2
    goto :goto_1

    .line 87
    :cond_7
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 88
    .line 89
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 90
    .line 91
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 92
    .line 93
    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingAppCompatController;->mResizeOverrides:Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    sget-object v6, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 99
    .line 100
    new-instance v7, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    invoke-direct {v7, v1, v0}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v7, p0}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_8

    .line 110
    .line 111
    :goto_3
    move v2, v3

    .line 112
    goto/16 :goto_9

    .line 113
    .line 114
    :cond_8
    monitor-enter v5

    .line 115
    :try_start_0
    iget-object v6, v5, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mMetaDataCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    .line 117
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    new-instance v8, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    .line 132
    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Ljava/lang/Boolean;

    .line 137
    .line 138
    if-eqz v7, :cond_9

    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    monitor-exit v5

    .line 145
    goto :goto_7

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    goto/16 :goto_c

    .line 148
    .line 149
    :cond_9
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 151
    .line 152
    .line 153
    move-result-wide v7

    .line 154
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    const-wide/16 v10, 0x80

    .line 159
    .line 160
    invoke-interface {v9, v1, v10, v11, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 161
    .line 162
    .line 163
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    if-nez p0, :cond_a

    .line 165
    .line 166
    :goto_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    .line 168
    .line 169
    move p0, v3

    .line 170
    goto :goto_7

    .line 171
    :cond_a
    :try_start_2
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 172
    .line 173
    if-eqz p0, :cond_b

    .line 174
    .line 175
    const-string v9, "android.supports_size_changes"

    .line 176
    .line 177
    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_b

    .line 182
    .line 183
    move p0, v4

    .line 184
    goto :goto_5

    .line 185
    :catchall_1
    move-exception p0

    .line 186
    goto/16 :goto_b

    .line 187
    .line 188
    :catch_0
    move-exception p0

    .line 189
    goto :goto_6

    .line 190
    :cond_b
    move p0, v3

    .line 191
    :goto_5
    monitor-enter v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    :try_start_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v6, v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    .line 202
    .line 203
    goto :goto_7

    .line 204
    :catchall_2
    move-exception p0

    .line 205
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 206
    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    :goto_6
    :try_start_6
    const-string v6, "MultiTaskingAppCompat"

    .line 208
    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v10, "getApplicationInfo failed: "

    .line 215
    .line 216
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    invoke-static {v6, v9, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :goto_7
    const/4 v6, 0x2

    .line 231
    if-eqz p0, :cond_c

    .line 232
    .line 233
    move v2, v6

    .line 234
    goto :goto_9

    .line 235
    :cond_c
    monitor-enter v5

    .line 236
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 237
    monitor-enter v5

    .line 238
    :try_start_8
    iget-object p0, v5, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mForceNonResizeAppList:Ljava/util/Set;

    .line 239
    .line 240
    check-cast p0, Ljava/util/HashSet;

    .line 241
    .line 242
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    if-eqz p0, :cond_d

    .line 247
    .line 248
    monitor-exit v5

    .line 249
    move p0, v0

    .line 250
    goto :goto_8

    .line 251
    :catchall_3
    move-exception p0

    .line 252
    goto :goto_a

    .line 253
    :cond_d
    iget-object p0, v5, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mForceResizeAppList:Ljava/util/Set;

    .line 254
    .line 255
    check-cast p0, Ljava/util/HashSet;

    .line 256
    .line 257
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    if-eqz p0, :cond_e

    .line 262
    .line 263
    monitor-exit v5

    .line 264
    move p0, v2

    .line 265
    goto :goto_8

    .line 266
    :cond_e
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 267
    move p0, v3

    .line 268
    :goto_8
    if-eq p0, v4, :cond_10

    .line 269
    .line 270
    if-eq p0, v6, :cond_f

    .line 271
    .line 272
    if-eq p0, v2, :cond_10

    .line 273
    .line 274
    if-eq p0, v0, :cond_f

    .line 275
    .line 276
    goto/16 :goto_3

    .line 277
    .line 278
    :cond_f
    move v2, v4

    .line 279
    :cond_10
    :goto_9
    if-eqz v2, :cond_11

    .line 280
    .line 281
    goto :goto_d

    .line 282
    :cond_11
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    .line 283
    .line 284
    .line 285
    move-result p0

    .line 286
    if-nez p0, :cond_3

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :goto_a
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 291
    throw p0

    .line 292
    :catchall_4
    move-exception p0

    .line 293
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 294
    throw p0

    .line 295
    :goto_b
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    .line 297
    .line 298
    throw p0

    .line 299
    :goto_c
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 300
    throw p0

    .line 301
    :goto_d
    if-ne v2, v4, :cond_12

    .line 302
    .line 303
    move v3, v4

    .line 304
    :cond_12
    return v3
.end method

.method public final shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->getRespectOrientationRequestIfAllowed(ILcom/android/server/wm/ActivityRecord;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 p1, -0x1

    .line 14
    if-eq p0, p1, :cond_2

    .line 15
    .line 16
    sget-boolean p1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->SUPPORTS_DEFAULT_ENABLED:Z

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    const/16 p1, 0x20

    .line 21
    .line 22
    if-ne p0, p1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p0, 0x1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 28
    :goto_2
    return p0
.end method
