.class public final Lcom/android/server/wm/ActivityTaskSupervisor;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/wm/RecentTasks$Callbacks;


# static fields
.field public static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

.field public static final IDLE_TIMEOUT:I

.field public static final LAUNCH_TIMEOUT:I

.field public static final SLEEP_TIMEOUT:I


# instance fields
.field public mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final mActivityStateChangedProcs:Ljava/util/ArrayList;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppVisibilitiesChangedSinceLastPause:Z

.field public mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

.field public final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field public mDeferResumeCount:I

.field public mDeferRootVisibilityUpdate:Z

.field public final mFinishingActivities:Ljava/util/ArrayList;

.field public mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

.field public mInitialized:Z

.field public mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field public mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

.field public mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field public mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mLooper:Landroid/os/Looper;

.field public final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

.field public final mNoAnimActivities:Ljava/util/ArrayList;

.field public final mNoHistoryActivities:Ljava/util/ArrayList;

.field public final mOpaqueActivityHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

.field public mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field public final mPipModeChangedActivities:Ljava/util/ArrayList;

.field public mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mRunningTasks:Lcom/android/server/wm/RunningTasks;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mStartingUsers:Ljava/util/ArrayList;

.field public final mStoppingActivities:Ljava/util/ArrayList;

.field public mSystemChooserActivity:Landroid/content/ComponentName;

.field public mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public final mTaskInfoHelper:Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

.field public mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mTopResumedActivityWaitingForPrev:Z

.field public mUserLeaving:Z

.field public mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

.field public mVisibilityTransactionDepth:I

.field public final mWaitingActivityLaunched:Ljava/util/ArrayList;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 2
    .line 3
    mul-int/lit16 v1, v0, 0x2710

    .line 4
    .line 5
    sput v1, Lcom/android/server/wm/ActivityTaskSupervisor;->IDLE_TIMEOUT:I

    .line 6
    .line 7
    mul-int/lit16 v1, v0, 0x1388

    .line 8
    .line 9
    sput v1, Lcom/android/server/wm/ActivityTaskSupervisor;->SLEEP_TIMEOUT:I

    .line 10
    .line 11
    mul-int/lit16 v0, v0, 0x2710

    .line 12
    .line 13
    sput v0, Lcom/android/server/wm/ActivityTaskSupervisor;->LAUNCH_TIMEOUT:I

    .line 14
    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 21
    .line 22
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 23
    .line 24
    const-string v2, "android.permission.CAMERA"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v1, "android.intent.action.CALL"

    .line 35
    .line 36
    const-string v2, "android.permission.CALL_PHONE"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskInfoHelper:Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueActivityHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    const/16 v1, 0x14

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    .line 99
    .line 100
    new-instance p1, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 101
    .line 102
    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 106
    .line 107
    return-void
.end method

