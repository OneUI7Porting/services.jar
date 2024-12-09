.class public final Lcom/android/server/wm/DexController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/wm/IController;


# static fields
.field public static final DEFAULT_ALLOW_HOME_SET:Ljava/util/Set;

.field public static final UPDATE_DEX_IME_STATE_DELAY_MS:I


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDeactivateDexSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

.field public mDexDisplay:Landroid/hardware/display/VirtualDisplay;

.field public mDexDisplayActivated:Z

.field public final mDexDisplaySize:Landroid/graphics/Point;

.field public mDexFontScale:F

.field public mDexImeWindowVisibleInDefaultDisplay:Z

.field public final mDexInterceptor:Lcom/android/server/wm/DexActivityStartInterceptor;

.field public final mDexMetaKeyPolicy:Lcom/android/server/wm/DexMetaKeyPolicy;

.field public final mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

.field public mDexStandaloneRotationEnabled:Z

.field public mDexStarShowingDelayTime:I

.field public mDexTouchPadEnabled:Z

.field public final mDexTransientCaptionDelayCallbacks:Landroid/os/RemoteCallbackList;

.field public final mDisplayContexts:Landroid/util/SparseArray;

.field public mDisplayFreeformMaxCount:I

.field public final mGameAppsMap:Ljava/util/HashMap;

.field public mGlobalFontScaleForRestore:F

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/DexController$H;

.field public mIsDexForceImmersiveModeEnabled:Z

.field public mIsInDexForceImmersiveMode:Z

.field public mLastDexMode:I

.field public mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

.field public mLastReportedDexDisplayState:Z

.field public final mMinimizedToggleTasks:Ljava/util/List;

.field public final mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

.field public mRequestedDexDisplayEnabled:Z

.field public final mSCPMLaunchBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mSourceDisplayId:I

.field public mStartFromRecentInfo:Z

.field public mTargetDisplayId:I

.field public final mUpdateDexImeStateRunnable:Lcom/android/server/wm/DexController$1;

.field public mUpdatedFontScaleForDexDual:Z

.field public final mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static -$$Nest$mreparentToDisplayAndStartPendingActivity(Lcom/android/server/wm/DexController;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/wm/DexController$PendingActivityInfo;->mInfo:Lcom/android/server/wm/DexRestartAppInfo;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string p0, "DexController"

    .line 14
    .line 15
    const-string v1, "PendingActivityLaunch is null. Abort to start pending activity"

    .line 16
    .line 17
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/android/server/wm/DexController$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v3, :cond_7

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/server/wm/DexController$FindTaskResult;

    .line 47
    .line 48
    iget-object v5, v3, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 49
    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    const-string v3, "DexController"

    .line 53
    .line 54
    const-string/jumbo v4, "reparentToDisplayAndStartPendingActivity : skip handle task null"

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v6, 0x1

    .line 62
    iput-boolean v6, v5, Lcom/android/server/wm/Task;->mSkipSavingLaunchingState:Z

    .line 63
    .line 64
    iget-object v7, v5, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 65
    .line 66
    if-nez v7, :cond_2

    .line 67
    .line 68
    new-instance v7, Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v7, v5, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 74
    .line 75
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/DexController$FindTaskResult;->execute()V

    .line 76
    .line 77
    .line 78
    iget-object v5, v3, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iget v7, v2, Lcom/android/server/wm/DexRestartAppInfo;->mPreferredDisplayId:I

    .line 85
    .line 86
    if-ne v5, v7, :cond_6

    .line 87
    .line 88
    iget-object v5, v3, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    iput-object v7, v5, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 92
    .line 93
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-nez v5, :cond_3

    .line 98
    .line 99
    iget-object v6, v2, Lcom/android/server/wm/DexRestartAppInfo;->mPal:Lcom/android/server/wm/PendingActivityLaunch;

    .line 100
    .line 101
    if-eqz v6, :cond_3

    .line 102
    .line 103
    iget-object v5, v6, Lcom/android/server/wm/PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    .line 104
    .line 105
    :cond_3
    move-object v8, v5

    .line 106
    iget-object v5, v2, Lcom/android/server/wm/DexRestartAppInfo;->mPal:Lcom/android/server/wm/PendingActivityLaunch;

    .line 107
    .line 108
    if-eqz v5, :cond_4

    .line 109
    .line 110
    iget-object v5, v5, Lcom/android/server/wm/PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 111
    .line 112
    move-object v9, v5

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    move-object v9, v7

    .line 115
    :goto_1
    if-eqz v8, :cond_5

    .line 116
    .line 117
    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 118
    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 122
    .line 123
    :cond_5
    iget-object v5, v2, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    .line 124
    .line 125
    iget v6, v2, Lcom/android/server/wm/DexRestartAppInfo;->mPreferredDisplayId:I

    .line 126
    .line 127
    invoke-virtual {v5, v6}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 128
    .line 129
    .line 130
    iget-object v5, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 131
    .line 132
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 133
    .line 134
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 135
    .line 136
    iget-object v6, v3, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 137
    .line 138
    iget-object v10, v2, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    .line 139
    .line 140
    iget v11, v2, Lcom/android/server/wm/DexRestartAppInfo;->mPreferredDisplayId:I

    .line 141
    .line 142
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    .line 143
    .line 144
    .line 145
    :cond_6
    iget-object v3, v3, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 146
    .line 147
    iput-boolean v4, v3, Lcom/android/server/wm/Task;->mIsAvoidTrimDexPendingActivityTask:Z

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 151
    .line 152
    iget v1, v1, Lcom/android/server/wm/DexController$PendingActivityInfo;->mDisplayId:I

    .line 153
    .line 154
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 156
    .line 157
    .line 158
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 159
    .line 160
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 161
    .line 162
    .line 163
    monitor-enter v3

    .line 164
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 165
    .line 166
    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mFindTaskResultList:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_8

    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Lcom/android/server/wm/DexController$FindTaskResult;

    .line 183
    .line 184
    iget-object v5, v5, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 185
    .line 186
    iput-boolean v4, v5, Lcom/android/server/wm/Task;->mSkipSavingLaunchingState:Z

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catchall_1
    move-exception p0

    .line 190
    goto :goto_4

    .line 191
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 192
    .line 193
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/DexRestartAppInfo;->startResult(ILcom/android/server/wm/ActivityTaskManagerService;)V

    .line 194
    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/android/server/wm/DexController$PendingActivityInfo;->reset()V

    .line 199
    .line 200
    .line 201
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 203
    .line 204
    .line 205
    :goto_3
    return-void

    .line 206
    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 213
    .line 214
    .line 215
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "SPlqtyOkQMcV+iLM67vecvg2Or3jcHS+/2TBTCIcX6Q="

    .line 2
    .line 3
    const-string v5, "5oo37SkHJlg9Fi08Q6gJjx2yE6xywWNxwerw09xkRcI="

    .line 4
    .line 5
    const-string v0, "TP+fe8M5uStQvlunzY6n5uiGTr6ReHrxNWA2QXUmsbo="

    .line 6
    .line 7
    const-string v1, "9jgH8FMKl5YrmkLKzhPt0BPyunVOn5QZd4RXlHG+m3U="

    .line 8
    .line 9
    const-string/jumbo v2, "ntxM9ozBwRd3xqwAhxYRewH46bxRXjgtRewzTdBekgc="

    .line 10
    .line 11
    .line 12
    const-string v3, "5LmLdKeONhZxMkwo4Z8PX72qMPwRt7aEqQGAXXrBEYk="

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/wm/DexController;->DEFAULT_ALLOW_HOME_SET:Ljava/util/Set;

    .line 19
    .line 20
    const/16 v0, 0xfa

    .line 21
    .line 22
    sput v0, Lcom/android/server/wm/DexController;->UPDATE_DEX_IME_STATE_DELAY_MS:I

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mSCPMLaunchBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mGameAppsMap:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/server/wm/DexController$PendingActivityInfo;-><init>(Lcom/android/server/wm/DexController;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    iput v1, p0, Lcom/android/server/wm/DexController;->mSourceDisplayId:I

    .line 32
    .line 33
    iput v1, p0, Lcom/android/server/wm/DexController;->mTargetDisplayId:I

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iput-object v2, p0, Lcom/android/server/wm/DexController;->mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mDexImeWindowVisibleInDefaultDisplay:Z

    .line 39
    .line 40
    new-instance v3, Lcom/android/server/wm/DexController$1;

    .line 41
    .line 42
    invoke-direct {v3, p0}, Lcom/android/server/wm/DexController$1;-><init>(Lcom/android/server/wm/DexController;)V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lcom/android/server/wm/DexController;->mUpdateDexImeStateRunnable:Lcom/android/server/wm/DexController$1;

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/android/server/wm/DexController;->mLastReportedDexDisplayState:Z

    .line 50
    .line 51
    iput-object v2, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 52
    .line 53
    new-instance v3, Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lcom/android/server/wm/DexController;->mDisplayContexts:Landroid/util/SparseArray;

    .line 59
    .line 60
    new-instance v3, Landroid/graphics/Point;

    .line 61
    .line 62
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v3, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    .line 66
    .line 67
    new-instance v3, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v3, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    .line 73
    .line 74
    iput-object v2, p0, Lcom/android/server/wm/DexController;->mDexMetaKeyPolicy:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 75
    .line 76
    iput v0, p0, Lcom/android/server/wm/DexController;->mDisplayFreeformMaxCount:I

    .line 77
    .line 78
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mDexSnappingCallbacks:Landroid/os/RemoteCallbackList;

    .line 84
    .line 85
    iput v1, p0, Lcom/android/server/wm/DexController;->mDexStarShowingDelayTime:I

    .line 86
    .line 87
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 88
    .line 89
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mDexTransientCaptionDelayCallbacks:Landroid/os/RemoteCallbackList;

    .line 93
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 102
    .line 103
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 106
    .line 107
    new-instance v0, Lcom/android/server/wm/DexActivityStartInterceptor;

    .line 108
    .line 109
    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/DexActivityStartInterceptor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DexController;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mDexInterceptor:Lcom/android/server/wm/DexActivityStartInterceptor;

    .line 113
    .line 114
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 115
    .line 116
    const-string v1, "DexController"

    .line 117
    .line 118
    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mDeactivateDexSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 122
    .line 123
    new-instance v0, Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 124
    .line 125
    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/DexMetaKeyPolicy;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DexController;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mDexMetaKeyPolicy:Lcom/android/server/wm/DexMetaKeyPolicy;

    .line 129
    .line 130
    return-void
.end method

.method public static parseDexMetadata(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/DexController$DexMetaDataInfo;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v0, v1

    .line 8
    :goto_0
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object p0, v1

    .line 16
    :goto_1
    if-nez v0, :cond_2

    .line 17
    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_2
    const-string v2, "com.samsung.android.dex.launchheight"

    .line 22
    .line 23
    const-string v3, "com.samsung.android.dex.launchwidth"

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    if-eqz p0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    move-object v5, v0

    .line 71
    move-object v0, p0

    .line 72
    move-object p0, v5

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move-object p0, v1

    .line 75
    move-object v0, p0

    .line 76
    :goto_2
    if-eqz p0, :cond_9

    .line 77
    .line 78
    if-eqz v0, :cond_9

    .line 79
    .line 80
    instance-of v2, p0, Ljava/lang/Integer;

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    check-cast p0, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    instance-of v2, p0, Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v2, :cond_6

    .line 98
    .line 99
    check-cast p0, Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_6
    move-object p0, v1

    .line 103
    :goto_3
    instance-of v2, v0, Ljava/lang/Integer;

    .line 104
    .line 105
    if-eqz v2, :cond_7

    .line 106
    .line 107
    check-cast v0, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    goto :goto_4

    .line 118
    :cond_7
    instance-of v2, v0, Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v2, :cond_8

    .line 121
    .line 122
    check-cast v0, Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    move-object v0, v1

    .line 126
    goto :goto_4

    .line 127
    :cond_9
    move-object p0, v1

    .line 128
    move-object v0, p0

    .line 129
    :goto_4
    if-eqz p0, :cond_a

    .line 130
    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    new-instance v1, Lcom/android/server/wm/DexController$DexMetaDataInfo;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-static {p0}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->parseSizeMetaData(Ljava/lang/String;)Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    iput-object p0, v1, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mWidthValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    .line 143
    .line 144
    invoke-static {v0}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->parseSizeMetaData(Ljava/lang/String;)Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    iput-object p0, v1, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mHeightValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    .line 149
    .line 150
    :cond_a
    return-object v1
.end method

.method public static toHashText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final activateDexDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "activateDexDisplayLocked: currentDisplayState="

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", mRequestedDexDisplayEnabled="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ""

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "DexController"

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->updateDexDisplayStateLocked(Z)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked()Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->notifyDexDisplayStateLocked(Z)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayReady()V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final createDexDisplayLocked(III)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 6
    .line 7
    const-string v2, "Desktop"

    .line 8
    .line 9
    invoke-direct {v1, v2, p1, p2, p3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 10
    .line 11
    .line 12
    const p1, 0x40c09

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)Landroid/hardware/display/VirtualDisplay;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    const-string p0, "DexController"

    .line 39
    .line 40
    const-string p1, "enableDexDisplay: Failed to create a display for DeX"

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    const/4 p3, 0x2

    .line 56
    if-eq p2, p3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    iget-object p3, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 64
    .line 65
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {p3, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDisplayContexts:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 79
    return p0
.end method

.method public final deactivateDexDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    .line 1
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "deactivateDexDisplayLocked: currentDisplayState="

    .line 10
    .line 11
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, v2

    .line 29
    :goto_0
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", mRequestedDexDisplayEnabled="

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ""

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v1, "DexController"

    .line 56
    .line 57
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DexController;->updateDexDisplayStateLocked(Z)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    .line 72
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 73
    .line 74
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p1, p1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->release(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 91
    .line 92
    const-string v0, "deactivateDexDisplay"

    .line 93
    .line 94
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveDisplayToTop(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DexController;->notifyDexDisplayStateLocked(Z)V

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void
.end method

.method public final disableDexDisplay()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal;->updateDexDisplayState(Z)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget-boolean v4, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 35
    .line 36
    const-string/jumbo v4, "setRequestedDexDisplayEnabledLocked: false"

    .line 37
    .line 38
    .line 39
    const-string v5, "DexController"

    .line 40
    .line 41
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    iget-boolean v5, p0, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 60
    .line 61
    iget v6, v5, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 62
    .line 63
    if-nez v6, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v6, v5, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 67
    .line 68
    invoke-virtual {v5, v6, v2, v2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 69
    .line 70
    .line 71
    iput v2, v5, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 72
    .line 73
    iget-object v2, v5, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 74
    .line 75
    invoke-virtual {v5, v2}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 79
    if-ne v1, v2, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DexController;->deactivateDexDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 82
    .line 83
    .line 84
    iget v3, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 91
    .line 92
    .line 93
    return v3

    .line 94
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "[DexController]"

    .line 2
    .line 3
    const-string v1, "  mDexDisplayActivated="

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    .line 10
    .line 11
    const-string v2, "  mIsDexForceImmersiveModeEnabled="

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    .line 18
    .line 19
    const-string v2, "  mIsInDexForceImmersiveMode="

    .line 20
    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mIsInDexForceImmersiveMode:Z

    .line 26
    .line 27
    const-string v2, "  mDexStandaloneRotationEnabled="

    .line 28
    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mDexStandaloneRotationEnabled:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x2

    .line 50
    if-ne v0, v1, :cond_0

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, "  mDexImeWindowVisibleInDefaultDisplay="

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mDexImeWindowVisibleInDefaultDisplay:Z

    .line 60
    .line 61
    const-string v2, "  mLastInputMethodInputTarget="

    .line 62
    .line 63
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final enableDexDisplay(III)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4
    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    iput-boolean v2, p0, Lcom/android/server/wm/DexController;->mRequestedDexDisplayEnabled:Z

    .line 13
    .line 14
    const-string/jumbo v1, "setRequestedDexDisplayEnabledLocked: true"

    .line 15
    .line 16
    .line 17
    const-string v3, "DexController"

    .line 18
    .line 19
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DexController;->createDexDisplayLocked(III)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    const/4 p0, -0x1

    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :try_start_1
    new-instance v1, Landroid/view/DisplayInfo;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget-object v5, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 56
    .line 57
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 64
    .line 65
    .line 66
    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 67
    .line 68
    if-ne p1, v3, :cond_2

    .line 69
    .line 70
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 71
    .line 72
    if-ne p2, v3, :cond_2

    .line 73
    .line 74
    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 75
    .line 76
    if-eq p3, v1, :cond_3

    .line 77
    .line 78
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/server/wm/DexController;->setDisplaySizeAndDensityLocked(IIILcom/android/server/wm/DisplayContent;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManagerInternal;->updateDexDisplayState(Z)I

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    .line 101
    .line 102
    return p0

    .line 103
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public final getDexMetadataLaunchSizeLocked(Lcom/android/server/wm/DexController$DexMetaDataInfo;I)Landroid/graphics/Point;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p1, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mWidthValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    .line 5
    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/wm/DexController$DexMetaDataInfo;->mHeightValue:Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v2, v1, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget v2, p1, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    new-instance p0, Landroid/graphics/Point;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 31
    .line 32
    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-nez p2, :cond_2

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    .line 46
    .line 47
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 48
    .line 49
    const/16 v3, 0x3c0

    .line 50
    .line 51
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->getDimensionPixelSize(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;III)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    .line 58
    .line 59
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 60
    .line 61
    const/16 v2, 0x2d0

    .line 62
    .line 63
    invoke-static {p1, v1, p0, v2}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->getDimensionPixelSize(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;III)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Landroid/graphics/Point;

    .line 74
    .line 75
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    iput p0, p2, Landroid/graphics/Point;->y:I

    .line 97
    .line 98
    return-object p2

    .line 99
    :cond_3
    :goto_0
    return-object v0
.end method

.method public final getDexModeLocked()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x2

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget p0, p0, Landroid/content/res/Configuration;->dexMode:I

    .line 23
    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final getDexPolicyFlags(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 5

    .line 1
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    const-wide/16 v3, 0x80

    .line 16
    .line 17
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v1, "com.samsung.android.dex.launchpolicy.notsupported"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mSCPMLaunchBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mSCPMLaunchBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 39
    .line 40
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    :goto_0
    const/4 p0, 0x2

    .line 50
    return p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    sget-object v2, Lcom/android/server/wm/DexController;->DEFAULT_ALLOW_HOME_SET:Ljava/util/Set;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/android/server/wm/DexController;->toHashText(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    const-string v0, "com.samsung.android.dex.launchpolicy.allow_home_activity"

    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 87
    .line 88
    const-string v0, "android.intent.action.MAIN"

    .line 89
    .line 90
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "android.intent.category.HOME"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-wide/32 v2, 0x10000

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget v3, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 121
    .line 122
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    const/4 v1, 0x4

    .line 133
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexController;->isGameApp(Landroid/content/pm/ApplicationInfo;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_5

    .line 138
    .line 139
    or-int/lit8 v1, v1, 0x8

    .line 140
    .line 141
    :cond_5
    return v1

    .line 142
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    throw p0
.end method

.method public final getNonStartableActivityInDexMode(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    and-int/lit8 v2, v2, 0x6

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public final getTaskLocked(IILjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto :goto_4

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    sub-int/2addr v2, v3

    .line 19
    :goto_0
    if-ltz v2, :cond_5

    .line 20
    .line 21
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 30
    .line 31
    if-ne v5, p2, :cond_1

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v6, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-direct {v6, v5}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    sub-int/2addr v4, v3

    .line 52
    :goto_1
    if-ltz v4, :cond_4

    .line 53
    .line 54
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Lcom/android/server/wm/Task;

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    if-eqz p4, :cond_2

    .line 62
    .line 63
    invoke-virtual {v6, v7, v3}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 68
    .line 69
    if-nez v8, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    new-instance v8, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    invoke-direct {v8, p3, p1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    new-instance v7, Lcom/android/server/wm/DexController$FindTaskResult;

    .line 84
    .line 85
    invoke-direct {v7, p0, v6, p2}, Lcom/android/server/wm/DexController$FindTaskResult;-><init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/ActivityRecord;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    :goto_4
    return-object v0
.end method

.method public final hideDexImeOnDefaultDisplayLocked()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-interface {v0, v2, v4, v3}, Lcom/android/server/wm/InsetsControlTarget;->hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v4, v1

    .line 37
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iput-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    .line 44
    .line 45
    return v4
.end method

.method public final initialize()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/DexController$H;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DexController$H;-><init>(Lcom/android/server/wm/DexController;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    .line 15
    .line 16
    return-void
.end method

.method public final isGameApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7

    .line 1
    const-string v0, "isGameApp : put="

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mGameAppsMap:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    invoke-direct {v4, v1, v2}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;-><init>(J)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v3, v4}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mGameAppsMap:Ljava/util/HashMap;

    .line 22
    .line 23
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/util/Pair;

    .line 30
    .line 31
    const-string v4, "DexController"

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "isGameApp : hit= "

    .line 42
    .line 43
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p0, p1, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v3}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    new-instance v5, Landroid/util/Pair;

    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v5, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mGameAppsMap:Ljava/util/HashMap;

    .line 80
    .line 81
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 87
    .line 88
    if-eqz p0, :cond_2

    .line 89
    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    :cond_2
    return v3

    .line 108
    :catch_0
    const/4 p0, 0x0

    .line 109
    return p0
.end method

.method public final moveTaskToDefaultDisplayAndLayoutTask(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p4, Lcom/android/server/wm/Task;->mSkipSavingLaunchingState:Z

    .line 3
    .line 4
    iget-object v0, p4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    const-string v1, "dex_disabled"

    .line 17
    .line 18
    invoke-virtual {p0, p4, v0, v1, p1}, Lcom/android/server/wm/DexController;->moveTaskToDisplayBackLocked(Lcom/android/server/wm/Task;ILjava/lang/String;Landroid/app/ActivityOptions;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 29
    .line 30
    :cond_1
    move-object v4, v1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :cond_2
    move-object v7, p1

    .line 38
    invoke-virtual {v7, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    move-object v3, p4

    .line 49
    move-object v5, p2

    .line 50
    move-object v6, p3

    .line 51
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    .line 52
    .line 53
    .line 54
    iput-boolean v0, p4, Lcom/android/server/wm/Task;->mSkipSavingLaunchingState:Z

    .line 55
    .line 56
    return-void
.end method

.method public final moveTaskToDisplayBackLocked(Lcom/android/server/wm/Task;ILjava/lang/String;Landroid/app/ActivityOptions;)V
    .locals 14

    .line 1
    move-object v9, p1

    .line 2
    move/from16 v10, p2

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ne v0, v10, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    move-object v0, p0

    .line 12
    iget-object v11, v0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 15
    .line 16
    invoke-virtual {v0, v10}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v1, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    if-eqz p4, :cond_3

    .line 39
    .line 40
    move-object/from16 v2, p4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move-object v2, v1

    .line 48
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x1

    .line 54
    invoke-virtual {p1, v12, v13}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    move-object v3, p1

    .line 67
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    invoke-direct {v0, v12, v13}, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;-><init>(ZZ)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    if-eq v7, v9, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    const/4 v2, 0x0

    .line 105
    const/4 v3, 0x2

    .line 106
    const/4 v4, 0x0

    .line 107
    const/4 v5, 0x1

    .line 108
    move-object v0, p1

    .line 109
    move-object v1, v7

    .line 110
    move-object/from16 v6, p3

    .line 111
    .line 112
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-ne v0, v10, :cond_5

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 123
    .line 124
    .line 125
    :goto_1
    return-void
.end method

.method public final notifyAppTransitionFinished()V
    .locals 4

    .line 1
    const-string/jumbo v0, "notifyAppTransitionFinished. isTransitionFinished="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7
    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    const-string v2, "DexController"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    .line 53
    .line 54
    const/4 v2, 0x3

    .line 55
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mWaitingStoppedTasks:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/wm/DexController$PendingActivityInfo;->mOrganizedTaskFragments:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-lez v0, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->scheduleReparentToDisplayAndStartPendingActivity(Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final notifyDexDisplayStateLocked(Z)V
    .locals 3

    .line 1
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 8
    .line 9
    const-string v1, "DexController"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "notifyDexDisplayStateLocked: failed, dexService is null"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/DexController;->mLastReportedDexDisplayState:Z

    .line 21
    .line 22
    if-eq v2, p1, :cond_1

    .line 23
    .line 24
    const-string/jumbo v2, "notifyDexDisplayStateLocked: dexDisplayEnabled="

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mLastReportedDexDisplayState:Z

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->onDesktopDisplayConfigured(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final restoreToggleTasksToFrontLocked(I)V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    move v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    .line 24
    .line 25
    check-cast p0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    sub-int/2addr p0, v4

    .line 35
    :goto_1
    if-ltz p0, :cond_4

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    move-object v7, v5

    .line 42
    check-cast v7, Lcom/android/server/wm/Task;

    .line 43
    .line 44
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    if-eqz v6, :cond_3

    .line 49
    .line 50
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-ne v5, p1, :cond_3

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2, v5, v5, v5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 64
    .line 65
    .line 66
    move v2, v3

    .line 67
    :cond_1
    invoke-virtual {v7, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    if-eqz v8, :cond_2

    .line 72
    .line 73
    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 74
    .line 75
    :cond_2
    move-object v10, v5

    .line 76
    const/4 v9, 0x0

    .line 77
    const-string/jumbo v12, "restoreToggleTasksToFrontLocked"

    .line 78
    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v11, 0x0

    .line 82
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    add-int/lit8 p0, p0, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    return-void
.end method

.method public final scheduleReparentToDisplayAndStartPendingActivity(Lcom/android/server/wm/DexRestartAppInfo;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p1, Lcom/android/server/wm/DexRestartAppInfo;->mUid:I

    iget-object v2, p1, Lcom/android/server/wm/DexRestartAppInfo;->mProcessName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p2, v2, v3}, Lcom/android/server/wm/DexController;->getTaskLocked(IILjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController$PendingActivityInfo;->reset()V

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mPendingActivityInfo:Lcom/android/server/wm/DexController$PendingActivityInfo;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/wm/DexController$PendingActivityInfo;->set(Lcom/android/server/wm/DexRestartAppInfo;Ljava/util/ArrayList;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexController;->scheduleReparentToDisplayAndStartPendingActivity(Z)V

    return-void

    .line 8
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final scheduleReparentToDisplayAndStartPendingActivity(Z)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public final setDexImeWindowStateLocked(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mDexImeWindowVisibleInDefaultDisplay:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mDexImeWindowVisibleInDefaultDisplay:Z

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v0, "setDexImeWindowStateLocked: "

    .line 12
    .line 13
    .line 14
    const-string v1, " Callers="

    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "DexController"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 42
    .line 43
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mDexImeWindowVisibleInDefaultDisplay:Z

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final setDisplaySizeAndDensityLocked(IIILcom/android/server/wm/DisplayContent;)V
    .locals 9

    .line 1
    iget v0, p4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2
    .line 3
    const-string v4, "DexController"

    .line 4
    .line 5
    const/4 v5, 0x2

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eq v0, v5, :cond_0

    .line 9
    .line 10
    const-string/jumbo v1, "setDisplaySizeAndDensityLocked: failed, invalid id #"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string/jumbo v6, "setDisplaySizeAndDensityLocked: #"

    .line 18
    .line 19
    .line 20
    const-string v7, ", "

    .line 21
    .line 22
    const-string/jumbo v8, "x"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1, v6, v7, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const-string v8, "dpi, Callers="

    .line 30
    .line 31
    invoke-static {p2, p3, v7, v8, v6}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 32
    .line 33
    .line 34
    const/4 v7, 0x4

    .line 35
    invoke-static {v7, v6, v4}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v4, p4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 39
    .line 40
    if-eq v4, p3, :cond_1

    .line 41
    .line 42
    const/4 v6, 0x1

    .line 43
    :goto_0
    move v7, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v6, 0x0

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    iget v6, p4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 48
    .line 49
    iget-object v8, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    .line 51
    if-ne v6, p1, :cond_2

    .line 52
    .line 53
    iget v6, p4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 54
    .line 55
    if-ne v6, p2, :cond_2

    .line 56
    .line 57
    if-ne v4, p3, :cond_2

    .line 58
    .line 59
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    if-ne v0, v5, :cond_3

    .line 64
    .line 65
    const/4 v5, -0x1

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    move-object v0, p4

    .line 69
    move v1, p1

    .line 70
    move v2, p2

    .line 71
    move v3, p3

    .line 72
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZIZ)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 94
    .line 95
    const/high16 v2, 0x10000

    .line 96
    .line 97
    or-int/2addr v1, v2

    .line 98
    iput v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/4 v5, -0x1

    .line 102
    const/4 v4, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    move-object v0, p4

    .line 105
    move v1, p1

    .line 106
    move v2, p2

    .line 107
    move v3, p3

    .line 108
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZIZ)V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_2
    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 112
    .line 113
    .line 114
    if-eqz v7, :cond_5

    .line 115
    .line 116
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->reloadPointerIcons()V

    .line 121
    .line 122
    .line 123
    :cond_5
    return-void
.end method

.method public final setTasksToDisplayLocked(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "DexController"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "moveTasksToDisplayLocked: no source display #"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string/jumbo p0, "moveTasksToDisplayLocked: no target display #"

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const/4 v0, 0x2

    .line 36
    if-ne p2, v0, :cond_2

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    const-string/jumbo p0, "moveTasksToDisplayLocked: no dex dual mode"

    .line 43
    .line 44
    .line 45
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iput p1, p0, Lcom/android/server/wm/DexController;->mSourceDisplayId:I

    .line 50
    .line 51
    iput p2, p0, Lcom/android/server/wm/DexController;->mTargetDisplayId:I

    .line 52
    .line 53
    return-void
.end method

.method public final setWaitingTransitionFinished(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/os/IBinder;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mWaitingTransitionFinishedTokens:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public final setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    return-void
.end method

.method public final shouldShowDexImeInDefaultDisplayLocked()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->updateDexImeWindowStateIfNeededLocked()Z

    .line 36
    .line 37
    .line 38
    return v0
.end method

.method public final showDexImeOnDefaultDisplayLocked()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v0, v2

    .line 35
    :goto_0
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 60
    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    iget-object p0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    .line 82
    .line 83
    .line 84
    :cond_2
    const/4 p0, 0x1

    .line 85
    return p0

    .line 86
    :cond_3
    const/4 p0, 0x0

    .line 87
    return p0
.end method

.method public final showWarningToastIfNeeded(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexController;->isGameApp(Landroid/content/pm/ApplicationInfo;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DexController;->getDexPolicyFlags(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    and-int/lit8 v2, p2, 0x2

    .line 42
    .line 43
    const-string v3, ""

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :cond_1
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const p2, 0x10408cb

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    and-int/lit8 v2, p2, 0x4

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    iget-object p2, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 82
    .line 83
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :cond_3
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const p2, 0x10408cc

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    and-int/lit8 p1, p2, 0x8

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    const p1, 0x10408cd

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    const/4 p1, 0x0

    .line 124
    :goto_0
    if-nez p1, :cond_6

    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    new-instance p2, Landroid/view/ContextThemeWrapper;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    const v1, 0x103012b

    .line 132
    .line 133
    .line 134
    invoke-direct {p2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 135
    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    .line 138
    .line 139
    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;

    .line 140
    .line 141
    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final updateDexDisplayStateLocked(Z)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "updateDexDisplayStateLocked: "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "DexController"

    .line 23
    .line 24
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mDexDisplayActivated:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mDexDisplaySize:Landroid/graphics/Point;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->updateDexModeIfNeededLocked()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mDeactivateDexSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->release(I)V

    .line 53
    .line 54
    .line 55
    const-string/jumbo p0, "updateSleepTokenLocked: sleepToken is released"

    .line 56
    .line 57
    .line 58
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->acquire(IZ)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo p0, "updateSleepTokenLocked: sleepToken is acquired"

    .line 66
    .line 67
    .line 68
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :goto_0
    const/4 p0, 0x1

    .line 72
    return p0
.end method

.method public final updateDexFontScaleIfNeeded(F)V
    .locals 13

    .line 1
    const-string/jumbo v0, "updateDexFontScaleIfNeeded: DexFontScale is same as scaleFactor "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7
    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x2

    .line 17
    if-ne v2, v5, :cond_0

    .line 18
    .line 19
    move v6, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v6, v3

    .line 22
    :goto_0
    iget v7, p0, Lcom/android/server/wm/DexController;->mDexFontScale:F

    .line 23
    .line 24
    cmpl-float v7, v7, p1

    .line 25
    .line 26
    if-nez v7, :cond_2

    .line 27
    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    iget-boolean v7, p0, Lcom/android/server/wm/DexController;->mUpdatedFontScaleForDexDual:Z

    .line 31
    .line 32
    if-eqz v7, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_1
    :goto_1
    const-string p0, "DexController"

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/DexController;->mDexFontScale:F

    .line 61
    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    move v0, v5

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move v0, v3

    .line 67
    :goto_2
    if-eqz v2, :cond_8

    .line 68
    .line 69
    const/4 v7, 0x3

    .line 70
    if-ne v2, v7, :cond_4

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    iput-boolean v6, p0, Lcom/android/server/wm/DexController;->mUpdatedFontScaleForDexDual:Z

    .line 74
    .line 75
    if-ne v0, v5, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 80
    .line 81
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 82
    .line 83
    const-string v7, "dex_font_scale"

    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    const/4 v11, 0x1

    .line 90
    const/4 v12, 0x0

    .line 91
    const/4 v9, 0x0

    .line 92
    const/4 v10, 0x1

    .line 93
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 99
    .line 100
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 109
    .line 110
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 111
    .line 112
    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-nez v0, :cond_6

    .line 117
    .line 118
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_6
    :try_start_2
    iput p1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 124
    .line 125
    if-ne v2, v4, :cond_7

    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const/4 v4, -0x1

    .line 136
    invoke-virtual {p1, v3, v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IIILcom/android/server/wm/DisplayContent;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 140
    .line 141
    const/16 p1, -0x2710

    .line 142
    .line 143
    invoke-virtual {p0, v0, v3, v3, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;ZZI)Z

    .line 144
    .line 145
    .line 146
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_8
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method public final updateDexImeWindowStateIfNeededLocked()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexController;->setDexImeWindowStateLocked(Z)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public final updateDexModeIfNeededLocked()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    .line 6
    .line 7
    if-eq v1, v0, :cond_16

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 18
    .line 19
    const-string v3, "dex_on"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    iget-object v4, v2, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 29
    .line 30
    const/16 v5, 0x68

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 47
    .line 48
    const-string v3, "dex_off"

    .line 49
    .line 50
    iget-object v4, v2, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 51
    .line 52
    const/16 v5, 0x65

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    .line 60
    iget-object v5, v2, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    .line 64
    .line 65
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 66
    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    iget-object v4, v2, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 70
    .line 71
    const/16 v5, 0x67

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    .line 87
    .line 88
    new-instance v3, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DexController;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    .line 96
    .line 97
    :cond_3
    const/4 v2, 0x0

    .line 98
    const/4 v3, 0x1

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    move v4, v3

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    move v4, v2

    .line 104
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 105
    .line 106
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 107
    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    const-string v6, "Desktop On"

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    const-string v6, "Desktop Off"

    .line 114
    .line 115
    :goto_3
    iget-object v7, v5, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 116
    .line 117
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 118
    .line 119
    .line 120
    monitor-enter v7

    .line 121
    :try_start_0
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/MultiWindowEnableController;->setForceEnableForUser(Ljava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 126
    .line 127
    .line 128
    iget-object v4, p0, Lcom/android/server/wm/DexController;->mMinimizedToggleTasks:Ljava/util/List;

    .line 129
    .line 130
    check-cast v4, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 133
    .line 134
    .line 135
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 138
    .line 139
    .line 140
    const-class v4, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 141
    .line 142
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 147
    .line 148
    iget v5, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    .line 149
    .line 150
    if-ne v5, v1, :cond_6

    .line 151
    .line 152
    if-ne v0, v3, :cond_6

    .line 153
    .line 154
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DexController;->setTasksToDisplayLocked(II)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    goto/16 :goto_9

    .line 160
    .line 161
    :cond_6
    if-ne v5, v3, :cond_7

    .line 162
    .line 163
    if-eq v0, v1, :cond_8

    .line 164
    .line 165
    :cond_7
    invoke-virtual {v4}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getModeToModeChangeType()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-ne v4, v1, :cond_9

    .line 170
    .line 171
    :cond_8
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/DexController;->setTasksToDisplayLocked(II)V

    .line 172
    .line 173
    .line 174
    :cond_9
    :goto_4
    iget-object v4, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 175
    .line 176
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 177
    .line 178
    invoke-virtual {v4, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iget v5, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    .line 183
    .line 184
    const/4 v6, 0x0

    .line 185
    if-ne v5, v3, :cond_a

    .line 186
    .line 187
    if-nez v0, :cond_a

    .line 188
    .line 189
    new-instance v5, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda7;

    .line 190
    .line 191
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_a
    if-nez v5, :cond_d

    .line 199
    .line 200
    if-ne v0, v3, :cond_d

    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-eqz v5, :cond_b

    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    iget-object v5, v5, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 217
    .line 218
    iget-object v7, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 219
    .line 220
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 221
    .line 222
    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 223
    .line 224
    .line 225
    :cond_b
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_c

    .line 234
    .line 235
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;Z)V

    .line 240
    .line 241
    .line 242
    :cond_c
    new-instance v5, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;

    .line 243
    .line 244
    const/4 v7, 0x1

    .line 245
    invoke-direct {v5, v7, p0, v4}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 249
    .line 250
    .line 251
    :cond_d
    :goto_5
    if-ne v0, v3, :cond_10

    .line 252
    .line 253
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 254
    .line 255
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 256
    .line 257
    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    const-string v4, "dex standalone activated"

    .line 266
    .line 267
    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 268
    .line 269
    iget v5, v5, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 270
    .line 271
    iget-object v7, v3, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 272
    .line 273
    if-nez v7, :cond_e

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_e
    new-instance v6, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    .line 277
    .line 278
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 279
    .line 280
    .line 281
    const-class v8, Lcom/android/server/wm/ActivityRecord;

    .line 282
    .line 283
    invoke-static {v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-static {v6, v8, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-interface {v5}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 300
    .line 301
    .line 302
    :goto_6
    if-nez v6, :cond_f

    .line 303
    .line 304
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_f
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_10
    if-ne v0, v1, :cond_14

    .line 313
    .line 314
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 315
    .line 316
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 317
    .line 318
    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    if-eqz v3, :cond_13

    .line 323
    .line 324
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    const-string v4, "dex dual activated"

    .line 329
    .line 330
    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 331
    .line 332
    iget v5, v5, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 333
    .line 334
    iget-object v7, v3, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 335
    .line 336
    if-nez v7, :cond_11

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_11
    new-instance v6, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    .line 340
    .line 341
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 342
    .line 343
    .line 344
    const-class v8, Lcom/android/server/wm/ActivityRecord;

    .line 345
    .line 346
    invoke-static {v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    invoke-static {v6, v8, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    invoke-interface {v5}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 363
    .line 364
    .line 365
    :goto_7
    if-nez v6, :cond_12

    .line 366
    .line 367
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto :goto_8

    .line 371
    :cond_12
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_13
    const-string v3, "DexController"

    .line 376
    .line 377
    const-string/jumbo v4, "updateDexModeIfNeededLocked() dexDc is null"

    .line 378
    .line 379
    .line 380
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .line 382
    .line 383
    :cond_14
    :goto_8
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 384
    .line 385
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 386
    .line 387
    .line 388
    iget-object v3, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 389
    .line 390
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 391
    .line 392
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 393
    .line 394
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 395
    .line 396
    invoke-virtual {v3, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->onDexModeChangedLw(I)V

    .line 397
    .line 398
    .line 399
    iget v3, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    .line 400
    .line 401
    if-ne v3, v1, :cond_15

    .line 402
    .line 403
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DexController;->setDexImeWindowStateLocked(Z)Z

    .line 404
    .line 405
    .line 406
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 407
    .line 408
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 409
    .line 410
    invoke-virtual {v1, v0}, Landroid/app/ActivityManagerInternal;->setCurrentDexMode(I)V

    .line 411
    .line 412
    .line 413
    iput v0, p0, Lcom/android/server/wm/DexController;->mLastDexMode:I

    .line 414
    .line 415
    goto :goto_a

    .line 416
    :goto_9
    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 417
    .line 418
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 419
    .line 420
    .line 421
    throw v0

    .line 422
    :catchall_1
    move-exception p0

    .line 423
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 424
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 425
    .line 426
    .line 427
    throw p0

    .line 428
    :cond_16
    :goto_a
    return-void
.end method

.method public final updateDexStarShowingDelayTime(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/DexController;->mDexStarShowingDelayTime:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/wm/DexController;->mDexStarShowingDelayTime:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mDexTransientCaptionDelayCallbacks:Landroid/os/RemoteCallbackList;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mDexTransientCaptionDelayCallbacks:Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    new-instance v2, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda9;

    .line 13
    .line 14
    invoke-direct {v2, p1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda9;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const-string p1, "DexController"

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v1, "update: mDexStarShowingDelayTime="

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget p0, p0, Lcom/android/server/wm/DexController;->mDexStarShowingDelayTime:I

    .line 32
    .line 33
    invoke-static {v0, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_0
    :goto_0
    return-void
.end method

.method public final updateForceImmersiveModeSetting(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "updateForceImmersiveModeSetting: mIsDexForceImmersiveModeEnabled="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    .line 13
    .line 14
    if-eq p1, v2, :cond_0

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    .line 17
    .line 18
    const-string p1, "DexController"

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mIsDexForceImmersiveModeEnabled:Z

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DexController;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final updateForceImmersiveModeState(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "updateForceImmersiveModeSkip: mIsInDexForceImmersiveMode="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/DexController;->mIsInDexForceImmersiveMode:Z

    .line 13
    .line 14
    if-eq p1, v2, :cond_0

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/android/server/wm/DexController;->mIsInDexForceImmersiveMode:Z

    .line 17
    .line 18
    const-string p1, "DexController"

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mIsInDexForceImmersiveMode:Z

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DexController;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method