.method public static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 16

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    move-object/from16 v14, p6

    .line 8
    .line 9
    move v13, v1

    .line 10
    const/4 v15, 0x0

    .line 11
    :goto_0
    if-ltz v0, :cond_0

    .line 12
    .line 13
    move-object/from16 v1, p2

    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move-object v12, v3

    .line 20
    check-cast v12, Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    const-string v7, "  "

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    move-object/from16 v3, p0

    .line 27
    .line 28
    move-object/from16 v4, p1

    .line 29
    .line 30
    move v5, v0

    .line 31
    move-object v6, v12

    .line 32
    move-object/from16 v8, p3

    .line 33
    .line 34
    move/from16 v10, p4

    .line 35
    .line 36
    move-object v2, v12

    .line 37
    move-object/from16 v12, p5

    .line 38
    .line 39
    invoke-static/range {v3 .. v15}, Lcom/android/server/wm/ActivityRecord;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)V

    .line 40
    .line 41
    .line 42
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v14, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public static logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->getSize()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :goto_1
    add-int p1, v1, v0

    .line 24
    .line 25
    const v2, 0x30d40

    .line 26
    .line 27
    .line 28
    if-le p1, v2, :cond_2

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Transaction too large, intent: "

    .line 33
    .line 34
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ", extras size: "

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p0, ", icicle size: "

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, "ActivityTaskManager"

    .line 54
    .line 55
    invoke-static {p1, v0, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne p3, v0, :cond_4

    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_4

    .line 21
    .line 22
    :cond_1
    if-eqz p4, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 25
    .line 26
    .line 27
    :cond_2
    if-eqz p6, :cond_3

    .line 28
    .line 29
    invoke-virtual {p6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;->run()V

    .line 30
    .line 31
    .line 32
    :cond_3
    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_4
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 16
    .line 17
    if-ne v2, p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public final activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    iget-object v9, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 8
    .line 9
    const/4 v15, 0x0

    .line 10
    const/4 v14, 0x1

    .line 11
    iget-object v13, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    if-eqz v7, :cond_a

    .line 14
    .line 15
    const/16 v0, 0xc8

    .line 16
    .line 17
    invoke-virtual {v9, v0, v7}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, v7, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    .line 32
    .line 33
    const/4 v2, 0x5

    .line 34
    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    if-eqz p2, :cond_1

    .line 41
    .line 42
    const-wide/16 v3, -0x1

    .line 43
    .line 44
    const/4 v5, -0x1

    .line 45
    move-object/from16 v0, p0

    .line 46
    .line 47
    move/from16 v1, p2

    .line 48
    .line 49
    move-object/from16 v2, p1

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 52
    .line 53
    .line 54
    :cond_1
    if-eqz v8, :cond_4

    .line 55
    .line 56
    iget v0, v8, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    if-ne v0, v1, :cond_3

    .line 60
    .line 61
    iget-object v0, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mDexCompatController:Lcom/android/server/wm/DexCompatController;

    .line 62
    .line 63
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mProcessAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/wm/DexCompatController;->shouldBeApplyDexCompatConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;I)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move-object v0, v8

    .line 92
    :goto_1
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    iput-boolean v14, v7, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 98
    .line 99
    iget-object v0, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    :cond_5
    if-eqz p2, :cond_9

    .line 116
    .line 117
    :cond_6
    iget-object v0, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iget-object v1, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 124
    .line 125
    invoke-virtual {v1, v15}, Landroid/app/ActivityManagerInternal;->setBooting(Z)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_7

    .line 135
    .line 136
    iget-object v1, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 137
    .line 138
    invoke-virtual {v1, v14}, Landroid/app/ActivityManagerInternal;->setBooted(Z)V

    .line 139
    .line 140
    .line 141
    move v1, v14

    .line 142
    goto :goto_2

    .line 143
    :cond_7
    move v1, v15

    .line 144
    :goto_2
    if-nez v0, :cond_8

    .line 145
    .line 146
    if-eqz v1, :cond_9

    .line 147
    .line 148
    :cond_8
    iget-object v2, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 149
    .line 150
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda32;

    .line 151
    .line 152
    invoke-direct {v3, v13, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    .line 157
    .line 158
    :cond_9
    iput v15, v7, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 159
    .line 160
    :cond_a
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_13

    .line 167
    .line 168
    if-eqz v7, :cond_11

    .line 169
    .line 170
    iget-object v0, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 171
    .line 172
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;

    .line 173
    .line 174
    const/4 v2, 0x1

    .line 175
    invoke-direct {v1, v2, v13}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    .line 180
    .line 181
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 182
    .line 183
    iget-object v1, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_10

    .line 190
    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_10

    .line 196
    .line 197
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 198
    .line 199
    invoke-virtual {v7, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_10

    .line 204
    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    const/16 v3, 0xa

    .line 216
    .line 217
    if-gt v2, v3, :cond_b

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_b
    sub-int/2addr v2, v14

    .line 221
    :goto_3
    if-lt v2, v3, :cond_10

    .line 222
    .line 223
    iget-object v4, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    move-object v11, v4

    .line 230
    check-cast v11, Lcom/android/server/wm/Task;

    .line 231
    .line 232
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-eqz v4, :cond_c

    .line 237
    .line 238
    iget-boolean v4, v11, Lcom/android/server/wm/Task;->inRecents:Z

    .line 239
    .line 240
    if-eqz v4, :cond_d

    .line 241
    .line 242
    :cond_c
    move-object v8, v13

    .line 243
    move/from16 v18, v14

    .line 244
    .line 245
    move v4, v15

    .line 246
    goto :goto_4

    .line 247
    :cond_d
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-ne v4, v1, :cond_e

    .line 252
    .line 253
    invoke-virtual {v11, v14, v15}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    if-eqz v4, :cond_f

    .line 258
    .line 259
    :cond_e
    move-object v8, v13

    .line 260
    move/from16 v18, v14

    .line 261
    .line 262
    move v4, v15

    .line 263
    goto :goto_5

    .line 264
    :cond_f
    iget-object v4, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    const/16 v16, 0x3e8

    .line 270
    .line 271
    const/16 v17, -0x1

    .line 272
    .line 273
    iget-object v10, v0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 274
    .line 275
    const-string/jumbo v4, "remove-hidden-task"

    .line 276
    .line 277
    .line 278
    const/4 v5, 0x0

    .line 279
    move v12, v15

    .line 280
    move-object v8, v13

    .line 281
    move v13, v15

    .line 282
    move/from16 v18, v14

    .line 283
    .line 284
    move-object v14, v4

    .line 285
    move v4, v15

    .line 286
    move v15, v5

    .line 287
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZII)V

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :goto_4
    iget-object v5, v0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 297
    .line 298
    move v15, v4

    .line 299
    move-object v13, v8

    .line 300
    move/from16 v14, v18

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_10
    :goto_6
    move-object v8, v13

    .line 304
    move v4, v15

    .line 305
    iget-boolean v1, v0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    .line 306
    .line 307
    if-eqz v1, :cond_12

    .line 308
    .line 309
    iput-boolean v4, v0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_11
    move-object v8, v13

    .line 316
    move v4, v15

    .line 317
    :cond_12
    :goto_7
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 318
    .line 319
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_14

    .line 324
    .line 325
    const/16 v0, 0xcc

    .line 326
    .line 327
    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    .line 329
    .line 330
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 331
    .line 332
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 333
    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_13
    move-object v8, v13

    .line 337
    move v4, v15

    .line 338
    :cond_14
    :goto_8
    const-string v0, "idle"

    .line 339
    .line 340
    move/from16 v1, p3

    .line 341
    .line 342
    invoke-virtual {v6, v7, v1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-nez v0, :cond_15

    .line 352
    .line 353
    new-instance v0, Ljava/util/ArrayList;

    .line 354
    .line 355
    iget-object v1, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    .line 359
    .line 360
    iget-object v1, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 363
    .line 364
    .line 365
    move v15, v4

    .line 366
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-ge v15, v1, :cond_15

    .line 371
    .line 372
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    check-cast v1, Lcom/android/server/am/UserState;

    .line 377
    .line 378
    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    .line 379
    .line 380
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const-string v3, "ActivityTaskManager"

    .line 393
    .line 394
    const-string v4, "finishing switch of user %d"

    .line 395
    .line 396
    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 400
    .line 401
    invoke-virtual {v2, v1}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    add-int/lit8 v15, v15, 0x1

    .line 405
    .line 406
    goto :goto_9

    .line 407
    :cond_15
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 408
    .line 409
    new-instance v1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;

    .line 410
    .line 411
    const/4 v2, 0x0

    .line 412
    invoke-direct {v1, v6, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    .line 417
    .line 418
    return-void
.end method

.method public final beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_29

    .line 11
    .line 12
    :cond_0
    iget v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 13
    .line 14
    if-nez v2, :cond_28

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    sub-int/2addr v3, v1

    .line 25
    :goto_0
    if-ltz v3, :cond_28

    .line 26
    .line 27
    iget-object v4, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 34
    .line 35
    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    .line 36
    .line 37
    if-nez v5, :cond_27

    .line 38
    .line 39
    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    goto/16 :goto_14

    .line 44
    .line 45
    :cond_1
    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 46
    .line 47
    invoke-virtual {v2, v5}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-boolean v6, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 52
    .line 53
    iget-boolean v7, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 54
    .line 55
    iget-object v8, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    iput-boolean v9, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 59
    .line 60
    iput-boolean v9, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    iput-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 64
    .line 65
    iput-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 66
    .line 67
    iput-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 68
    .line 69
    new-instance v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {v11, v4}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v11}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    if-eqz v11, :cond_2

    .line 79
    .line 80
    invoke-virtual {v11, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object v12, v10

    .line 86
    :goto_1
    iget-object v13, v2, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 87
    .line 88
    iget v14, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 89
    .line 90
    if-eqz v12, :cond_b

    .line 91
    .line 92
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    if-eqz v15, :cond_3

    .line 97
    .line 98
    iput-object v12, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 99
    .line 100
    :cond_3
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 101
    .line 102
    if-nez v15, :cond_4

    .line 103
    .line 104
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    if-eqz v15, :cond_5

    .line 109
    .line 110
    :cond_4
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 111
    .line 112
    if-eqz v15, :cond_5

    .line 113
    .line 114
    iput-object v12, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 115
    .line 116
    :cond_5
    iget-object v15, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 117
    .line 118
    iget-object v10, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 119
    .line 120
    invoke-virtual {v10}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    invoke-virtual {v15, v10}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    .line 129
    .line 130
    if-eqz v15, :cond_6

    .line 131
    .line 132
    iget-boolean v15, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 133
    .line 134
    if-eqz v15, :cond_6

    .line 135
    .line 136
    if-nez v10, :cond_6

    .line 137
    .line 138
    iput-boolean v1, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-eqz v10, :cond_7

    .line 146
    .line 147
    iput-object v12, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 148
    .line 149
    :cond_7
    :goto_2
    iput-boolean v9, v12, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    .line 150
    .line 151
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 152
    .line 153
    if-nez v10, :cond_9

    .line 154
    .line 155
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 156
    .line 157
    if-eqz v10, :cond_8

    .line 158
    .line 159
    invoke-virtual {v11, v9}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    iget-object v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 164
    .line 165
    if-ne v10, v11, :cond_8

    .line 166
    .line 167
    invoke-virtual {v2, v1, v9}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-eqz v10, :cond_8

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_8
    move v10, v9

    .line 175
    goto :goto_4

    .line 176
    :cond_9
    :goto_3
    move v10, v1

    .line 177
    :goto_4
    iput-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 178
    .line 179
    if-eqz v14, :cond_b

    .line 180
    .line 181
    iget-object v11, v4, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 182
    .line 183
    invoke-virtual {v11}, Landroid/view/Display;->getFlags()I

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    and-int/lit8 v11, v11, 0x20

    .line 188
    .line 189
    if-eqz v11, :cond_a

    .line 190
    .line 191
    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-eqz v11, :cond_a

    .line 196
    .line 197
    move v11, v1

    .line 198
    goto :goto_5

    .line 199
    :cond_a
    move v11, v9

    .line 200
    :goto_5
    or-int/2addr v10, v11

    .line 201
    iput-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 202
    .line 203
    :cond_b
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 204
    .line 205
    if-eq v8, v10, :cond_c

    .line 206
    .line 207
    iget-boolean v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 208
    .line 209
    if-nez v11, :cond_c

    .line 210
    .line 211
    iget-boolean v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 212
    .line 213
    if-nez v11, :cond_c

    .line 214
    .line 215
    if-eqz v10, :cond_c

    .line 216
    .line 217
    move v10, v1

    .line 218
    goto :goto_6

    .line 219
    :cond_c
    move v10, v9

    .line 220
    :goto_6
    iput-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 221
    .line 222
    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 223
    .line 224
    if-eqz v10, :cond_e

    .line 225
    .line 226
    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 227
    .line 228
    if-eqz v10, :cond_e

    .line 229
    .line 230
    iget-boolean v10, v4, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 231
    .line 232
    if-nez v10, :cond_e

    .line 233
    .line 234
    invoke-virtual {v12, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-eqz v10, :cond_d

    .line 239
    .line 240
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    if-eqz v10, :cond_e

    .line 245
    .line 246
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    if-eqz v10, :cond_e

    .line 251
    .line 252
    :cond_d
    iget-object v10, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 253
    .line 254
    iget-object v10, v10, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 255
    .line 256
    if-nez v10, :cond_e

    .line 257
    .line 258
    iget v10, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 259
    .line 260
    or-int/lit8 v10, v10, 0x4

    .line 261
    .line 262
    iput v10, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 263
    .line 264
    :cond_e
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 265
    .line 266
    iget-object v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 267
    .line 268
    if-eqz v10, :cond_10

    .line 269
    .line 270
    iget-object v10, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 271
    .line 272
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 273
    .line 274
    invoke-virtual {v10}, Landroid/os/PowerManager;->isInteractive()Z

    .line 275
    .line 276
    .line 277
    move-result v10

    .line 278
    if-nez v10, :cond_10

    .line 279
    .line 280
    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 281
    .line 282
    if-nez v10, :cond_f

    .line 283
    .line 284
    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 285
    .line 286
    if-eqz v10, :cond_10

    .line 287
    .line 288
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v15, "handleTurnScreenOn::"

    .line 291
    .line 292
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v15, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 296
    .line 297
    iget-object v15, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    iget-object v15, v2, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 307
    .line 308
    invoke-virtual {v15, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 312
    .line 313
    iput-boolean v9, v10, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 314
    .line 315
    :cond_10
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 316
    .line 317
    if-eq v8, v10, :cond_12

    .line 318
    .line 319
    if-eqz v10, :cond_11

    .line 320
    .line 321
    iget-object v8, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 322
    .line 323
    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    invoke-virtual {v8, v11, v10}, Landroid/app/ActivityManagerInternal;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_11
    iget-object v8, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 334
    .line 335
    const/4 v10, -0x1

    .line 336
    const/4 v11, 0x0

    .line 337
    invoke-virtual {v8, v11, v10}, Landroid/app/ActivityManagerInternal;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    .line 338
    .line 339
    .line 340
    :cond_12
    :goto_7
    iget-boolean v8, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 341
    .line 342
    if-eq v6, v8, :cond_23

    .line 343
    .line 344
    iget v15, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 345
    .line 346
    if-nez v15, :cond_13

    .line 347
    .line 348
    iget-boolean v6, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 349
    .line 350
    iget-boolean v7, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 351
    .line 352
    iget-boolean v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 353
    .line 354
    const-string/jumbo v20, "updateVisibility"

    .line 355
    .line 356
    .line 357
    move/from16 v16, v6

    .line 358
    .line 359
    move/from16 v17, v7

    .line 360
    .line 361
    move/from16 v18, v11

    .line 362
    .line 363
    move/from16 v19, v8

    .line 364
    .line 365
    invoke-static/range {v15 .. v20}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIIIILjava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :cond_13
    iget-object v6, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 369
    .line 370
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    iget-boolean v7, v7, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 375
    .line 376
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    filled-new-array {v8, v7}, [Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    const v8, 0xf430a

    .line 389
    .line 390
    .line 391
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 392
    .line 393
    .line 394
    const/4 v7, 0x2

    .line 395
    if-ne v14, v7, :cond_14

    .line 396
    .line 397
    goto :goto_8

    .line 398
    :cond_14
    if-eqz v14, :cond_15

    .line 399
    .line 400
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 401
    .line 402
    .line 403
    goto/16 :goto_12

    .line 404
    .line 405
    :cond_15
    :goto_8
    iget-object v7, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 406
    .line 407
    iget-object v7, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 408
    .line 409
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    iget-boolean v8, v8, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 414
    .line 415
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 416
    .line 417
    .line 418
    move-result v11

    .line 419
    if-eqz v11, :cond_16

    .line 420
    .line 421
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 422
    .line 423
    .line 424
    move-result v15

    .line 425
    if-nez v15, :cond_16

    .line 426
    .line 427
    move v15, v1

    .line 428
    goto :goto_9

    .line 429
    :cond_16
    move v15, v9

    .line 430
    :goto_9
    iget-object v10, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 431
    .line 432
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 433
    .line 434
    iget-object v10, v10, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 435
    .line 436
    invoke-virtual {v10, v14, v8}, Lcom/android/server/policy/PhoneWindowManagerExt;->onKeyguardOccludedChangedLw(IZ)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 440
    .line 441
    .line 442
    :try_start_0
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 443
    .line 444
    .line 445
    move-result v10

    .line 446
    if-eqz v10, :cond_1f

    .line 447
    .line 448
    if-eqz v8, :cond_17

    .line 449
    .line 450
    const/16 v10, 0x8

    .line 451
    .line 452
    goto :goto_a

    .line 453
    :cond_17
    const/16 v10, 0x9

    .line 454
    .line 455
    :goto_a
    if-eqz v8, :cond_18

    .line 456
    .line 457
    const/16 v17, 0x1000

    .line 458
    .line 459
    :goto_b
    move/from16 v1, v17

    .line 460
    .line 461
    goto :goto_c

    .line 462
    :cond_18
    const/16 v17, 0x2000

    .line 463
    .line 464
    goto :goto_b

    .line 465
    :goto_c
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 466
    .line 467
    .line 468
    move-result v17

    .line 469
    if-eqz v17, :cond_1e

    .line 470
    .line 471
    if-eqz v8, :cond_19

    .line 472
    .line 473
    if-eqz v6, :cond_19

    .line 474
    .line 475
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 476
    .line 477
    .line 478
    move-result-object v17

    .line 479
    move-object/from16 v9, v17

    .line 480
    .line 481
    goto :goto_d

    .line 482
    :catchall_0
    move-exception v0

    .line 483
    goto/16 :goto_11

    .line 484
    .line 485
    :cond_19
    const/4 v9, 0x0

    .line 486
    :goto_d
    if-eqz v14, :cond_1b

    .line 487
    .line 488
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 489
    .line 490
    invoke-virtual {v0, v14}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    if-eqz v0, :cond_1a

    .line 495
    .line 496
    goto :goto_e

    .line 497
    :cond_1a
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 498
    .line 499
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 500
    .line 501
    :goto_e
    invoke-virtual {v7, v10, v1, v9, v0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    goto :goto_f

    .line 506
    :cond_1b
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 507
    .line 508
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 509
    .line 510
    invoke-virtual {v7, v10, v1, v9, v0}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    :goto_f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    .line 515
    .line 516
    if-eqz v1, :cond_1c

    .line 517
    .line 518
    if-eqz v8, :cond_1c

    .line 519
    .line 520
    invoke-virtual {v2, v6}, Lcom/android/server/wm/KeyguardController;->handleFreeformTaskOccluded(Lcom/android/server/wm/ActivityRecord;)V

    .line 521
    .line 522
    .line 523
    :cond_1c
    if-eqz v9, :cond_21

    .line 524
    .line 525
    if-nez v0, :cond_1d

    .line 526
    .line 527
    iget-object v0, v7, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 528
    .line 529
    :cond_1d
    const/4 v1, 0x0

    .line 530
    invoke-virtual {v0, v9, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 531
    .line 532
    .line 533
    goto :goto_10

    .line 534
    :cond_1e
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 535
    .line 536
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 537
    .line 538
    invoke-virtual {v0, v10, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 539
    .line 540
    .line 541
    goto :goto_10

    .line 542
    :cond_1f
    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-eqz v0, :cond_20

    .line 547
    .line 548
    iget-object v0, v7, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 549
    .line 550
    iget-object v1, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 551
    .line 552
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 553
    .line 554
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    new-instance v6, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;

    .line 558
    .line 559
    const/4 v7, 0x1

    .line 560
    invoke-direct {v6, v7, v1}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    goto :goto_10

    .line 567
    :cond_20
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 568
    .line 569
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 570
    .line 571
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 572
    .line 573
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardOcclusionChange()I

    .line 574
    .line 575
    .line 576
    :cond_21
    :goto_10
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 577
    .line 578
    .line 579
    if-eqz v11, :cond_22

    .line 580
    .line 581
    if-eqz v15, :cond_22

    .line 582
    .line 583
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 584
    .line 585
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    .line 587
    .line 588
    :cond_22
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 589
    .line 590
    .line 591
    goto :goto_12

    .line 592
    :goto_11
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 593
    .line 594
    .line 595
    throw v0

    .line 596
    :cond_23
    if-nez v7, :cond_25

    .line 597
    .line 598
    iget-boolean v0, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 599
    .line 600
    if-eqz v0, :cond_25

    .line 601
    .line 602
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 603
    .line 604
    .line 605
    const/4 v0, 0x7

    .line 606
    const/4 v1, 0x0

    .line 607
    :try_start_1
    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 608
    .line 609
    .line 610
    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 611
    .line 612
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 613
    .line 614
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 615
    .line 616
    const/16 v1, 0x100

    .line 617
    .line 618
    const/4 v6, 0x1

    .line 619
    const/4 v7, 0x0

    .line 620
    invoke-virtual {v0, v6, v1, v7, v4}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 624
    .line 625
    .line 626
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 627
    .line 628
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 629
    .line 630
    .line 631
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 632
    .line 633
    .line 634
    :goto_12
    if-eqz v12, :cond_25

    .line 635
    .line 636
    iget-boolean v0, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 637
    .line 638
    if-nez v0, :cond_24

    .line 639
    .line 640
    iget-boolean v0, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 641
    .line 642
    if-eqz v0, :cond_25

    .line 643
    .line 644
    :cond_24
    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 645
    .line 646
    invoke-virtual {v0, v12}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 647
    .line 648
    .line 649
    goto :goto_13

    .line 650
    :catchall_1
    move-exception v0

    .line 651
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 652
    .line 653
    .line 654
    throw v0

    .line 655
    :cond_25
    :goto_13
    iget-boolean v0, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 656
    .line 657
    if-eqz v0, :cond_27

    .line 658
    .line 659
    iget v0, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 660
    .line 661
    iget-object v1, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 662
    .line 663
    iget-object v4, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 664
    .line 665
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 666
    .line 667
    .line 668
    move-result v4

    .line 669
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_26

    .line 674
    .line 675
    goto :goto_14

    .line 676
    :cond_26
    iget-object v1, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 677
    .line 678
    const/4 v4, 0x0

    .line 679
    invoke-virtual {v1, v4, v4}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v2, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    const/4 v1, 0x1

    .line 687
    iput-boolean v1, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    .line 688
    .line 689
    iget-object v1, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 690
    .line 691
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 692
    .line 693
    iget-boolean v0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 694
    .line 695
    if-eqz v0, :cond_27

    .line 696
    .line 697
    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    .line 698
    .line 699
    .line 700
    move-result v0

    .line 701
    if-eqz v0, :cond_27

    .line 702
    .line 703
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 704
    .line 705
    const/16 v1, 0x9

    .line 706
    .line 707
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    if-eqz v0, :cond_27

    .line 712
    .line 713
    iget-object v0, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 714
    .line 715
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 716
    .line 717
    .line 718
    :cond_27
    :goto_14
    add-int/lit8 v3, v3, -0x1

    .line 719
    .line 720
    const/4 v1, 0x1

    .line 721
    move-object/from16 v0, p0

    .line 722
    .line 723
    goto/16 :goto_0

    .line 724
    .line 725
    :cond_28
    move-object/from16 v0, p0

    .line 726
    .line 727
    :cond_29
    iget v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 728
    .line 729
    const/4 v2, 0x1

    .line 730
    add-int/2addr v1, v2

    .line 731
    iput v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 732
    .line 733
    return-void
.end method

.method public final beginDeferResume()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 6
    .line 7
    return-void
.end method

.method public final canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_7

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    if-eqz p5, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_3
    if-eqz p4, :cond_4

    .line 39
    .line 40
    new-instance p2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;

    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-direct {p2, p3, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    :cond_4
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    iget-object p3, p2, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 56
    .line 57
    if-nez p3, :cond_6

    .line 58
    .line 59
    move p0, v2

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-ge p0, p3, :cond_7

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Landroid/content/pm/ActivityInfo;

    .line 71
    .line 72
    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz p3, :cond_5

    .line 75
    .line 76
    iget-object p0, p2, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 77
    .line 78
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 79
    .line 80
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    filled-new-array {p3, p0}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, "Checking activity launch with requiredDisplayCategory=\'%s\' on display %d, which doesn\'t have a matching category."

    .line 89
    .line 90
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "DisplayWindowPolicyControllerHelper"

    .line 95
    .line 96
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move v0, v2

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    add-int/lit8 p0, p0, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    invoke-virtual {p3, p1, p0}, Landroid/window/DisplayWindowPolicyController;->canContainActivities(Ljava/util/List;I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :cond_7
    :goto_1
    return v0
.end method

.method public final canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 25
    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    :cond_2
    const/4 v0, 0x1

    .line 29
    :cond_3
    :goto_0
    return v0
.end method

.method public final checkReadyForSleepLocked(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 6
    .line 7
    if-nez v3, :cond_1

    .line 8
    .line 9
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-array v3, v1, [Z

    .line 21
    .line 22
    aput-boolean v1, v3, v0

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;

    .line 25
    .line 26
    invoke-direct {v1, p1, v3, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;-><init>(Z[ZZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 30
    .line 31
    .line 32
    aget-boolean p1, v3, v0

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 49
    .line 50
    const/16 v0, 0xcb

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 69
    .line 70
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public final checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v8, p5

    .line 6
    .line 7
    move/from16 v9, p6

    .line 8
    .line 9
    move-object/from16 v10, p7

    .line 10
    .line 11
    move-object/from16 v11, p11

    .line 12
    .line 13
    iget-object v12, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 16
    .line 17
    const/4 v14, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2, v9}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    move v15, v14

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v15, 0x0

    .line 29
    :goto_0
    const-string v4, "android.permission.START_ANY_ACTIVITY"

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, -0x1

    .line 33
    const/4 v7, 0x1

    .line 34
    move/from16 v2, p5

    .line 35
    .line 36
    move/from16 v3, p6

    .line 37
    .line 38
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_19

    .line 43
    .line 44
    if-eqz v15, :cond_1

    .line 45
    .line 46
    if-eqz p10, :cond_1

    .line 47
    .line 48
    goto/16 :goto_a

    .line 49
    .line 50
    :cond_1
    if-eqz p10, :cond_2

    .line 51
    .line 52
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 53
    .line 54
    iget-boolean v2, v2, Lcom/android/server/wm/DexController;->mStartFromRecentInfo:Z

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    return v14

    .line 75
    :cond_2
    const/4 v15, -0x1

    .line 76
    const/4 v7, 0x2

    .line 77
    if-nez p9, :cond_3

    .line 78
    .line 79
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 82
    .line 83
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 84
    .line 85
    iget-boolean v5, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 86
    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    move/from16 v2, p5

    .line 90
    .line 91
    move/from16 v3, p6

    .line 92
    .line 93
    move/from16 v17, v5

    .line 94
    .line 95
    move/from16 v5, v16

    .line 96
    .line 97
    move v13, v7

    .line 98
    move/from16 v7, v17

    .line 99
    .line 100
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-ne v2, v15, :cond_4

    .line 105
    .line 106
    move v7, v14

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move v13, v7

    .line 109
    :cond_4
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 110
    .line 111
    if-nez v2, :cond_6

    .line 112
    .line 113
    :cond_5
    :goto_1
    const/4 v7, 0x0

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-ne v3, v15, :cond_7

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 123
    .line 124
    if-nez v2, :cond_8

    .line 125
    .line 126
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    const-class v4, Landroid/app/AppOpsManager;

    .line 129
    .line 130
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Landroid/app/AppOpsManager;

    .line 135
    .line 136
    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 137
    .line 138
    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 139
    .line 140
    const-string v7, ""

    .line 141
    .line 142
    move/from16 v4, p6

    .line 143
    .line 144
    move-object/from16 v5, p7

    .line 145
    .line 146
    move-object/from16 v6, p8

    .line 147
    .line 148
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    if-nez p9, :cond_5

    .line 155
    .line 156
    move v7, v13

    .line 157
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const-string v6, "ActivityTaskManager"

    .line 162
    .line 163
    if-nez v2, :cond_9

    .line 164
    .line 165
    :goto_3
    move-object v3, v6

    .line 166
    move/from16 v21, v7

    .line 167
    .line 168
    :goto_4
    const/4 v7, 0x0

    .line 169
    goto/16 :goto_7

    .line 170
    .line 171
    :cond_9
    sget-object v3, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 172
    .line 173
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    move-object v5, v2

    .line 178
    check-cast v5, Ljava/lang/String;

    .line 179
    .line 180
    if-nez v5, :cond_a

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_a
    :try_start_0
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    const/16 v4, 0x1000

    .line 194
    .line 195
    invoke-virtual {v2, v10, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 196
    .line 197
    .line 198
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_b

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_b
    const/16 v17, 0x0

    .line 209
    .line 210
    const/16 v18, -0x1

    .line 211
    .line 212
    const/16 v19, 0x1

    .line 213
    .line 214
    move/from16 v2, p5

    .line 215
    .line 216
    move/from16 v3, p6

    .line 217
    .line 218
    move-object v4, v5

    .line 219
    move-object/from16 p9, v5

    .line 220
    .line 221
    move/from16 v5, v17

    .line 222
    .line 223
    move-object/from16 v20, v6

    .line 224
    .line 225
    move/from16 v6, v18

    .line 226
    .line 227
    move/from16 v21, v7

    .line 228
    .line 229
    move/from16 v7, v19

    .line 230
    .line 231
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-ne v2, v15, :cond_c

    .line 236
    .line 237
    move v7, v14

    .line 238
    :goto_5
    move-object/from16 v3, v20

    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :cond_c
    invoke-static/range {p9 .. p9}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-ne v3, v15, :cond_e

    .line 247
    .line 248
    :cond_d
    :goto_6
    move-object/from16 v3, v20

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_e
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 252
    .line 253
    if-nez v2, :cond_f

    .line 254
    .line 255
    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 256
    .line 257
    const-class v4, Landroid/app/AppOpsManager;

    .line 258
    .line 259
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    check-cast v2, Landroid/app/AppOpsManager;

    .line 264
    .line 265
    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 266
    .line 267
    :cond_f
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 268
    .line 269
    const-string v7, ""

    .line 270
    .line 271
    move/from16 v4, p6

    .line 272
    .line 273
    move-object/from16 v5, p7

    .line 274
    .line 275
    move-object/from16 v6, p8

    .line 276
    .line 277
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_d

    .line 282
    .line 283
    const-string v2, "android.permission.CAMERA"

    .line 284
    .line 285
    move-object/from16 v3, p9

    .line 286
    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_10

    .line 292
    .line 293
    const-class v2, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 294
    .line 295
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    check-cast v2, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 300
    .line 301
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    invoke-virtual {v2, v4, v13}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eqz v2, :cond_10

    .line 314
    .line 315
    const-class v2, Landroid/app/AppOpsManagerInternal;

    .line 316
    .line 317
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Landroid/app/AppOpsManagerInternal;

    .line 322
    .line 323
    const/16 v4, 0x1a

    .line 324
    .line 325
    const/4 v5, 0x0

    .line 326
    invoke-virtual {v2, v4, v3, v10, v5}, Landroid/app/AppOpsManagerInternal;->getOpRestrictionCount(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-ne v2, v14, :cond_10

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_10
    move v7, v13

    .line 334
    goto :goto_5

    .line 335
    :catch_0
    move-object/from16 v20, v6

    .line 336
    .line 337
    move/from16 v21, v7

    .line 338
    .line 339
    const-string v2, "Cannot find package info for "

    .line 340
    .line 341
    move-object/from16 v3, v20

    .line 342
    .line 343
    invoke-static {v2, v10, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_4

    .line 347
    .line 348
    :goto_7
    const-string v2, ") requires "

    .line 349
    .line 350
    const-string v4, ", uid="

    .line 351
    .line 352
    const-string v5, " (pid="

    .line 353
    .line 354
    const-string v6, " from "

    .line 355
    .line 356
    move/from16 v10, v21

    .line 357
    .line 358
    if-eq v10, v14, :cond_11

    .line 359
    .line 360
    if-ne v7, v14, :cond_12

    .line 361
    .line 362
    :cond_11
    move-object/from16 v10, p1

    .line 363
    .line 364
    goto/16 :goto_8

    .line 365
    .line 366
    :cond_12
    const-string v12, "Appop Denial: starting "

    .line 367
    .line 368
    if-ne v7, v13, :cond_13

    .line 369
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-static {v8, v9, v4, v2, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 392
    .line 393
    .line 394
    sget-object v1, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 395
    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    check-cast v1, Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    const/4 v0, 0x0

    .line 421
    return v0

    .line 422
    :cond_13
    if-ne v10, v13, :cond_14

    .line 423
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    const-string v2, ") requires appop "

    .line 446
    .line 447
    invoke-static {v8, v9, v4, v2, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 448
    .line 449
    .line 450
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 451
    .line 452
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    const/4 v1, 0x0

    .line 467
    return v1

    .line 468
    :cond_14
    const/4 v1, 0x0

    .line 469
    const-string v2, "com.sec.intent.extra.FREEZE_TASK_DISPLAY_AREA"

    .line 470
    .line 471
    move-object/from16 v10, p1

    .line 472
    .line 473
    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-eqz v1, :cond_15

    .line 478
    .line 479
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 480
    .line 481
    const-string v1, "com.samsung.android.permission.FREEZE_TASK_DISPLAY_AREA"

    .line 482
    .line 483
    const-string v2, "FREEZE_TASK_DISPLAY_AREA"

    .line 484
    .line 485
    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission$1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    return v0

    .line 490
    :cond_15
    return v14

    .line 491
    :goto_8
    if-eqz p12, :cond_16

    .line 492
    .line 493
    const/16 v21, 0x0

    .line 494
    .line 495
    const/16 v22, 0x0

    .line 496
    .line 497
    const/16 v16, -0x1

    .line 498
    .line 499
    const/16 v19, 0x0

    .line 500
    .line 501
    const/16 v20, 0x0

    .line 502
    .line 503
    const/16 v23, 0x0

    .line 504
    .line 505
    move-object/from16 v15, p12

    .line 506
    .line 507
    move-object/from16 v17, p3

    .line 508
    .line 509
    move/from16 v18, p4

    .line 510
    .line 511
    invoke-virtual/range {v15 .. v23}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 512
    .line 513
    .line 514
    :cond_16
    const-string v0, "Permission Denial: starting "

    .line 515
    .line 516
    if-eq v7, v14, :cond_18

    .line 517
    .line 518
    iget-boolean v7, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 519
    .line 520
    if-nez v7, :cond_17

    .line 521
    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v0, ") not exported from uid "

    .line 544
    .line 545
    invoke-static {v8, v9, v4, v0, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 546
    .line 547
    .line 548
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 549
    .line 550
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 551
    .line 552
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    goto :goto_9

    .line 560
    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-static {v8, v9, v4, v2, v7}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 582
    .line 583
    .line 584
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 585
    .line 586
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    goto :goto_9

    .line 594
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v0, ") with revoked permission "

    .line 616
    .line 617
    invoke-static {v8, v9, v4, v0, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 618
    .line 619
    .line 620
    sget-object v0, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 621
    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    check-cast v0, Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    :goto_9
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .line 641
    .line 642
    new-instance v1, Ljava/lang/SecurityException;

    .line 643
    .line 644
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    throw v1

    .line 648
    :cond_19
    :goto_a
    return v14
.end method

.method public final cleanUpRemovedTask(Lcom/android/server/wm/Task;ZZ)V
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 4
    .line 5
    invoke-virtual {p3, p1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-nez v0, :cond_2

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p2, "No component for base intent of task: "

    .line 25
    .line 26
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "ActivityTaskManager"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    new-instance v1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 48
    .line 49
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 50
    .line 51
    iget v4, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-instance v5, Landroid/content/Intent;

    .line 58
    .line 59
    invoke-direct {v5, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 67
    .line 68
    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    if-nez p2, :cond_3

    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    iget-boolean p3, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 81
    .line 82
    if-eqz p3, :cond_5

    .line 83
    .line 84
    iget-boolean p3, p2, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 85
    .line 86
    if-nez p3, :cond_5

    .line 87
    .line 88
    iget-wide v0, p2, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    .line 89
    .line 90
    const-wide/16 v2, 0x0

    .line 91
    .line 92
    cmp-long p3, v0, v2

    .line 93
    .line 94
    if-lez p3, :cond_5

    .line 95
    .line 96
    iget-boolean p3, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    .line 97
    .line 98
    if-nez p3, :cond_5

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    .line 107
    .line 108
    if-eqz p2, :cond_4

    .line 109
    .line 110
    iget-boolean p2, p1, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    .line 111
    .line 112
    if-eqz p2, :cond_4

    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    const/4 p2, 0x1

    .line 116
    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 119
    .line 120
    const/16 p2, 0xce

    .line 121
    .line 122
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-wide/16 p2, 0x3e8

    .line 127
    .line 128
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->killTaskProcessesIfPossible(Lcom/android/server/wm/Task;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final computeProcessActivityStateBatch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/wm/WindowProcessController;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeProcessActivityState()V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final endActivityVisibilityUpdate()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final endDeferResume()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 6
    .line 7
    return-void
.end method

.method public final findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    const-string v1, " findTaskToMoveToFront"

    .line 8
    .line 9
    const-string v2, "findTaskToMoveToFront: move rootTask "

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "ActivityTaskManager"

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "findTaskToMoveToFront: can\'t move task="

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " to front. Root task is null"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    const/4 v5, 0x1

    .line 43
    iget-object v15, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    const/4 v14, 0x0

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-nez v8, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v8, v14

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    move v1, v14

    .line 59
    move-object v10, v15

    .line 60
    goto/16 :goto_f

    .line 61
    .line 62
    :cond_2
    :goto_0
    move v8, v5

    .line 63
    :goto_1
    and-int/lit8 v9, p2, 0x2

    .line 64
    .line 65
    if-nez v9, :cond_3

    .line 66
    .line 67
    if-eqz v8, :cond_3

    .line 68
    .line 69
    iput-boolean v5, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 70
    .line 71
    :cond_3
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 72
    .line 73
    .line 74
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 75
    .line 76
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    const/4 v13, 0x0

    .line 81
    if-eqz v8, :cond_4

    .line 82
    .line 83
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 84
    .line 85
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_5

    .line 90
    .line 91
    :cond_4
    move-object v12, v13

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 94
    .line 95
    const/4 v9, 0x3

    .line 96
    invoke-virtual {v8, v9, v14}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    move-object v12, v8

    .line 101
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-eqz v8, :cond_6

    .line 106
    .line 107
    iget-object v8, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 108
    .line 109
    invoke-virtual {v8, v0}, Lcom/android/server/wm/FreeformController;->releaseForceHideTaskLocked(Lcom/android/server/wm/Task;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 113
    .line 114
    invoke-virtual {v8, v0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 115
    .line 116
    .line 117
    move-object/from16 v8, p4

    .line 118
    .line 119
    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    .line 124
    .line 125
    .line 126
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v8, :cond_b

    .line 128
    .line 129
    :try_start_1
    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-eqz v8, :cond_b

    .line 134
    .line 135
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 136
    .line 137
    invoke-virtual {v8, v6, v0, v5}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    .line 138
    .line 139
    .line 140
    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 141
    if-eq v11, v3, :cond_a

    .line 142
    .line 143
    :try_start_2
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-ne v9, v5, :cond_7

    .line 156
    .line 157
    and-int/lit8 v9, p2, 0x1

    .line 158
    .line 159
    if-nez v9, :cond_8

    .line 160
    .line 161
    :cond_7
    if-eqz v8, :cond_9

    .line 162
    .line 163
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_9

    .line 168
    .line 169
    :cond_8
    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_9
    const/4 v10, 0x1

    .line 173
    const/4 v3, 0x1

    .line 174
    const/16 v16, 0x0

    .line 175
    .line 176
    const/16 v17, 0x1

    .line 177
    .line 178
    move-object/from16 v8, p1

    .line 179
    .line 180
    move-object v9, v11

    .line 181
    move-object/from16 v18, v11

    .line 182
    .line 183
    move v11, v3

    .line 184
    move-object v3, v12

    .line 185
    move/from16 v12, v16

    .line 186
    .line 187
    move/from16 v13, v17

    .line 188
    .line 189
    move-object v14, v1

    .line 190
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    .line 192
    .line 193
    move-object v14, v3

    .line 194
    move-object/from16 v3, v18

    .line 195
    .line 196
    move/from16 v18, v5

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :catchall_1
    move-exception v0

    .line 200
    move-object v10, v15

    .line 201
    :goto_3
    const/4 v1, 0x0

    .line 202
    goto/16 :goto_f

    .line 203
    .line 204
    :cond_a
    move-object v14, v12

    .line 205
    const/16 v18, 0x0

    .line 206
    .line 207
    :goto_4
    :try_start_3
    new-instance v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 208
    .line 209
    invoke-direct {v13}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 210
    .line 211
    .line 212
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 213
    .line 214
    invoke-virtual {v0, v5, v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 215
    .line 216
    .line 217
    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 218
    const/16 v16, 0x0

    .line 219
    .line 220
    const/16 v17, 0x3

    .line 221
    .line 222
    const/16 v19, 0x0

    .line 223
    .line 224
    const/4 v10, 0x0

    .line 225
    const/4 v12, 0x0

    .line 226
    move-object/from16 v9, p1

    .line 227
    .line 228
    move-object/from16 p4, v13

    .line 229
    .line 230
    move-object/from16 v13, p3

    .line 231
    .line 232
    move-object/from16 v20, v14

    .line 233
    .line 234
    move-object/from16 v14, v16

    .line 235
    .line 236
    move-object/from16 v21, v3

    .line 237
    .line 238
    move-object v3, v15

    .line 239
    move/from16 v15, v17

    .line 240
    .line 241
    move-object/from16 v16, p4

    .line 242
    .line 243
    move-object/from16 v17, v19

    .line 244
    .line 245
    :try_start_4
    invoke-virtual/range {v8 .. v17}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v8, p4

    .line 249
    .line 250
    iget-object v8, v8, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 251
    .line 252
    invoke-virtual {v0, v8}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 253
    .line 254
    .line 255
    move/from16 v14, v18

    .line 256
    .line 257
    move-object/from16 v15, v21

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :catchall_2
    move-exception v0

    .line 261
    :goto_5
    move-object v10, v3

    .line 262
    goto :goto_3

    .line 263
    :catchall_3
    move-exception v0

    .line 264
    move-object v3, v15

    .line 265
    goto :goto_5

    .line 266
    :cond_b
    move-object v8, v3

    .line 267
    move-object/from16 v20, v12

    .line 268
    .line 269
    move-object v3, v15

    .line 270
    move-object v15, v8

    .line 271
    const/4 v14, 0x0

    .line 272
    :goto_6
    if-nez v14, :cond_f

    .line 273
    .line 274
    if-eqz v6, :cond_f

    .line 275
    .line 276
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    const/4 v10, -0x1

    .line 285
    if-eq v9, v10, :cond_f

    .line 286
    .line 287
    if-eq v8, v9, :cond_f

    .line 288
    .line 289
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-eqz v8, :cond_f

    .line 294
    .line 295
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    if-eqz v8, :cond_f

    .line 300
    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v2, " to display #"

    .line 310
    .line 311
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    iget-object v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 325
    .line 326
    invoke-virtual {v2, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    if-eqz v2, :cond_c

    .line 331
    .line 332
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 333
    .line 334
    .line 335
    move-result-object v13

    .line 336
    goto :goto_7

    .line 337
    :cond_c
    const/4 v13, 0x0

    .line 338
    :goto_7
    if-eqz v13, :cond_d

    .line 339
    .line 340
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-nez v2, :cond_d

    .line 345
    .line 346
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 347
    .line 348
    invoke-virtual {v2, v13}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 349
    .line 350
    .line 351
    :cond_d
    iget v2, v15, Lcom/android/server/wm/Task;->mTaskId:I

    .line 352
    .line 353
    invoke-virtual {v3, v2, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->moveRootTaskToDisplay(II)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-ne v2, v9, :cond_e

    .line 361
    .line 362
    move v14, v5

    .line 363
    goto :goto_8

    .line 364
    :cond_e
    const/4 v14, 0x0

    .line 365
    :cond_f
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 366
    .line 367
    .line 368
    move-result v16

    .line 369
    if-nez v14, :cond_12

    .line 370
    .line 371
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 380
    .line 381
    .line 382
    move-result v8

    .line 383
    if-ne v8, v5, :cond_10

    .line 384
    .line 385
    and-int/lit8 v8, p2, 0x1

    .line 386
    .line 387
    if-nez v8, :cond_11

    .line 388
    .line 389
    :cond_10
    if-eqz v4, :cond_12

    .line 390
    .line 391
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-eqz v4, :cond_12

    .line 396
    .line 397
    :cond_11
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :cond_12
    invoke-virtual {v0, v5, v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    if-nez v4, :cond_13

    .line 405
    .line 406
    const/4 v12, 0x0

    .line 407
    goto :goto_9

    .line 408
    :cond_13
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 409
    .line 410
    move-object v12, v2

    .line 411
    :goto_9
    const/4 v13, 0x0

    .line 412
    const/4 v10, 0x0

    .line 413
    move-object v8, v15

    .line 414
    move-object/from16 v9, p1

    .line 415
    .line 416
    move-object/from16 v11, p3

    .line 417
    .line 418
    move-object v14, v1

    .line 419
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 423
    .line 424
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 425
    .line 426
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 427
    .line 428
    .line 429
    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 430
    const/4 v9, 0x0

    .line 431
    move-object/from16 v1, p0

    .line 432
    .line 433
    move-object/from16 v2, p1

    .line 434
    .line 435
    move-object v10, v3

    .line 436
    move v3, v9

    .line 437
    move-object v9, v4

    .line 438
    move-object v4, v8

    .line 439
    move v8, v5

    .line 440
    move-object v5, v15

    .line 441
    move/from16 v6, p5

    .line 442
    .line 443
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    .line 444
    .line 445
    .line 446
    if-eqz v9, :cond_14

    .line 447
    .line 448
    if-eqz p3, :cond_15

    .line 449
    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getDisableStartingWindow()Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-nez v1, :cond_14

    .line 455
    .line 456
    goto :goto_b

    .line 457
    :cond_14
    :goto_a
    move-object/from16 v13, v20

    .line 458
    .line 459
    goto :goto_c

    .line 460
    :catchall_4
    move-exception v0

    .line 461
    goto/16 :goto_3

    .line 462
    .line 463
    :cond_15
    :goto_b
    if-nez v16, :cond_14

    .line 464
    .line 465
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 466
    .line 467
    if-eqz v1, :cond_16

    .line 468
    .line 469
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 470
    .line 471
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 472
    .line 473
    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 474
    .line 475
    if-eqz v1, :cond_16

    .line 476
    .line 477
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityRecord;->mStyleFloating:Z

    .line 478
    .line 479
    if-eqz v1, :cond_16

    .line 480
    .line 481
    iget-object v1, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 482
    .line 483
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-nez v1, :cond_14

    .line 492
    .line 493
    :cond_16
    invoke-virtual {v9, v8}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 494
    .line 495
    .line 496
    goto :goto_a

    .line 497
    :goto_c
    if-eqz v13, :cond_18

    .line 498
    .line 499
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 500
    .line 501
    if-eqz p3, :cond_17

    .line 502
    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    :goto_d
    const/4 v3, 0x0

    .line 508
    goto :goto_e

    .line 509
    :cond_17
    const/4 v2, 0x0

    .line 510
    goto :goto_d

    .line 511
    :goto_e
    invoke-virtual {v1, v13, v0, v2, v3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 512
    .line 513
    .line 514
    :cond_18
    const/4 v1, 0x0

    .line 515
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 516
    .line 517
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 518
    .line 519
    .line 520
    return-void

    .line 521
    :goto_f
    iput-boolean v1, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 522
    .line 523
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 524
    .line 525
    .line 526
    throw v0
.end method

.method public final getDeviceIdForDisplayId(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasCompanionDeviceSetupFeature:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return v0

    .line 35
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_3
    :goto_0
    return v0
.end method

.method public final getNextTaskIdForUser(I)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    const v1, 0x186a0

    .line 4
    .line 5
    .line 6
    mul-int v2, p1, v1

    .line 7
    .line 8
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v2, v0, 0x1

    .line 13
    .line 14
    add-int/lit8 v3, p1, 0x1

    .line 15
    .line 16
    mul-int/2addr v3, v1

    .line 17
    const v1, -0x1869f

    .line 18
    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    add-int v2, v0, v1

    .line 23
    .line 24
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x1

    .line 48
    invoke-virtual {v4, v2, v7, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    :goto_1
    add-int/lit8 v4, v2, 0x1

    .line 55
    .line 56
    if-ne v4, v3, :cond_2

    .line 57
    .line 58
    add-int/2addr v2, v1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move v2, v4

    .line 61
    :goto_2
    if-eq v2, v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string p1, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 73
    .line 74
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    .line 76
    .line 77
    return v2
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final goingToSleepLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 2
    .line 3
    const/16 v1, 0xcb

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    sget v2, Lcom/android/server/wm/ActivityTaskSupervisor;->SLEEP_TIMEOUT:I

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 38
    .line 39
    .line 40
    const/16 v1, 0xcc

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-interface {v1, v2, p1}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldNotHandleForcedResizableTaskIfNeeded(II)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 58
    .line 59
    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 62
    .line 63
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    return-void
.end method

.method public final handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p1

    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v9, 0x0

    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ne v3, v1, :cond_0

    .line 15
    .line 16
    move v3, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v9

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-nez v4, :cond_2

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    return-void

    .line 29
    :cond_2
    :goto_1
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 30
    .line 31
    iget-object v4, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const-string v11, "ActivityTaskManager"

    .line 38
    .line 39
    const/4 v12, 0x2

    .line 40
    if-eqz v4, :cond_8

    .line 41
    .line 42
    if-eqz v8, :cond_3

    .line 43
    .line 44
    iget-object v4, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 45
    .line 46
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 47
    .line 48
    if-eq v4, v12, :cond_4

    .line 49
    .line 50
    :cond_3
    if-eqz p4, :cond_8

    .line 51
    .line 52
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v4, v12, :cond_8

    .line 57
    .line 58
    :cond_4
    iget-object v2, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 59
    .line 60
    invoke-virtual {v2, v9}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v1, "skip handleNonResizableTaskIfNeeded by KeyguardLocked, task="

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    if-nez v3, :cond_6

    .line 86
    .line 87
    move v2, p2

    .line 88
    if-ne v2, v1, :cond_7

    .line 89
    .line 90
    :cond_6
    const/4 v1, 0x4

    .line 91
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V

    .line 92
    .line 93
    .line 94
    :cond_7
    return-void

    .line 95
    :cond_8
    if-eqz v8, :cond_9

    .line 96
    .line 97
    iget-object v1, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 98
    .line 99
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 100
    .line 101
    if-eqz v1, :cond_9

    .line 102
    .line 103
    move v1, v2

    .line 104
    goto :goto_2

    .line 105
    :cond_9
    move v1, v9

    .line 106
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-nez v4, :cond_a

    .line 111
    .line 112
    return-void

    .line 113
    :cond_a
    if-eqz v1, :cond_e

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    iget-object v1, v7, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 120
    .line 121
    const/4 v3, -0x1

    .line 122
    const/4 v4, -0x1

    .line 123
    const/4 v6, 0x0

    .line 124
    move-object v5, p1

    .line 125
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_d

    .line 130
    .line 131
    iget-object v1, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-eq v1, v2, :cond_b

    .line 138
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v2, "Failed to put "

    .line 142
    .line 143
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, " on display "

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 155
    .line 156
    invoke-static {v0, v2, v11}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 166
    .line 167
    iget-object v3, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 168
    .line 169
    const/16 v4, 0x12

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v4, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iget-object v2, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_b
    if-nez p5, :cond_c

    .line 188
    .line 189
    invoke-virtual {p0, v12, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V

    .line 190
    .line 191
    .line 192
    :cond_c
    :goto_3
    return-void

    .line 193
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 194
    .line 195
    const-string v1, "Task resolved to incompatible display"

    .line 196
    .line 197
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v0

    .line 201
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-nez v1, :cond_12

    .line 206
    .line 207
    if-eqz v8, :cond_12

    .line 208
    .line 209
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_12

    .line 214
    .line 215
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-eqz v0, :cond_11

    .line 220
    .line 221
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 226
    .line 227
    if-eqz v0, :cond_f

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_f
    invoke-virtual {p1, v9}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 231
    .line 232
    .line 233
    iget-object v0, v8, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_11

    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-eqz v0, :cond_10

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    if-eqz v1, :cond_10

    .line 256
    .line 257
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    goto :goto_4

    .line 266
    :cond_10
    const/4 v0, 0x0

    .line 267
    :goto_4
    iget-object v1, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 268
    .line 269
    iget-object v2, v1, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 270
    .line 271
    const/4 v3, 0x7

    .line 272
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iget-object v2, v1, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 280
    .line 281
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 285
    .line 286
    .line 287
    :cond_11
    :goto_5
    return-void

    .line 288
    :cond_12
    if-nez p5, :cond_14

    .line 289
    .line 290
    if-eqz v3, :cond_13

    .line 291
    .line 292
    const/4 v1, 0x3

    .line 293
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_13
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V

    .line 298
    .line 299
    .line 300
    :cond_14
    :goto_6
    return-void
.end method

.method public final handleTopResumedStateReleased(Z)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "(due to timeout)"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p1, "(transition complete)"

    .line 14
    .line 15
    :goto_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 16
    .line 17
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const-wide v3, 0x37786b7acafe381fL    # 1.7520377694429976E-41

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
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 32
    .line 33
    const/16 v0, 0xd9

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public final isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    move/from16 v1, p3

    .line 8
    .line 9
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_TASKS_enabled:[Z

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    aget-boolean v2, v9, v10

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    int-to-long v2, v1

    .line 17
    int-to-long v4, v7

    .line 18
    int-to-long v11, v8

    .line 19
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v18

    .line 37
    const-wide v14, -0x765e9c822239c1bfL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/16 v16, 0x15

    .line 43
    .line 44
    const/16 v17, 0x0

    .line 45
    .line 46
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const/4 v11, -0x1

    .line 50
    const/4 v12, 0x1

    .line 51
    if-ne v7, v11, :cond_2

    .line 52
    .line 53
    if-ne v8, v11, :cond_2

    .line 54
    .line 55
    aget-boolean v0, v9, v10

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    const-wide v2, 0x7ef3e7a5f3e53e19L    # 3.4125193512928154E303

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return v12

    .line 73
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    const-string v14, "ActivityTaskManager"

    .line 80
    .line 81
    if-eqz v13, :cond_17

    .line 82
    .line 83
    iget-boolean v1, v13, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_3
    iget-object v1, v13, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 90
    .line 91
    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    .line 92
    .line 93
    const v2, 0x8000

    .line 94
    .line 95
    .line 96
    and-int/2addr v1, v2

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    move v15, v12

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    move v15, v10

    .line 102
    :goto_0
    iget-object v1, v13, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    and-int/lit16 v1, v1, 0x2000

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    const-string v0, "Launch on display check: activity launch is not allowed on rear display"

    .line 113
    .line 114
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return v10

    .line 118
    :cond_5
    const/4 v5, -0x1

    .line 119
    const/4 v6, 0x1

    .line 120
    const-string v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    move/from16 v1, p1

    .line 124
    .line 125
    move/from16 v2, p2

    .line 126
    .line 127
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_7

    .line 132
    .line 133
    aget-boolean v0, v9, v10

    .line 134
    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 138
    .line 139
    const/4 v5, 0x0

    .line 140
    const/4 v6, 0x0

    .line 141
    const-wide v2, 0x425a011a7ae73790L    # 4.4675064924486816E11

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    const/4 v4, 0x0

    .line 147
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    return v12

    .line 151
    :cond_7
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda55;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 154
    .line 155
    .line 156
    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 157
    .line 158
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v2, v13, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_8

    .line 177
    .line 178
    move/from16 v16, v12

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_8
    move/from16 v16, v10

    .line 182
    .line 183
    :goto_1
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 184
    .line 185
    .line 186
    iget-object v6, v13, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 187
    .line 188
    invoke-virtual {v6}, Landroid/view/Display;->isTrusted()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_b

    .line 193
    .line 194
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 195
    .line 196
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 203
    .line 204
    if-eqz v2, :cond_9

    .line 205
    .line 206
    if-eqz v15, :cond_9

    .line 207
    .line 208
    if-eqz v1, :cond_9

    .line 209
    .line 210
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_a

    .line 215
    .line 216
    :cond_9
    move-object/from16 v1, p4

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_a
    const-string v1, "SPEG"

    .line 220
    .line 221
    const-string v2, "Ignore activity launch permission checking"

    .line 222
    .line 223
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    :cond_b
    move-object v7, v6

    .line 227
    goto :goto_3

    .line 228
    :goto_2
    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 229
    .line 230
    const/high16 v2, -0x80000000

    .line 231
    .line 232
    and-int/2addr v1, v2

    .line 233
    if-nez v1, :cond_d

    .line 234
    .line 235
    aget-boolean v0, v9, v10

    .line 236
    .line 237
    if-eqz v0, :cond_c

    .line 238
    .line 239
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 240
    .line 241
    const/4 v5, 0x0

    .line 242
    const/4 v6, 0x0

    .line 243
    const-wide v2, 0x6ca41b1e6ab53a07L    # 2.165963557774033E215

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    const/4 v4, 0x0

    .line 249
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_c
    return v10

    .line 253
    :cond_d
    const/4 v5, -0x1

    .line 254
    const/4 v15, 0x1

    .line 255
    const-string v3, "android.permission.ACTIVITY_EMBEDDING"

    .line 256
    .line 257
    const/4 v4, 0x0

    .line 258
    move/from16 v1, p1

    .line 259
    .line 260
    move/from16 v2, p2

    .line 261
    .line 262
    move-object v7, v6

    .line 263
    move v6, v15

    .line 264
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-ne v1, v11, :cond_f

    .line 269
    .line 270
    if-nez v16, :cond_f

    .line 271
    .line 272
    aget-boolean v0, v9, v10

    .line 273
    .line 274
    if-eqz v0, :cond_e

    .line 275
    .line 276
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 277
    .line 278
    const/4 v5, 0x0

    .line 279
    const/4 v6, 0x0

    .line 280
    const-wide v2, -0x1ec061dd9080c832L    # -2.778229783558705E160

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    const/4 v4, 0x0

    .line 286
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_e
    return v10

    .line 290
    :cond_f
    :goto_3
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-nez v1, :cond_12

    .line 295
    .line 296
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 305
    .line 306
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 307
    .line 308
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(II)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    aget-boolean v3, v9, v10

    .line 313
    .line 314
    if-eqz v3, :cond_11

    .line 315
    .line 316
    if-eqz v0, :cond_10

    .line 317
    .line 318
    const-string v3, "allow"

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_10
    const-string v3, "disallow"

    .line 322
    .line 323
    :goto_4
    int-to-long v4, v1

    .line 324
    int-to-long v1, v2

    .line 325
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 326
    .line 327
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    filled-new-array {v3, v4, v1}, [Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    const-wide v7, 0xdb0fc2af2333033L

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    const/16 v9, 0x14

    .line 345
    .line 346
    const/4 v10, 0x0

    .line 347
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    :cond_11
    return v0

    .line 351
    :cond_12
    invoke-virtual {v7}, Landroid/view/Display;->getOwnerUid()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-ne v0, v8, :cond_14

    .line 356
    .line 357
    aget-boolean v0, v9, v10

    .line 358
    .line 359
    if-eqz v0, :cond_13

    .line 360
    .line 361
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 362
    .line 363
    const/4 v5, 0x0

    .line 364
    const/4 v6, 0x0

    .line 365
    const-wide v2, -0x1e8d024db84eca11L    # -2.669964969213711E161

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    const/4 v4, 0x0

    .line 371
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :cond_13
    return v12

    .line 375
    :cond_14
    if-eqz v16, :cond_16

    .line 376
    .line 377
    aget-boolean v0, v9, v10

    .line 378
    .line 379
    if-eqz v0, :cond_15

    .line 380
    .line 381
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 382
    .line 383
    const/4 v5, 0x0

    .line 384
    const/4 v6, 0x0

    .line 385
    const-wide v2, -0x3b187295d6d8c699L    # -8.897845576717156E23

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    const/4 v4, 0x0

    .line 391
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    :cond_15
    return v12

    .line 395
    :cond_16
    const-string v0, "Launch on display check: denied"

    .line 396
    .line 397
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    const-string v1, "Launch on display that does not exist, d="

    .line 403
    .line 404
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string v2, ", isRemoved="

    .line 413
    .line 414
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-boolean v2, v13, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 418
    .line 419
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    const-string v1, "WindowManager"

    .line 434
    .line 435
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    return v10

    .line 439
    :cond_17
    :goto_5
    const-string v0, "Launch on display check: display not found"

    .line 440
    .line 441
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    return v10
.end method

.method public final killTaskProcessesIfPossible(Lcom/android/server/wm/Task;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v0

    .line 18
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-ge v4, v5, :cond_a

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Landroid/util/SparseArray;

    .line 29
    .line 30
    move v6, v0

    .line 31
    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-ge v6, v7, :cond_9

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Lcom/android/server/wm/WindowProcessController;

    .line 42
    .line 43
    iget v8, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 44
    .line 45
    iget v9, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 46
    .line 47
    if-eq v8, v9, :cond_0

    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 54
    .line 55
    if-ne v7, v8, :cond_1

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_1
    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-nez v8, :cond_2

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_2
    move v8, v0

    .line 66
    :goto_2
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-ge v8, v9, :cond_5

    .line 73
    .line 74
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 81
    .line 82
    iget-boolean v10, v9, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 83
    .line 84
    if-nez v10, :cond_3

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 88
    .line 89
    iget v10, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 90
    .line 91
    iget v11, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 92
    .line 93
    if-eq v10, v11, :cond_4

    .line 94
    .line 95
    iget-boolean v9, v9, Lcom/android/server/wm/Task;->inRecents:Z

    .line 96
    .line 97
    if-eqz v9, :cond_4

    .line 98
    .line 99
    :goto_3
    return-void

    .line 100
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    iget-boolean v8, v7, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    .line 104
    .line 105
    if-eqz v8, :cond_6

    .line 106
    .line 107
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 108
    .line 109
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 110
    .line 111
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 112
    .line 113
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 114
    .line 115
    iget v10, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 116
    .line 117
    invoke-virtual {v8, v9, v10}, Landroid/app/ActivityManagerInternal;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-nez v8, :cond_6

    .line 122
    .line 123
    return-void

    .line 124
    :cond_6
    iget-object v8, p1, Lcom/android/server/wm/Task;->mReason:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v8, :cond_7

    .line 127
    .line 128
    const-string v9, "MultiTaskingAppCompat"

    .line 129
    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_7

    .line 135
    .line 136
    iput-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_7
    const-string v8, "kill"

    .line 140
    .line 141
    iput-object v8, v7, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    .line 142
    .line 143
    :goto_4
    if-nez v3, :cond_8

    .line 144
    .line 145
    new-instance v3, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    :cond_8
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_a
    if-nez v3, :cond_b

    .line 161
    .line 162
    return-void

    .line 163
    :cond_b
    new-instance p1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;

    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    invoke-direct {p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;-><init>(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 172
    .line 173
    invoke-static {p1, v0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public final onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V
    .locals 0

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 4
    .line 5
    if-lez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->computeProcessActivityState()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public final onUserUnlocked(I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, v2, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto/16 :goto_d

    .line 24
    .line 25
    :cond_0
    :goto_0
    monitor-exit v2

    .line 26
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v4, v2, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    .line 37
    .line 38
    invoke-interface {v4, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/io/File;

    .line 43
    .line 44
    new-instance v5, Ljava/io/File;

    .line 45
    .line 46
    const-string v6, "launch_params"

    .line 47
    .line 48
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const-string v6, "LaunchParamsPersister"

    .line 56
    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    const-string v2, "Didn\'t find launch param folder for user "

    .line 60
    .line 61
    invoke-static {v0, v2, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_c

    .line 65
    .line 66
    :cond_1
    new-instance v4, Landroid/util/ArraySet;

    .line 67
    .line 68
    iget-object v7, v2, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    .line 69
    .line 70
    iget-object v7, v7, Lcom/android/server/pm/PackageList;->mPackageNames:Ljava/util/List;

    .line 71
    .line 72
    invoke-direct {v4, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    new-instance v8, Landroid/util/ArrayMap;

    .line 80
    .line 81
    array-length v9, v7

    .line 82
    invoke-direct {v8, v9}, Landroid/util/ArrayMap;-><init>(I)V

    .line 83
    .line 84
    .line 85
    iget-object v9, v2, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v9, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    array-length v9, v7

    .line 91
    const/4 v11, 0x0

    .line 92
    :goto_1
    if-ge v11, v9, :cond_c

    .line 93
    .line 94
    aget-object v12, v7, v11

    .line 95
    .line 96
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-nez v13, :cond_2

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v12, " is not a file."

    .line 115
    .line 116
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :goto_2
    move-object/from16 v16, v4

    .line 127
    .line 128
    move-object/from16 v17, v5

    .line 129
    .line 130
    goto/16 :goto_b

    .line 131
    .line 132
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    const-string v14, ".xml"

    .line 137
    .line 138
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    if-nez v13, :cond_3

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v13, "Unexpected params file name: "

    .line 147
    .line 148
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    const/16 v14, 0x5f

    .line 174
    .line 175
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    .line 176
    .line 177
    .line 178
    move-result v15

    .line 179
    const/16 v0, 0x2d

    .line 180
    .line 181
    const/4 v10, -0x1

    .line 182
    if-eq v15, v10, :cond_6

    .line 183
    .line 184
    add-int/lit8 v15, v15, 0x1

    .line 185
    .line 186
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(II)I

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-eq v15, v10, :cond_4

    .line 191
    .line 192
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_4
    invoke-virtual {v13, v14, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    new-instance v10, Ljava/io/File;

    .line 201
    .line 202
    invoke-direct {v10, v5, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v12, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-eqz v14, :cond_5

    .line 210
    .line 211
    move-object v12, v10

    .line 212
    goto :goto_3

    .line 213
    :cond_5
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_6
    :goto_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    add-int/lit8 v10, v10, -0x4

    .line 222
    .line 223
    const/4 v14, 0x0

    .line 224
    invoke-virtual {v13, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    const/16 v15, 0x2f

    .line 229
    .line 230
    invoke-virtual {v10, v0, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    if-nez v10, :cond_7

    .line 239
    .line 240
    const-string v0, "Unexpected file name: "

    .line 241
    .line 242
    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_7
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-nez v0, :cond_8

    .line 262
    .line 263
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto/16 :goto_2

    .line 267
    .line 268
    :cond_8
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    .line 269
    .line 270
    invoke-direct {v13, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    .line 272
    .line 273
    :try_start_2
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 274
    .line 275
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-static {v13}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 279
    .line 280
    .line 281
    move-result-object v15

    .line 282
    :goto_4
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 283
    .line 284
    .line 285
    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 286
    move-object/from16 v16, v4

    .line 287
    .line 288
    const/4 v4, 0x1

    .line 289
    if-eq v14, v4, :cond_b

    .line 290
    .line 291
    const/4 v4, 0x3

    .line 292
    if-eq v14, v4, :cond_b

    .line 293
    .line 294
    const/4 v4, 0x2

    .line 295
    if-eq v14, v4, :cond_9

    .line 296
    .line 297
    move-object/from16 v4, v16

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_9
    :try_start_3
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    const-string v14, "launch_params"

    .line 305
    .line 306
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-nez v14, :cond_a

    .line 311
    .line 312
    new-instance v14, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 315
    .line 316
    .line 317
    move-object/from16 v17, v5

    .line 318
    .line 319
    :try_start_4
    const-string v5, "Unexpected tag name: "

    .line 320
    .line 321
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    :goto_5
    move-object/from16 v4, v16

    .line 335
    .line 336
    move-object/from16 v5, v17

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :catchall_1
    move-exception v0

    .line 340
    :goto_6
    move-object v4, v0

    .line 341
    goto :goto_8

    .line 342
    :catchall_2
    move-exception v0

    .line 343
    :goto_7
    move-object/from16 v17, v5

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_a
    move-object/from16 v17, v5

    .line 347
    .line 348
    invoke-virtual {v0, v12, v15}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restore(Ljava/io/File;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 349
    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_b
    move-object/from16 v17, v5

    .line 353
    .line 354
    invoke-virtual {v8, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v2, v10, v0}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 360
    .line 361
    .line 362
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 363
    .line 364
    .line 365
    goto :goto_b

    .line 366
    :catch_0
    move-exception v0

    .line 367
    goto :goto_a

    .line 368
    :catchall_3
    move-exception v0

    .line 369
    move-object/from16 v16, v4

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :goto_8
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 373
    .line 374
    .line 375
    goto :goto_9

    .line 376
    :catchall_4
    move-exception v0

    .line 377
    move-object v5, v0

    .line 378
    :try_start_7
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 379
    .line 380
    .line 381
    :goto_9
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    move-object/from16 v16, v4

    .line 384
    .line 385
    move-object/from16 v17, v5

    .line 386
    .line 387
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string v5, "Failed to restore launch params for "

    .line 390
    .line 391
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-static {v6, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    :goto_b
    add-int/lit8 v11, v11, 0x1

    .line 408
    .line 409
    move-object/from16 v4, v16

    .line 410
    .line 411
    move-object/from16 v5, v17

    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-nez v0, :cond_d

    .line 420
    .line 421
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    .line 422
    .line 423
    invoke-direct {v0, v3}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Ljava/util/List;)V

    .line 424
    .line 425
    .line 426
    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 427
    .line 428
    const/4 v3, 0x1

    .line 429
    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 430
    .line 431
    .line 432
    :cond_d
    :goto_c
    const-string/jumbo v0, "userUnlocked"

    .line 433
    .line 434
    .line 435
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 436
    .line 437
    const/16 v2, 0xd8

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    if-nez v3, :cond_e

    .line 444
    .line 445
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 450
    .line 451
    .line 452
    :cond_e
    return-void

    .line 453
    :goto_d
    monitor-exit v2

    .line 454
    throw v0
.end method

.method public final processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    move v5, v3

    .line 10
    move v6, v5

    .line 11
    :goto_0
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    if-ge v5, v7, :cond_b

    .line 18
    .line 19
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v9, 0x1

    .line 32
    if-eqz v8, :cond_0

    .line 33
    .line 34
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 35
    .line 36
    if-eqz v8, :cond_0

    .line 37
    .line 38
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-nez v8, :cond_0

    .line 43
    .line 44
    move v8, v9

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    move v8, v3

    .line 47
    :goto_1
    iget-object v10, v7, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 48
    .line 49
    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    sub-int/2addr v10, v9

    .line 56
    :goto_2
    if-ltz v10, :cond_3

    .line 57
    .line 58
    iget-object v11, v7, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 59
    .line 60
    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    check-cast v11, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 67
    .line 68
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v12

    .line 75
    iget-wide v14, v11, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mAcquireTime:J

    .line 76
    .line 77
    sub-long/2addr v12, v14

    .line 78
    const-wide/16 v14, 0x3e8

    .line 79
    .line 80
    cmp-long v12, v12, v14

    .line 81
    .line 82
    if-lez v12, :cond_1

    .line 83
    .line 84
    move v11, v3

    .line 85
    goto :goto_3

    .line 86
    :cond_1
    iget-boolean v11, v11, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mIsSwappingDisplay:Z

    .line 87
    .line 88
    :goto_3
    if-eqz v11, :cond_2

    .line 89
    .line 90
    move v10, v9

    .line 91
    goto :goto_4

    .line 92
    :cond_2
    add-int/lit8 v10, v10, -0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move v10, v3

    .line 96
    :goto_4
    or-int/2addr v6, v10

    .line 97
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 98
    .line 99
    aget-boolean v11, v10, v9

    .line 100
    .line 101
    if-eqz v11, :cond_4

    .line 102
    .line 103
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    iget-boolean v12, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 108
    .line 109
    iget-boolean v13, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 110
    .line 111
    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 116
    .line 117
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    filled-new-array {v11, v12, v15, v13}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v19

    .line 129
    const/16 v17, 0x3c

    .line 130
    .line 131
    const/16 v18, 0x0

    .line 132
    .line 133
    const-wide v15, 0x14c4c3c8730b3c8bL

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    if-nez v8, :cond_5

    .line 142
    .line 143
    if-eqz v6, :cond_7

    .line 144
    .line 145
    :cond_5
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 146
    .line 147
    iget-boolean v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 148
    .line 149
    if-nez v8, :cond_7

    .line 150
    .line 151
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    iget v8, v8, Lcom/android/server/wm/TaskFragment;->mForceHiddenFlags:I

    .line 156
    .line 157
    and-int/2addr v8, v9

    .line 158
    if-eqz v8, :cond_6

    .line 159
    .line 160
    move v8, v9

    .line 161
    goto :goto_5

    .line 162
    :cond_6
    move v8, v3

    .line 163
    :goto_5
    if-nez v8, :cond_7

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_7
    if-nez p2, :cond_8

    .line 167
    .line 168
    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 169
    .line 170
    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_8

    .line 175
    .line 176
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 177
    .line 178
    const/16 v8, 0xc8

    .line 179
    .line 180
    invoke-virtual {v7, v8, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 184
    .line 185
    invoke-virtual {v7, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    sget v10, Lcom/android/server/wm/ActivityTaskSupervisor;->IDLE_TIMEOUT:I

    .line 190
    .line 191
    int-to-long v10, v10

    .line 192
    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_8
    aget-boolean v8, v10, v9

    .line 197
    .line 198
    if-eqz v8, :cond_9

    .line 199
    .line 200
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 205
    .line 206
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    const-wide v11, 0x4ec93347c90239eaL    # 3.478523516253573E71

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    const/4 v13, 0x0

    .line 216
    const/4 v14, 0x0

    .line 217
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_9
    if-nez v4, :cond_a

    .line 221
    .line 222
    new-instance v4, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .line 226
    .line 227
    :cond_a
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    add-int/lit8 v5, v5, -0x1

    .line 236
    .line 237
    :goto_6
    add-int/2addr v5, v9

    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_b
    if-eqz v6, :cond_c

    .line 241
    .line 242
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 243
    .line 244
    new-instance v5, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;

    .line 245
    .line 246
    const/4 v6, 0x1

    .line 247
    invoke-direct {v5, v0, v6}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    .line 248
    .line 249
    .line 250
    const-wide/16 v6, 0xc8

    .line 251
    .line 252
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    .line 254
    .line 255
    :cond_c
    if-nez v4, :cond_d

    .line 256
    .line 257
    move v1, v3

    .line 258
    goto :goto_7

    .line 259
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    :goto_7
    move v5, v3

    .line 264
    :goto_8
    if-ge v5, v1, :cond_10

    .line 265
    .line 266
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 271
    .line 272
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 273
    .line 274
    if-eqz v7, :cond_f

    .line 275
    .line 276
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 277
    .line 278
    if-eqz v7, :cond_e

    .line 279
    .line 280
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_e
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->stopIfPossible()V

    .line 285
    .line 286
    .line 287
    :cond_f
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_10
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_11

    .line 297
    .line 298
    return-void

    .line 299
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    .line 300
    .line 301
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    .line 310
    .line 311
    :goto_a
    if-ge v3, v1, :cond_13

    .line 312
    .line 313
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 318
    .line 319
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 320
    .line 321
    if-eqz v5, :cond_12

    .line 322
    .line 323
    const-string v5, "finish-"

    .line 324
    .line 325
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    :cond_12
    add-int/lit8 v3, v3, 0x1

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_13
    return-void
.end method

.method public final realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    .locals 46

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v4, "2nd-crash"

    .line 8
    .line 9
    const-string v5, "Second failure launching "

    .line 10
    .line 11
    const-string v0, "Starting new heavy weight process "

    .line 12
    .line 13
    const-string v6, "User ID for activity changing for "

    .line 14
    .line 15
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 16
    .line 17
    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    const/4 v10, 0x0

    .line 25
    if-nez v7, :cond_1

    .line 26
    .line 27
    aget-boolean v0, v8, v9

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 36
    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-wide v2, 0x38d3d6530fd93b5bL    # 5.96954171505427E-35

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return v10

    .line 52
    :cond_1
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-nez v11, :cond_6

    .line 59
    .line 60
    :cond_2
    iget-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 61
    .line 62
    if-nez v11, :cond_4

    .line 63
    .line 64
    sget-boolean v11, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 65
    .line 66
    if-eqz v11, :cond_3

    .line 67
    .line 68
    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v11, 0x0

    .line 72
    :goto_0
    iput-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 73
    .line 74
    :cond_4
    iget-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 75
    .line 76
    if-eqz v11, :cond_6

    .line 77
    .line 78
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 79
    .line 80
    if-eqz v12, :cond_5

    .line 81
    .line 82
    const-string v11, "com.samsung.speg"

    .line 83
    .line 84
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-nez v11, :cond_6

    .line 91
    .line 92
    iget-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 93
    .line 94
    iget v12, v3, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 95
    .line 96
    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    iget v12, v3, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 101
    .line 102
    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_1
    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 106
    .line 107
    if-eqz p3, :cond_8

    .line 108
    .line 109
    const-string/jumbo v12, "realStart"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11, v2, v12}, Lcom/android/server/wm/Task;->pauseActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-eqz v13, :cond_7

    .line 117
    .line 118
    return v10

    .line 119
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    if-eqz v13, :cond_8

    .line 124
    .line 125
    iget-object v14, v13, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 126
    .line 127
    if-eqz v14, :cond_8

    .line 128
    .line 129
    iget-boolean v14, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 130
    .line 131
    invoke-virtual {v13, v2, v12, v14, v10}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    if-eqz v12, :cond_8

    .line 136
    .line 137
    return v10

    .line 138
    :cond_8
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 143
    .line 144
    .line 145
    iget v13, v3, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 146
    .line 147
    add-int/2addr v13, v9

    .line 148
    iput v13, v3, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 149
    .line 150
    :try_start_0
    sget-boolean v13, Landroid/os/Build;->IS_USER:Z

    .line 151
    .line 152
    const-wide/16 v14, 0x0

    .line 153
    .line 154
    if-eqz v13, :cond_9

    .line 155
    .line 156
    move-object v13, v8

    .line 157
    goto :goto_2

    .line 158
    :cond_9
    move-object v13, v8

    .line 159
    iget-wide v7, v2, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 160
    .line 161
    cmp-long v7, v7, v14

    .line 162
    .line 163
    if-nez v7, :cond_a

    .line 164
    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    iput-wide v7, v2, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTicking()Z

    .line 172
    .line 173
    .line 174
    :cond_a
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 175
    .line 176
    .line 177
    move-result-wide v7

    .line 178
    iput-wide v7, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 179
    .line 180
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 181
    .line 182
    .line 183
    iget-object v7, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 184
    .line 185
    iput-object v7, v2, Lcom/android/server/wm/ActivityRecord;->mProcessAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 186
    .line 187
    if-eqz p3, :cond_b

    .line 188
    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-nez v7, :cond_b

    .line 194
    .line 195
    move v7, v10

    .line 196
    goto :goto_3

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    move-object v4, v1

    .line 199
    move-object v7, v3

    .line 200
    goto/16 :goto_1a

    .line 201
    .line 202
    :cond_b
    move/from16 v7, p3

    .line 203
    .line 204
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    .line 205
    .line 206
    .line 207
    if-eqz p4, :cond_c

    .line 208
    .line 209
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 210
    .line 211
    iget-object v10, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 212
    .line 213
    invoke-virtual {v8, v2, v10, v9}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    .line 214
    .line 215
    .line 216
    :cond_c
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 217
    .line 218
    invoke-virtual {v8, v2}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-eqz v8, :cond_e

    .line 223
    .line 224
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 225
    .line 226
    if-eqz v8, :cond_d

    .line 227
    .line 228
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-nez v8, :cond_e

    .line 233
    .line 234
    :cond_d
    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 235
    .line 236
    .line 237
    :cond_e
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 238
    .line 239
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 240
    .line 241
    if-eqz v8, :cond_f

    .line 242
    .line 243
    iget v10, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_f
    const/4 v10, -0x1

    .line 247
    :goto_4
    iget v9, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 248
    .line 249
    iget v14, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .line 251
    const-string v15, "ActivityTaskManager"

    .line 252
    .line 253
    if-ne v9, v14, :cond_10

    .line 254
    .line 255
    :try_start_1
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 256
    .line 257
    if-eq v8, v10, :cond_11

    .line 258
    .line 259
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v6, " appInfo.uid="

    .line 268
    .line 269
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 273
    .line 274
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 275
    .line 276
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 277
    .line 278
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v6, " info.ai.uid="

    .line 282
    .line 283
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v6, " old="

    .line 290
    .line 291
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 295
    .line 296
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v6, " new="

    .line 300
    .line 301
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    invoke-static {v15, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    :cond_11
    iget-wide v8, v3, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    .line 315
    .line 316
    const-wide/16 v16, 0x0

    .line 317
    .line 318
    cmp-long v6, v8, v16

    .line 319
    .line 320
    if-lez v6, :cond_12

    .line 321
    .line 322
    const/4 v6, 0x1

    .line 323
    goto :goto_5

    .line 324
    :cond_12
    const/4 v6, 0x0

    .line 325
    :goto_5
    if-eqz v6, :cond_13

    .line 326
    .line 327
    const/16 v34, 0x0

    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_13
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 331
    .line 332
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 333
    .line 334
    move-object/from16 v34, v6

    .line 335
    .line 336
    :goto_6
    iget v6, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 337
    .line 338
    const/4 v8, 0x1

    .line 339
    add-int/2addr v6, v8

    .line 340
    iput v6, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 341
    .line 342
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 343
    .line 344
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 345
    .line 346
    iget v8, v11, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 347
    .line 348
    const/4 v9, 0x2

    .line 349
    if-eq v8, v9, :cond_14

    .line 350
    .line 351
    const/4 v10, 0x4

    .line 352
    if-eq v8, v10, :cond_14

    .line 353
    .line 354
    const/4 v10, 0x3

    .line 355
    if-ne v8, v10, :cond_15

    .line 356
    .line 357
    iget v8, v6, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 358
    .line 359
    const/4 v10, 0x1

    .line 360
    if-ne v8, v10, :cond_15

    .line 361
    .line 362
    :cond_14
    const/4 v8, 0x0

    .line 363
    invoke-virtual {v6, v8, v11, v8}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(ILcom/android/server/wm/Task;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    .line 365
    .line 366
    :cond_15
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    if-eqz v6, :cond_36

    .line 371
    .line 372
    if-eqz v7, :cond_16

    .line 373
    .line 374
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 375
    .line 376
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 377
    .line 378
    move-object/from16 v28, v6

    .line 379
    .line 380
    move-object/from16 v29, v8

    .line 381
    .line 382
    goto :goto_8

    .line 383
    :catch_0
    move-exception v0

    .line 384
    move-object v7, v3

    .line 385
    move-object/from16 v40, v4

    .line 386
    .line 387
    move-object/from16 v41, v5

    .line 388
    .line 389
    move-object v4, v1

    .line 390
    :goto_7
    move-object v1, v15

    .line 391
    goto/16 :goto_19

    .line 392
    .line 393
    :cond_16
    const/16 v28, 0x0

    .line 394
    .line 395
    const/16 v29, 0x0

    .line 396
    .line 397
    :goto_8
    iget v6, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 398
    .line 399
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    iget v10, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 404
    .line 405
    iget-object v14, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v10

    .line 419
    filled-new-array {v6, v8, v10, v14}, [Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    const/16 v8, 0x7536

    .line 424
    .line 425
    invoke-static {v8, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 426
    .line 427
    .line 428
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateHomeProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 429
    .line 430
    .line 431
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 432
    .line 433
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 438
    .line 439
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v8

    .line 447
    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 448
    .line 449
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 450
    .line 451
    const/4 v10, 0x0

    .line 452
    invoke-static {v6, v8, v10}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 453
    .line 454
    .line 455
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 456
    .line 457
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 458
    .line 459
    invoke-virtual {v6, v2}, Lcom/android/server/wm/AppWarnings;->onStartActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 460
    .line 461
    .line 462
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    if-eqz v6, :cond_17

    .line 467
    .line 468
    invoke-static {v6}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    .line 469
    .line 470
    .line 471
    move-result-object v6

    .line 472
    if-eqz v6, :cond_17

    .line 473
    .line 474
    iget-object v8, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 475
    .line 476
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 477
    .line 478
    iget v10, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 479
    .line 480
    invoke-interface {v6, v8, v10}, Lcom/samsung/android/game/IGameManagerService;->notifyAppCreated(Ljava/lang/String;I)V

    .line 481
    .line 482
    .line 483
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 484
    .line 485
    .line 486
    move-result-object v6

    .line 487
    iget-boolean v8, v3, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 488
    .line 489
    if-eqz v8, :cond_18

    .line 490
    .line 491
    const/4 v8, 0x0

    .line 492
    iput-boolean v8, v3, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 493
    .line 494
    iget-object v8, v3, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 495
    .line 496
    iget v10, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 497
    .line 498
    const/4 v14, 0x1

    .line 499
    add-int/2addr v10, v14

    .line 500
    iput v10, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 501
    .line 502
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    .line 503
    .line 504
    .line 505
    move-result v10

    .line 506
    iput v10, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 507
    .line 508
    iput v10, v6, Landroid/content/res/Configuration;->seq:I

    .line 509
    .line 510
    :cond_18
    const/4 v8, 0x0

    .line 511
    iput-boolean v8, v3, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    .line 512
    .line 513
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 518
    .line 519
    invoke-virtual {v10, v6, v8}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    .line 523
    .line 524
    .line 525
    move-result-object v10

    .line 526
    invoke-static {}, Lcom/android/window/flags/Flags;->activityWindowInfoFlag()Z

    .line 527
    .line 528
    .line 529
    move-result v14

    .line 530
    if-eqz v14, :cond_19

    .line 531
    .line 532
    iget-object v14, v2, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 533
    .line 534
    invoke-virtual {v14, v10}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 535
    .line 536
    .line 537
    :cond_19
    iget-object v14, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 538
    .line 539
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    .line 540
    .line 541
    invoke-static {v14, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    if-eqz v9, :cond_1a

    .line 549
    .line 550
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 551
    .line 552
    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 553
    .line 554
    invoke-virtual {v14, v9}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V

    .line 555
    .line 556
    .line 557
    :cond_1a
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 558
    .line 559
    if-eqz v9, :cond_1b

    .line 560
    .line 561
    iget-boolean v9, v9, Lcom/android/server/wm/StartingData;->mIsTransitionForward:Z

    .line 562
    .line 563
    if-nez v9, :cond_1c

    .line 564
    .line 565
    :cond_1b
    iget-object v9, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 566
    .line 567
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    .line 568
    .line 569
    .line 570
    move-result v9

    .line 571
    if-eqz v9, :cond_1d

    .line 572
    .line 573
    :cond_1c
    const/4 v9, 0x1

    .line 574
    goto :goto_9

    .line 575
    :cond_1d
    const/4 v9, 0x0

    .line 576
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 577
    .line 578
    .line 579
    move-result-object v14

    .line 580
    iget-object v14, v14, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 581
    .line 582
    move-object/from16 v40, v4

    .line 583
    .line 584
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getDeviceIdForDisplayId(I)I

    .line 589
    .line 590
    .line 591
    move-result v22

    .line 592
    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 593
    .line 594
    move-object/from16 v41, v5

    .line 595
    .line 596
    :try_start_4
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 597
    .line 598
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 599
    .line 600
    .line 601
    move-result v18

    .line 602
    move-object/from16 v42, v12

    .line 603
    .line 604
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 605
    .line 606
    move-object/from16 v43, v13

    .line 607
    .line 608
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 609
    .line 610
    invoke-virtual {v2, v13}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v23

    .line 614
    iget-object v11, v11, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 615
    .line 616
    iget v13, v3, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 617
    .line 618
    move-object/from16 p4, v15

    .line 619
    .line 620
    :try_start_5
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    .line 621
    .line 622
    move-object/from16 v44, v0

    .line 623
    .line 624
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 625
    .line 626
    :try_start_6
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 627
    .line 628
    if-nez v3, :cond_1e

    .line 629
    .line 630
    const/4 v1, 0x0

    .line 631
    const/16 v30, 0x0

    .line 632
    .line 633
    goto :goto_a

    .line 634
    :cond_1e
    const/4 v1, 0x0

    .line 635
    :try_start_7
    iput-object v1, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 636
    .line 637
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    move-object/from16 v30, v3

    .line 642
    .line 643
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;

    .line 644
    .line 645
    .line 646
    move-result-object v32

    .line 647
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 648
    .line 649
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 650
    .line 651
    move/from16 v45, v7

    .line 652
    .line 653
    iget-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    .line 654
    .line 655
    move-object/from16 v39, v10

    .line 656
    .line 657
    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 658
    .line 659
    move-object/from16 v16, v4

    .line 660
    .line 661
    move-object/from16 v17, v5

    .line 662
    .line 663
    move-object/from16 v19, v12

    .line 664
    .line 665
    move-object/from16 v20, v6

    .line 666
    .line 667
    move-object/from16 v21, v8

    .line 668
    .line 669
    move-object/from16 v24, v11

    .line 670
    .line 671
    move/from16 v25, v13

    .line 672
    .line 673
    move-object/from16 v26, v15

    .line 674
    .line 675
    move-object/from16 v27, v0

    .line 676
    .line 677
    move/from16 v31, v9

    .line 678
    .line 679
    move-object/from16 v33, v3

    .line 680
    .line 681
    move-object/from16 v35, v1

    .line 682
    .line 683
    move/from16 v36, v7

    .line 684
    .line 685
    move-object/from16 v37, v14

    .line 686
    .line 687
    move-object/from16 v38, v10

    .line 688
    .line 689
    invoke-static/range {v16 .. v39}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)Landroid/app/servertransaction/LaunchActivityItem;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    if-eqz v45, :cond_1f

    .line 694
    .line 695
    iget-object v1, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 696
    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->shouldSendCompatFakeFocus()Z

    .line 698
    .line 699
    .line 700
    move-result v3

    .line 701
    invoke-static {v1, v9, v3}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Landroid/os/IBinder;ZZ)Landroid/app/servertransaction/ResumeActivityItem;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    goto :goto_e

    .line 706
    :catchall_1
    move-exception v0

    .line 707
    move-object/from16 v4, p0

    .line 708
    .line 709
    :goto_b
    move-object/from16 v7, p2

    .line 710
    .line 711
    goto/16 :goto_1a

    .line 712
    .line 713
    :catch_1
    move-exception v0

    .line 714
    move-object/from16 v4, p0

    .line 715
    .line 716
    :goto_c
    move-object/from16 v7, p2

    .line 717
    .line 718
    :goto_d
    move-object/from16 v1, p4

    .line 719
    .line 720
    goto/16 :goto_19

    .line 721
    .line 722
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    if-eqz v1, :cond_20

    .line 727
    .line 728
    iget-object v1, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 729
    .line 730
    invoke-static {v1}, Landroid/app/servertransaction/PauseActivityItem;->obtain(Landroid/os/IBinder;)Landroid/app/servertransaction/PauseActivityItem;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    goto :goto_e

    .line 735
    :cond_20
    iget-object v1, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 736
    .line 737
    invoke-static {v1}, Landroid/app/servertransaction/StopActivityItem;->obtain(Landroid/os/IBinder;)Landroid/app/servertransaction/StopActivityItem;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    :goto_e
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 742
    .line 743
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 744
    .line 745
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 746
    .line 747
    .line 748
    move-result v4

    .line 749
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 750
    .line 751
    .line 752
    move-result-object v4

    .line 753
    const-wide/32 v7, 0x1352f516

    .line 754
    .line 755
    .line 756
    invoke-static {v7, v8, v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 757
    .line 758
    .line 759
    move-result v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 760
    const/4 v4, 0x1

    .line 761
    xor-int/2addr v3, v4

    .line 762
    if-eqz v3, :cond_21

    .line 763
    .line 764
    const/4 v3, 0x0

    .line 765
    move-object/from16 v4, p0

    .line 766
    .line 767
    :try_start_8
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 768
    .line 769
    :try_start_9
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 770
    .line 771
    move-object/from16 v7, p2

    .line 772
    .line 773
    :try_start_a
    iget-object v8, v7, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 774
    .line 775
    invoke-virtual {v5, v8}, Lcom/android/server/wm/ClientLifecycleManager;->dispatchPendingTransaction(Landroid/app/IApplicationThread;)V

    .line 776
    .line 777
    .line 778
    goto :goto_f

    .line 779
    :catchall_2
    move-exception v0

    .line 780
    goto/16 :goto_1a

    .line 781
    .line 782
    :catch_2
    move-exception v0

    .line 783
    goto :goto_d

    .line 784
    :catch_3
    move-exception v0

    .line 785
    goto :goto_c

    .line 786
    :catchall_3
    move-exception v0

    .line 787
    goto :goto_b

    .line 788
    :catch_4
    move-exception v0

    .line 789
    goto :goto_c

    .line 790
    :cond_21
    move-object/from16 v4, p0

    .line 791
    .line 792
    move-object/from16 v7, p2

    .line 793
    .line 794
    const/4 v3, 0x0

    .line 795
    :goto_f
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 796
    .line 797
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 798
    .line 799
    iget-object v8, v7, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 800
    .line 801
    const/4 v9, 0x1

    .line 802
    invoke-virtual {v5, v8, v0, v1, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionAndLifecycleItems(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;Landroid/app/servertransaction/ActivityLifecycleItem;Z)V

    .line 803
    .line 804
    .line 805
    iget v0, v6, Landroid/content/res/Configuration;->seq:I

    .line 806
    .line 807
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 808
    .line 809
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    iget v1, v1, Landroid/content/res/Configuration;->seq:I

    .line 814
    .line 815
    if-le v0, v1, :cond_22

    .line 816
    .line 817
    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    .line 818
    .line 819
    .line 820
    :cond_22
    iget-object v0, v7, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 821
    .line 822
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 823
    .line 824
    const/4 v5, 0x2

    .line 825
    and-int/2addr v1, v5

    .line 826
    if-eqz v1, :cond_24

    .line 827
    .line 828
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 829
    .line 830
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 831
    .line 832
    if-eqz v1, :cond_24

    .line 833
    .line 834
    iget-object v1, v7, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 835
    .line 836
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 837
    .line 838
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    move-result v0

    .line 842
    if-eqz v0, :cond_24

    .line 843
    .line 844
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 845
    .line 846
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 847
    .line 848
    if-eqz v0, :cond_23

    .line 849
    .line 850
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 851
    .line 852
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 853
    .line 854
    if-eq v0, v7, :cond_23

    .line 855
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    .line 857
    .line 858
    move-object/from16 v1, v44

    .line 859
    .line 860
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    const-string v1, " when already running "

    .line 867
    .line 868
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 872
    .line 873
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 874
    .line 875
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 882
    move-object/from16 v1, p4

    .line 883
    .line 884
    :try_start_b
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .line 886
    .line 887
    goto :goto_10

    .line 888
    :catch_5
    move-exception v0

    .line 889
    goto/16 :goto_19

    .line 890
    .line 891
    :cond_23
    move-object/from16 v1, p4

    .line 892
    .line 893
    :goto_10
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 894
    .line 895
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 896
    .line 897
    .line 898
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 899
    .line 900
    .line 901
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 902
    .line 903
    .line 904
    const/4 v1, 0x0

    .line 905
    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 906
    .line 907
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V

    .line 908
    .line 909
    .line 910
    const-string/jumbo v0, "realStartActivityLocked"

    .line 911
    .line 912
    .line 913
    if-eqz v45, :cond_25

    .line 914
    .line 915
    iget v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 916
    .line 917
    if-nez v1, :cond_25

    .line 918
    .line 919
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 920
    .line 921
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 922
    .line 923
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 924
    .line 925
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPackageList()Ljava/util/List;

    .line 926
    .line 927
    .line 928
    move-result-object v9

    .line 929
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 930
    .line 931
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 932
    .line 933
    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 934
    .line 935
    const/4 v1, 0x0

    .line 936
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 937
    .line 938
    .line 939
    move-result v12

    .line 940
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 941
    .line 942
    iget v14, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 943
    .line 944
    invoke-virtual/range {v8 .. v14}, Landroid/app/ActivityManagerInternal;->onPackageResumedFG(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V

    .line 945
    .line 946
    .line 947
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 948
    .line 949
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 953
    .line 954
    .line 955
    goto :goto_12

    .line 956
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 957
    .line 958
    .line 959
    move-result v1

    .line 960
    if-eqz v1, :cond_27

    .line 961
    .line 962
    const/4 v1, 0x1

    .line 963
    aget-boolean v5, v43, v1

    .line 964
    .line 965
    if-eqz v5, :cond_26

    .line 966
    .line 967
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 972
    .line 973
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v13

    .line 977
    const-wide v9, 0xe834a71c5e731d2L    # 9.257711714113014E-239

    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    const/4 v11, 0x0

    .line 983
    const/4 v12, 0x0

    .line 984
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 985
    .line 986
    .line 987
    :cond_26
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 988
    .line 989
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 993
    .line 994
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 995
    .line 996
    .line 997
    move-result v1

    .line 998
    const/4 v5, 0x1

    .line 999
    sub-int/2addr v1, v5

    .line 1000
    :goto_11
    if-ltz v1, :cond_28

    .line 1001
    .line 1002
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v5

    .line 1006
    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 1007
    .line 1008
    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1009
    .line 1010
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1011
    .line 1012
    .line 1013
    add-int/lit8 v1, v1, -0x1

    .line 1014
    .line 1015
    goto :goto_11

    .line 1016
    :cond_27
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 1017
    .line 1018
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    :cond_28
    :goto_12
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1022
    .line 1023
    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 1024
    .line 1025
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1026
    .line 1027
    iget v5, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1028
    .line 1029
    const/4 v6, 0x1

    .line 1030
    and-int/2addr v5, v6

    .line 1031
    if-eqz v5, :cond_2a

    .line 1032
    .line 1033
    const-string v5, "android"

    .line 1034
    .line 1035
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1036
    .line 1037
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v5

    .line 1041
    if-nez v5, :cond_29

    .line 1042
    .line 1043
    goto :goto_14

    .line 1044
    :cond_29
    move-object v12, v3

    .line 1045
    :goto_13
    const/4 v5, 0x2

    .line 1046
    goto :goto_15

    .line 1047
    :cond_2a
    :goto_14
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1048
    .line 1049
    move-object v12, v5

    .line 1050
    goto :goto_13

    .line 1051
    :goto_15
    if-ne v0, v5, :cond_2b

    .line 1052
    .line 1053
    iget-object v5, v7, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1054
    .line 1055
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1056
    .line 1057
    iget v6, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 1058
    .line 1059
    iget v8, v7, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 1060
    .line 1061
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 1062
    .line 1063
    invoke-virtual {v5, v6, v8, v9}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    .line 1064
    .line 1065
    .line 1066
    :cond_2b
    iget-object v5, v7, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 1067
    .line 1068
    const/4 v6, 0x1

    .line 1069
    iput-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    .line 1070
    .line 1071
    iget-object v5, v7, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1072
    .line 1073
    iget-object v6, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1074
    .line 1075
    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 1076
    .line 1077
    .line 1078
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1079
    .line 1080
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    .line 1081
    .line 1082
    .line 1083
    new-instance v8, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda10;

    .line 1084
    .line 1085
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 1086
    .line 1087
    .line 1088
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 1089
    .line 1090
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v10

    .line 1094
    iget-object v0, v7, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1095
    .line 1096
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 1097
    .line 1098
    if-eqz v5, :cond_2d

    .line 1099
    .line 1100
    iget-object v6, v7, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 1101
    .line 1102
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v5

    .line 1106
    if-eqz v5, :cond_2d

    .line 1107
    .line 1108
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 1109
    .line 1110
    if-eqz v0, :cond_2c

    .line 1111
    .line 1112
    if-ne v0, v7, :cond_2d

    .line 1113
    .line 1114
    :cond_2c
    const/4 v0, 0x1

    .line 1115
    goto :goto_16

    .line 1116
    :cond_2d
    const/4 v0, 0x0

    .line 1117
    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v11

    .line 1121
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1122
    .line 1123
    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 1124
    .line 1125
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v13

    .line 1129
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v0

    .line 1133
    iget-object v1, v7, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1134
    .line 1135
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1136
    .line 1137
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1138
    .line 1139
    .line 1140
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 1141
    .line 1142
    if-eqz v0, :cond_2f

    .line 1143
    .line 1144
    if-nez v0, :cond_2e

    .line 1145
    .line 1146
    goto :goto_17

    .line 1147
    :cond_2e
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1148
    .line 1149
    iget v1, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 1150
    .line 1151
    iget-object v5, v7, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 1152
    .line 1153
    iget-object v0, v0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 1154
    .line 1155
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v0

    .line 1163
    if-eqz v0, :cond_2f

    .line 1164
    .line 1165
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;

    .line 1166
    .line 1167
    const/4 v1, 0x0

    .line 1168
    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1169
    .line 1170
    .line 1171
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1172
    .line 1173
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1174
    .line 1175
    iget v5, v7, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 1176
    .line 1177
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v5

    .line 1181
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    iget-object v1, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1186
    .line 1187
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1188
    .line 1189
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1190
    .line 1191
    .line 1192
    :cond_2f
    :goto_17
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1193
    .line 1194
    if-eqz v42, :cond_33

    .line 1195
    .line 1196
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v0

    .line 1200
    move-object/from16 v1, v42

    .line 1201
    .line 1202
    if-ne v1, v0, :cond_34

    .line 1203
    .line 1204
    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1205
    .line 1206
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 1207
    .line 1208
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 1209
    .line 1210
    if-eqz v1, :cond_30

    .line 1211
    .line 1212
    goto/16 :goto_18

    .line 1213
    .line 1214
    :cond_30
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1215
    .line 1216
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1217
    .line 1218
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v4

    .line 1222
    iget v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 1223
    .line 1224
    const/4 v6, 0x1

    .line 1225
    if-eq v5, v6, :cond_34

    .line 1226
    .line 1227
    const-string v5, "device_provisioned"

    .line 1228
    .line 1229
    const/4 v7, 0x0

    .line 1230
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1231
    .line 1232
    .line 1233
    move-result v5

    .line 1234
    if-eqz v5, :cond_34

    .line 1235
    .line 1236
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 1237
    .line 1238
    new-instance v5, Landroid/content/Intent;

    .line 1239
    .line 1240
    const-string v6, "android.intent.action.UPGRADE_SETUP"

    .line 1241
    .line 1242
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    .line 1244
    .line 1245
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1246
    .line 1247
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v1

    .line 1251
    const v6, 0x100480

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v1

    .line 1258
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v6

    .line 1262
    if-nez v6, :cond_34

    .line 1263
    .line 1264
    const/4 v6, 0x0

    .line 1265
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v1

    .line 1269
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1270
    .line 1271
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1272
    .line 1273
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1274
    .line 1275
    const-string v7, "android.SETUP_VERSION"

    .line 1276
    .line 1277
    if-eqz v6, :cond_31

    .line 1278
    .line 1279
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v3

    .line 1283
    :cond_31
    if-nez v3, :cond_32

    .line 1284
    .line 1285
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1286
    .line 1287
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1288
    .line 1289
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1290
    .line 1291
    if-eqz v6, :cond_32

    .line 1292
    .line 1293
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v3

    .line 1297
    :cond_32
    invoke-virtual {v4}, Landroid/content/ContentResolver;->getUserId()I

    .line 1298
    .line 1299
    .line 1300
    move-result v6

    .line 1301
    const-string v7, "last_setup_shown"

    .line 1302
    .line 1303
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v4

    .line 1307
    if-eqz v3, :cond_34

    .line 1308
    .line 1309
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v3

    .line 1313
    if-nez v3, :cond_34

    .line 1314
    .line 1315
    const/high16 v3, 0x10000000

    .line 1316
    .line 1317
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1318
    .line 1319
    .line 1320
    new-instance v3, Landroid/content/ComponentName;

    .line 1321
    .line 1322
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1323
    .line 1324
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1325
    .line 1326
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1327
    .line 1328
    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1332
    .line 1333
    .line 1334
    const-string/jumbo v3, "startSetupActivity"

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 1342
    .line 1343
    const/4 v4, 0x0

    .line 1344
    iput v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 1345
    .line 1346
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1347
    .line 1348
    iput-object v1, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1349
    .line 1350
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 1351
    .line 1352
    .line 1353
    goto :goto_18

    .line 1354
    :cond_33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1355
    .line 1356
    .line 1357
    :cond_34
    :goto_18
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1358
    .line 1359
    if-eqz v0, :cond_35

    .line 1360
    .line 1361
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1362
    .line 1363
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1364
    .line 1365
    new-instance v2, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;

    .line 1366
    .line 1367
    const/4 v3, 0x0

    .line 1368
    invoke-direct {v2, v3}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 1369
    .line 1370
    .line 1371
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 1372
    .line 1373
    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v0

    .line 1377
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1378
    .line 1379
    .line 1380
    :cond_35
    const/4 v1, 0x1

    .line 1381
    return v1

    .line 1382
    :catchall_4
    move-exception v0

    .line 1383
    move-object/from16 v7, p2

    .line 1384
    .line 1385
    move-object v4, v1

    .line 1386
    goto/16 :goto_1a

    .line 1387
    .line 1388
    :catch_6
    move-exception v0

    .line 1389
    move-object/from16 v7, p2

    .line 1390
    .line 1391
    move-object v4, v1

    .line 1392
    goto/16 :goto_d

    .line 1393
    .line 1394
    :catch_7
    move-exception v0

    .line 1395
    move-object v4, v1

    .line 1396
    move-object v7, v3

    .line 1397
    goto/16 :goto_d

    .line 1398
    .line 1399
    :catch_8
    move-exception v0

    .line 1400
    move-object v4, v1

    .line 1401
    move-object v7, v3

    .line 1402
    goto/16 :goto_7

    .line 1403
    .line 1404
    :catch_9
    move-exception v0

    .line 1405
    move-object v4, v1

    .line 1406
    move-object v7, v3

    .line 1407
    move-object/from16 v41, v5

    .line 1408
    .line 1409
    goto/16 :goto_7

    .line 1410
    .line 1411
    :cond_36
    move-object v7, v3

    .line 1412
    move-object/from16 v40, v4

    .line 1413
    .line 1414
    move-object/from16 v41, v5

    .line 1415
    .line 1416
    move-object v4, v1

    .line 1417
    move-object v1, v15

    .line 1418
    :try_start_c
    new-instance v0, Landroid/os/RemoteException;

    .line 1419
    .line 1420
    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 1421
    .line 1422
    .line 1423
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1424
    :goto_19
    :try_start_d
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1425
    .line 1426
    if-eqz v3, :cond_37

    .line 1427
    .line 1428
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    move-object/from16 v5, v41

    .line 1431
    .line 1432
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1433
    .line 1434
    .line 1435
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1436
    .line 1437
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v5

    .line 1441
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v5

    .line 1445
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    .line 1447
    .line 1448
    const-string v5, ", giving up"

    .line 1449
    .line 1450
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v3

    .line 1457
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1458
    .line 1459
    .line 1460
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;

    .line 1461
    .line 1462
    const/4 v1, 0x2

    .line 1463
    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1464
    .line 1465
    .line 1466
    iget-object v1, v7, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 1467
    .line 1468
    move-object/from16 v3, v40

    .line 1469
    .line 1470
    invoke-static {v0, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v0

    .line 1474
    iget-object v1, v7, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1475
    .line 1476
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1477
    .line 1478
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1479
    .line 1480
    .line 1481
    const/4 v1, 0x0

    .line 1482
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 1489
    .line 1490
    .line 1491
    return v1

    .line 1492
    :cond_37
    const/4 v1, 0x1

    .line 1493
    :try_start_e
    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1494
    .line 1495
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 1496
    .line 1497
    .line 1498
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1499
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 1503
    .line 1504
    .line 1505
    throw v0
.end method

.method public final removeRootTask(Lcom/android/server/wm/Task;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v3, v4, p1, v1}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, p1, v4}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0, v4, v2, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 52
    .line 53
    .line 54
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x5

    .line 64
    if-eq v5, v6, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    .line 77
    .line 78
    .line 79
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 80
    .line 81
    invoke-virtual {p1, v2, v4}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_2
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;

    .line 103
    .line 104
    const/4 v1, 0x2

    .line 105
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 109
    .line 110
    .line 111
    :goto_3
    return-void
.end method

.method public final removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZII)V

    return-void
.end method

.method public final removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZII)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    .line 2
    iget-boolean v3, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-eqz v3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    .line 5
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 6
    iget-boolean v5, v5, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    if-nez v5, :cond_2

    .line 7
    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 10
    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 11
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    :cond_2
    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_6

    .line 12
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    move-object v6, v3

    :goto_1
    if-ltz v5, :cond_5

    .line 13
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 14
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v8, :cond_4

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 15
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v8, v1, :cond_4

    if-nez v6, :cond_3

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    .line 19
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_2
    if-ltz v5, :cond_6

    .line 20
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->stopIfPossible()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 21
    :cond_6
    iput-boolean v4, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 22
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    if-eqz v5, :cond_7

    move/from16 v5, p5

    .line 23
    iput-boolean v5, v1, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    .line 24
    :cond_7
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x0

    if-eqz p2, :cond_b

    .line 25
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {p1, v4, v6}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 27
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v7, :cond_8

    .line 28
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_3
    move-object v8, v7

    goto :goto_4

    :cond_8
    if-eqz v8, :cond_9

    .line 29
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 30
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_9
    move-object v8, v3

    :goto_4
    if-eqz v8, :cond_a

    .line 31
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 32
    iget v9, v1, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 33
    invoke-static/range {v8 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_a
    move v7, v6

    :goto_5
    if-eqz v7, :cond_f

    .line 34
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    .line 35
    :cond_b
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-virtual {p1, v4, v6}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 37
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v7, :cond_c

    .line 38
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_6
    move-object v8, v7

    goto :goto_7

    :cond_c
    if-eqz v8, :cond_d

    .line 39
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 40
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_d
    move-object v8, v3

    :goto_7
    if-eqz v8, :cond_e

    .line 41
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 42
    iget v9, v1, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 43
    invoke-static/range {v8 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :cond_e
    move v7, v6

    :goto_8
    if-eqz v7, :cond_f

    .line 44
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    .line 45
    :cond_f
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v7

    if-nez v7, :cond_10

    .line 46
    invoke-virtual {p1, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 47
    iget v8, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v9, v1, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v8, v9, :cond_10

    if-nez p3, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v8

    if-nez v8, :cond_10

    .line 48
    const-string v8, "com.android.systemui.keyguard.WorkLockActivity"

    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 49
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 50
    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 51
    invoke-virtual {p1, p1, v3}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_9

    .line 53
    :cond_10
    :try_start_3
    invoke-virtual {p1, v2, v6}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V

    .line 54
    iput-object v2, v1, Lcom/android/server/wm/Task;->mReason:Ljava/lang/String;

    .line 55
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->cleanUpRemovedTask(Lcom/android/server/wm/Task;ZZ)V

    .line 56
    iget-object v2, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 57
    invoke-virtual {v2, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 58
    iget-object v2, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 59
    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 60
    iget-boolean v2, v1, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v2, :cond_11

    .line 61
    invoke-virtual {v5, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 62
    :cond_11
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkActivityAllowedToClearTask(Lcom/android/server/wm/Task;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    :goto_9
    iput-boolean v6, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 64
    throw v0
.end method

.method public final removeTaskById(IIILjava/lang/String;ZZZ)Z
    .locals 9

    .line 1
    move v0, p1

    .line 2
    move-object v1, p0

    .line 3
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    const/4 v8, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, p1, v8, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move-object v0, p0

    .line 15
    move-object v1, v2

    .line 16
    move v2, p5

    .line 17
    move v3, p6

    .line 18
    move-object v4, p4

    .line 19
    move/from16 v5, p7

    .line 20
    .line 21
    move v6, p2

    .line 22
    move v7, p3

    .line 23
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZII)V

    .line 24
    .line 25
    .line 26
    return v8

    .line 27
    :cond_0
    const-string v1, "Request to remove task ignored for non-existent task "

    .line 28
    .line 29
    const-string v2, "ActivityTaskManager"

    .line 30
    .line 31
    invoke-static {p1, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v4
.end method

.method public final reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

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
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ltz v0, :cond_3

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    .line 20
    .line 21
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 22
    .line 23
    iget-object v5, v5, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 24
    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    iget-object v5, v5, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    if-ne p2, v5, :cond_0

    .line 30
    .line 31
    move v5, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v5, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    .line 36
    .line 37
    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    :goto_1
    if-nez v5, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-object v3, v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 47
    .line 48
    iput-boolean p1, v3, Landroid/app/WaitResult;->timeout:Z

    .line 49
    .line 50
    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 51
    .line 52
    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 53
    .line 54
    iput-wide p3, v3, Landroid/app/WaitResult;->totalTime:J

    .line 55
    .line 56
    iput p5, v3, Landroid/app/WaitResult;->launchState:I

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move v3, v1

    .line 64
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    if-eqz v3, :cond_4

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void
.end method

.method public final resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    if-eqz p2, :cond_a

    .line 8
    .line 9
    new-instance v0, Landroid/content/ComponentName;

    .line 10
    .line 11
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v0, p3, 0xe

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v0, v1

    .line 32
    :goto_1
    if-eqz p4, :cond_2

    .line 33
    .line 34
    move v3, v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v3, v1

    .line 37
    :goto_2
    if-nez v0, :cond_3

    .line 38
    .line 39
    if-eqz v3, :cond_9

    .line 40
    .line 41
    :cond_3
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 42
    .line 43
    if-nez v4, :cond_4

    .line 44
    .line 45
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 46
    .line 47
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 48
    .line 49
    and-int/lit8 v4, v4, 0x2

    .line 50
    .line 51
    if-eqz v4, :cond_5

    .line 52
    .line 53
    :cond_4
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 54
    .line 55
    const-string/jumbo v5, "system"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_5

    .line 63
    .line 64
    move v1, v2

    .line 65
    :cond_5
    if-eqz v0, :cond_6

    .line 66
    .line 67
    if-eqz v1, :cond_7

    .line 68
    .line 69
    :cond_6
    if-eqz v3, :cond_8

    .line 70
    .line 71
    if-nez v1, :cond_8

    .line 72
    .line 73
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_8

    .line 80
    .line 81
    :cond_7
    const-string p0, "ActivityTaskManager"

    .line 82
    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string p4, "Ignore debugging for non-debuggable app: "

    .line 86
    .line 87
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p3, p4, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 99
    .line 100
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 101
    .line 102
    .line 103
    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 107
    .line 108
    new-instance v2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;

    .line 109
    .line 110
    invoke-direct {v2, p0, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_5

    .line 126
    :catch_0
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 128
    .line 129
    .line 130
    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 135
    .line 136
    if-nez p1, :cond_a

    .line 137
    .line 138
    if-eqz p0, :cond_a

    .line 139
    .line 140
    iput-object p0, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_a
    :goto_6
    return-object p2
.end method

.method public final resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;
    .locals 19

    .line 1
    const-wide/16 v1, 0x20

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v0, "resolveIntent"

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const v0, 0x10400

    .line 10
    .line 11
    .line 12
    or-int v0, p4, v0

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    and-int/lit16 v3, v3, 0x800

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    const v0, 0x810400

    .line 32
    .line 33
    .line 34
    or-int v0, p4, v0

    .line 35
    .line 36
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    and-int/lit16 v3, v3, 0x400

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v3, 0x0

    .line 53
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    and-int/lit16 v4, v4, 0x200

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    or-int/lit8 v3, v3, 0x2

    .line 62
    .line 63
    :cond_3
    or-int/lit16 v0, v0, 0x80

    .line 64
    .line 65
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    move-object/from16 v6, p0

    .line 70
    .line 71
    :try_start_1
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    int-to-long v11, v0

    .line 78
    int-to-long v13, v3

    .line 79
    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 80
    .line 81
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 82
    .line 83
    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 84
    .line 85
    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    const/16 v16, 0x1

    .line 92
    .line 93
    move-object/from16 v9, p1

    .line 94
    .line 95
    move-object/from16 v10, p2

    .line 96
    .line 97
    move/from16 v15, p3

    .line 98
    .line 99
    move/from16 v17, p5

    .line 100
    .line 101
    move/from16 v18, p6

    .line 102
    .line 103
    invoke-virtual/range {v7 .. v18}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :catchall_1
    move-exception v0

    .line 115
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 120
    .line 121
    .line 122
    throw v0
.end method

.method public final restoreRecentTaskLocked(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eq p1, p0, :cond_2

    .line 12
    .line 13
    if-ne p2, p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const p1, 0x7fffffff

    .line 20
    .line 21
    .line 22
    const-string/jumbo p3, "restoreRecentTaskLocked"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1, p0, p3, v0}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final scheduleIdle()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 2
    .line 3
    const/16 v0, 0xc9

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 33
    .line 34
    const/16 v3, 0xcd

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-array v4, v0, [Z

    .line 48
    .line 49
    aput-boolean v1, v4, v1

    .line 50
    .line 51
    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;

    .line 52
    .line 53
    invoke-direct {v5, v0, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    aget-boolean v1, v4, v1

    .line 64
    .line 65
    :goto_0
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public final scheduleTopResumedActivityStateLossIfNeeded()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 20
    .line 21
    const/16 v2, 0xd9

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iput-wide v3, v0, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 34
    .line 35
    const-wide/16 v3, 0x1f4

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_54989576$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    aget-boolean v1, v1, v2

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 52
    .line 53
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const-wide v4, 0x32063a9f78c73718L    # 1.0306491014634798E-67

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_54989576;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method public final scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 38
    .line 39
    const/16 p1, 0xd7

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 6
    .line 7
    invoke-static {p4, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "From recent_option"

    .line 15
    .line 16
    const/4 p4, 0x1

    .line 17
    const/4 v0, 0x5

    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v1, p4, :cond_1

    .line 27
    .line 28
    const-string p1, "2090"

    .line 29
    .line 30
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    if-eqz p3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-nez p3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 p4, 0x0

    .line 54
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    if-nez p3, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    :cond_3
    if-eqz p4, :cond_6

    .line 67
    .line 68
    :cond_4
    const-string p1, "2004"

    .line 69
    .line 70
    if-ne p2, v0, :cond_5

    .line 71
    .line 72
    const-string p0, "From recent_task"

    .line 73
    .line 74
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_1
    return-void
.end method

.method public setRunningTasks(Lcom/android/server/wm/RunningTasks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    .line 2
    .line 3
    return-void
.end method

.method public final startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;Z)I
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v15, p2

    .line 4
    .line 5
    move/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v13, p4

    .line 8
    .line 9
    const-string/jumbo v8, "startActivityFromRecents: Task "

    .line 10
    .line 11
    .line 12
    const-string/jumbo v9, "startActivityFromRecents: Task "

    .line 13
    .line 14
    .line 15
    const/4 v14, 0x0

    .line 16
    if-eqz v13, :cond_0

    .line 17
    .line 18
    invoke-virtual {v13, v14, v14, v14, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    move-object v11, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-eqz p5, :cond_1

    .line 25
    .line 26
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v11, v14

    .line 32
    :goto_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object v10, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 35
    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 37
    .line 38
    .line 39
    monitor-enter v10

    .line 40
    :try_start_0
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 41
    .line 42
    invoke-virtual {v2, v15}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 55
    .line 56
    .line 57
    move-result v16

    .line 58
    if-eqz v11, :cond_2

    .line 59
    .line 60
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    move-object/from16 v17, v2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto/16 :goto_24

    .line 73
    .line 74
    :cond_2
    move-object/from16 v17, v14

    .line 75
    .line 76
    :goto_2
    const/4 v6, 0x0

    .line 77
    const/4 v5, 0x1

    .line 78
    const/4 v4, 0x5

    .line 79
    if-eqz v11, :cond_8

    .line 80
    .line 81
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    .line 82
    .line 83
    .line 84
    move-result v18

    .line 85
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    if-nez v12, :cond_3

    .line 92
    .line 93
    const-string v19, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 94
    .line 95
    const/16 v20, 0x1

    .line 96
    .line 97
    const/16 v21, 0x0

    .line 98
    .line 99
    const/16 v22, -0x1

    .line 100
    .line 101
    move/from16 v2, p1

    .line 102
    .line 103
    move/from16 v3, p2

    .line 104
    .line 105
    move v14, v4

    .line 106
    move-object/from16 v4, v19

    .line 107
    .line 108
    move/from16 v5, v21

    .line 109
    .line 110
    move/from16 v6, v22

    .line 111
    .line 112
    move-object/from16 v19, v7

    .line 113
    .line 114
    move/from16 v7, v20

    .line 115
    .line 116
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_3
    move v14, v4

    .line 124
    move-object/from16 v19, v7

    .line 125
    .line 126
    :goto_3
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 129
    .line 130
    .line 131
    if-eqz v12, :cond_5

    .line 132
    .line 133
    const/4 v6, 0x1

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    move v14, v4

    .line 136
    move-object/from16 v19, v7

    .line 137
    .line 138
    :cond_5
    const/4 v6, 0x0

    .line 139
    :goto_4
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-ne v2, v14, :cond_6

    .line 144
    .line 145
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 146
    .line 147
    .line 148
    :cond_6
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->setDisableSplashScreen()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-eqz v3, :cond_7

    .line 156
    .line 157
    move v3, v2

    .line 158
    move v2, v6

    .line 159
    move/from16 v6, v18

    .line 160
    .line 161
    const/4 v4, 0x0

    .line 162
    goto :goto_5

    .line 163
    :cond_7
    move v3, v2

    .line 164
    move v2, v6

    .line 165
    move/from16 v6, v18

    .line 166
    .line 167
    const/4 v4, 0x1

    .line 168
    goto :goto_5

    .line 169
    :cond_8
    move v14, v4

    .line 170
    move-object/from16 v19, v7

    .line 171
    .line 172
    const/4 v2, 0x0

    .line 173
    const/4 v3, 0x0

    .line 174
    const/4 v4, 0x1

    .line 175
    const/4 v6, 0x0

    .line 176
    :goto_5
    const/4 v7, 0x2

    .line 177
    if-eq v6, v7, :cond_35

    .line 178
    .line 179
    const/4 v5, 0x3

    .line 180
    if-eq v6, v5, :cond_35

    .line 181
    .line 182
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 183
    .line 184
    move/from16 v18, v4

    .line 185
    .line 186
    const/4 v4, 0x1

    .line 187
    const/4 v6, 0x0

    .line 188
    const/4 v8, 0x0

    .line 189
    invoke-virtual {v5, v0, v4, v6, v8}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    if-eqz v5, :cond_9

    .line 196
    .line 197
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_9

    .line 202
    .line 203
    move v6, v8

    .line 204
    goto :goto_6

    .line 205
    :cond_9
    move/from16 v6, v18

    .line 206
    .line 207
    :goto_6
    if-eqz v11, :cond_a

    .line 208
    .line 209
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchedFromDnD()Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_a

    .line 214
    .line 215
    move v6, v8

    .line 216
    :cond_a
    if-eqz v5, :cond_b

    .line 217
    .line 218
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 219
    .line 220
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 221
    .line 222
    invoke-virtual {v2, v5, v11}, Lcom/android/server/wm/MultiTaskingController;->interceptStartActivityFromRecentsLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_b

    .line 227
    .line 228
    invoke-static {v11}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 229
    .line 230
    .line 231
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 233
    .line 234
    .line 235
    const/16 v0, 0xa

    .line 236
    .line 237
    return v0

    .line 238
    :cond_b
    if-eqz v11, :cond_c

    .line 239
    .line 240
    :try_start_1
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchInFocusedStageRoot()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_c

    .line 245
    .line 246
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_c

    .line 251
    .line 252
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootStageTask()Lcom/android/server/wm/Task;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    if-eqz v2, :cond_c

    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 263
    .line 264
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 265
    .line 266
    .line 267
    move v6, v8

    .line 268
    :cond_c
    const/4 v2, -0x1

    .line 269
    if-eqz v5, :cond_10

    .line 270
    .line 271
    if-eqz v11, :cond_10

    .line 272
    .line 273
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-eq v7, v2, :cond_e

    .line 278
    .line 279
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-ne v2, v7, :cond_d

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_d
    move v2, v8

    .line 287
    goto :goto_8

    .line 288
    :cond_e
    :goto_7
    move v2, v4

    .line 289
    :goto_8
    if-nez v3, :cond_10

    .line 290
    .line 291
    if-eqz v2, :cond_10

    .line 292
    .line 293
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_f

    .line 298
    .line 299
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 304
    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_f
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-ne v2, v14, :cond_10

    .line 312
    .line 313
    invoke-virtual {v5, v8}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    if-eqz v2, :cond_10

    .line 318
    .line 319
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 324
    .line 325
    .line 326
    :cond_10
    :goto_9
    if-eqz v5, :cond_11

    .line 327
    .line 328
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez v2, :cond_11

    .line 333
    .line 334
    iput-boolean v4, v5, Lcom/android/server/wm/Task;->mSkipSavingLaunchingState:Z

    .line 335
    .line 336
    :cond_11
    sget-boolean v22, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 337
    .line 338
    if-eqz v22, :cond_13

    .line 339
    .line 340
    if-eqz v5, :cond_13

    .line 341
    .line 342
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    if-nez v2, :cond_12

    .line 347
    .line 348
    invoke-virtual {v5, v4, v8}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    if-eqz v2, :cond_13

    .line 353
    .line 354
    :cond_12
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    move v7, v2

    .line 359
    goto :goto_a

    .line 360
    :cond_13
    move v7, v8

    .line 361
    :goto_a
    if-eqz p5, :cond_14

    .line 362
    .line 363
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-nez v2, :cond_14

    .line 368
    .line 369
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_14

    .line 374
    .line 375
    invoke-virtual {v11, v4}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 383
    .line 384
    .line 385
    :cond_14
    if-eqz v5, :cond_17

    .line 386
    .line 387
    if-eqz v11, :cond_15

    .line 388
    .line 389
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    goto :goto_b

    .line 394
    :cond_15
    const/4 v2, -0x1

    .line 395
    :goto_b
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 396
    .line 397
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 398
    .line 399
    invoke-virtual {v3}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-eq v3, v4, :cond_16

    .line 404
    .line 405
    const/4 v14, 0x2

    .line 406
    if-ne v3, v14, :cond_17

    .line 407
    .line 408
    if-ne v2, v14, :cond_17

    .line 409
    .line 410
    :cond_16
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 411
    .line 412
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 413
    .line 414
    invoke-virtual {v2, v5}, Lcom/android/server/wm/DexController;->getNonStartableActivityInDexMode(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    if-eqz v2, :cond_17

    .line 419
    .line 420
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 421
    .line 422
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 423
    .line 424
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 425
    .line 426
    const/4 v2, 0x0

    .line 427
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DexController;->showWarningToastIfNeeded(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V

    .line 428
    .line 429
    .line 430
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 432
    .line 433
    .line 434
    const/16 v0, 0x66

    .line 435
    .line 436
    return v0

    .line 437
    :cond_17
    if-eqz v5, :cond_19

    .line 438
    .line 439
    if-eqz v11, :cond_19

    .line 440
    .line 441
    :try_start_2
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->allowEnterPipWhileLaunching()Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-eqz v2, :cond_19

    .line 446
    .line 447
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-gtz v2, :cond_19

    .line 452
    .line 453
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    if-nez v2, :cond_19

    .line 458
    .line 459
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    if-nez v2, :cond_19

    .line 464
    .line 465
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    if-nez v2, :cond_19

    .line 470
    .line 471
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 472
    .line 473
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 474
    .line 475
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-static {v2}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    if-eqz v2, :cond_18

    .line 488
    .line 489
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 490
    .line 491
    if-eq v3, v5, :cond_18

    .line 492
    .line 493
    const/4 v3, 0x0

    .line 494
    invoke-static {v11, v2, v3, v5}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 495
    .line 496
    .line 497
    iget-object v2, v5, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 498
    .line 499
    const/high16 v3, 0x40000

    .line 500
    .line 501
    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeFlags(I)V

    .line 502
    .line 503
    .line 504
    :cond_18
    move v6, v8

    .line 505
    :cond_19
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 506
    .line 507
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    .line 509
    .line 510
    :try_start_3
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 511
    .line 512
    const/4 v14, 0x2

    .line 513
    invoke-virtual {v2, v0, v14, v11, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    if-eqz v5, :cond_33

    .line 518
    .line 519
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 520
    .line 521
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    if-eqz v0, :cond_1a

    .line 530
    .line 531
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    if-eqz v0, :cond_1a

    .line 536
    .line 537
    move v6, v8

    .line 538
    goto :goto_c

    .line 539
    :catchall_1
    move-exception v0

    .line 540
    move v6, v8

    .line 541
    goto/16 :goto_20

    .line 542
    .line 543
    :catch_0
    move-exception v0

    .line 544
    move v6, v8

    .line 545
    goto/16 :goto_21

    .line 546
    .line 547
    :cond_1a
    :goto_c
    iput-boolean v8, v5, Lcom/android/server/wm/Task;->mSkipSavingLaunchingState:Z

    .line 548
    .line 549
    if-nez v16, :cond_1b

    .line 550
    .line 551
    if-eqz v17, :cond_1b

    .line 552
    .line 553
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    if-eqz v0, :cond_1b

    .line 558
    .line 559
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 560
    .line 561
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 562
    .line 563
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 564
    .line 565
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    xor-int/2addr v0, v4

    .line 570
    if-nez v0, :cond_1b

    .line 571
    .line 572
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 573
    .line 574
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 575
    .line 576
    const-string/jumbo v2, "recents"

    .line 577
    .line 578
    .line 579
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 580
    .line 581
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 582
    .line 583
    .line 584
    move/from16 v23, v4

    .line 585
    .line 586
    goto :goto_d

    .line 587
    :cond_1b
    move/from16 v23, v8

    .line 588
    .line 589
    :goto_d
    if-eqz p5, :cond_1c

    .line 590
    .line 591
    :try_start_4
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-eqz v0, :cond_1c

    .line 596
    .line 597
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-eqz v0, :cond_1c

    .line 602
    .line 603
    move/from16 v24, v8

    .line 604
    .line 605
    goto :goto_e

    .line 606
    :catchall_2
    move-exception v0

    .line 607
    move/from16 v6, v23

    .line 608
    .line 609
    goto/16 :goto_20

    .line 610
    .line 611
    :catch_1
    move-exception v0

    .line 612
    move/from16 v6, v23

    .line 613
    .line 614
    goto/16 :goto_21

    .line 615
    .line 616
    :cond_1c
    move/from16 v24, v6

    .line 617
    .line 618
    :goto_e
    if-eqz v24, :cond_1d

    .line 619
    .line 620
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 621
    .line 622
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 623
    .line 624
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    const-string/jumbo v2, "startActivityFromRecents"

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-eqz v0, :cond_1d

    .line 639
    .line 640
    move-object/from16 v0, v19

    .line 641
    .line 642
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 643
    .line 644
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 649
    .line 650
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 651
    .line 652
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    .line 657
    .line 658
    .line 659
    :cond_1d
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 660
    .line 661
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 662
    .line 663
    iget v2, v5, Lcom/android/server/wm/Task;->mUserId:I

    .line 664
    .line 665
    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    if-nez v0, :cond_28

    .line 670
    .line 671
    invoke-virtual {v5, v4, v8}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    if-eqz v0, :cond_28

    .line 676
    .line 677
    invoke-virtual {v5, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 678
    .line 679
    .line 680
    move-result-object v9

    .line 681
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 682
    .line 683
    invoke-virtual {v0, v4, v9}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 684
    .line 685
    .line 686
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 687
    .line 688
    iget-object v2, v5, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 689
    .line 690
    if-eqz v12, :cond_1e

    .line 691
    .line 692
    const/4 v3, -0x1

    .line 693
    :goto_f
    const/4 v6, 0x0

    .line 694
    goto :goto_10

    .line 695
    :cond_1e
    move v3, v15

    .line 696
    goto :goto_f

    .line 697
    :goto_10
    invoke-virtual {v0, v2, v6, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 698
    .line 699
    .line 700
    move-result-object v12
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 701
    :try_start_5
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-eqz v0, :cond_1f

    .line 706
    .line 707
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isDexTaskDocked()Z

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    if-eqz v0, :cond_1f

    .line 712
    .line 713
    if-eqz v11, :cond_1f

    .line 714
    .line 715
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    if-eqz v0, :cond_1f

    .line 720
    .line 721
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    if-nez v0, :cond_1f

    .line 730
    .line 731
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 732
    .line 733
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    .line 734
    .line 735
    const-string/jumbo v2, "startActivityFromRecents"

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DexDockingController;->clearAllTasks(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    goto :goto_11

    .line 742
    :catchall_3
    move-exception v0

    .line 743
    goto/16 :goto_15

    .line 744
    .line 745
    :cond_1f
    :goto_11
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 746
    .line 747
    .line 748
    move-result v0

    .line 749
    if-eqz v0, :cond_21

    .line 750
    .line 751
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    if-eqz v0, :cond_21

    .line 756
    .line 757
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    if-eqz v0, :cond_20

    .line 762
    .line 763
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    if-nez v0, :cond_20

    .line 768
    .line 769
    move v6, v4

    .line 770
    goto :goto_12

    .line 771
    :cond_20
    move v6, v8

    .line 772
    :goto_12
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 773
    .line 774
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 775
    .line 776
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    invoke-static {v5, v6}, Lcom/android/server/wm/TaskOrganizerController;->resetStashedFreeform(Lcom/android/server/wm/Task;Z)V

    .line 780
    .line 781
    .line 782
    :cond_21
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    .line 783
    .line 784
    if-eqz v0, :cond_22

    .line 785
    .line 786
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    if-eqz v0, :cond_22

    .line 791
    .line 792
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    if-eqz v0, :cond_22

    .line 797
    .line 798
    if-eqz v11, :cond_22

    .line 799
    .line 800
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    if-eqz v0, :cond_22

    .line 805
    .line 806
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    if-nez v0, :cond_22

    .line 815
    .line 816
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {v5, v0}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 821
    .line 822
    .line 823
    const/4 v0, 0x5

    .line 824
    invoke-virtual {v11, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 825
    .line 826
    .line 827
    :cond_22
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 828
    .line 829
    iget v0, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 830
    .line 831
    const/4 v3, 0x0

    .line 832
    const/4 v6, 0x0

    .line 833
    const/4 v8, 0x0

    .line 834
    move v14, v4

    .line 835
    move-object v4, v6

    .line 836
    move-object v6, v5

    .line 837
    move v5, v0

    .line 838
    move-object v14, v6

    .line 839
    move v6, v8

    .line 840
    move v8, v7

    .line 841
    move-object/from16 v7, p4

    .line 842
    .line 843
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    .line 844
    .line 845
    .line 846
    if-eqz v11, :cond_23

    .line 847
    .line 848
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getAnimationType()I

    .line 849
    .line 850
    .line 851
    move-result v2

    .line 852
    const/16 v3, 0xd

    .line 853
    .line 854
    if-ne v2, v3, :cond_23

    .line 855
    .line 856
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    iput-object v2, v9, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 861
    .line 862
    :cond_23
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation$1()V

    .line 863
    .line 864
    .line 865
    if-eqz v11, :cond_24

    .line 866
    .line 867
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    .line 868
    .line 869
    .line 870
    move-result-object v2

    .line 871
    if-eqz v2, :cond_24

    .line 872
    .line 873
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    iput-object v2, v9, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 878
    .line 879
    :cond_24
    :try_start_6
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 880
    .line 881
    const/16 v18, 0x2

    .line 882
    .line 883
    const/16 v19, 0x0

    .line 884
    .line 885
    move-object/from16 v16, v2

    .line 886
    .line 887
    move-object/from16 v17, v12

    .line 888
    .line 889
    move-object/from16 v20, v9

    .line 890
    .line 891
    move-object/from16 v21, v11

    .line 892
    .line 893
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 894
    .line 895
    .line 896
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 897
    .line 898
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    .line 899
    .line 900
    invoke-virtual {v2, v14, v11}, Lcom/android/server/wm/DexDockingController;->setOtherTaskIfNeeded(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V

    .line 901
    .line 902
    .line 903
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 904
    .line 905
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 906
    .line 907
    const/4 v0, 0x1

    .line 908
    invoke-virtual {v14, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    iget-object v2, v2, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 917
    .line 918
    if-nez v2, :cond_25

    .line 919
    .line 920
    goto :goto_13

    .line 921
    :cond_25
    const/4 v4, 0x2

    .line 922
    invoke-virtual {v2, v4, v0, v3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    .line 923
    .line 924
    .line 925
    :goto_13
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 926
    .line 927
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    .line 928
    .line 929
    .line 930
    if-eqz v22, :cond_26

    .line 931
    .line 932
    invoke-virtual {v1, v14, v8, v11, v15}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 933
    .line 934
    .line 935
    :cond_26
    if-eqz v23, :cond_27

    .line 936
    .line 937
    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 938
    .line 939
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 940
    .line 941
    const-string/jumbo v2, "recents"

    .line 942
    .line 943
    .line 944
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 945
    .line 946
    .line 947
    goto :goto_14

    .line 948
    :catchall_4
    move-exception v0

    .line 949
    :try_start_8
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 950
    .line 951
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 952
    .line 953
    .line 954
    throw v0

    .line 955
    :cond_27
    :goto_14
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 956
    .line 957
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 958
    .line 959
    .line 960
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 961
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 962
    .line 963
    .line 964
    const/4 v0, 0x2

    .line 965
    return v0

    .line 966
    :goto_15
    :try_start_9
    iget-object v15, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 967
    .line 968
    const/16 v17, 0x2

    .line 969
    .line 970
    const/16 v18, 0x0

    .line 971
    .line 972
    move-object/from16 v16, v12

    .line 973
    .line 974
    move-object/from16 v19, v9

    .line 975
    .line 976
    move-object/from16 v20, v11

    .line 977
    .line 978
    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 979
    .line 980
    .line 981
    throw v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 982
    :cond_28
    move-object v14, v5

    .line 983
    move v8, v7

    .line 984
    const/4 v6, 0x0

    .line 985
    :try_start_a
    iget v3, v14, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 986
    .line 987
    iget-object v0, v14, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 988
    .line 989
    iget-object v7, v14, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 990
    .line 991
    iget-object v9, v14, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 992
    .line 993
    const/high16 v2, 0x100000

    .line 994
    .line 995
    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 996
    .line 997
    .line 998
    iget v5, v14, Lcom/android/server/wm/Task;->mUserId:I

    .line 999
    .line 1000
    const/16 v2, 0x1000

    .line 1001
    .line 1002
    invoke-virtual {v9, v2}, Landroid/content/Intent;->removeFlags(I)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v2, v14, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1006
    .line 1007
    if-eqz v2, :cond_29

    .line 1008
    .line 1009
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v2

    .line 1013
    move-object/from16 v16, v2

    .line 1014
    .line 1015
    goto :goto_16

    .line 1016
    :cond_29
    move-object/from16 v16, v6

    .line 1017
    .line 1018
    :goto_16
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1019
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1020
    .line 1021
    .line 1022
    :try_start_b
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1023
    .line 1024
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    .line 1025
    .line 1026
    invoke-virtual {v2, v14, v11}, Lcom/android/server/wm/DexDockingController;->setOtherTaskIfNeeded(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V

    .line 1027
    .line 1028
    .line 1029
    sget-object v4, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    .line 1030
    .line 1031
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1032
    .line 1033
    invoke-virtual {v4, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1034
    .line 1035
    .line 1036
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1037
    .line 1038
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 1039
    .line 1040
    const-string/jumbo v18, "startActivityFromRecents"

    .line 1041
    .line 1042
    .line 1043
    sget-object v19, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 1044
    .line 1045
    const/4 v12, 0x0

    .line 1046
    const/16 v17, 0x0

    .line 1047
    .line 1048
    const/4 v10, 0x0

    .line 1049
    const/16 v20, 0x0

    .line 1050
    .line 1051
    move-object/from16 v25, v11

    .line 1052
    .line 1053
    move-object/from16 v11, v20

    .line 1054
    .line 1055
    move-object/from16 v26, v4

    .line 1056
    .line 1057
    move/from16 v4, p1

    .line 1058
    .line 1059
    move/from16 v20, v5

    .line 1060
    .line 1061
    move/from16 v5, p2

    .line 1062
    .line 1063
    move-object/from16 v21, v6

    .line 1064
    .line 1065
    move-object v6, v0

    .line 1066
    move/from16 v27, v8

    .line 1067
    .line 1068
    move-object v8, v9

    .line 1069
    move-object/from16 v9, v16

    .line 1070
    .line 1071
    move-object/from16 v13, p4

    .line 1072
    .line 1073
    move-object/from16 p1, v14

    .line 1074
    .line 1075
    move/from16 v14, v20

    .line 1076
    .line 1077
    move-object/from16 v15, p1

    .line 1078
    .line 1079
    move-object/from16 v16, v18

    .line 1080
    .line 1081
    move-object/from16 v18, v19

    .line 1082
    .line 1083
    :try_start_c
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;)I

    .line 1084
    .line 1085
    .line 1086
    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1087
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1088
    .line 1089
    move-object/from16 v3, v26

    .line 1090
    .line 1091
    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1092
    .line 1093
    .line 1094
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1095
    .line 1096
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1097
    .line 1098
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1099
    .line 1100
    .line 1101
    monitor-enter v2

    .line 1102
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 1103
    .line 1104
    .line 1105
    move-result v3

    .line 1106
    if-nez v3, :cond_2a

    .line 1107
    .line 1108
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    if-eqz v3, :cond_2a

    .line 1113
    .line 1114
    const-string/jumbo v3, "start-from-recents"

    .line 1115
    .line 1116
    .line 1117
    move-object/from16 v4, p1

    .line 1118
    .line 1119
    invoke-virtual {v4, v3}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    if-eqz v24, :cond_2b

    .line 1123
    .line 1124
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1125
    .line 1126
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v3

    .line 1130
    if-eqz v3, :cond_2b

    .line 1131
    .line 1132
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v5

    .line 1136
    if-eqz v5, :cond_2b

    .line 1137
    .line 1138
    const-string/jumbo v5, "start-from-recents"

    .line 1139
    .line 1140
    .line 1141
    const/4 v6, 0x0

    .line 1142
    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1143
    .line 1144
    .line 1145
    goto :goto_17

    .line 1146
    :catchall_5
    move-exception v0

    .line 1147
    goto :goto_19

    .line 1148
    :cond_2a
    move-object/from16 v4, p1

    .line 1149
    .line 1150
    :cond_2b
    :goto_17
    :try_start_e
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1151
    .line 1152
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 1156
    .line 1157
    .line 1158
    move-result v3

    .line 1159
    if-eqz v3, :cond_2c

    .line 1160
    .line 1161
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    .line 1162
    .line 1163
    .line 1164
    move-result v3

    .line 1165
    if-nez v3, :cond_2c

    .line 1166
    .line 1167
    iget-boolean v3, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 1168
    .line 1169
    if-nez v3, :cond_2c

    .line 1170
    .line 1171
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v3

    .line 1175
    if-eqz v3, :cond_2c

    .line 1176
    .line 1177
    const-string v3, "handleStartActivityFromRecents"

    .line 1178
    .line 1179
    invoke-virtual {v4, v3}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    goto :goto_18

    .line 1183
    :catchall_6
    move-exception v0

    .line 1184
    goto :goto_1a

    .line 1185
    :cond_2c
    :goto_18
    if-eqz v23, :cond_2d

    .line 1186
    .line 1187
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1188
    .line 1189
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 1190
    .line 1191
    const-string/jumbo v5, "recents"

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    :cond_2d
    if-eqz v22, :cond_2e

    .line 1198
    .line 1199
    move/from16 v3, p2

    .line 1200
    .line 1201
    move-object/from16 v14, v25

    .line 1202
    .line 1203
    move/from16 v8, v27

    .line 1204
    .line 1205
    invoke-virtual {v1, v4, v8, v14, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V

    .line 1206
    .line 1207
    .line 1208
    :cond_2e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1209
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1210
    .line 1211
    .line 1212
    return v0

    .line 1213
    :goto_19
    :try_start_f
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1214
    .line 1215
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1216
    .line 1217
    .line 1218
    throw v0

    .line 1219
    :goto_1a
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1220
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1221
    .line 1222
    .line 1223
    throw v0

    .line 1224
    :catchall_7
    move-exception v0

    .line 1225
    move-object/from16 v4, p1

    .line 1226
    .line 1227
    move/from16 v3, p2

    .line 1228
    .line 1229
    move-object/from16 v14, v25

    .line 1230
    .line 1231
    move/from16 v8, v27

    .line 1232
    .line 1233
    const/4 v6, 0x0

    .line 1234
    goto :goto_1b

    .line 1235
    :catchall_8
    move-exception v0

    .line 1236
    move-object v4, v14

    .line 1237
    move v3, v15

    .line 1238
    move-object v14, v11

    .line 1239
    :goto_1b
    sget-object v2, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    .line 1240
    .line 1241
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1242
    .line 1243
    invoke-virtual {v2, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1244
    .line 1245
    .line 1246
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1247
    .line 1248
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1249
    .line 1250
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1251
    .line 1252
    .line 1253
    monitor-enter v2

    .line 1254
    :try_start_10
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v5

    .line 1258
    if-nez v5, :cond_2f

    .line 1259
    .line 1260
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    .line 1261
    .line 1262
    .line 1263
    move-result v5

    .line 1264
    if-eqz v5, :cond_2f

    .line 1265
    .line 1266
    const-string/jumbo v5, "start-from-recents"

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    if-eqz v24, :cond_2f

    .line 1273
    .line 1274
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1275
    .line 1276
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v5

    .line 1280
    if-eqz v5, :cond_2f

    .line 1281
    .line 1282
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 1283
    .line 1284
    .line 1285
    move-result v7

    .line 1286
    if-eqz v7, :cond_2f

    .line 1287
    .line 1288
    const-string/jumbo v7, "start-from-recents"

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 1292
    .line 1293
    .line 1294
    goto :goto_1c

    .line 1295
    :catchall_9
    move-exception v0

    .line 1296
    goto :goto_1e

    .line 1297
    :cond_2f
    :goto_1c
    :try_start_11
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1298
    .line 1299
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 1303
    .line 1304
    .line 1305
    move-result v5

    .line 1306
    if-eqz v5, :cond_30

    .line 1307
    .line 1308
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    .line 1309
    .line 1310
    .line 1311
    move-result v5

    .line 1312
    if-nez v5, :cond_30

    .line 1313
    .line 1314
    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 1315
    .line 1316
    if-nez v5, :cond_30

    .line 1317
    .line 1318
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1319
    .line 1320
    .line 1321
    move-result v5

    .line 1322
    if-eqz v5, :cond_30

    .line 1323
    .line 1324
    const-string v5, "handleStartActivityFromRecents"

    .line 1325
    .line 1326
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1327
    .line 1328
    .line 1329
    goto :goto_1d

    .line 1330
    :catchall_a
    move-exception v0

    .line 1331
    goto :goto_1f

    .line 1332
    :cond_30
    :goto_1d
    if-eqz v23, :cond_31

    .line 1333
    .line 1334
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1335
    .line 1336
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 1337
    .line 1338
    const-string/jumbo v6, "recents"

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    :cond_31
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    .line 1345
    .line 1346
    if-eqz v5, :cond_32

    .line 1347
    .line 1348
    invoke-virtual {v1, v4, v8, v14, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V

    .line 1349
    .line 1350
    .line 1351
    :cond_32
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 1352
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1353
    .line 1354
    .line 1355
    throw v0

    .line 1356
    :goto_1e
    :try_start_12
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1357
    .line 1358
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1359
    .line 1360
    .line 1361
    throw v0

    .line 1362
    :goto_1f
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 1363
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1364
    .line 1365
    .line 1366
    throw v0

    .line 1367
    :cond_33
    :try_start_13
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1368
    .line 1369
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1370
    .line 1371
    .line 1372
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1373
    .line 1374
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    .line 1382
    const-string v0, " not found."

    .line 1383
    .line 1384
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v0

    .line 1391
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1392
    .line 1393
    .line 1394
    throw v2
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1395
    :goto_20
    :try_start_14
    const-string v2, "ActivityTaskManager"

    .line 1396
    .line 1397
    const-string/jumbo v3, "startActivity: reason=startActivityFromRecents"

    .line 1398
    .line 1399
    .line 1400
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1401
    .line 1402
    .line 1403
    throw v0

    .line 1404
    :catchall_b
    move-exception v0

    .line 1405
    goto :goto_22

    .line 1406
    :goto_21
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 1407
    :goto_22
    if-eqz v6, :cond_34

    .line 1408
    .line 1409
    :try_start_15
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1410
    .line 1411
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 1412
    .line 1413
    const-string/jumbo v3, "recents"

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 1417
    .line 1418
    .line 1419
    goto :goto_23

    .line 1420
    :catchall_c
    move-exception v0

    .line 1421
    :try_start_16
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1422
    .line 1423
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1424
    .line 1425
    .line 1426
    throw v0

    .line 1427
    :cond_34
    :goto_23
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1428
    .line 1429
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1430
    .line 1431
    .line 1432
    throw v0

    .line 1433
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1434
    .line 1435
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1436
    .line 1437
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    .line 1443
    const-string v0, " can\'t be launch in the home/recents root task."

    .line 1444
    .line 1445
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v0

    .line 1452
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1453
    .line 1454
    .line 1455
    throw v1

    .line 1456
    :goto_24
    monitor-exit v10
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1457
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1458
    .line 1459
    .line 1460
    throw v0
.end method

.method public final startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ActivityTaskManager"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catch_0
    move-exception p3

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v5, "Exception when starting activity "

    .line 35
    .line 36
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v1, v4, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    .line 61
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 64
    .line 65
    iget v4, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 66
    .line 67
    invoke-virtual {p3, v1, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    .line 72
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 73
    .line 74
    iget v1, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 75
    .line 76
    iget-object v4, p3, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    .line 83
    .line 84
    if-eqz v4, :cond_0

    .line 85
    .line 86
    iget-object v5, p3, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v4}, Lcom/android/server/wm/WindowProcessControllerMap;->removeProcessFromUidMap(Lcom/android/server/wm/WindowProcessController;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->unregisterConfigurationListeners()V

    .line 95
    .line 96
    .line 97
    :cond_0
    move p3, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 100
    .line 101
    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 104
    .line 105
    if-eqz v4, :cond_3

    .line 106
    .line 107
    invoke-static {}, Lcom/android/sdksandbox/flags/Flags;->sandboxActivitySdkBasedContext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_2

    .line 112
    .line 113
    invoke-static {p3, v4}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;->isSdkSandboxActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-eqz p3, :cond_3

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v4, p3}, Landroid/content/Intent;->isSandboxActivity(Landroid/content/Context;)Z

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    if-eqz p3, :cond_3

    .line 125
    .line 126
    :goto_0
    const-string p0, "Abort sandbox activity launching as no sandbox process to host it."

    .line 127
    .line 128
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    const-string p0, "No sandbox process for the activity"

    .line 132
    .line 133
    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 134
    .line 135
    .line 136
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_3
    move p3, v3

    .line 143
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    .line 144
    .line 145
    .line 146
    if-eqz p2, :cond_4

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    move v2, v3

    .line 156
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    const/4 v1, 0x2

    .line 161
    if-ne p2, v1, :cond_6

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 164
    .line 165
    if-eqz v2, :cond_5

    .line 166
    .line 167
    const-string/jumbo p2, "top-activity-on-dex"

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    const-string p2, "activity-on-dex"

    .line 172
    .line 173
    :goto_3
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 178
    .line 179
    if-eqz v2, :cond_7

    .line 180
    .line 181
    const-string/jumbo p2, "top-activity"

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_7
    const-string p2, "activity"

    .line 186
    .line 187
    :goto_4
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)V

    .line 188
    .line 189
    .line 190
    :goto_5
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    .line 191
    .line 192
    if-eqz p0, :cond_8

    .line 193
    .line 194
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-eqz p0, :cond_8

    .line 199
    .line 200
    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    .line 201
    .line 202
    if-eqz p0, :cond_8

    .line 203
    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 207
    .line 208
    new-instance p2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;

    .line 209
    .line 210
    invoke-direct {p2, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    .line 215
    .line 216
    :cond_8
    return-void
.end method

.method public final updateHomeProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

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
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 36
    .line 37
    if-eq v0, p1, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 40
    .line 41
    const/16 v1, 0xd8

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    const-string v2, "homeChanged"

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 61
    .line 62
    :cond_3
    return-void
.end method

.method public final updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_9

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-ne v3, v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateLossIfNeeded()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 49
    .line 50
    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 63
    .line 64
    .line 65
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 66
    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    .line 71
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 72
    .line 73
    if-eqz p1, :cond_8

    .line 74
    .line 75
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_0
    if-eqz v0, :cond_7

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_7
    move-object v0, v2

    .line 97
    :goto_1
    iput-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 98
    .line 99
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 100
    .line 101
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 102
    .line 103
    if-ne v0, v1, :cond_8

    .line 104
    .line 105
    iput-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 106
    .line 107
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_9
    :goto_2
    if-nez v1, :cond_a

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateLossIfNeeded()V

    .line 113
    .line 114
    .line 115
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 116
    .line 117
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 118
    .line 119
    if-eqz p1, :cond_c

    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 122
    .line 123
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_b

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_b
    move-object v0, v2

    .line 138
    :goto_3
    iput-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 139
    .line 140
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 141
    .line 142
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 143
    .line 144
    if-ne v0, v1, :cond_c

    .line 145
    .line 146
    iput-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 147
    .line 148
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 149
    .line 150
    return-object p0
.end method

.method public final wakeUp(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-string v2, "android.server.am:TURN_ON:"

    .line 8
    .line 9
    invoke-static {v2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
